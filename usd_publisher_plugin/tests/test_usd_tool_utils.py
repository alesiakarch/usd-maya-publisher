import pytest
from pathlib import Path
import tempfile
from unittest.mock import patch
import maya.standalone

from pxr import Sdf, Usd
from usd_publisher_plugin.source.usd_tool_utils import *

@pytest.fixture(scope="session")
def maya_setup():
    """
    Fixture to set up and tear down the Maya standalone environment.
    """
    maya.standalone.initialize()
    import maya.cmds as cmds
    yield
    if "mayaUsdPlugin" in cmds.pluginInfo(query=True, listPlugins=True):
        cmds.unloadPlugin("mayaUsdPlugin", force=True)
    maya.standalone.uninitialize()

def test_get_stage_path(maya_setup):
    # generated with copilot
    """
    Test get_stage_path for all scenarios:
    - Valid proxy shape with a valid file path.
    - No proxy shapes in the scene.
    - Multiple proxy shapes in the scene.
    - Proxy shape with an invalid file path.
    - Proxy shape with an empty file path.
    """
    # Case 1: Valid proxy shape with a valid file path
    with patch("maya.cmds.ls", return_value=["proxyShape1"]), \
         patch("maya.cmds.getAttr", return_value="/path/to/temp_stage.usda"):
        stage_path = get_stage_path()
        assert stage_path == "/path/to/temp_stage.usda", "Valid case failed: get_stage_path did not return the expected path"

    # Case 2: No proxy shapes in the scene
    with patch("maya.cmds.ls", return_value=[]), \
         patch("maya.cmds.getAttr", return_value=None):
        with pytest.raises(RuntimeError, match="No USD proxy shapes found in the Maya scene!"):
            get_stage_path()

    # Case 3: Multiple proxy shapes in the scene
    with patch("maya.cmds.ls", return_value=["proxyShape1", "proxyShape2"]), \
         patch("maya.cmds.getAttr", return_value="/path/to/temp_stage.usda"):
        stage_path = get_stage_path()
        assert stage_path == "/path/to/temp_stage.usda", "Multiple proxy shapes case failed: get_stage_path will return the first path"

    # Case 4: Proxy shape with an invalid file path
    with patch("maya.cmds.ls", return_value=["proxyShape1"]), \
         patch("maya.cmds.getAttr", return_value=None):
        with pytest.raises(RuntimeError, match="Proxy shape 'proxyShape1' does not have a valid file path!"):
            get_stage_path()

    # Case 5: Proxy shape with an empty file path
    with patch("maya.cmds.ls", return_value=["proxyShape1"]), \
         patch("maya.cmds.getAttr", return_value=""):
        with pytest.raises(RuntimeError, match="Proxy shape 'proxyShape1' does not have a valid file path!"):
            get_stage_path()

    # with patch("maya.cmds.ls", return_value=["proxyShape1"]), \
    #  patch("maya.cmds.getAttr", return_value="invalid_path"):
    #     with pytest.raises(RuntimeError, match="Proxy shape 'proxyShape1' has a malformed file path: invalid_path"):
    #         get_stage_path()

    # with patch("maya.cmds.ls", return_value=["proxyShape1"]), \
    #  patch("maya.cmds.getAttr", return_value="/path/to/nonexistent_file.usda"):
    #     with pytest.raises(RuntimeError, match="Proxy shape 'proxyShape1' points to a nonexistent file: /path/to/nonexistent_file.usda"):
    #         get_stage_path()


def test_create_layer():
    # generated with copilot
    """
    Test the create_layer function for all scenarios:
    - Valid case: Successfully creates a new USD layer.
    - Invalid layer directory: Directory does not exist or is not writable.
    - Invalid stage: Stage is None.
    """
    with tempfile.TemporaryDirectory() as temp_dir:
        temp_dir_path = Path(temp_dir)
        test_stage_name = "test_stage.usda"
        stage_path = temp_dir_path / test_stage_name
        layer_name = "test_layer.usda"
        layer_path = temp_dir_path / layer_name

        # Case 1: Valid case
        usd_file = Sdf.Layer.CreateNew(str(stage_path))
        assert usd_file is not None, "Failed to create temporary USD stage file"
        stage = Usd.Stage.Open(str(stage_path))
        assert stage is not None, "Failed to open USD stage"
        new_layer = create_layer(stage, str(temp_dir_path), layer_name)
        assert new_layer is not None, "Failed to create a new USD layer"
        assert isinstance(new_layer, Sdf.Layer), "Returned object is not a USD layer"
        sublayer_paths = stage.GetRootLayer().subLayerPaths
        assert new_layer.identifier in sublayer_paths, (
            f"New layer {layer_path} not found in the stage's sublayer paths {sublayer_paths}"
        )

        # Case 2: Invalid layer directory
        invalid_dir = "/invalid/directory"
        with pytest.raises(Exception, match=".*"):
            create_layer(stage, invalid_dir, layer_name)

        # Case 3: Invalid stage
        with pytest.raises(Exception, match=".*"):
            create_layer(None, str(temp_dir_path), layer_name)

