# Contains reusable functions for USD tools
import re
from pathlib import Path
from pxr import Usd, Sdf, UsdGeom
import maya.cmds as cmds
from collections import defaultdict

def get_stage_path():
    """
    Get the USD stage path from the Maya scene.
    This function expects only one USD proxy shape in the scene.
    
    Returns:
        str: The file path of the USD stage.
    
    Raises:
        RuntimeError: If no USD proxy shapes are found or if the file path is invalid.
    """
    # List all proxy shapes in the Maya scene
    proxy_shapes = cmds.ls(type="mayaUsdProxyShape")
    if not proxy_shapes:
        raise RuntimeError("No USD proxy shapes found in the Maya scene!")
    if len(proxy_shapes) > 1:
        print("Warning: Multiple USD proxy shapes detected. Using the first one.")

    # Get the first proxy shape
    usd_proxy_shape = proxy_shapes[0]

    # Get the stage file path from the proxy shape
    stage_path = cmds.getAttr(f"{usd_proxy_shape}.filePath")
    if not stage_path:
        raise RuntimeError(f"Proxy shape '{usd_proxy_shape}' does not have a valid file path!")

    return stage_path

def create_layer(stage, layer_dir, layer_name):
    """
    Creates a new USD layer and add it to the root layer.
    Args:
        stage (Usd.Stage): The USD stage to which the layer will be added.
        layer_dir (str): The directory where the new layer will be created.
        layer_name (str): The name of the new layer.
    Returns:
        Sdf.Layer: The newly created USD layer. 
    """
    print("Creating new USD layer...")
    # Validate inputs
    if not stage or not isinstance(stage, Usd.Stage):
        raise ValueError("Invalid stage provided. Must be a valid Usd.Stage object.")
    if not Path(layer_dir).is_dir():
        raise ValueError(f"Invalid layer directory: {layer_dir}. Directory does not exist or is not writable.")
   
    print("Creating new USD layer...")
    layer_path = f"{layer_dir}/{layer_name}"

    usd_layer = Sdf.Layer.CreateNew(layer_path)
    if not usd_layer:
        raise RuntimeError(f"Failed to create USD layer at {layer_path}.")
    usd_layer.comment = f"Created new usd layer {layer_path}"
    
    # append the new layer to the root layer
    stage.GetRootLayer().subLayerPaths.append(usd_layer.identifier)
    print (f"{layer_name} appended to {stage}")
    stage.GetRootLayer().Save()
    return usd_layer

def get_framerange():
    """
    Retrieves start and end frame from the maya scene

    Returns:
        tuple: A tuple containing the start and end frame (int) of the scene.
    """
    start_frame = cmds.playbackOptions(query = True, minTime = True)
    end_frame = cmds.playbackOptions(query = True, maxTime = True)
    print(f"Framerange: {start_frame} - {end_frame}")
    return start_frame, end_frame

def find_caches(stage_path):
    """
    Finds cache files at the directory and return a list for pick up

    Args:
        stage_path (str): The path to the USD stage file.

    Returns:
        dict: A dictionary where keys are rig names and values are lists of cache file paths.
    """
    stage_dir = Path(stage_path).parent # usd directory
    cache_dir = stage_dir / "ANI" / "cache"
    print(f"Stage directory: {stage_dir}")
    print(f"Cache directory: {cache_dir}")

    if not cache_dir.exists() or not cache_dir.is_dir():
        raise ValueError(f"Invalid directory: {cache_dir}")
    
    # Find all files with a certain extension
    cache_files = list(cache_dir.glob(f"*.usd"))

    rigs = defaultdict(list)
    for cache in cache_files:
        cache_name = cache.stem # Get the file name without extension
        rig_name = "_".join(cache_name.split("_")[:-1])
        rigs[rig_name].append(str(cache))
        
    return dict(rigs)

def find_rigs(stage):
    """
    Find all rigs in the stage and return their names and paths.

    Args:
        stage (Usd.Stage): The USD stage to search for rigs.

    Returns:
        tuple: A tuple containing a list of rig names and a list of rig paths.
    """
    rigs = stage.GetPrimAtPath("/rigs")
    if rigs.IsValid:
        print("Found rigs in stage!")
    else:
        print("No rigs found!")
     
    rigs_list = rigs.GetChildren()
    print(rigs_list)
    rig_names = []
    for prim in rigs_list: # rig_name format
        rig_name = prim.GetName()
        rig_names.append(rig_name)

    rig_names_path = []
    for rig in range(len(rigs_list)): # /rigs/rig_name path
        rig_path = re.search("<(.*?)>", str(rigs_list[rig])).group(1)
        rig_names_path.append(rig_path) 

    # do GetPrim is needed a path
    print(rig_names, rig_names_path)
    return rig_names, rig_names_path

