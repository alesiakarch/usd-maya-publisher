# tests for custom_menu.py
import pytest
import maya.standalone
import maya.cmds as cmds
import custom_menu

def setup_module(module):
    # Initialize the Maya standalone application
    maya.standalone.initialize(name='python')

    print("Loading plug-in for testing...")
    cmds.loadPlugin("custom_menu.py")

def test_create_custom_menu():
    """ Test if the custom menu is created """
    # Check if the menu exists
    create_custom_menu()
    assert cmds.menu("Pipeline", exists = True)