# First button: to Load the rig 
# To load the rig the user must already have a USD stage file with the layout of the scene they are working from
# the rig can be loaded a) into the LAY layer, the animated into the ANIM layer, or b) into the ANIM layer only
# or c) into a RIG layer which purpose is solely to hold rig date and pass it on to animation
# I'll hardcode the "rigs" Xform for now to focus on the loading part
# I think in production the proxy rigs are added to layout to convey which characters are in the scene, and then the animators load the rig into the ANIM layer
import os
#import maya.cmds as cmds
from pxr import Usd, Sdf, UsdGeom
import maya.cmds as cmds
import source.usd_tool_utils as usd_utils


# project_root = "/home/s5221034/pipeline-project-alesiakarch/maya_test_project/"
# stage_name = "TestScene_stage.usda"
# rig_layer_name = "Test_Scene_RIG.usda"
# asset_path = f"{project_root}assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"

def load_rig(project_root, stage_name, rig_layer_name, asset_path):
    """
    Load the rig into the USD stage.
    """
    
    # Load maya USd plugin to run the mayaUsdAddMayaReference
    # if not cmds.pluginInfo("mayaUsdPlugin", query = True, loaded = True):
    #     cmds.loadPlugin("mayaUsdPlugin")

    import mayaUsdAddMayaReference as mr

    # get the USD stage
    stage = usd_utils.get_stage(project_root, stage_name)

    # create the RIG layer
    rig_layer = usd_utils.create_layer(stage, project_root, rig_layer_name)
    stage.SetEditTarget(rig_layer)

    # check if the rigs xform exist, if not - create
    rigs_grp = stage.GetPrimAtPath("/rigs")
    if rigs_grp.IsValid():
        print("/rigs group already exists")
    else:
        stage.DefinePrim("/rigs", "Xform")
        rigs_grp = stage.GetPrimAtPath("/rigs")
        print("created the /rigs group")
    
    # Defining the rig path and namespace before loading Maya reference
    # detect the stage object
    proxy_shapes = cmds.ls(type = "mayaUsdProxyShape") # lists in reverse order
    print(proxy_shapes)
    if not proxy_shapes:
        raise RuntimeError("No USD stage found in the Maya scene!")
    if len(proxy_shapes)>1:
        raise RuntimeError("More than one USD stage detected. Please keep to one stage per scene.")
    
    # constructs the dag object path for the usd stage
    usd_proxy_shape = proxy_shapes[0] # use the first proxy shape
    parent_path = cmds.listRelatives(usd_proxy_shape, allParents=True, fullPath = True, shapes = True)
    dag_path = f"{parent_path[0]}|{usd_proxy_shape}"

    # constructs the usd path for the rig prim
    rig_path = str(rigs_grp.GetPath())

    # constructs the final path where to load usd rig
    path_to_usd_rig = f"{dag_path},{rig_path}"
    print(path_to_usd_rig) 

    # Strips the asset path to the name of the file to base the namespace on
    path_list = asset_path.split("/")
    rig_file_namespace = path_list[-1]
    rig_namespace = rig_file_namespace.split(".")[0]

    # Generate namespace according to the number of duplicates
    index = 1
    max_rigs = 100
    while index < max_rigs:
        maya_namespace = f"{rig_namespace}_{index:03d}"  # Namespace for the Maya reference
        print(maya_namespace)
        if not stage.GetPrimAtPath(f"{path_to_usd_rig}/{maya_namespace}").IsValid():
            print(maya_namespace)
            break
        index += 1

    # load the rig into the Xform created above ("add maya reference") dont forget the namespace
    mr.createMayaReferencePrim(
        ufePathStr=path_to_usd_rig,
        mayaReferencePath=asset_path,
        mayaReferencePrimName = maya_namespace, # this will be namespace too
        mayaNamespace=maya_namespace,
        variantSet = (f"{rig_namespace}_Maya", f"{rig_namespace}_USD_Cache")
    )

    # edit as maya data 
    cmds.mayaUsdEditAsMaya(f"{path_to_usd_rig}/{maya_namespace}")

    # save RIG layer
    stage.GetRootLayer().Save()

# this should probably have a lot of tests and checks that everything is in the same place, but this is skeleton code
# also abstract this into functions
