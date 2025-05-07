# idk how main is this yet, for now the name is just a placeholder

# First button: to Load the rig 
# To load the rig the user must already have a USD stage file with the layout of the scene they are working from
# the rig can be loaded a) into the LAY layer, the animated into the ANIM layer, or b) into the ANIM layer only
# or c) into a RIG layer which purpose is solely to hold rig date and pass it on to animation
# I'll hardcode the "rigs" Xform for now to focus on the loading part
# I think in production the proxy rigs are added to layout to convey which characters are in the scene, and then the animators load the rig into the ANIM layer
import os
import maya.cmds as cmds
from pxr import Usd, Sdf, UsdGeom
import mayaUsdAddMayaReference as mr
import usd_tool_utils as usd_utils


project_root = "/home/s5221034/pipeline-project-alesiakarch/maya_test_project/"
rig_layer_name = "Test_Scene_RIG.usda"
asset_path = f"{project_root}assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"

def load_rig(usd_dir, stage_name):
    """
    Load the rig into the USD stage.
    """
    # get the USD stage
    stage = usd_utils.get_stage(project_root, stage_name)
    # create the RIG layer
    rig_layer = usd_utils.create_layer(stage, project_root, rig_layer_name)
    # create maya reference
    #create_maya_ref(stage, )
    stage.SetEditTarget(rig_layer)

    # check if the rigs xform exist
    rigs_grp = stage.GetPrimAtPath("/rigs")
    if rigs_grp.IsValid():
        print("/rigs group already exists")
    else:
        stage.DefinePrim("/rigs", "Xform")
        rigs_grp = stage.GetPrimAtPath("/rigs")
        print("created the /rigs group")
    
    # Defining the usd rig paths and namespace
    # detect the stage
    proxy_shapes = cmds.ls(type = "mayaUsdProxyShape") # lists in reverse order
    print(proxy_shapes)
    if not proxy_shapes:
        raise RuntimeError("No USD stage found in the Maya scene!")
    if len(proxy_shapes)>1:
        raise RuntimeError("More than one USD stage detected. Please keep to one stage per scene.")
    
    usd_proxy_shape = proxy_shapes[0] # use the first proxy shape
    parent_path = cmds.listRelatives(usd_proxy_shape, allParents=True, fullPath = True, shapes = True)
    dag_path = f"{parent_path[0]}|{usd_proxy_shape}"

    rig_path = str(rigs_grp.GetPath())
    path_to_usd_rig = f"{dag_path},{rig_path}"
    print(path_to_usd_rig) 

    # Path to the rig's location in the USD stage
    maya_namespace = "Wall_e_RIG_v002"  # Namespace for the Maya reference

    # load the rig into the Xform created above ("add maya reference") dont forget the namespace
    mr.createMayaReferencePrim(
        ufePathStr=path_to_usd_rig,
        mayaReferencePath=asset_path,
        mayaReferencePrimName = maya_namespace, # this will be namespace too
        mayaNamespace=maya_namespace,
        variantSet = ("Walle_maya", "Walle_USD_Cache")
    )

    # edit as maya data 
    cmds.mayaUsdEditAsMaya(f"{path_to_usd_rig}/{maya_namespace}")

    # save RIG layer
    stage.GetRootLayer().Save()



def create_maya_ref(stage, asset_path, rig_layer):
    ...
    # ask user for the asset path and set active layer to RIG so this is where we are writing
    # asset_path = f"{project_root}assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"
    # stage.SetEditTarget(rig_layer)

    # create rig Xform (check for it first)
    #prim = stage.DefinePrim("/rigs", "Xform")
    #loaded_rig = stage.DefinePrim("/rigs/Walee_001", "MayaReference")

    # Defining the paths and namespace
    # ufe_path = "|TestScene_stage|TestScene_stageShape,/rigs"  # Path to the rig's location in the USD stage (copies from MEL why is there a comma?)
    # maya_ref_path = f"{project_root}/assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"  # Path to the Maya reference
    # maya_namespace = "Wall_e_RIG_v002"  # Namespace for the Maya reference

    # # load the rig into the Xform created above ("add maya reference") dont forget the namespace
    # mr.createMayaReferencePrim(
    #     ufePathStr=ufe_path,
    #     mayaReferencePath=maya_ref_path,
    #     mayaReferencePrimName = "MayaReference2", # this will be namespace too
    #     mayaNamespace=maya_namespace,
    #     variantSet = ("Walle_maya", "Walle_USD_Cache")
    # )

    # # edit as maya data 
    # cmds.mayaUsdEditAsMaya("|TestScene_stage|TestScene_stageShape,/rigs/MayaReference2")

    # # save RIG layer
    # stage.GetRootLayer().Save()

# this should probably have a lot of tests and checks that everything is in the same place, but this is skeleton code
# also abstract this into functions