def generate_namespace(stage, asset_namespace, rig_path):
    # Generate namespace according to the number of duplicates
    """
    Generate a unique namespace for the rig based on the asset namespace and existing rigs.

    Args:
        stage (Usd.Stage): The USD stage to search for existing rigs.
        asset_namespace (str): The base namespace for the rig.
        rig_path (str): The path to the rig in the USD stage.

    Returns:
        str: A unique namespace for the rig.
    """
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
    """
    Get the DAG path of the USD stage in the Maya scene.
    This function expects only one USD stage in the scene.
    
    Returns:
        str: The DAG path of the USD stage.

    Raises:
        RuntimeError: If no USD stage is found or if multiple stages are detected.
    """
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
    """
    Get the rig layer from the stage or create a new one if it doesn't exist.

    Args:
        stage (Usd.Stage): The USD stage to search for the rig layer.
        rig_file (str): The path to the rig file.
        rig_layer_dir (str): The directory where the rig layer will be created.
        rig_file_name (str): The name of the rig file.

    Returns:
        Sdf.Layer: The rig layer.
    """
    # check if the rig layer exists, if not create the RIG layer
    rig_layer = Sdf.Layer.Find(str(rig_file))
    if rig_layer:
        print(f"Found existing rig layer: {rig_layer.identifier}")
    else:
        print("Rig layer not found. Creating a new one")
        rig_layer = create_layer(stage, rig_layer_dir, rig_file_name)

    # Ensure the layer is part of the stage's subLayerPaths
    if rig_layer.identifier not in stage.GetRootLayer().subLayerPaths:
        stage.GetRootLayer().subLayerPaths.append(rig_layer.identifier)
        print(f"Added rig layer to subLayerPaths: {rig_layer.identifier}")
    else:
        print(f"Rig layer '{rig_layer.identifier}' is already in the subLayerPaths.")

    stage.SetEditTarget(rig_layer)
    return rig_layer

# def clean_usd(input_file, output_file, new_namespace):
#     """
#     Cleans a USD file by renaming the defaultPrim and removing everything
#     up to and including the MayaReference prim.

#     Args:
#         input_file (str): Path to the input USD file.
#         output_file (str): Path to save the cleaned USD file.
#         new_namespace (str): The new namespace to rename the defaultPrim to.
#     """
#     # Open the stage
#     stage = Usd.Stage.Open(input_file)

#     # Find the __mayaUsd__ prim
#     maya_usd_prim = stage.GetPrimAtPath("/__mayaUsd__")
#     if not maya_usd_prim:
#         print("Error: __mayaUsd__ prim not found.")
#         return

#     # Rename __mayaUsd__ to the new namespace
#     maya_usd_prim.SetName(new_namespace)
#     print(f"Renamed '__mayaUsd__' to '{new_namespace}'.")

#     # Traverse down to find the MayaReference prim
#     maya_reference_prim = None
#     for child in stage.GetPrimAtPath(f"/{new_namespace}").GetChildren():
#         if child.GetTypeName() == "MayaReference":
#             maya_reference_prim = child
#             break

#     if not maya_reference_prim:
#         print("Error: MayaReference prim not found.")
#         return

#     # Get the children of the MayaReference prim (these are the contents to keep)
#     children_to_keep = list(maya_reference_prim.GetChildren())

#     # Remove everything up to and including the MayaReference prim
#     stage.RemovePrim(maya_reference_prim.GetPath())
#     print(f"Removed MayaReference prim and its parent hierarchy.")

#     # Reparent the children of the MayaReference prim to the new namespace
#     for child in children_to_keep:
#         child.SetParent(stage.GetPrimAtPath(f"/{new_namespace}"))
#         print(f"reparent '{child.GetName()}' to '/{new_namespace}'.")

#     # Set the new defaultPrim
#     stage.SetDefaultPrim(stage.GetPrimAtPath(f"/{new_namespace}"))
#     print(f"Set defaultPrim to '{new_namespace}'.")

#     # Save the cleaned USD file
#     stage.GetRootLayer().Export(output_file)
#     print(f"Cleaned USD file saved to: {output_file}")


