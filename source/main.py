# idk how main is this yet, for now the name is just a placeholder

# First button: to Load the rig 
# To load the rig the user must already have a USD stage file with the layout of the scene they are working from
# the rig can be loaded a) into the LAY layer, the animated into the ANIM layer, or b) into the ANIM layer only
# I'll hardcode the "rigs" Xform for now to focus on the loading part
# I think the proxy rigs are added to layout to convey which characters are in the scene, and then the animators load the rig into the ANIM layer

from pathlib import Path
from pxr import Usd, Sdf, UsdGeom

# TODO:
# initialise the USD stage
working_dir = Path(__file__).parent # NVidia OpenUSD snippet

stage = Usd.Stage.Open(str(working_dir / "TestScene_stage.usd"))
print (stage)

# create RIG layer

# ask user for the asset path 

# extract the rig name from the asset path and create an Xform with that name

# load the rig into the Xform created above ("add maya reference") dont forget the namespace

# save RIG layer

## Error no module named pxr
