# Cache anim button
# Fetches all available rigs in the usd stage
# Gives an option to select them
# Cache selected

from pathlib import Path
import re
from pxr import Usd, Sdf
import maya.cmds as cmds
import source.usd_tool_utils as usd_utils

cache_path = "directory" # get from the ui

def cache_rig(stage_dir, rig_name, start, end, euler=0):

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


def find_rigs(stage):
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
    
