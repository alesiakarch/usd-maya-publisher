# idk how main is this yet, for now the name is just a placeholder

# First button: to Load the rig 
# To load the rig the user must already have a USD stage file with the layout of the scene they are working from
# the rig can be loaded a) into the LAY layer, the animated into the ANIM layer, or b) into the ANIM layer only
# or c) into a RIG layer which purpise is solely to hold rig date and pass it on to animation
# I'll hardcode the "rigs" Xform for now to focus on the loading part
# I think in production the proxy rigs are added to layout to convey which characters are in the scene, and then the animators load the rig into the ANIM layer
import os
import maya.cmds as cmds
from pxr import Usd, Sdf, UsdGeom
import mayaUsdAddMayaReference as mr

def load_rig():
    """
    Load the rig into the USD stage.
    """
    # get the USD stage
    stage = get_stage()
    # create the RIG layer
    create_layer()
    # create maya reference
    create_maya_ref()

# get and initialise the USD stage
def get_stage():
    ...
    # project_root = "/home/s5221034/pipeline-project-alesiakarch/maya_test_project/"
    # stage = Usd.Stage.Open(f"{project_root}TestScene_stage.usda")
    # print(project_root)

# create RIG layer
# add the Rig layer to the root layer and save
def create_layer():
    ...
    # rig_layer_path = "/home/s5221034/pipeline-project-alesiakarch/maya_test_project/Test_Scene_RIG.usda"
    # rig_layer = Sdf.Layer.CreateNew(rig_layer_path)
    # rig_layer.comment = "RIG layer containing character rig references"

    # stage.GetRootLayer().subLayerPaths.append(rig_layer_path)
    # print (stage)
    # stage.GetRootLayer().Save()

def create_maya_ref():
    ... 
    # ask user for the asset path and set active layer to RIG so this is where we are writing
    rig_path = f"{project_root}assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"
    stage.SetEditTarget(rig_layer)

    # create rig Xform
    prim = stage.DefinePrim("/rigs", "Xform")
    #loaded_rig = stage.DefinePrim("/rigs/Walee_001", "MayaReference")

    # Defining the paths and namespace
    ufe_path = "|TestScene_stage|TestScene_stageShape,/rigs"  # Path to the rig's location in the USD stage (copies from MEL why is there a comma?)
    maya_ref_path = f"{project_root}/assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"  # Path to the Maya reference
    maya_namespace = "Wall_e_RIG_v002"  # Namespace for the Maya reference

    # load the rig into the Xform created above ("add maya reference") dont forget the namespace
    mr.createMayaReferencePrim(
        ufePathStr=ufe_path,
        mayaReferencePath=maya_ref_path,
        mayaReferencePrimName = "MayaReference2", # this will be namespace too
        mayaNamespace=maya_namespace,
        variantSet = ("Walle_maya", "Walle_USD_Cache")
    )

    # edit as maya data 
    cmds.mayaUsdEditAsMaya("|TestScene_stage|TestScene_stageShape,/rigs/MayaReference2")

    # save RIG layer
    stage.GetRootLayer().Save()

# this shouold probably have a lot of tests and checks that everything is in the same place, but this is skeleton code
# also abstract this into functions
