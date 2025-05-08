# Load Rig GUI
from PySide2.QtWidgets import QApplication, QDialog
from load_rig_design import Ui_Load_Rig
#import source.load_rig

class LoadRigUI(QDialog):
    def __init__(self, parent = None):
        super(LoadRigUI, self).__init__()
        self.ui = Ui_Load_Rig()
        self.ui.setupUi(self)
        #loadUi("load_rig_design.ui", self)





def run_load_rig_ui():
    print("Loading app")
    app = QApplication.instance() # Get maya QApplication
    if not app:
        app = QApplication([]) # if there isnt an instance, make one

    dialog = LoadRigUI()
    dialog.show()

    app.exec_()



