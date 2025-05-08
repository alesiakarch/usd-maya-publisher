import pytest
import os
import tempfile
import maya.standalone

from pxr import Sdf, Usd
from source.usd_tool_utils import get_stage, create_layer

@pytest.fixture
def maya_setup():
    """
    Fixture to set up and tear down the Maya standalone environment.
    """
    maya.standalone.initialize()
    import maya.cmds as cmds
    yield
    if "mayaUsdPlugin" in cmds.pluginInfo(query=True, listPlugins=True):
        cmds.unloadPlugin("mayaUsdPlugin", force=True)
    maya.standalone.uninitialize()

def test_get_stage():
    """
    Test the get_stage function returns a valid USD stage.
    """
    # Create temporary directory and file for testing
    with tempfile.TemporaryDirectory() as temp_dir:
        test_stage_name = "test_stage.usda"
        stage_path = os.path.join(temp_dir, test_stage_name)

        # Create a temporary USD stage file
        usd_file = Sdf.Layer.CreateNew(stage_path)
        assert usd_file != None, "Failed to create temporary USD stage file"
        
        # Test the get_stage function
        stage = get_stage(temp_dir, test_stage_name)
        assert stage != None, "Failed to get USD stage"
        assert isinstance(stage, Usd.Stage), "Returned object is not a USD stage"
        assert stage.GetRootLayer().identifier == stage_path, "Stage path does not match expected path"


def test_create_layer():
    """
    Test the create_layer function creates a new USD layer.
    """
    with tempfile.TemporaryDirectory() as temp_dir:
        test_stage_name = "test_stage.usda"
        stage_path = os.path.join(temp_dir, test_stage_name)
        layer_name = "test_layer.usda"

        # Create a temporary USD stage file
        usd_file = Sdf.Layer.CreateNew(stage_path)
        assert usd_file != None, "Failed to create temporary USD stage file"
        # Load the stage
        stage = get_stage(temp_dir, test_stage_name)
        
        # Test the create_layer function
        new_layer = create_layer(stage, temp_dir, layer_name)
        assert new_layer != None, "Failed to create a new USD layer"
        assert isinstance(new_layer, Sdf.Layer), "Returned object is not a USD department layer"

        # Check if the new layer has been added to the stage
        sublayer_paths = stage.GetRootLayer().subLayerPaths
        assert new_layer.identifier in sublayer_paths, f"New layer {temp_dir}/{layer_name} not found in the stage's sublayer paths {sublayer_paths}"
       

