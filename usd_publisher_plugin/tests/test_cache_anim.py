import pytest
from pathlib import Path
import tempfile
from unittest.mock import patch
import maya.standalone

from pxr import Sdf, Usd
from usd_publisher_plugin.source.cache_anim import cache_rig

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


def test_cache_rig(maya_setup):
    # generated with copilot
    """
    Test the cache_rig function.
    """
    import maya.cmds as cmds
    # # Mock maya.cmds and pathlib.Path
    # with patch("maya.cmds") as mock_cmds, patch("usd_publisher_plugin.source.cache_anim.Path") as mock_path:
    #     # Mock the Path object
    #     mock_cache_dir = MagicMock()
    #     mock_path.return_value.__truediv__.return_value = mock_cache_dir
    #     mock_cache_dir.mkdir = MagicMock()
    #     mock_file_path = MagicMock()
    #     mock_cache_dir.__truediv__.return_value = mock_file_path
    #     mock_file_path.exists.side_effect = [True, False]  # Simulate one existing file (version 001 exists, 002 does not)

    #     # Call the function
    #     cache_rig("/stage/dir", "rig1", 1, 24)

    #     # Assertions

    #     # 1. Ensure the cache directory is created
    #     mock_cache_dir.mkdir.assert_called_once_with(parents=True, exist_ok=True)

    #     # 2. Ensure the rig is selected
    #     mock_cmds.select.assert_called_once_with("rig1")

    #     # 3. Ensure the correct file name is generated
    #     mock_cache_dir.__truediv__.assert_called_with("rig1_002.usd")  # Version 002 should be used

    #     # 4. Ensure cmds.file is called with the correct arguments
    #     mock_cmds.file.assert_called_once_with(
    #         mock_file_path,
    #         force=True,
    #         options=(
    #             "shadingMode=useRegistry;"
    #             "convertMaterialsTo=None;"
    #             "exportUVs=1;"
    #             "exportSkels=none;"
    #             "exportSkin=none;"
    #             "exportBlendShapes=0;"
    #             "exportColorSets=1;"
    #             "exportDisplayColor=0;"
    #             "filterTypes=nurbsCurve;"
    #             "exportComponentTags=1;"
    #             "defaultMeshScheme=catmullClark;"
    #             "eulerFilter=0;"
    #             "defaultUSDFormat=usda;"
    #             "animation=1;"
    #             "startTime=1;"
    #             "endTime=24;"
    #             "exportInstances=0;"
    #             "convertMaterialsTo=[UsdPreviewSurface];"
    #         ),
    #         typ="USD Export",
    #         pr=True,
    #         es=True
    #     )
    
    with tempfile.TemporaryDirectory() as temp_dir:
        stage_dir = Path(temp_dir)
        rig_name = "test_rig"

        # Create a dummy rig in Maya
        cmds.polyCube(name=rig_name)

        # Call the function
        cache_rig(stage_dir, rig_name, 1, 24)

        # Verify that the cache directory was created
        cache_dir = stage_dir / "ANI" / "cache"
        assert cache_dir.exists(), "Cache directory was not created."

        # Verify that the USD file was exported
        usd_files = list(cache_dir.glob("*.usd"))
        assert len(usd_files) == 1, "No USD file was exported."
        assert usd_files[0].name.startswith(f"{rig_name}_"), "Exported file name is incorrect."