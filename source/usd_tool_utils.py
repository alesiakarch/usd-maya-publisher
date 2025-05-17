# Contains reusable functions for USD tools
from pxr import Usd, Sdf, UsdGeom
import maya.cmds as cmds

# def get_stage_old(usd_dir, stage_name):
#     """
#     Get the USD stage from the USD project root folder.
#     """
#     stage_path = f"{usd_dir}/{stage_name}"
#     print(f"Loading USD stage from: {stage_path}")
#     stage = Usd.Stage.Open(stage_path)
#     return stage

def get_stage_path():
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
    Create a new USD layer and add it to the root layer.
    """
    print("Creating new USD layer...")
    layer_path = f"{layer_dir}/{layer_name}"
    usd_layer = Sdf.Layer.CreateNew(layer_path)
    usd_layer.comment = f"Created new usd layer {layer_path}"
    
    # append the new layer to the root layer
    stage.GetRootLayer().subLayerPaths.append(usd_layer.identifier)
    print (f"{layer_name} appended to {stage}")
    stage.GetRootLayer().Save()
    return usd_layer

def get_framerange():
    """
    Retrieves start and end frame from the maya scene
    """
    start_frame = cmds.playbackOptions(query = True, minTime = True)
    end_frame = cmds.playbackOptions(query = True, maxTime = True)
    print(f"Framerange: {start_frame} - {end_frame}")
    return start_frame, end_frame


