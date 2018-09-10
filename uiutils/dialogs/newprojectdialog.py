
import logging

# setup logger
logger = logging.getLogger("Origo")

try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

import origo.base.rigdata as rigdata
import os

AVAILABLE_ROOTS = ['Python', 'Maya', 'Blender']

class NewProjectDialog(QtWidgets.QDialog):

    accept = QtCore.Signal(int, rigdata.RigRoot)

    def __init__(self, debugMode=logging.INFO, parent=None):
        super(NewProjectDialog, self).__init__(parent)

        self._root = rigdata.RigRoot

        self._debugMode = debugMode
        self.setWindowTitle("New Project Dialog")
        self.setLayout(QtWidgets.QVBoxLayout())
        self.layout().setContentsMargins(2, 2, 2 ,2 )
        self.layout().setAlignment(QtCore.Qt.AlignTop)


        settings_layout = QtWidgets.QGridLayout()

        settings_layout.setContentsMargins(2, 2, 2 ,2 )

        self.projecttype = QtWidgets.QComboBox()
        for root in AVAILABLE_ROOTS:
            self.projecttype.addItem(root)

        self.projectname = QtWidgets.QLineEdit()
        self.projectname.setPlaceholderText('Name of project')

        self.projectpath = QtWidgets.QLineEdit()
        self.projectpath.setPlaceholderText('Save path')

        self.browspath = QtWidgets.QPushButton('browse')
        self.browspath.setMaximumWidth(45)


        settings_layout.addWidget(self.projectname, 0, 1)
        settings_layout.addWidget(self.projecttype, 1, 1)
        settings_layout.addWidget(self.projectpath, 2, 1)
        settings_layout.addWidget(self.browspath, 2, 0)

        self.layout().addLayout(settings_layout)

        self.createBtn = QtWidgets.QPushButton('Create')
        self.createBtn.clicked.connect(self.createProject)
        self.layout().addWidget(self.createBtn)


    def createProject(self):

        projectname = self.projectname.text()
        projectpath = self.projectpath.text()

        if projectname == "": return
        if not os.path.isdir(projectpath): print ' its not a valid path'

        root_type = self.projecttype.currentText()

        if root_type == 'Python' or root_type == 'Blender' :
            self._root = rigdata.RigRoot(projectname, projectpath)
        elif root_type == 'Maya':
            import origo.builders.roots.maya.mrigroot as mrigroot
            self._root = mrigroot.MRigRoot(projectname, projectpath)


        self.accept.emit(self._debugMode, self._root)
        self.close()
