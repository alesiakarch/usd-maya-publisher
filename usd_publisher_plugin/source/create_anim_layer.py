# takes available caches and writes them into a new anim layer
from pxr import Usd, Sdf, UsdGeom
from pathlib import Path
import maya.cmds as cmds
import usd_publisher_plugin.source.usd_tool_utils as usd_utils

def create_anim_layer(caches):
    """
    Creates new version of anim layer with the list of caches as references.

    This function creates a new animation layer in the USD stage and adds the specified
    cache files as references to that layer. The new layer is saved in the "ANI/layer"
    directory, and the layer name is based on the current stage file name. If a layer
    with the same name already exists, a version number is appended to the new layer name.
    
    Args:
        caches (list): List of cache file paths to be added to the new anim layer.

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

        if index == max_versions:
            raise RuntimeError("Exceeded the max number or layers. Consider deleting old ones.")

    #anim_file = stage_dir / anim_file_name # path to ani layer

    anim_layer = usd_utils.create_layer(stage, layer_dir, anim_layer_name )
    print("Set active layer to ANI")
    stage.SetEditTarget(anim_layer) # activate anim layer for editing

    cache_grp = stage.DefinePrim("/Caches", "Xform")
    print(f"Caches to be added: {caches}")
    for cache in caches:
        print("Adding cache references")
        cache_grp.GetReferences().AddReference(str(cache))
    
    anim_layer.Save()
    stage.GetRootLayer().Save()
    print(f"Created anim layer: {anim_file_name}")




