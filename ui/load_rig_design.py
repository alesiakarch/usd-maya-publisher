# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'load_rig_design.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_Load_Rig(object):
    def setupUi(self, Load_Rig):
        if not Load_Rig.objectName():
            Load_Rig.setObjectName(u"Load_Rig")
        Load_Rig.resize(634, 218)
        self.gridLayout = QGridLayout(Load_Rig)
        self.gridLayout.setObjectName(u"gridLayout")
        self.groupBox = QGroupBox(Load_Rig)
        self.groupBox.setObjectName(u"groupBox")
        self.gridLayout_2 = QGridLayout(self.groupBox)
        self.gridLayout_2.setObjectName(u"gridLayout_2")
        self.browse_rig_button = QPushButton(self.groupBox)
        self.browse_rig_button.setObjectName(u"browse_rig_button")

        self.gridLayout_2.addWidget(self.browse_rig_button, 2, 3, 1, 1)

        self.rig_picker = QLineEdit(self.groupBox)
        self.rig_picker.setObjectName(u"rig_picker")

        self.gridLayout_2.addWidget(self.rig_picker, 2, 2, 1, 1)

        self.usd_dir_label = QLabel(self.groupBox)
        self.usd_dir_label.setObjectName(u"usd_dir_label")

        self.gridLayout_2.addWidget(self.usd_dir_label, 1, 0, 1, 1)

        self.choose_rig_label = QLabel(self.groupBox)
        self.choose_rig_label.setObjectName(u"choose_rig_label")

        self.gridLayout_2.addWidget(self.choose_rig_label, 2, 0, 1, 1)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout_2.addItem(self.horizontalSpacer, 3, 0, 1, 4)

        self.lineEdit = QLineEdit(self.groupBox)
        self.lineEdit.setObjectName(u"lineEdit")

        self.gridLayout_2.addWidget(self.lineEdit, 1, 1, 1, 2)

        self.browse_dir_button = QPushButton(self.groupBox)
        self.browse_dir_button.setObjectName(u"browse_dir_button")

        self.gridLayout_2.addWidget(self.browse_dir_button, 1, 3, 1, 1)

        self.load_rig_button = QPushButton(self.groupBox)
        self.load_rig_button.setObjectName(u"load_rig_button")

        self.gridLayout_2.addWidget(self.load_rig_button, 4, 3, 1, 1)


        self.gridLayout.addWidget(self.groupBox, 0, 0, 1, 1)


        self.retranslateUi(Load_Rig)

        QMetaObject.connectSlotsByName(Load_Rig)
    # setupUi

    def retranslateUi(self, Load_Rig):
        Load_Rig.setWindowTitle(QCoreApplication.translate("Load_Rig", u"Form", None))
        self.groupBox.setTitle(QCoreApplication.translate("Load_Rig", u"Rig Loader", None))
        self.browse_rig_button.setText(QCoreApplication.translate("Load_Rig", u"Browse", None))
        self.usd_dir_label.setText(QCoreApplication.translate("Load_Rig", u"Set Usd Directory", None))
        self.choose_rig_label.setText(QCoreApplication.translate("Load_Rig", u"Choose Rig", None))
        self.browse_dir_button.setText(QCoreApplication.translate("Load_Rig", u"Browse", None))
        self.load_rig_button.setText(QCoreApplication.translate("Load_Rig", u"Load Rig", None))
    # retranslateUi

