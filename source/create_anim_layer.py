# takes available caches and writes them into a new anim layer
from pxr import Usd, Sdf, UsdGeom
from pathlib import Path
from collections import defaultdict
import maya.cmds as cmds
import source.usd_tool_utils as usd_utils

def create_anim_layer(caches):
    """
    Create new version of anim layer 
    """
    # initializing the stage 
    stage_path = usd_utils.get_stage_path()
    stage = Usd.Stage.Open(str(stage_path))

    
    stage_dir = Path(stage_path).parent # usd directory
    stage_file = Path(stage_path).name # name of the stage file

    layer_dir =Path(stage_dir) / "ANI" / "layer"
    layer_dir.mkdir(parents=True, exist_ok=True) 

    anim_file_name = Path(stage_file).stem + "_ANI_layer" 

    root_layer = stage.GetRootLayer()
    for layer in root_layer.subLayerPaths[:]:
        if anim_file_name in layer:
            print(f"Removing existing Anim layer from stage: {layer}")
            root_layer.subLayerPaths.remove(layer)

    index = 1
    max_versions = 100
    while index < max_versions:
        anim_layer_name = f"{anim_file_name}_{index:03d}" + Path(stage_file).suffix
        layer_path = layer_dir / anim_layer_name
        if not layer_path.exists():
            break
        index += 1

    #anim_file = stage_dir / anim_file_name # path to ani layer

    anim_layer = usd_utils.create_layer(stage, stage_dir, anim_layer_name )
    print("Set active layer to ANI")
    stage.SetEditTarget(anim_layer) # activate anim layer for editing

    cache_grp = stage.DefinePrim("/Caches", "Xform")

    for cache in caches:
        print("Adding cache references")
        cache_grp.GetReferences().AddReference(str(cache))
    
    anim_layer.Save()
    stage.GetRootLayer().Save()
    print(f"Created anim layer: {anim_file_name}")

def find_caches(stage_path):
    """
    Finds cache files at the directory and return a list for pick up
    """
    stage_dir = Path(stage_path).parent # usd directory
    cache_dir = stage_dir / "ANI" / "cache"

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


