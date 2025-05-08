# Contains reusable functions for USD tools
from pxr import Usd, Sdf, UsdGeom

def get_stage(usd_dir, stage_name):
    """
    Get the USD stage from the USD project root folder.
    """
    stage_path = f"{usd_dir}/{stage_name}"
    print(f"Loading USD stage from: {stage_path}")
    stage = Usd.Stage.Open(stage_path)
    return stage

def create_layer(stage, usd_dir, layer_name):
    """
    Create a new USD layer and add it to the root layer.
    """
    print("Creating new USD layer...")
    layer_path = f"{usd_dir}/{layer_name}"
    usd_layer = Sdf.Layer.CreateNew(layer_path)
    usd_layer.comment = "Created new usd layer"
    
    # append the new layer to the root layer
    stage.GetRootLayer().subLayerPaths.append(usd_layer.identifier)
    print (f"{layer_name} appended to {stage}")
    stage.GetRootLayer().Save()
    return usd_layer