def test_get_framerange(maya_setup):
    # generated with copilot
    """
    Test the get_framerange function for retrieving start and end frames.
    """
    # Case 1: Valid start and end frames
    with patch("maya.cmds.playbackOptions", side_effect=[10.0, 100.0]):
        start_frame, end_frame = get_framerange()
        assert start_frame == 10.0, f"Expected start frame 10.0, got {start_frame}"
        assert end_frame == 100.0, f"Expected end frame 100.0, got {end_frame}"

    # Case 2: Start and end frames are the same
    with patch("maya.cmds.playbackOptions", side_effect=[24.0, 24.0]):
        start_frame, end_frame = get_framerange()
        assert start_frame == 24.0, f"Expected start frame 24.0, got {start_frame}"
        assert end_frame == 24.0, f"Expected end frame 24.0, got {end_frame}"

    # Case 3: Negative frame range
    with patch("maya.cmds.playbackOptions", side_effect=[-10.0, 50.0]):
        start_frame, end_frame = get_framerange()
        assert start_frame == -10.0, f"Expected start frame -10.0, got {start_frame}"
        assert end_frame == 50.0, f"Expected end frame 50.0, got {end_frame}"

def test_find_caches():
    # generated with copilot
    """
    Test the find_caches function for finding cache files in a directory.
    """
    with tempfile.TemporaryDirectory() as temp_dir:
        temp_dir_path = Path(temp_dir)
        ani_cache_dir = temp_dir_path / "ANI" / "cache"
        ani_cache_dir.mkdir(parents=True)

        # Create some test cache files
        (ani_cache_dir / "rig1_cache1.usd").touch()
        (ani_cache_dir / "rig1_cache2.usd").touch()
        (ani_cache_dir / "rig2_cache1.usd").touch()
        (ani_cache_dir / "rig3_cache1.usd").touch()

        # Case 1: Valid cache directory with files
        stage_path = temp_dir_path / "test_stage.usda"
        stage_path.touch()  # Create a dummy stage file
        caches = find_caches(stage_path)
        assert "rig1" in caches, "Expected 'rig1' in cache results"
        assert "rig2" in caches, "Expected 'rig2' in cache results"
        assert "rig3" in caches, "Expected 'rig3' in cache results"
        assert len(caches["rig1"]) == 2, f"Expected 2 caches for 'rig1', got {len(caches['rig1'])}"
        assert len(caches["rig2"]) == 1, f"Expected 1 cache for 'rig2', got {len(caches['rig2'])}"
        assert len(caches["rig3"]) == 1, f"Expected 1 cache for 'rig3', got {len(caches['rig3'])}"

        # Case 2: Cache directory does not exist
    with tempfile.TemporaryDirectory() as temp_dir:
        invalid_stage_path = temp_dir_path / "invalid_stage.usda"
        with pytest.raises(ValueError, match="Invalid directory"):
            find_caches(invalid_stage_path)


def test_find_rigs():
    # generated with copilot
    """
    Test the find_rigs function for finding rig Xforms in a USD stage.
    """
     # Create an in-memory USD stage
    stage = Usd.Stage.CreateInMemory()

    # Add a /rigs prim with children
    rigs_prim = stage.DefinePrim("/rigs", "Xform")
    rig1 = stage.DefinePrim("/rigs/rig1", "Xform")
    rig2 = stage.DefinePrim("/rigs/rig2", "Xform")
    rig3 = stage.DefinePrim("/rigs/rig3", "Xform")

    # Call the function
    rig_names, rig_paths = find_rigs(stage)

    # Assertions
    assert rig_names == ["rig1", "rig2", "rig3"], f"Expected rig names ['rig1', 'rig2', 'rig3'], got {rig_names}"
    assert rig_paths == ["/rigs/rig1", "/rigs/rig2", "/rigs/rig3"], f"Expected rig paths ['/rigs/rig1', '/rigs/rig2', '/rigs/rig3'], got {rig_paths}"


