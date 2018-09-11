#Qt imports
try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

import origo.uiutils.widgets.newprojectdialog as newprojdialog
import origo.base.rigdata as rigdata

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



        ## UPDATE METHODS ##
        self.treeviewfilterEdit.textChanged.connect(self._proxyModel.setFilterRegExp)
        self.treeview.selectionModel().currentChanged.connect(self.updatePropertiesWindow)
        self._rigmodel.dataChanged.connect(self.updateRigXmlWindow)


# ----------------------------------------------------------- #
# -------------------  MENU  ACTIONS ------------------------ #
# ----------------------------------------------------------- #

# -------------------  FILE  ------------------------ #

    def _saveNewFnc(self):
        self._rigcontrol.saveRigxXml()

    def _fileNewFnc(self):
        self._rigcontrol.setRoot(rigdata.RigRoot('newproject', '/'))
        self.rigEditProjDock.setVisible(True)
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


# ------------------------------------------------------------- #
# -------------------  UPDATE METHODS ------------------------- #
# ------------------------------------------------------------- #

    def updateRigXmlWindow(self, current, old):
        if not self.rigXmlDock.isVisible(): return

        self.rigasXml.updateXml(self._rigcontrol.rigToXml())

    def updatePropertiesWindow(self, current, old):

        if not self.rigPropertiesDock.isVisible(): return

        current = self._proxyModel.mapToSource(current)
        node = current.internalPointer()

        self.rigProperties.updateSelected(node, current)
