import pytest
from pathlib import Path
import tempfile
from unittest.mock import patch
import maya.standalone

from pxr import Sdf, Usd
from usd_publisher_plugin.source.cache_anim import cache_rig

@pytest.fixture(scope="session")
def maya_setup():
    """
    Fixture to set up and tear down the Maya standalone environment.
    """
    maya.standalone.initialize()
    import maya.cmds as cmds
    # Load the mayaUsdPlugin
    if not cmds.pluginInfo("mayaUsdPlugin", query=True, loaded=True):
        cmds.loadPlugin("mayaUsdPlugin")

    yield

    if "mayaUsdPlugin" in cmds.pluginInfo(query=True, listPlugins=True):
        cmds.unloadPlugin("mayaUsdPlugin", force=True)
    maya.standalone.uninitialize()


def test_cache_rig(maya_setup):
    # generated with copilot
    """
    Test the cache_rig function.
    """
    import maya.cmds as cmds
    
    with tempfile.TemporaryDirectory() as temp_dir:
        stage_dir = Path(temp_dir)
        rig_name = "test_rig"
        namespace = f"{rig_name}_np"

        # Create a dummy rig with namespace in Maya
        cmds.namespace(add=namespace)
        cmds.namespace(set=namespace)
        rig_root = cmds.polyCube(name="Example_rig")[0]
        control_grp = cmds.group(empty=True, name="Example_CNTRL_GRP")
        cmds.parent(control_grp, rig_root)
        cmds.namespace(set=":")

        # Verify the rig structure
        assert cmds.objExists(f"{namespace}:Example_rig"), "Rig root was not created in the namespace."
        assert cmds.objExists(f"{namespace}:Example_CNTRL_GRP"), "Control group was not created in the namespace."

        # Call the function
        cache_rig(stage_dir, rig_name, 1, 24)

        # Verify that the cache directory was created
        cache_dir = stage_dir / "ANI" / "cache"
        assert cache_dir.exists(), "Cache directory was not created."

        # Verify that the USD file was exported
        usd_files = list(cache_dir.glob("*.usd"))
        assert len(usd_files) == 1, "No USD file was exported."
        assert usd_files[0].name.startswith(f"{rig_name}_"), "Exported file name is incorrect."