# the main plugin file 
# now writing test code to load it into maya and work 

import maya.cmds as cmds
import maya.api.OpenMaya as OpenMaya
import custom_menu as cm

def maya_useNewAPI():
    '''This function is called by Maya to indicate that the plugin uses the new API'''
    pass

maya_useNewAPI = True

def initializePlugin(plugin):
    '''Load the plugin'''
    vendor = "a_karch_CAVE25"
    version = "1.0.0"

    # Commands maya to handle the plugin
    plugin_fn = OpenMaya.MFnPlugin(plugin, vendor, version)
    # Now we can call my functions
    try:
        cm.create_custom_menu()
        OpenMaya.MGlobal.displayInfo("Plugin loaded successfully")
    except Exception as e:
        OpenMaya.MGlobal.displayError("Failed to load plugin: {}".format(e))
        return

def uninitializePlugin(plugin):
    '''Unload the plugin'''
    try:
        cmds.deleteUI("Pipeline")
        OpenMaya.MGlobal.displayInfo("Plugin unloaded successfully")
    except Exception as e:
        OpenMaya.MGlobal.displayError("Failed to unload plugin: {}".format(e))
        return
