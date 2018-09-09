
import os
import sys
import logging

#Qt imports
try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

from uiutils import icons

# import core modules
from base import rigcontrol, rigmodel

import uiutils.signals.mainwindowsignals as signals
import uiutils.widgets.rigtreeview as rigtreeview
reload(rigtreeview)
reload(signals)
reload(rigmodel)
reload(rigcontrol)

# setup logger
logger = logging.getLogger("Origo")

def inMaya(debug=logging.INFO):
    """ opens the ui in maya with the standard maya pointer proc"""

    logger.setLevel(debug)

    # prevent duplicate windows in maya
    _MA_SINGELTON_WIN_OBJ_NAME = "OrigoUI"

    # import maya modules
    import maya.OpenMayaUI as omui
    import maya.cmds as cmds
    from shiboken2 import wrapInstance

    mwptr = omui.MQtUtil.mainWindow()
    mayawindow = wrapInstance(long(mwptr), QtWidgets.QWidget)

    if (cmds.window(_MA_SINGELTON_WIN_OBJ_NAME, exists=True)):
        cmds.deleteUI(_MA_SINGELTON_WIN_OBJ_NAME)

    win = UI(mayawindow)
    win.setObjectName(_MA_SINGELTON_WIN_OBJ_NAME)
    win.show()

    return win

class UI(QtWidgets.QMainWindow, signals.MainWindowSignals):

    def __init__(self, parent=None):
        QtWidgets.QMainWindow.__init__(self, parent)
        logger.debug("UI.__init__")

        self._QSettings =  QtCore.QSettings("Origo", "origo_ui")
        self._qssFile = os.path.join(os.path.dirname(__file__),
                                     "uiutils/style/default.qss")

        self._rigcontrol = rigcontrol.RigControl()
        self._rigmodel = rigmodel.RigModel(self._rigcontrol.getData())


        # build ui
        self._buildUI()

        # setup proxy model
        self._proxyModel = rigmodel.RigProxyModel(self)

        self._proxyModel.setSourceModel(self._rigmodel)

        self._proxyModel.setDynamicSortFilter(True)
        self._proxyModel.setFilterCaseSensitivity(QtCore.Qt.CaseInsensitive)

        self._proxyModel.setSortRole(rigmodel.RigModel.sortRole)
        self._proxyModel.setFilterRole(rigmodel.RigModel.filterRole)
        self._proxyModel.setFilterKeyColumn(0)


        # set model
        self.treeview.setModel(self._proxyModel)

        # load last ui settings
        self._readUISettings()

        logger.debug("signals.__init__")
        signals.MainWindowSignals.__init__(self)

    def _buildUI(self):
        """ create all the uis widgets """
        logger.debug("UI._buildUI: creating the view")

        # create central widget
        self.mainframe = QtWidgets.QFrame()
        self.mainframe.setLayout(QtWidgets.QVBoxLayout())
        self.setCentralWidget(self.mainframe)

        self.treeviewfilterEdit = QtWidgets.QLineEdit()
        self.treeview = rigtreeview.RigTreeView()

        self.mainframe.layout().addWidget(self.treeviewfilterEdit)
        self.mainframe.layout().addWidget(self.treeview)

    def changeStyle(self, qssfile):
        """ change to custom theme by reading a .qss file
            :param qssfile: the qss file with disired stylesheet
            :type qssfile: file of type .qss
        """
        with open(qssfile,"r") as qss:
            self.setStyleSheet(qss.read())

        # store qss file
        self._qssFile = qssfile

        logger.info("Setting new stylesheet: '%s'"%qssfile)

    def _readUISettings(self):
        """ read settings from last opened window """
        logger.debug("UI._readUISettings: reading settings")

        # get QSettings for mainwindow
        self._QSettings.beginGroup("MainWindow");
        self.resize(self._QSettings.value("size", QtCore.QSize(400, 400)))
        self.move(self._QSettings.value("pos", QtCore.QPoint(200, 200)))

        sQssPath = self._QSettings.value("theme", self._qssFile)
        if os.path.exists(sQssPath):
            with open(sQssPath,"r") as qss:
                self.setStyleSheet(qss.read())


        self._QSettings.endGroup()

    def closeEvent(self, event):
        logger.debug("UI.closeEvent: storing window settings")

        # store window settings
        self._QSettings.beginGroup("MainWindow")
        self._QSettings.setValue('size', self.size())
        self._QSettings.setValue('pos', self.pos())
        self._QSettings.setValue('theme', self._qssFile)
        self._QSettings.endGroup()

        event.accept()


if __name__ == '__main__':


    app = QtGui.QApplication(sys.argv)

    win = UI()
    win.show()

    sys.exit(app.exec_())
