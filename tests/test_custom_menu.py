# tests for custom_menu.py
import pytest
import maya.standalone
import maya.cmds as cmds
from unittest.mock import patch
import source.custom_menu

def setup_module(module):
    # Initialize the Maya standalone application
    maya.standalone.initialize(name='python')

    print("Loading plug-in for testing...")
    cmds.loadPlugin("custom_menu.py")

def teardown_module(module):
    print("closing down maya-standalone")
    maya.standalone.uninitialize()
    # Unload the plugin

def test_create_custom_menu():
    """ Test if the custom menu is created """
    # Check if the menu exists
    with patch.object(cmds, "about", return_value = False): # Run GUI mode
        create_custom_menu()
        assert cmds.menu("Pipeline", exists = True)
    
def test_load_rig_ui():
    """ test if the output is correct """
    assert lod_rig_ui() == "Im Loading Rigs!"

# aaaand i cant test it cus maya standalone is headless, im such a clown 