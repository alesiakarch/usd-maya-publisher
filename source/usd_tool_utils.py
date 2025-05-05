# Contains reusable functions for USD tools
from pxr import Usd, Sdf, UsdGeom

def get_stage(usd_dir, stage_name):
    """
    Get the USD stage from the USD project root folder.
    """
    stage = Usd.Stage.Open(f"{usd_dir}{stage_name}")
    return stage

def create_layer(usd_dir, layer_name):
    """
    Create a new USD layer and add it to the root layer.
    """
    ...