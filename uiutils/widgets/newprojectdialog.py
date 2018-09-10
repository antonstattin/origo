
try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui



class NewProjectDialog(QtWidgets.QDialog)

    def __init__(self, rigcontrol, parent=None):

        self.setLayout(QtWidgets.QHBoxLayout())

        self._rigcontrol = rigcontrol
        self._rootTree = QtWidgets.QTreeView()
        self._filemodel = QtWidgets.QFileSystemModel()

        self._rootTree.setModel(self._filemodel)

        self.layout().addWidget(self._rootTree)
