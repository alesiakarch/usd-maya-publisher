import pytest
import pathlib
import tempfile
import maya.standalone
import maya.cmds as cmds
from pathlib import Path
from pxr import Usd, Sdf
from usd_publisher_plugin.source.load_rig import load_rig

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
        
def test_load_rig(maya_setup):
    """
    Test the load_rig function in a real Maya standalone environment.
    """
    # Create a temporary directory for the test
    with tempfile.TemporaryDirectory() as temp_dir:
        temp_dir_path = Path(temp_dir)

        # Create a temporary USD stage file
        stage_file = temp_dir_path / "stage.usda"
        with open(stage_file, "w") as f:
            f.write("#usda 1.0\n")

        # Create the proxy node
        cmds.createNode('transform', name='proxyStage1')
        proxy_node = cmds.createNode('mayaUsdProxyShape', name='mayaUsdProxyShape1', parent='proxyStage1')

        # Load the USD stage into the proxy node
        cmds.setAttr(f"{proxy_node}.filePath", str(stage_file), type="string")
        print(f"Proxy node '{proxy_node}' created and USD stage loaded.")

        # Mock the usd_utils.get_stage_path function
        def mock_get_stage_path():
            return str(stage_file)

        # Mock the usd_utils.get_scene_proxy function
        def mock_get_scene_proxy():
            return "|proxyStage1|mayaUsdProxyShape1"

        # Patch usd_utils functions
        import usd_publisher_plugin.source.usd_tool_utils as usd_utils
        usd_utils.get_stage_path = mock_get_stage_path
        usd_utils.get_scene_proxy = mock_get_scene_proxy

        # Simulate the rig file
        rig_file = temp_dir_path / "rig.mb"
        rig_file.touch()  # Create an empty Maya rig file

        # Mock mayaUsdEditAsMaya
        original_mayaUsdEditAsMaya = cmds.mayaUsdEditAsMaya

        def mock_mayaUsdEditAsMaya(ufe_path):
            print(f"Mocked mayaUsdEditAsMaya called with UFE path: {ufe_path}")

        cmds.mayaUsdEditAsMaya = mock_mayaUsdEditAsMaya

        try:
            # Call the function
            load_rig([str(rig_file)])
        finally:
            # Restore the original mayaUsdEditAsMaya
            cmds.mayaUsdEditAsMaya = original_mayaUsdEditAsMaya

        # 1. Verify that the RIG layer directory was created
        rig_layer_dir = temp_dir_path / "RIG"
        assert rig_layer_dir.exists(), "RIG layer directory was not created."

        # 2. Verify that the RIG layer file was created
        rig_layer_files = list(rig_layer_dir.glob("*.usda"))
        assert len(rig_layer_files) == 1, "RIG layer file was not created."
        rig_layer_file = rig_layer_files[0]

        # 3. Verify that the /rigs group was created in the USD stage
        stage = Usd.Stage.Open(str(stage_file))
        rigs_prim = stage.GetPrimAtPath("/rigs")
        assert rigs_prim, "The /rigs group was not created in the USD stage."

        # 4. Verify that the rig was loaded into the stage
        rig_namespace = Path(rig_file).stem.replace("-", "_") + "_001"
        rig_prim = stage.GetPrimAtPath(f"/rigs/{rig_namespace}")
        assert rig_prim, f"The rig prim /rigs/{rig_namespace} was not created in the USD stage."

        # 5. Verify that the RIG layer and root layer were saved
        rig_layer_stage = Usd.Stage.Open(str(rig_layer_file))
        assert rig_layer_stage, "The RIG layer was not saved."
        assert stage.GetRootLayer().Save(), "The root layer was not saved."