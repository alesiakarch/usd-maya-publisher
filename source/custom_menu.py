# file with all UI logic

import maya.cmds as cmds

def create_custom_menu():
    """ Create my own too menu """
    if cmds.menu("Pipeline", exists=True):
        cmds.deleteUI("Pipeline")
    pipeline_menu = cmds.menu("Pipeline", label="Pipeline", parent = "MayaWindow", tearOff=True)

    cmds.menuItem("Load Rig", command= "load_rig_ui()")
    cmds.menuItem("Cache Anim", command= "cache_anim_ui()")
    cmds.menuItem("Create Anim layer", command= "create_anim_layer_ui()")

def load_rig_ui():
    print("Im Loading Rigs!")

def cache_anim_ui():
    print("Im caching animation!")

def create_anim_layer_ui():
    print("Im creating animation layers!")

create_custom_menu()


