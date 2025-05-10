# file with all UI logic
import sys
import maya.cmds as cmds
import ui.load_rig_gui as lr
import ui.cache_anim_ui as ca
import ui.create_ani_layer_ui as cra

def create_custom_menu():
    """ Create my own tool menu """
    if cmds.menu("Pipeline", exists=True):
        cmds.deleteUI("Pipeline")
    pipeline_menu = cmds.menu("Pipeline", label="Pipeline", parent = "MayaWindow", tearOff=True)

    ##cmds.menuItem("Load Rig", command= lambda *args: load_rig_ui())
    cmds.menuItem("Load Rig", command= lambda *args: lr.run_load_rig_ui())
    cmds.menuItem("Cache Anim", command= lambda *args: ca.run_cache_anim_ui())
    cmds.menuItem("Create Anim Layer", command= lambda *args: cra.run_create_ani_layer_ui())
    #cmds.menuItem("Cache Anim", command= lambda *args: cache_anim_ui())
    #cmds.menuItem("Create Anim layer", command= lambda *args: create_anim_layer_ui())

### def load_rig_ui():

#     print("Im Loading Rigs!")

# def cache_anim_ui():
#     print("Im caching animation!")

# def create_anim_layer_ui():
#     print("Im creating animation layers!")

def detach_custom_menu():
    ...

#create_custom_menu()


