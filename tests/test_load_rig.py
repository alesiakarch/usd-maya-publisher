import pytest
import pathlib
import tempfile
import maya.standalone
import maya.cmds as cmds
from pxr import Usd, Sdf
from source.load_rig import load_rig

@pytest.fixture
def maya_setup():
    """
    Fixture to set up and tear down the Maya standalone environment.
    """
    maya.standalone.initialize()
    cmds.loadPlugin("mayaUsdPlugin")
    yield
    if "mayaUsdPlugin" in cmds.pluginInfo(query=True, listPlugins=True):
        cmds.unloadPlugin("mayaUsdPlugin", force=True)
    maya.standalone.uninitialize()

def test_load_rig():
    print("testing rigs")
    
    with tempfile.TemporaryDirectory() as temp_dir:
        # Mocking the temp dir
        stage_name = "Temp_stage.usda"
        rig_layer_name = "Temp_RIG.usda"
        asset_name = "TempRig.mb"

        usd_layer = Sdf.Layer.CreateNew(f"{temp_dir}/{stage_name}")
        assert usd_layer, "Failed to create USD stage to test"

        asset_path = f"{temp_dir}/{asset_name}"
        with open(asset_path, "w") as temp_rig:
            temp_rig.write("") # Creates an empty mock .mb
        
        load_rig(temp_dir, stage_name, rig_layer_name, asset_path)

        ## maya add reference import problem 
        
        