# First button: to Load the rig 
# To load the rig the user must already have a USD stage file with the layout of the scene they are working from
# the rig can be loaded a) into the LAY layer, the animated into the ANIM layer, or b) into the ANIM layer only
# or c) into a RIG layer which purpose is solely to hold rig date and pass it on to animation
# I'll hardcode the "rigs" Xform for now to focus on the loading part
# I think in production the proxy rigs are added to layout to convey which characters are in the scene, and then the animators load the rig into the ANIM layer
from pathlib import Path
from pxr import Usd, Sdf, UsdGeom
import maya.cmds as cmds
import source.usd_tool_utils as usd_utils


# project_root = "/home/s5221034/pipeline-project-alesiakarch/maya_test_project/"
# stage_name = "TestScene_stage.usda"
# rig_layer_name = "Test_Scene_RIG.usda"
# asset_path = f"{project_root}assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"

def load_rig(asset_path):
    """
    Load the rig into the USD stage.
    """
    import mayaUsdAddMayaReference as mr

    # get the USD stage
    stage_path = usd_utils.get_stage_path()
    stage = Usd.Stage.Open(stage_path)

    stage_dir = Path(stage_path).parent
    stage_file = Path(stage_path).name

    rig_file_name = Path(stage_file).stem + "_RIG_layer" + Path(stage_file).suffix

    rig_layer_dir = stage_dir / "RIG"
    rig_layer_dir.mkdir(parents=True, exist_ok=True)

    rig_file = rig_layer_dir / rig_file_name
    

    # check if the rig layer exists, if not create the RIG layer
    rig_layer = get_rig_layer(stage, rig_file, rig_layer_dir, rig_file_name)

    # Defining the rig path and namespace before loading Maya reference
    dag_path = get_scene_proxy()

    # check if the rigs xform exist, if not - create
    rigs_grp = stage.GetPrimAtPath("/rigs")
    if rigs_grp.IsValid():
        print("/rigs group already exists")
    else:
        stage.DefinePrim("/rigs", "Xform")
        rigs_grp = stage.GetPrimAtPath("/rigs")
        print("created the /rigs group")

    # constructs the usd path for the rig prim
    rig_path = str(rigs_grp.GetPath())

    # Strips the asset path to the name of the file to base the namespace on
    asset_namespace = Path(str(asset_path[0])).stem.replace("-", "_") # rig_name
    print(f"{asset_namespace} from {asset_path}")

    # constructs the final path where to load usd rig
    path_to_usd_rig = f"{dag_path},{rig_path}"
    print(f"path to usd rig: {path_to_usd_rig}") 
    
    maya_namespace = generate_namespace(stage, asset_namespace, rig_path)

    # Ensure mayaReferencePath is an SdfAssetPath
    maya_reference_path = Sdf.AssetPath(str(asset_path[0]))
    print(f"maya reference path: {maya_reference_path.path}")

    # load the rig into the Xform created above ("add maya reference") dont forget the namespace
    mr.createMayaReferencePrim(
        ufePathStr=path_to_usd_rig,
        mayaReferencePath=maya_reference_path.path,
        mayaReferencePrimName = maya_namespace, # this will be namespace too
        groupPrim = (maya_namespace, "Xform", "group"),
        mayaNamespace=maya_namespace
    )

    # edit as maya data 
    cmds.mayaUsdEditAsMaya(f"{path_to_usd_rig}/{maya_namespace}")

    # save RIG layer
    rig_layer.Save()
    # save stage
    stage.GetRootLayer().Save()


def generate_namespace(stage, asset_namespace, rig_path):
    # Generate namespace according to the number of duplicates
    index = 1
    max_rigs = 100
    while index < max_rigs:
        maya_namespace = f"{asset_namespace}_{index:03d}"  # Namespace for the Maya reference
        print(maya_namespace)
        usd_prim_path = f"{rig_path}/{maya_namespace}"
        if not stage.GetPrimAtPath(usd_prim_path).IsValid():
            print(maya_namespace)
            break
        index += 1
    return maya_namespace

def get_scene_proxy():
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
    return dag_path

def get_rig_layer(stage, rig_file, rig_layer_dir, rig_file_name):
    # check if the rig layer exists, if not create the RIG layer
    rig_layer = Sdf.Layer.Find(str(rig_file))
    if rig_layer:
        stage.SetEditTarget(rig_layer)

    else:
        print("Rig layer not found. Creating a new one")
        rig_layer = usd_utils.create_layer(stage, rig_layer_dir, rig_file_name)
        stage.SetEditTarget(rig_layer)
    return rig_layer
