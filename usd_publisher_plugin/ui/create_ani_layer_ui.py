# Create ANI layer GUI
from PySide2.QtWidgets import QApplication, QDialog, QWidget, QTreeWidgetItem
from PySide2.QtCore import Qt
from shiboken2 import wrapInstance
import maya.OpenMayaUI as OpenMaya
from pathlib import Path
from pxr import Usd
from usd_publisher_plugin.ui.create_ani_layer_design import Ui_CreateANILayer
import usd_publisher_plugin.source.create_anim_layer as create_ani

class CreateAniLayerUI(QDialog):
    def __init__(self, parent = None):
        print("Initializing Create ANI Layer UI")
        # Get maya main window to parent the UI to
        main_window_ptr = OpenMaya.MQtUtil.mainWindow()
        main_window = wrapInstance(int(main_window_ptr), QWidget)
        super(CreateAniLayerUI, self).__init__(main_window)
        self.ui = Ui_CreateANILayer()
        self.ui.setupUi(self)

        # Open stage
        stage_path = create_ani.usd_utils.get_stage_path()
        stage = Usd.Stage.Open(stage_path)

        caches = create_ani.usd_utils.find_caches(stage_path)
        print(f"Caches found: {caches}")  # Debugging statement
        self.populate_caches_list(caches)
        # activates the cache latest at the start
        self.latest_cache_ticked(self.ui.latest_cache_checkbox.checkState())

        self.ui.latest_cache_checkbox.stateChanged.connect(self.latest_cache_ticked)
        self.ui.create_button.clicked.connect(self.create_ani_layer_pressed)
    
    def populate_caches_list(self, rigs):
        """
        Populate QListWidgets with names of caches
        """
        self.ui.rigs_caches_tree.clear()

        for rig, caches in rigs.items():
            # create a rig folder
            rig_item = QTreeWidgetItem([rig])
            rig_item.setFlags(rig_item.flags() & ~Qt.ItemIsSelectable) # only children are selectable now

            # add caches to that folder
            for cache in caches:
                cache_name = Path(cache).name
                cache_item = QTreeWidgetItem([cache_name])
                cache_item.setData(0, Qt.UserRole, str(cache))
                rig_item.addChild(cache_item)

            # add the rigs to the tree
            self.ui.rigs_caches_tree.addTopLevelItem(rig_item)
            

    def latest_cache_ticked(self, state):

        self.selected_caches = []

        if state == Qt.Checked:
            for i in range(self.ui.rigs_caches_tree.topLevelItemCount()):
                rig_item = self.ui.rigs_caches_tree.topLevelItem(i)
                latest_cache = None
                highest_version = -1

                # Iterate through child caches
                for j in range(rig_item.childCount()):
                    cache_item = rig_item.child(j)
                    cache_name = cache_item.text(0)
                    cache_stem = Path(cache_name).stem
                    version_str = cache_stem.split("_")[-1] # get the last thing after _

                    version = int(version_str)
                    if version > highest_version:
                        highest_version = version
                        latest_cache = cache_item
                    
                if latest_cache:
                    latest_cache.setSelected(True)
                    self.selected_caches.append(latest_cache.data(0, Qt.UserRole))
        
        else:
            # Deselect all
            self.ui.rigs_caches_tree.clearSelection()
                    
        
    def cache_list_selected(self):
        """
        Stores selected items in a list
        """
        selected_items = self.ui.rigs_caches_tree.selectedItems()
        self.selected_caches = [item.data(0, Qt.UserRole) for item in selected_items] 
        print(f"Selected rigs: {self.selected_caches}")

    def create_ani_layer_pressed(self):

        
        create_ani.create_anim_layer(self.selected_caches)

def run_create_ani_layer_ui():
    print("Starting Create ANI Layer UI")
    try:
        dialog = CreateAniLayerUI()
        dialog.show()
    except Exception as e:
        print(f"Couldn't load Create ANI layer UI: {e}")