# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'create_ani_layer_design.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_CreateANILayer(object):
    def setupUi(self, CreateANILayer):
        if not CreateANILayer.objectName():
            CreateANILayer.setObjectName(u"CreateANILayer")
        CreateANILayer.resize(719, 341)
        self.create_gbox = QGroupBox(CreateANILayer)
        self.create_gbox.setObjectName(u"create_gbox")
        self.create_gbox.setGeometry(QRect(20, 20, 671, 311))
        self.gridLayout = QGridLayout(self.create_gbox)
        self.gridLayout.setObjectName(u"gridLayout")
        self.cache_label = QLabel(self.create_gbox)
        self.cache_label.setObjectName(u"cache_label")

        self.gridLayout.addWidget(self.cache_label, 0, 0, 1, 1)

        self.rigs_caches_tree = QTreeWidget(self.create_gbox)
        __qtreewidgetitem = QTreeWidgetItem()
        __qtreewidgetitem.setText(0, u"1");
        self.rigs_caches_tree.setHeaderItem(__qtreewidgetitem)
        self.rigs_caches_tree.setObjectName(u"rigs_caches_tree")
        self.rigs_caches_tree.setLineWidth(1)
        self.rigs_caches_tree.header().setVisible(False)

        self.gridLayout.addWidget(self.rigs_caches_tree, 0, 1, 1, 4)

        self.horizontalSpacer_3 = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout.addItem(self.horizontalSpacer_3, 1, 0, 1, 1)

        self.checkBox = QCheckBox(self.create_gbox)
        self.checkBox.setObjectName(u"checkBox")
        self.checkBox.setChecked(True)

        self.gridLayout.addWidget(self.checkBox, 2, 0, 1, 2)

        self.framerange_chbox = QCheckBox(self.create_gbox)
        self.framerange_chbox.setObjectName(u"framerange_chbox")

        self.gridLayout.addWidget(self.framerange_chbox, 3, 0, 1, 2)

        self.start_label = QLabel(self.create_gbox)
        self.start_label.setObjectName(u"start_label")

        self.gridLayout.addWidget(self.start_label, 3, 2, 1, 1)

        self.start = QLineEdit(self.create_gbox)
        self.start.setObjectName(u"start")
        self.start.setReadOnly(False)

        self.gridLayout.addWidget(self.start, 3, 3, 1, 1)

        self.end_label = QLabel(self.create_gbox)
        self.end_label.setObjectName(u"end_label")

        self.gridLayout.addWidget(self.end_label, 3, 4, 1, 1)

        self.end = QLineEdit(self.create_gbox)
        self.end.setObjectName(u"end")

        self.gridLayout.addWidget(self.end, 3, 5, 1, 1)

        self.horizontalSpacer = QSpacerItem(40, 20, QSizePolicy.Expanding, QSizePolicy.Minimum)

        self.gridLayout.addItem(self.horizontalSpacer, 4, 3, 1, 1)

        self.create_button = QPushButton(self.create_gbox)
        self.create_button.setObjectName(u"create_button")

        self.gridLayout.addWidget(self.create_button, 5, 5, 1, 1)


        self.retranslateUi(CreateANILayer)

        QMetaObject.connectSlotsByName(CreateANILayer)
    # setupUi

    def retranslateUi(self, CreateANILayer):
        CreateANILayer.setWindowTitle(QCoreApplication.translate("CreateANILayer", u"Create Anim Layer", None))
        self.create_gbox.setTitle(QCoreApplication.translate("CreateANILayer", u"Create ANI Layer", None))
        self.cache_label.setText(QCoreApplication.translate("CreateANILayer", u"Caches:", None))
        self.checkBox.setText(QCoreApplication.translate("CreateANILayer", u"Assemble Latest Cache", None))
        self.framerange_chbox.setText(QCoreApplication.translate("CreateANILayer", u"Custom Frame range", None))
        self.start_label.setText(QCoreApplication.translate("CreateANILayer", u"Start", None))
        self.end_label.setText(QCoreApplication.translate("CreateANILayer", u"End", None))
        self.create_button.setText(QCoreApplication.translate("CreateANILayer", u"Create ANI Layer", None))
    # retranslateUi

