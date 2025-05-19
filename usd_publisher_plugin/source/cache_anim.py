# Cache anim button
# Fetches all available rigs in the usd stage
# Gives an option to select them
# Cache selected

from pathlib import Path
from pxr import Usd, Sdf
import maya.cmds as cmds
import usd_publisher_plugin.source.usd_tool_utils as usd_utils

def cache_rig(stage_dir, rig_name, start, end, euler=0):
    """
    Cache the selected rig to a USD file.

    This function exports the selected rig to a USD file in the specified directory.
    The USD file is named based on the rig name and a version number. The function
    ensures that the cache directory exists and handles the export options for the
    USD export.

    Args:
        stage_dir (str): The directory where the USD stage is located.
        rig_name (str): The name of the rig to cache.
        start (int): The start frame for the animation.
        end (int): The end frame for the animation.
        euler (int): Whether to apply Euler filtering. Default is 0 (no filtering).
 
    """
    # Find the node containing the rig with the namespace
    rig_namespace = f"{rig_name}_np"
    rig_root = usd_utils.find_top_node_in_namespace(rig_namespace)
    print(f"Top-level rig node: {rig_root}")

    # Unparent the rig from the USD hierarchy
    parent = cmds.listRelatives(rig_root, parent=True, fullPath=True)
    if parent:
        print(f"Unparenting {rig_root} from {parent[0]}...")
        try:
            # Select the rig root
            cmds.select(rig_root, replace=True)
            # Unparent the rig
            cmds.parent(rig_root, world=True)
            rig_root_short = rig_root.split("|")[-1] # stringps to the short name
            rig_root = cmds.ls(rig_root_short, long=True)
            print(f"new rig root {rig_root}")
        except RuntimeError as e:
            print(f"Failed to unparent {rig_root}: {e}")
            raise RuntimeError(f"Could not unparent {rig_root}. Try manually unparenting it in Maya.")


        # Check if rig_root is a reference and import it
    try:
        # Query the reference node for rig_root
        ref_node = cmds.referenceQuery(rig_root, referenceNode=True)
        print(f"Reference node for {rig_root}: {ref_node}")
        
        # Get the file path of the reference
        reference_file_path = cmds.referenceQuery(ref_node, filename=True)
        print(f"Reference file path for {ref_node}: {reference_file_path}")
        
        # Ensure the reference is loaded before importing
        if not cmds.referenceQuery(ref_node, isLoaded=True):
            print(f"Reference {ref_node} is not loaded. Loading it...")
            cmds.file(loadReference=ref_node)
        
        # Import the reference to flatten it
        print(f"Importing reference {ref_node} from {reference_file_path} to flatten rig for export...")
        cmds.file(reference_file_path, importReference=True)
    except RuntimeError as e:
        # Handle the case where the node is not a reference or import fails
        print(f"{rig_root} is not a referenced node or failed to import: {e}")

    # Ensure the cache directory exists
    cache_dir = Path(stage_dir) / "ANI" / "cache"
    cache_dir.mkdir(parents=True, exist_ok=True)
    
    # Set USD export options
    export_options = (
        f"shadingMode=useRegistry;"
        f"exportUVs=1;"
        f"exportSkels=none;"
        f"exportSkin=none;"
        f"exportBlendShapes=0;"
        f"exportColorSets=1;"
        f"exportDisplayColor=0;"
        f"filterTypes=nurbsCurve;"
        f"exportComponentTags=1;"
        f"defaultMeshScheme=catmullClark;"
        f"eulerFilter={euler};"
        f"defaultUSDFormat=usda;"  # ASCII format
        f"animation=1;"
        f"startTime={start};"
        f"endTime={end};"
        f"exportInstances=0;"
        f"convertMaterialsTo=[UsdPreviewSurface];"
    )

    index = 1
    max_versions = 100
    while index < max_versions:
        output_path = cache_dir/ f"{rig_name}_{index:03d}.usd"
        if not output_path.exists():
            break 
        index += 1

    # Export to USD
    cmds.select(rig_root, replace=True)
    print(f"Selection is {rig_root}")
    cmds.file(
        output_path,
        force=True,
        options=export_options,
        typ="USD Export",
        pr=True,
        es=True
    )

    print(f"Caching complete: {output_path}")



