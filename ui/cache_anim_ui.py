# pyside 2 ui for cache anim button
from PySide2.QtWidgets import QApplication, QDialog, QWidget
from PySide2.QtCore import Qt
from shiboken2 import wrapInstance
import maya.OpenMayaUI as OpenMaya
from ui.cache_anim_design import Ui_CacheAnim
import source.cache_anim as cache
# import cache anim script

class CacheAnimUI(QDialog):
    def __init__(self, parent = None):
        print("Initializing CacheAnim")
        # Get mayas main window to parent the UI to
        main_window_ptr = OpenMaya.MQtUtil.mainWindow()
        main_window = wrapInstance(int(main_window_ptr), QWidget)
        super(CacheAnimUI, self).__init__(main_window)
        self.ui = Ui_CacheAnim()
        self.ui.setupUi(self)

        stage = cache.usd_utils.get_stage("/home/s5221034/pipeline-project-alesiakarch/maya_test_project/", "TestScene_stage.usda")
        rigs, rigs_path = cache.find_rigs(stage)
        self.populate_rigs_list(rigs) # runs populate rigs list at window init

        # when selection in the list widget changes, update rig_list_selected
        self.ui.rigs_list.itemSelectionChanged.connect(self.rig_list_selected)

        # connect the custom framerange tick box 
        self.ui.custom_framerange_chbox.stateChanged.connect(self.custom_framerange_ticked)
        self.start_frame, self.end_frame = cache.usd_utils.get_framerange()
        self.ui.framerange_start.setText(f"{self.start_frame}")
        self.ui.framerange_end.setText(f"{self.end_frame}")

        # connect euler filer
        self.ui.euler_chbox.stateChanged.connect(self.euler_filter_checked)   
        self.ui.euler_filter = 0 

    def populate_rigs_list(self, rigs):
        """
        Populate QListWidget with names of rig Xforms found in the scene
        """
        self.ui.rigs_list.clear() # clears any mess in there
        self.ui.rigs_list.addItems(rigs) # populates the list
    
    def rig_list_selected(self):
        """
        Stores selected items in a list
        """
        selected_items = self.ui.rigs_list.selectedItems()
        self.selected_rigs = [item.text() for item in selected_items] 
        print(f"Selected rigs: {self.selected_rigs}")

    def custom_framerange_ticked(self, state):
        """
        Checks if framerange is custom or not, pulls framerange from scene or allows user to edit
        """
        if state == Qt.Checked:
            # Framerange is custom
            self.ui.framerange_start.setEnabled(True)
            self.start_frame = self.ui.framerange_start.text()

            self.ui.framerange_end.setEnabled(True)
            self.end_frame = self.ui.framerange_end.text()  

        else:
            # Framerange isn't custom, pull from scene
            self.ui.framerange_start.setEnabled(False)
            self.ui.framerange_start.setText(f"{self.start_frame}")

            self.ui.framerange_end.setEnabled(False)
            self.ui.framerange_end.setText(f"{self.end_frame}")

    def euler_filter_checked(self, state):
        """
        Sets euler filter
        """
        if state == Qt.Checked:
            self.euler_filter = 1
        
        else: 
            self.euler_filter = 0

        print(f"{self.euler_filter}")

    def cache_anim_pressed(self, rigs):
        """
        Cache anim
        """
        

        



def run_cache_anim_ui():
    print("Starting Cache Anim UI")
    try:
        dialog = CacheAnimUI()
        dialog.show()
    except Exception as e:
        print(f"Couldn't Load the UI: {e}")

