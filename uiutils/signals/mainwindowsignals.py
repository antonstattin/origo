#Qt imports
try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

import origo.uiutils.widgets.newprojectdialog as newprojdialog
import origo.base.rigdata as rigdata

from origo.builder import roots as rootspackage
import importlib

class MainWindowSignals(object):
    """ This class contains all the signals/slots of the mainwindow
    """

    def __init__(self):

# -------------------  Connections  ------------------------ #

        # FILE
        self._fileNewAction.triggered.connect(self._fileNewFnc)
        self._fileSaveAction.triggered.connect(self._saveNewFnc)

        # WINDOW
        self._winOpenCPWinAction.triggered.connect(self._winOpenCPWin)
        self._winOpenXmlWinAction.triggered.connect(self._winOpenXmlWin)
        self._winOpenBuildShelfAction.triggered.connect(self._winBuildShelfFnc)
        self._winOpenProjectEditAction.triggered.connect(self._winProjEditFnc)

        # TOOLBAR

        # build

        self._buildAllAction.triggered.connect(self._buildAllFnc)
        self._buildAction.triggered.connect(self._forwardBuildSelectedFnc)
        self._revertAction.triggered.connect(self._backwardBuildSelectedFnc)


        ## UPDATE METHODS ##
        self.treeviewfilterEdit.textChanged.connect(self._proxyModel.setFilterRegExp)
        self.treeview.selectionModel().currentChanged.connect(self.updatePropertiesWindow)
        self._rigmodel.dataChanged.connect(self.updateRigXmlWindow)

        ## UPDATE PROJECT ##
        self.rigEditProj.commitChangesBtn.clicked.connect(self.editProjectUpdateRoot)


# ----------------------------------------------------------- #
# -------------------  MENU  ACTIONS ------------------------ #
# ----------------------------------------------------------- #

# -------------------  FILE  ------------------------ #

    def _saveNewFnc(self):
        self._rigcontrol.saveRigxXml()

    def _fileNewFnc(self):
        self._rigcontrol.setRoot(rigdata.RigRoot('newproject', '/'))
        self.rigEditProjDock.setVisible(True)
        self.updateProjectEditWindow()
        self.rigProperties._clearLayout()
        self.updateTitle()

# -------------------  WINDOW  ------------------------ #

    def _winOpenXmlWin(self):
        if self.rigXmlDock.isVisible(): return
        self.rigXmlDock.setVisible(True)

        self.rigXmlDock.widget().updateXml(self._rigcontrol.rigToXml())

    def _winOpenCPWin(self):
        if self.rigPropertiesDock.isVisible(): return
        self.rigPropertiesDock.setVisible(True)


    def _winBuildShelfFnc(self):
        if self.buildShelf.isVisible(): return
        self.buildShelf.setVisible(True)

    def _winProjEditFnc(self):
        if self.rigEditProjDock.isVisible(): return
        self.rigEditProjDock.setVisible(True)
        self.updateProjectEditWindow()

# -------------------  TOOLBAR  ------------------------ #

# -------------------  BUILD  ------------------------ #

    def _backwardBuildSelectedFnc(self):
        if not self.treeview.selectionModel().hasSelection(): return

        index = self.treeview.selectionModel().selectedRows()[0]

        if not index.isValid(): return


        index= self.treeview.model().mapToSource(index)
        rignode = self.treeview.model().sourceModel().getRigNode(index)

        stage = rignode.get('bstage')

        self._rigcontrol.undoStage(stage, rignode)

    def _forwardBuildSelectedFnc(self):
        if not self.treeview.selectionModel().hasSelection(): return

        index = self.treeview.selectionModel().selectedRows()[0]

        if not index.isValid(): return


        index= self.treeview.model().mapToSource(index)
        rignode = self.treeview.model().sourceModel().getRigNode(index)

        stage = rignode.get('bstage')
        self._rigcontrol.buildStage(stage+1, rignode)


    def _buildAllFnc(self):

        # create question message
        del_msg = "Sure you want to rebuild the whole rig?"
        del_title = "Rebuild Rig from Scratch"
        del_reply = QtWidgets.QMessageBox.question(self, del_title,del_msg,
                                                   QtWidgets.QMessageBox.Yes,
                                                   QtWidgets.QMessageBox.No)

        if del_reply != QtWidgets.QMessageBox.Yes: return

        self._rigcontrol.buildRig()


# ------------------------------------------------------------- #
# -------------------  UPDATE METHODS ------------------------- #
# ------------------------------------------------------------- #
    def updateProjectEditWindow(self):
        """ updates the data of the new window """
        # update data
        projectname = self._rigcontrol._root.get('projectname')
        projectpath = self._rigcontrol._root.get('projectpath')
        rigclass = self._rigcontrol._root.get('class')
        prindex = self.rigEditProj.pickRootComboBox.findText(rigclass)

        if prindex != -1: self.rigEditProj.pickRootComboBox.setCurrentIndex(prindex)

        self.rigEditProj.projNameLineEdit.setText(projectname)
        self.rigEditProj.projectpathLineEdit.setText(projectpath)

    def updateRigXmlWindow(self, current, old):
        if not self.rigXmlDock.isVisible(): return

        self.rigasXml.updateXml(self._rigcontrol.rigToXml())

    def updatePropertiesWindow(self, current, old):

        if not self.rigPropertiesDock.isVisible(): return

        current = self._proxyModel.mapToSource(current)
        node = current.internalPointer()

        self.rigProperties.updateSelected(node, current)


    def editProjectUpdateRoot(self):


        # create question message
        del_msg = "Are you sure you want to override and update the root settings?"
        del_title = "Update Root Settings"
        del_reply = QtWidgets.QMessageBox.question(self, del_title,del_msg,
                                                   QtWidgets.QMessageBox.Yes,
                                                   QtWidgets.QMessageBox.No)

        if del_reply != QtWidgets.QMessageBox.Yes: return


        projname =  self.rigEditProj.projNameLineEdit.text()
        projpath =  self.rigEditProj.projectpathLineEdit.text()
        root = self.rigEditProj.pickRootComboBox.currentText()

        modpath = '%s.%s'%(rootspackage.__name__, root.lower())
        if root == 'RigRoot': modpath = 'origo.base.rigdata'

        rootmod = importlib.import_module(modpath)
        rootcls = getattr(rootmod, root)

        new_root = rootcls(projname, projpath)

        # copy children
        children = self._rigcontrol._root.getChildren()
        for child in children: child._parent = new_root
        new_root._children = children

        # set the new root
        self._rigcontrol.setRoot(new_root)
        self.updateTitle()
