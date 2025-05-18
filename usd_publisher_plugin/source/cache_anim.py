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
    # Ensure the cache directory exists
    cache_dir = Path(stage_dir) / "ANI" / "cache"
    cache_dir.mkdir(parents=True, exist_ok=True)
    
    # select the rig beforehand
    cmds.select(rig_name)
        # Set USD export options
    export_options = (
        f"shadingMode=useRegistry;"
        f"convertMaterialsTo=None;"
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
    cmds.file(
        output_path,
        force=True,
        options=export_options,
        typ="USD Export",
        pr=True,
        es=True
    )

    print(f"Caching complete: {output_path}")



