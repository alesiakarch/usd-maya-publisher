# Load Rig GUI
from PySide2.QtWidgets import QApplication, QDialog, QWidget
from shiboken2 import wrapInstance
import maya.OpenMayaUI as OpenMaya
from load_rig_design import Ui_Load_Rig
#import source.load_rig

print("load_rig_gui.py is being imported")

class LoadRigUI(QDialog):
    def __init__(self, parent = None):
        print("initializing LoadRigUI")
        # Get mayas main window to parent the UI to
        main_window_ptr = OpenMaya.MQtUtil.mainWindow()
        main_window = wrapInstance(int(main_window_ptr), QWidget)
        print("Loaded maya window")
        super(LoadRigUI, self).__init__(main_window)
        self.ui = Ui_Load_Rig()
        self.ui.setupUi(self)
        #loadUi("load_rig_design.ui", self)


def run_load_rig_ui():
    print("Starting run_load_rig_ui()")  # Debug print
    try:
        print("Before creating dialog")
        dialog = LoadRigUI()
        print("Dialog created")
        dialog.show()
        print("Dialog shown")
    except Exception as e:
        print(f"Error occurred: {e}")
    print("Exiting run_load_rig_ui()")

# if __name__ == "__main__":
#     app = QApplication([])
#     dialog = TestDialog()
#     dialog.show()
#     app.exec_()
