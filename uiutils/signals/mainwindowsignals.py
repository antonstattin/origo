#Qt imports
try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

import oirgo.uiutils.widgets.newprojectdialog as newprojdialog

class MainWindowSignals(object):

    def __init__(self):

        self.treeviewfilterEdit.textChanged.connect(self._proxyModel.setFilterRegExp)

        self.treeview.selectionModel().currentChanged.connect(self.updatePropertiesWindow)

        self._rigmodel.dataChanged.connect(self.updateRigXmlWindow)

        # Menu Actions
        self._winOpenCPWinAction.triggered.connect(self._winOpenCPWin)
        self._winOpenXmlWinAction.triggered.connect(self._winOpenXmlWin)

    def _fileNewAction(self):
        new_project =  newprojdialog.NewProjectDialog(self)
        new_project.show()

    def _winOpenXmlWin(self):
        if self.rigXmlDock.isVisible(): return
        self.rigXmlDock.setVisible(True)

    def _winOpenCPWin(self):
        if self.rigPropertiesDock.isVisible(): return
        self.rigPropertiesDock.setVisible(True)

    def updateRigXmlWindow(self, current, old):
        if not self.rigXmlDock.isVisible(): return

        self.rigasXml.updateXml(self._rigcontrol.rigToXml())

    def updatePropertiesWindow(self, current, old):

        if not self.rigPropertiesDock.isVisible(): return

        current = self._proxyModel.mapToSource(current)
        node = current.internalPointer()

        self.rigProperties.updateSelected(node, current)
