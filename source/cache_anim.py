# Cache anim button
# Fetches all avaialble rigs in the usd stage
# Gives an option to select them
# Cache selected

import pathlib
from pxr import Usd, Sdf
import maya.cmds as cmds
import source.usd_tool_utils as usd_utils

def cache_anim_button():
    """
    Cache the chosen rig into a usd cache
    """
    stage = usd_utils.get_stage()

    cache_anim()

