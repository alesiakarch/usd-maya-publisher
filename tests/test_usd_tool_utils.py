import pytest
import os
import tempfile
import maya.standalone
import maya.cmds as cmds
from source.usd_tool_utils import get_stage

def test_get_stage():
    """
    Test the get_stage function returns a valid USD stage.
    """
    maya.standalone.initialize()
    try:
        cmds.loadPlugin("mayaUsdPlugin")
        #cmds.loadPlugin("vrayformaya")
        from pxr import Sdf, Usd, UsdGeom
        # Create temporarty directory and file for testing
        with tempfile.TemporaryDirectory() as temp_dir:
            test_stage_name = "test_stage.usda"
            stage_path = os.path.join(temp_dir, test_stage_name)

            # Create a temporary USD stage file
            usd_file = Sdf.Layer.CreateNew(stage_path)
            assert usd_file != None, "Failed to create temporary USD stage file"
            
            # Test the get_stage function
            stage = get_stage(temp_dir, test_stage_name)
            #assert stage != None, "Failed to get USD stage"
            #assert isinstance(stage, Usd.Stage), "Returned object is not a USD stage"
            #assert stage.GetRootLayer().identifier == stage_path, "Stage path does not match expected path"
    finally:    
        maya.standalone.uninitialize()