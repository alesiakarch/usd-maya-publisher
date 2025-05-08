# file with all UI logic
import sys
sys.path.append("/home/s5221034/pipeline-project-alesiakarch/ui")
import maya.cmds as cmds


def create_custom_menu():
    """ Create my own tool menu """
    if cmds.menu("Pipeline", exists=True):
        cmds.deleteUI("Pipeline")
    pipeline_menu = cmds.menu("Pipeline", label="Pipeline", parent = "MayaWindow", tearOff=True)

    #cmds.menuItem("Load Rig", command= lambda *args: load_rig_ui())
    cmds.menuItem("Load Rig", command= lambda *args: lr.run_load_rig_ui())
    cmds.menuItem("Cache Anim", command= lambda *args: cache_anim_ui())
    cmds.menuItem("Create Anim layer", command= lambda *args: create_anim_layer_ui())

# def load_rig_ui():

#     print("Im Loading Rigs!")

def cache_anim_ui():
    print("Im caching animation!")

def create_anim_layer_ui():
    print("Im creating animation layers!")

def detach_custom_menu():
    ...

create_custom_menu()


