try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

from origo.builder import components
from origo.base import rigdata
import inspect
import json
import os
import importlib


class RigAddComponentPanel(QtWidgets.QFrame):
    """This Panel is the main widget in Edit Project """


    def __init__(self, ui):
        super(RigAddComponentPanel, self).__init__(parent=None)

        self.ui = ui
        self.currentMod = None
        self.setObjectName('RigAddComponentPanel')

        self.setLayout(QtWidgets.QVBoxLayout())
        self.layout().setContentsMargins(5, 5, 5 ,5 )
        self.layout().setSpacing(5)
        self.layout().setAlignment(QtCore.Qt.AlignTop)

        banner = QtWidgets.QHBoxLayout()
        banner.setAlignment(QtCore.Qt.AlignCenter)
        iconlabel = QtWidgets.QLabel()

        titleicon = QtGui.QPixmap(':/build.png')
        titleicon = titleicon.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        iconlabel.setPixmap(titleicon)

        title = QtWidgets.QLabel('Add New Component')

        banner.addWidget(iconlabel)
        banner.addWidget(title)

        self.layout().addLayout(banner)

        data = components.getAvailableComponents()

        self.splitter = QtWidgets.QSplitter(QtCore.Qt.Vertical)

        self.tree = QtWidgets.QTreeWidget()
        self.tree.setColumnCount(1)
        self.splitter.addWidget(self.tree)

        for app in data.keys():
            appItem = QtWidgets.QTreeWidgetItem([app, ""])
            appItem.setIcon(0, QtGui.QIcon(':/layer.png'))
            self.tree.addTopLevelItem(appItem)

            for folder in data[app].keys():
                folderItem = QtWidgets.QTreeWidgetItem([folder, ""])
                folderItem.setIcon(0, QtGui.QIcon(':/layer.png'))
                appItem.addChild(folderItem)

                for component in data[app][folder]:
                    compnent_name = component.rpartition('.')[2]
                    modItem = QtWidgets.QTreeWidgetItem([compnent_name, component])
                    modItem.setIcon(0, QtGui.QIcon(':/package.png'))
                    folderItem.addChild(modItem)

        self.tree.itemClicked.connect(self.itemSelected)

        self.modinfo = QtWidgets.QTextEdit()
        self.modinfo.setReadOnly(True)

        self.splitter.addWidget(self.modinfo)

        self.layout().addWidget(self.splitter)

        self.addbutton = QtWidgets.QPushButton(' + Add ')
        self.addbutton.setEnabled(False)

        hlayout = QtWidgets.QHBoxLayout()
        #hlayout.setAlignment(QtCore.Qt.AlignCenter)

        hlayout.addWidget(self.addbutton)

        self.addLayerBtn = QtWidgets.QPushButton(' + Add Layer')
        hlayout.addWidget(self.addLayerBtn)

        self.addLayerBtn.clicked.connect(self.addLayer)
        self.addbutton.clicked.connect(self.addModule)

        self.layout().addLayout(hlayout)


    def itemSelected(self, item):
        mod = item.text(1)

        if mod == "":
            self.modinfo.setHtml('Folder')
            self.currentMod = None
            self.addbutton.setEnabled(False)
            return


        docs = components.getDocFromMod(mod)


        if docs != 'None': self.modinfo.setHtml(docs)
        else: self.modinfo.setHtml('Missing docstring')

        self.currentMod = mod
        self.addbutton.setEnabled(True)

    def addModule(self):

        if not self.currentMod: return

        buildcls = components.getBuildClassFromMod(self.currentMod)
        modobj = importlib.import_module(self.currentMod)
        clsfnc = getattr(modobj, buildcls)

        print self.ui

        self.ui._rigcontrol.addComponent(clsfnc)

    def addLayer(self):
        self.ui._rigcontrol.addComponent(rigdata.RigLayer)