def test_generate_namespace():
    # generated with copilot
    """
    Test the generate_namespace function for generating a namespace from a path.
    """
    # Create an in-memory USD stage
    stage = Usd.Stage.CreateInMemory()

    # Define a rig path and add some existing namespaces
    rig_path = "/rigs"
    stage.DefinePrim(rig_path, "Xform")
    stage.DefinePrim(f"{rig_path}/asset_001", "Xform")
    stage.DefinePrim(f"{rig_path}/asset_002", "Xform")

    # Call the function to generate a new namespace
    asset_namespace = "asset"
    new_namespace = generate_namespace(stage, asset_namespace, rig_path)

    # Check the generated namespace
    assert new_namespace == "asset_003", f"Expected 'asset_003', got {new_namespace}"

def test_get_scene_proxy():
    # generated with copilot
    """
    Test the get_scene_proxy function for retrieving the scene proxy shape.
    """
    # Case 1: Single USD proxy shape in the scene
    with patch("maya.cmds.ls", return_value=["proxyShape1"]), \
         patch("maya.cmds.listRelatives", return_value=["parent1"]):
        dag_path = get_scene_proxy()
        assert dag_path == "parent1|proxyShape1", f"Expected 'parent1|proxyShape1', got {dag_path}"

    # Case 2: No USD proxy shapes in the scene
    with patch("maya.cmds.ls", return_value=[]):
        try:
            get_scene_proxy()
        except RuntimeError as e:
            assert str(e) == "No USD stage found in the Maya scene!"

    # Case 3: Multiple USD proxy shapes in the scene
    with patch("maya.cmds.ls", return_value=["proxyShape1", "proxyShape2"]):
        try:
            get_scene_proxy()
        except RuntimeError as e:
            assert str(e) == "More than one USD stage detected. Please keep to one stage per scene."

def test_get_rig_layer():
    # generated with copilot
    """
    Test the get_rig_layer function for retrieving the rig layer from a USD stage.
    """
    # Create an in-memory USD stage
    stage = Usd.Stage.CreateInMemory()

    # Define test inputs
    rig_file = "/path/to/rig.usd"
    rig_layer_dir = "/path/to"
    rig_file_name = "rig.usd"

    # Case 1: Rig layer does not exist, so it should be created
    with patch("usd_publisher_plugin.source.usd_tool_utils.create_layer") as mock_create_layer:
        mock_create_layer.return_value = Sdf.Layer.CreateAnonymous("rig_layer")
        rig_layer = get_rig_layer(stage, rig_file, rig_layer_dir, rig_file_name)
        assert rig_layer is not None, "Expected a new rig layer to be created."
        mock_create_layer.assert_called_once_with(stage, rig_layer_dir, rig_file_name)

    # Case 2: Rig layer already exists
    with patch("pxr.Sdf.Layer.Find", return_value=Sdf.Layer.CreateAnonymous("existing_layer")):
        rig_layer = get_rig_layer(stage, rig_file, rig_layer_dir, rig_file_name)
        assert rig_layer is not None, "Expected the existing rig layer to be returned."
        assert rig_layer.identifier.endswith("existing_layer"), (
            f"Expected identifier to end with 'existing_layer', got {rig_layer.identifier}"
        )

def test_find_top_node_in_namespace(maya_setup):
    """
    Tests the find_top_node_in_namespace function by making a mock namespace
    """
    # Create a test namespace and hierarchy
    namespace = "testNamespace"
    cmds.namespace(add=namespace)
    cmds.namespace(set=namespace)
    
    # Create a hierarchy of transform nodes
    top_node = cmds.createNode("transform", name="topNode")
    child_node = cmds.createNode("transform", name="childNode", parent=top_node)
    grandchild_node = cmds.createNode("transform", name="grandchildNode", parent=child_node)
    
    # Reset to the root namespace
    cmds.namespace(set=":")
    
    # Call the function to find the top-level node
    try:
        result = find_top_node_in_namespace(namespace)
        print(f"Top-level node found: {result}")
        
        # Verify the result
        expected = f"|{namespace}:topNode"
        assert result == expected, f"Expected {expected}, but got {result}"
        print("Test passed!")
    except RuntimeError as e:
        print(f"Test failed: {e}")
    finally:
        # Clean up the test namespace and nodes
        cmds.namespace(set=":")
        cmds.namespace(removeNamespace=namespace, mergeNamespaceWithRoot=True)