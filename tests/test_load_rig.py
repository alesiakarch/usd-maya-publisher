import pytest
import pathlib
import tempfile
import maya.standalone
#import maya.cmds as cmds
from pxr import Usd, Sdf
from source.load_rig import load_rig

@pytest.fixture
def maya_setup():
    """
    Fixture to set up and tear down the Maya standalone environment.
    """
    maya.standalone.initialize()
    import maya.cmds as cmds
    print("Maya standalone is initialized")
    if not cmds.pluginInfo("mayaUsdPlugin", query=True, loaded=True):
        cmds.loadPlugin("mayaUsdPlugin")
        print("loading maya usd plg")
    
    print("mayaUsdPlugin loaded:", cmds.pluginInfo("mayaUsdPlugin", query=True, loaded=True))

    plugin_path = cmds.pluginInfo("mayaUsdPlugin", query=True, path=True)
    plugin_path = cmds.pluginInfo("mayaUsdPlugin", query=True, path=True)
    print(f"mayaUsdPlugin path: {plugin_path}")
    yield
    if "mayaUsdPlugin" in cmds.pluginInfo(query=True, listPlugins=True):
        cmds.unloadPlugin("mayaUsdPlugin", force=True)
    maya.standalone.uninitialize()

def test_load_rig(maya_setup):
    print("testing rigs")
    import maya.cmds as cmds
    
    with tempfile.TemporaryDirectory() as temp_dir:
        # Mocking the temp dir
        stage_name = "Temp_stage.usda"
        rig_layer_name = "Temp_RIG.usda"
        asset_name = "TempRig.mb"

        # create usd stage to test with
        usd_layer = Sdf.Layer.CreateNew(f"{temp_dir}/{stage_name}")
        assert usd_layer, "Failed to create USD stage to test"

        # load the created mock stage into maya
        #stage_transform = cmds.mayaUsdCreateStageFromFile(filepath = f"{temp_dir}/{stage_name}")
        
        stage_transform = cmds.mayaUsdCreateStageFromFile(
            filePath=f"{temp_dir}/{stage_name}",
            name="Temp_stage"
        )
        print(f"Created stage from file: {stage_transform}")

        # create a mock rig file
        asset_path = f"{temp_dir}/{asset_name}"
        with open(asset_path, "w") as temp_rig:
            temp_rig.write("") 
        
        load_rig(temp_dir, stage_name, rig_layer_name, asset_path)

        
        