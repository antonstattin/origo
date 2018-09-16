try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

from origo.builder import roots
import inspect
import json
import os

class RigEditProj(QtWidgets.QFrame):
    """This Panel is the main widget in Edit Project """

    def getAvailableRoots(self):
        """ checks root folder for roots and returns them """

        self._rootpath = os.path.dirname(roots.__file__)

        available = ['RigRoot']

        data = {}
        with open(os.path.join(self._rootpath, 'declare.json')) as f:
            data = json.load(f)
            available.extend(data['available'])

        return available


    def __init__(self, parent=None):
        super(RigEditProj, self).__init__(parent)

        self.setObjectName('RigEditProj')

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

        title = QtWidgets.QLabel('Update Project Settings')

        banner.addWidget(iconlabel)
        banner.addWidget(title)

        self.layout().addLayout(banner)

        line = QtWidgets.QFrame()
        line.setFrameShape(QtWidgets.QFrame.HLine)
        line.setFrameShadow(QtWidgets.QFrame.Sunken)

        self.layout().addWidget(line)

        self.optionframe = QtWidgets.QFrame()
        self.optionframe.setObjectName('default-round')

        gridlayout = QtWidgets.QGridLayout()
        self.optionframe.setLayout(gridlayout)

        self.projNameIconlabel = QtWidgets.QLabel()
        self.projNamelabel = QtWidgets.QLabel('Project Name')
        editicon = QtGui.QPixmap(':/editObj.png')
        editicon = editicon.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.projNameIconlabel.setPixmap(editicon)
        self.projNameLineEdit = QtWidgets.QLineEdit()

        gridlayout.addWidget(self.projNameIconlabel, 0, 0)
        gridlayout.addWidget(self.projNamelabel, 0, 1)
        gridlayout.addWidget(self.projNameLineEdit, 0, 2)

        self.projectpathIconlabel = QtWidgets.QLabel()
        saveicon = QtGui.QPixmap(':/saveproj.png')
        saveicon = saveicon.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.projectpathIconlabel.setPixmap(saveicon)

        self.browseBtn = QtWidgets.QPushButton('Projectpath')
        self.browseBtn.setIcon(QtGui.QPixmap(':/layer.png'))
        self.projectpathLineEdit = QtWidgets.QLineEdit()

        gridlayout.addWidget(self.projectpathIconlabel, 1, 0)
        gridlayout.addWidget(self.browseBtn, 1, 1)
        gridlayout.addWidget(self.projectpathLineEdit, 1, 2)

        self.rootIconLabel = QtWidgets.QLabel()
        rooticon = QtGui.QPixmap(':/python.png')
        rooticon = rooticon.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.rootIconLabel.setPixmap(rooticon)

        self.rootLabel = QtWidgets.QLabel('Root Class')

        self.pickRootComboBox = QtWidgets.QComboBox()
        for root in self.getAvailableRoots(): self.pickRootComboBox.addItem(root)


        gridlayout.addWidget(self.rootIconLabel, 2, 0)
        gridlayout.addWidget(self.rootLabel, 2, 1)
        gridlayout.addWidget(self.pickRootComboBox, 2, 2)

        self.layout().addWidget(self.optionframe)

        self.commitChangesBtn = QtWidgets.QPushButton('Update Project')
        self.commitChangesBtn.setIcon(QtGui.QPixmap(':/build.png'))
        self.commitChangesBtn.setObjectName("submit-button")
        self.layout().addWidget(self.commitChangesBtn)
