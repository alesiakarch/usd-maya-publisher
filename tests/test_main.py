import pytest

import sys, os
import maya.standalone

def setup_module(module):
    # Initialize the Maya standalone application
    maya.standalone.initialize(name='python')

    print("Loading plug-in for testing...")
    cmds.loadPlugin("main.py")