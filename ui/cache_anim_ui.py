# pyside 2 ui for cache anim button
from PySide2.QtWidgets import QApplication, QDialog, QWidget
from shiboken2 import wrapInstance
import maya.OpenMayaUI as OpenMaya
from ui.cache_anim_design import Ui_CacheAnim

class CacheAnimUI(QDialog):
    def __init__(self, parent = None):
        print("Initializing CacheAnim")
        # Get mayas main window to parent the UI to
        main_window_ptr = OpenMaya.MQtUtil.mainWindow()
        main_window = wrapInstance(int(main_window_ptr), QWidget)
        super(CacheAnimUI, self).__init__(main_window)
        self.ui = Ui_CacheAnim()
        self.ui.setupUi(self)

def run_cache_anim_ui():
    print("Starting Cache Anim UI")
    try:
        dialog = CacheAnimUI()
        dialog.show()
    except Exception as e:
        print(f"Couldn't Load the UI: {e}")

