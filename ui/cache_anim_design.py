# -*- coding: utf-8 -*-

################################################################################
## Form generated from reading UI file 'cache_anim_design.ui'
##
## Created by: Qt User Interface Compiler version 5.15.2
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *


class Ui_CacheAnim(object):
    def setupUi(self, CacheAnim):
        if not CacheAnim.objectName():
            CacheAnim.setObjectName(u"CacheAnim")
        CacheAnim.resize(542, 296)
        self.cache_ani_box = QGroupBox(CacheAnim)
        self.cache_ani_box.setObjectName(u"cache_ani_box")
        self.cache_ani_box.setGeometry(QRect(10, 20, 521, 261))
        self.gridLayout = QGridLayout(self.cache_ani_box)
        self.gridLayout.setObjectName(u"gridLayout")
        self.euler_chbox = QCheckBox(self.cache_ani_box)
        self.euler_chbox.setObjectName(u"euler_chbox")

        self.gridLayout.addWidget(self.euler_chbox, 2, 0, 1, 4)

        self.framerange_start = QLineEdit(self.cache_ani_box)
        self.framerange_start.setObjectName(u"framerange_start")

        self.gridLayout.addWidget(self.framerange_start, 1, 4, 1, 1)

        self.cache_rigs_lb = QLabel(self.cache_ani_box)
        self.cache_rigs_lb.setObjectName(u"cache_rigs_lb")

        self.gridLayout.addWidget(self.cache_rigs_lb, 0, 0, 1, 1)

        self.frameramge_end = QLineEdit(self.cache_ani_box)
        self.frameramge_end.setObjectName(u"frameramge_end")

        self.gridLayout.addWidget(self.frameramge_end, 1, 6, 1, 1)

        self.custon_framerange_chbox = QCheckBox(self.cache_ani_box)
        self.custon_framerange_chbox.setObjectName(u"custon_framerange_chbox")

        self.gridLayout.addWidget(self.custon_framerange_chbox, 1, 0, 1, 2)

        self.end = QLabel(self.cache_ani_box)
        self.end.setObjectName(u"end")

        self.gridLayout.addWidget(self.end, 1, 5, 1, 1)

        self.start = QLabel(self.cache_ani_box)
        self.start.setObjectName(u"start")

        self.gridLayout.addWidget(self.start, 1, 3, 1, 1)

        self.verticalSpacer = QSpacerItem(20, 40, QSizePolicy.Minimum, QSizePolicy.Expanding)

        self.gridLayout.addItem(self.verticalSpacer, 1, 2, 1, 1)

        self.select_all_chbox = QCheckBox(self.cache_ani_box)
        self.select_all_chbox.setObjectName(u"select_all_chbox")

        self.gridLayout.addWidget(self.select_all_chbox, 0, 6, 1, 1)

        self.rigs_list = QListWidget(self.cache_ani_box)
        self.rigs_list.setObjectName(u"rigs_list")

        self.gridLayout.addWidget(self.rigs_list, 0, 1, 1, 4)

        self.cache_anim_pb = QPushButton(self.cache_ani_box)
        self.cache_anim_pb.setObjectName(u"cache_anim_pb")

        self.gridLayout.addWidget(self.cache_anim_pb, 2, 6, 1, 1)


        self.retranslateUi(CacheAnim)

        QMetaObject.connectSlotsByName(CacheAnim)
    # setupUi

    def retranslateUi(self, CacheAnim):
        CacheAnim.setWindowTitle(QCoreApplication.translate("CacheAnim", u"Form", None))
        self.cache_ani_box.setTitle(QCoreApplication.translate("CacheAnim", u"Cache Animation", None))
        self.euler_chbox.setText(QCoreApplication.translate("CacheAnim", u"Euler Filter", None))
        self.cache_rigs_lb.setText(QCoreApplication.translate("CacheAnim", u"Cache Rigs:", None))
        self.custon_framerange_chbox.setText(QCoreApplication.translate("CacheAnim", u"Custom Frame range", None))
        self.end.setText(QCoreApplication.translate("CacheAnim", u"End", None))
        self.start.setText(QCoreApplication.translate("CacheAnim", u"Start", None))
        self.select_all_chbox.setText(QCoreApplication.translate("CacheAnim", u"Select All", None))
        self.cache_anim_pb.setText(QCoreApplication.translate("CacheAnim", u"Cache Anim", None))
    # retranslateUi

