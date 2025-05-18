import pytest
from pathlib import Path
import tempfile
from unittest.mock import patch, MagicMock
import maya.standalone

from pxr import Sdf, Usd
from usd_publisher_plugin.source.create_anim_layer import create_anim_layer

@pytest.fixture(scope="session")
def maya_setup():
    """
    Fixture to set up and tear down the Maya standalone environment.
    """
    maya.standalone.initialize()
    import maya.cmds as cmds
    # Load the mayaUsdPlugin
    if not cmds.pluginInfo("mayaUsdPlugin", query=True, loaded=True):
        cmds.loadPlugin("mayaUsdPlugin")

    yield

    if "mayaUsdPlugin" in cmds.pluginInfo(query=True, listPlugins=True):
        cmds.unloadPlugin("mayaUsdPlugin", force=True)
    maya.standalone.uninitialize()

def test_create_anim_layer(maya_setup):
    # generated with copilot
    """
    Test the create_anim_layer function.
    """
    # Create a temporary directory for the test
    with tempfile.TemporaryDirectory() as temp_dir:
        temp_dir_path = Path(temp_dir)

        # Simulate the stage path
        stage_file = temp_dir_path / "stage.usda"
        stage_file.touch()  # Create an empty USD file

        # Simulate the usd_utils.get_stage_path function
        def mock_get_stage_path():
            return stage_file

        # Patch usd_utils.get_stage_path to return the temporary stage path
        import usd_publisher_plugin.source.usd_tool_utils as usd_utils
        usd_utils.get_stage_path = mock_get_stage_path

        # Open the stage and add a root layer
        stage = Usd.Stage.CreateNew(str(stage_file))
        stage.GetRootLayer().Save()

        # Simulate cache files
        cache1 = temp_dir_path / "cache1.usda"
        cache2 = temp_dir_path / "cache2.usda"
        cache1.touch()  # Create an empty cache file
        cache2.touch()  # Create an empty cache file

        # Call the function
        create_anim_layer([cache1, cache2])

        # 1. Verify that the ANI/layer directory was created
        ani_layer_dir = temp_dir_path / "ANI" / "layer"
        assert ani_layer_dir.exists(), "ANI/layer directory was not created."

        # 2. Verify that the animation layer file was created
        ani_layer_files = list(ani_layer_dir.glob("*.usda"))
        assert len(ani_layer_files) == 1, "Animation layer file was not created."
        ani_layer_file = ani_layer_files[0]

        # 3. Verify that the animation layer contains the cache references
        anim_layer_stage = Usd.Stage.Open(str(ani_layer_file))
        cache_prim = anim_layer_stage.GetPrimAtPath("/Caches")
        assert cache_prim, "Caches prim was not created in the animation layer."

        # 4. Verify references
        prim_spec = anim_layer_stage.GetRootLayer().GetPrimAtPath("/Caches")
        assert prim_spec, "PrimSpec for /Caches was not found in the root layer."
        reference_paths = [ref.assetPath for ref in prim_spec.referenceList.GetAddedOrExplicitItems()]
        assert len(reference_paths) == 2, "Cache references were not added to the animation layer."
        assert str(cache1) in reference_paths, "Cache1 reference is missing."
        assert str(cache2) in reference_paths, "Cache2 reference is missing."

        # 5. Verify that the root layer was updated
        root_layer = stage.GetRootLayer()
        assert any("ANI_layer" in sublayer for sublayer in root_layer.subLayerPaths), (
            "Animation layer was not added to the root layer's subLayerPaths."
        )