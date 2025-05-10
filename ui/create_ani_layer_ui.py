# Create ANI layer GUI
from PySide2.QtWidgets import QApplication, QDialog, QWidget
from shiboken2 import wrapInstance
import maya.OpenMayaUI as OpenMaya
from ui.create_ani_layer_design import Ui_CreateANILayer

class CreateAniLayerUI(QDialog):
    def __init__(self, parent = None):
        print("Initializing Create ANI Layer UI")
        # Get maya main window to parent the UI to
        main_window_ptr = OpenMaya.MQtUtil.mainWindow()
        main_window = wrapInstance(int(main_window_ptr), QWidget)
        super(CreateAniLayerUI, self).__init__(main_window)
        self.ui = Ui_CreateANILayer()
        self.ui.setupUi(self)

def run_create_ani_layer_ui():
    print("Starting Create ANI Layer UI")
    try:
        dialog = CreateAniLayerUI()
        dialog.show()
    except Exception as e:
        print(f"Couldn't load Create ANI layer UI: {e}")