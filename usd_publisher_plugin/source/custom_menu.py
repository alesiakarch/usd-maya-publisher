# file with all UI logic
import sys
import maya.cmds as cmds
from usd_publisher_plugin.ui import load_rig_gui as lr
from usd_publisher_plugin.ui import cache_anim_ui as ca
from usd_publisher_plugin.ui import create_ani_layer_ui as cra

def create_custom_menu():
    """ Create my own tool menu """
    if cmds.menu("Pipeline", exists=True):
        cmds.deleteUI("Pipeline")
    pipeline_menu = cmds.menu("Pipeline", label="Pipeline", parent = "MayaWindow", tearOff=True)

    cmds.menuItem("Load Rig", command= lambda *args: lr.run_load_rig_ui())
    cmds.menuItem("Cache Anim", command= lambda *args: ca.run_cache_anim_ui())
    cmds.menuItem("Create Anim Layer", command= lambda *args: cra.run_create_ani_layer_ui()) 


