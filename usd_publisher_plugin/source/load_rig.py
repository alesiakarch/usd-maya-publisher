# First button: to Load the rig 
# To load the rig the user must already have a USD stage file with the layout of the scene they are working from
# the rig can be loaded a) into the LAY layer, the animated into the ANIM layer, or b) into the ANIM layer only
# or c) into a RIG layer which purpose is solely to hold rig date and pass it on to animation
# I'll hardcode the "rigs" Xform for now to focus on the loading part
# I think in production the proxy rigs are added to layout to convey which characters are in the scene, and then the animators load the rig into the ANIM layer
from pathlib import Path
from pxr import Usd, Sdf
import maya.mel as mel
import maya.cmds as cmds
import usd_publisher_plugin.source.usd_tool_utils as usd_utils

def load_rig(asset_path):
    """
    Load the rig into the USD stage.
    
    This function integrates a rig file into a USD stage and the Maya scene. It creates 
    a dedicated RIG layer in the USD stage if it does not already exist and ensures the 
    rig is added under the `/rigs` group. The rig is also loaded into Maya as a Maya 
    Reference.

    Args:
        asset_path (str): The path to the rig file to be loaded.

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
    rig_layer = usd_utils.get_rig_layer(stage, rig_file, rig_layer_dir, rig_file_name)

    # Defining the rig path and namespace before loading Maya reference
    dag_path = usd_utils.get_scene_proxy()

    # sets RIG layer as target
    rig_layer_path = str(rig_file)  # Path to the RIG layer file
    mel.eval(f'mayaUsdEditTarget -edit -editTarget "{rig_layer_path}" "{dag_path}";')

    print(f"Set edit target to RIG layer: {rig_layer_path}")

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

    maya_namespace = usd_utils.generate_namespace(stage, asset_namespace, rig_path)

    # Define the rig prim in the RIG layer
    rig_prim_path = f"/rigs/{maya_namespace}"
    rig_prim = stage.GetPrimAtPath(rig_prim_path)
    if not rig_prim.IsValid():
        stage.DefinePrim(rig_prim_path, "Xform")
        print(f"Defined rig prim at {rig_prim_path} in the RIG layer")

    # constructs the final path where to load usd rig
    path_to_usd_rig = f"{dag_path},{rig_prim_path}"
    print(f"path to usd rig: {path_to_usd_rig}") 

    # Ensure mayaReferencePath is an SdfAssetPath
    maya_reference_path = Sdf.AssetPath(str(asset_path[0]))
    print(f"maya reference path: {maya_reference_path.path}")
    
    print(f"Namespace: {maya_namespace}")
    
    mr.createMayaReferencePrim(
        ufePathStr=path_to_usd_rig,
        mayaReferencePath=maya_reference_path.path,
        mayaReferencePrimName = maya_namespace, # this will be namespace too
        mayaNamespace= f"{maya_namespace}_np"
    )

    print("mr.createMayaReferencePrim executed successfully")


    # Check if the rig prim was created
    rig_prim = stage.GetPrimAtPath(f"/rigs/{maya_namespace}")
    if rig_prim.IsValid():
        print(f"Rig prim /rigs/{maya_namespace} was successfully created.")
    else:
        print(f"Rig prim /rigs/{maya_namespace} was NOT created.")

    # edit as maya data 
    cmds.mayaUsdEditAsMaya(f"{path_to_usd_rig}/{maya_namespace}")

    # save RIG layer
    rig_layer.Save()
    # save stage
    stage.GetRootLayer().Save()
 





