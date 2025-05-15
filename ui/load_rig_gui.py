# Load Rig GUI
from PySide2.QtWidgets import QApplication, QDialog, QWidget, QFileDialog
from shiboken2 import wrapInstance
import maya.OpenMayaUI as OpenMaya
from ui.load_rig_design import Ui_Load_Rig
import source.load_rig as ld
 
print("load_rig_gui.py is being imported")

class LoadRigUI(QDialog):
    def __init__(self, parent = None):
        print("initializing LoadRigUI")
        # Get mayas main window to parent the UI to
        main_window_ptr = OpenMaya.MQtUtil.mainWindow()
        main_window = wrapInstance(int(main_window_ptr), QWidget)
        super(LoadRigUI, self).__init__(main_window)
        self.ui = Ui_Load_Rig() 
        self.ui.setupUi(self)
        self.ui.browse_dir_button.clicked.connect(self.browse_root_pressed)
        self.ui.browse_rig_button.clicked.connect(self.browse_rig_pressed)
        self.ui.load_rig_button.clicked.connect(self.load_rig_pressed)
      
    def browse_root_pressed(self):
        usd_dir = QFileDialog.getExistingDirectory(self, "Select Usd Root Directory", "./")
        if usd_dir:
            print(f"Usd Root Directory: {usd_dir}")
            self.ui.root_picker.setText(usd_dir)
        
    def browse_rig_pressed(self):
        rig_path = QFileDialog.getOpenFileName(self, "Select Rig File", "./", "Maya Files (*.mb *.ma)")
        if rig_path:
            print(f"Selected Rig: {rig_path}")        
            self.ui.rig_picker.setText(rig_path[0])
            self.rig_path = rig_path
      
    def load_rig_pressed(self):
        # get the variables
        usd_root_dir = self.ui.root_picker.text()
        rig_file = self.ui.rig_picker.text()

        ld.load_rig(self.rig_path)

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
    