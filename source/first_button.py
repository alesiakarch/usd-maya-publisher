# idk how main is this yet, for now the name is just a placeholder

# First button: to Load the rig 
# To load the rig the user must already have a USD stage file with the layout of the scene they are working from
# the rig can be loaded a) into the LAY layer, the animated into the ANIM layer, or b) into the ANIM layer only
# I'll hardcode the "rigs" Xform for now to focus on the loading part
# I think the proxy rigs are added to layout to convey which characters are in the scene, and then the animators load the rig into the ANIM layer
import os
import maya.cmds as cmds
from pxr import Usd, Sdf, UsdGeom

# TODO:
# initialise the USD stage
project_root = "/home/s5221034/pipeline-project-alesiakarch/maya_test_project/"
stage = Usd.Stage.Open(f"{project_root}TestScene_stage.usda")

print(project_root)

# create RIG layer
rig_layer_path = "/home/s5221034/pipeline-project-alesiakarch/maya_test_project/Test_Scene_RIG.usda"
rig_layer = Sdf.Layer.CreateNew(rig_layer_path)
rig_layer.comment = "RIG layer containing character rig references"

# add the Rig layer to the root layer and save
stage.GetRootLayer().subLayerPaths.append(rig_layer_path)
print (stage)

stage.GetRootLayer().Save()

# ask user for the asset path 
rig_path = f"{project_root}assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"
stage.SetEditTarget(rig_layer)
prim = stage.DefinePrim("/rigs", "Xform")
loaded_rig = stage.DefinePrim("/rigs/Walee_001", "MayaReference")
ref_path_attr = loaded_rig.CreateAttribute("MayaReference", Sdf.ValueTypeNames.String)
ref_path_attr.set(rig_path)
rig_layer.Save()

stage_shape = "stageShape1"
prim_path = "/rigs/Walle_002"
cmds.mayaUSDCreateMayaReferencePrim(proxyShape = stage_shape, primPath = prim_path, mayaReference = rig_path )

# extract the rig name from the asset path and create an Xform with that name

# load the rig into the Xform created above ("add maya reference") dont forget the namespace

# save RIG layer

import mayaUsdMayaReferenceUtils as mu
import mayaUsdAddMayaReference as mr

# Defining the paths and namespace
ufe_path = "|TestScene_stage|TestScene_stageShape,/rigs"  # Path to the rig's location in the USD stage
maya_ref_path = "/home/alesiakarch/pipeline-project-alesiakarch/maya_test_project/assets/Wall-e_Rigs/Wall-e_RIG_v001.mb"  # Path to the Maya reference
maya_namespace = "Wall_e_RIG_v001"  # Namespace for the Maya reference

# Create Maya reference in USD
mr.createMayaReferencePrim(
    ufePathStr=ufe_path,
    mayaReferencePath=maya_ref_path,
    mayaReferencePrimName = "MayaReference1",
    mayaNamespace=maya_namespace,
    variantSet = ("Walle_maya", "Walle_USD_Cache")
)

help(mr.createMayaReferencePrim)

help(mr)