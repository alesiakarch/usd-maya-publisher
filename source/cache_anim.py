# Cache anim button
# Fetches all available rigs in the usd stage
# Gives an option to select them
# Cache selected

import pathlib
import re
from pxr import Usd, Sdf
import maya.cmds as cmds
import source.usd_tool_utils as usd_utils

cache_path = "directory" # get from the ui
start_frame = 1 #get from ui
end_frame = 10 #get from ui
euler_filter = 0 #get from ui

def cache_anim_button():
    """
    Cache the chosen rig into a usd cache
    """
    # activate stage for finding and writing out things
    stage = usd_utils.get_stage()

    # find rigs in stage, pass them to the ui
    rigs = []
    rigs = find_rigs(stage) # returns a list of paths to rigs    

    # react to users selection from the ui and select them in usd stage
    caching_rigs = []
    caching_rigs = select_rig()

    for rig in caching_rigs:
        cache_rig(rig)


def cache_rig(cache_dir, rig_name, start, end, euler):


    
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

    output_path = f"{cache_dir}/{rig_name}_{index:03d}"

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
    
