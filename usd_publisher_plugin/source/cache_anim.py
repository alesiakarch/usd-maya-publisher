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
    rig_full_paths = cmds.ls(f"{rig_namespace}:Tube_rig", long=True)  # Specifically target "Tube_rig"
    if not rig_full_paths:
        raise RuntimeError(f"Rig with namespace '{rig_namespace}' not found.")
    rig_root = rig_full_paths[0]

    # Unparent the rig from the USD hierarchy
    parent = cmds.listRelatives(rig_root, parent=True, fullPath=True)
    if parent:
        print(f"Unparenting {rig_root} from {parent[0]}...")
        try:
            # Select the rig root
            cmds.select(rig_root, replace=True)
            # Unparent the rig
            cmds.parent(rig_root, world=True)
        except RuntimeError as e:
            print(f"Failed to unparent {rig_root}: {e}")
            raise RuntimeError(f"Could not unparent {rig_root}. Try manually unparenting it in Maya.")

    # Check if rig_root is a reference and import it
    try:
        ref_node = cmds.referenceQuery(rig_root, referenceNode=True)
        # Import the reference to flatten it
        print(f"Importing reference {ref_node} to flatten rig for export...")
        cmds.file(ref_node, importReference=True)
    except RuntimeError:
        # Not a reference, continue
        print(f"{rig_root} is not a referenced node.")

    # Ensure the rig is fully imported and no longer part of a reference
    rig_full_paths = cmds.ls(f"{rig_namespace}:Tube_rig", long=True)  # Recheck "Tube_rig"
    if not rig_full_paths:
        raise RuntimeError(f"Rig with namespace '{rig_namespace}' not found after importing reference.")
    rig_root = rig_full_paths[0]

    # Ensure the cache directory exists
    cache_dir = Path(stage_dir) / "ANI" / "cache"
    cache_dir.mkdir(parents=True, exist_ok=True)
    
    # select the rig beforehand
    #cmds.select(export_targets, replace=True)
    #cmds.select(rig_name)
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
    cmds.file(
        output_path,
        force=True,
        options=export_options,
        typ="USD Export",
        pr=True,
        es=True
    )

    print(f"Caching complete: {output_path}")



