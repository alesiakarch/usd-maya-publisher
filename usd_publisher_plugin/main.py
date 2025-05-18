# the main plugin file 
# now writing test code to load it into maya and work 
import sys
from pathlib import Path
import maya.cmds as cmds
import maya.api.OpenMaya as OpenMaya

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
    plugin_path = Path(plugin_fn.loadPath()).resolve()  # Get the plugin's directory
    plugin_root = plugin_path.parent
    ui_dir = plugin_root / "ui"
    src_dir = plugin_root / "source"
    print(src_dir)
    print(ui_dir)

    # Add plugin_root and ui_dir to sys.path
    if str(plugin_root) not in sys.path:
        sys.path.insert(0, str(plugin_root))
        
    if str(ui_dir) not in sys.path:
        sys.path.insert(0, str(ui_dir))

    # Now we can call my functions
    try:
        import usd_publisher_plugin.source.custom_menu as cm
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
