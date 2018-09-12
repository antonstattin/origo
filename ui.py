
import os
import sys
import logging

#Qt imports
try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

from uiutils import icons

# import core modules
from base import rigcontrol, rigmodel, rigdata

import uiutils.signals.mainwindowsignals as signals
from uiutils.docks import rigtreeview, rigproperties, rigxml, rigeditproj
from uiutils.dialogs import newprojectdialog
reload(signals)
reload(rigmodel)
reload(rigcontrol)
reload(rigeditproj)


# setup logger
logger = logging.getLogger("Origo")

def inMaya(debug=logging.INFO, root=None):
    """ Open Origos UI in maya """

    # import maya modules
    import maya.OpenMayaUI as omui
    import maya.cmds as cmds
    from shiboken2 import wrapInstance

    # prevent duplicate windows in maya
    _MA_SINGELTON_WIN_OBJ_NAME = "OrigoUI"

    if (cmds.window(_MA_SINGELTON_WIN_OBJ_NAME, exists=True)):
        cmds.deleteUI(_MA_SINGELTON_WIN_OBJ_NAME)

    mwptr = omui.MQtUtil.mainWindow()
    mayawindow = wrapInstance(long(mwptr), QtWidgets.QWidget)

    if not root: root = rigdata.RigRoot('unamed', '/')

    win = UI(root, mayawindow)
    win.setObjectName(_MA_SINGELTON_WIN_OBJ_NAME)
    win.show()

    return win

class UI(QtWidgets.QMainWindow, signals.MainWindowSignals):

    def __init__(self, root, parent=None):
        QtWidgets.QMainWindow.__init__(self, parent)
        logger.debug("UI.__init__")

        self._QSettings =  QtCore.QSettings("Origo", "origo_ui")
        self._qssFile = os.path.join(os.path.dirname(__file__),
                                     "uiutils/style/default.qss")


        self._rigmodel = rigmodel.RigModel()
        self._proxyModel = rigmodel.RigProxyModel(self)
        self._proxyModel.setSourceModel(self._rigmodel)

        self._rigcontrol = rigcontrol.RigControl(root, self._proxyModel)

        # build ui
        self._buildUI()
        self._buildToolBar()
        self._buildMenuBar()

        # set model
        self.treeview.setModel(self._proxyModel)

        # load last ui settings
        self._readUISettings()

        logger.debug("signals.__init__")
        signals.MainWindowSignals.__init__(self)

        self.updateTitle()
        self.updateProjectEditWindow()

    def updateTitle(self):

        # get projname
        projname = self._rigcontrol._root.get('projectname')
        projpath = self._rigcontrol._root.get('projectpath')

        # get version

        self.setWindowTitle('Origo Rig System | %s | %s '%(projname, projpath))

    def _buildMenuBar(self):

        # File menu
        self.fileMenu = QtWidgets.QMenu('File', self)
        self._fileNewAction = QtWidgets.QAction("New", self)
        self._fileOpenAction = QtWidgets.QAction("Open Project", self)

        saveicon = QtGui.QPixmap(':/saveproj.png')
        self._fileSaveAction = QtWidgets.QAction(saveicon, "Save Project", self)

        self.fileMenu.addAction(self._fileNewAction)
        self.fileMenu.addAction(self._fileOpenAction)
        self.fileMenu.addSeparator()
        self.fileMenu.addAction(self._fileSaveAction)

        self.menuBar().addMenu(self.fileMenu)

        # dock-windows menu
        self.winMenu = QtWidgets.QMenu('&Window', self)

        # open properties window
        self._winOpenCPWinAction = QtWidgets.QAction("Show Component Properties", self)
        self._winOpenCPWinAction.setStatusTip("Show Component Properties window")

        self._winOpenXmlWinAction = QtWidgets.QAction("Show RigAsXml", self)
        self._winOpenXmlWinAction.setStatusTip("Show Rig as xml window")

        self._winOpenBuildShelfAction = QtWidgets.QAction("Show Build-Shelf", self)

        self.winMenu.addAction(self._winOpenCPWinAction)
        self.winMenu.addAction(self._winOpenXmlWinAction)
        self.winMenu.addAction(self._winOpenBuildShelfAction)
        self.menuBar().addMenu(self.winMenu)

    def _buildToolBar(self):

        self.buildShelf = QtWidgets.QToolBar()

        reverticon = QtGui.QPixmap(':/backblue.png')
        self._revertAction = self.buildShelf.addAction(QtGui.QIcon(reverticon), '')

        buildicon = QtGui.QPixmap(':/forwardblue.png')
        self._buildAction = self.buildShelf.addAction(QtGui.QIcon(buildicon), '')

        buildallicon = QtGui.QPixmap(':/buildrigblue.png')
        self._buildAllAction = self.buildShelf.addAction(QtGui.QIcon(buildallicon), '')

        self.buildShelf.addSeparator()

        publishIcon = QtGui.QPixmap(':/package.png')
        self._publishAction = self.buildShelf.addAction(QtGui.QIcon(publishIcon), 'Publish')


        self.addToolBar(self.buildShelf)

    def _buildUI(self):
        """ create all the uis widgets """
        logger.debug("UI._buildUI: creating the view")

        self.setDockOptions(self.AnimatedDocks | \
                            self.AllowNestedDocks | \
                            self.AllowTabbedDocks )

        # create central widget
        self.mainframe = QtWidgets.QFrame()
        self.mainframe.setLayout(QtWidgets.QVBoxLayout())
        self.setCentralWidget(self.mainframe)

        self.treeviewfilterEdit = QtWidgets.QLineEdit()
        self.treeview = rigtreeview.RigTreeView()

        self.mainframe.layout().addWidget(self.treeviewfilterEdit)
        self.mainframe.layout().addWidget(self.treeview)

        # setup component properties
        self.rigPropertiesDock = QtWidgets.QDockWidget('Component Properties', self)
        self.rigPropertiesDock.setObjectName('RigProperties')

        self.rigProperties = rigproperties.RigPropertiesPanel(self._rigmodel)
        self.rigPropertiesDock.setWidget(self.rigProperties)

        self.addDockWidget(QtCore.Qt.RightDockWidgetArea,
                           self.rigPropertiesDock)

        # new project dock
        self.rigEditProjDock = QtWidgets.QDockWidget('Edit Project')
        self.rigEditProjDock.setObjectName('RigEditProj')
        self.rigEditProj = rigeditproj.RigEditProj()
        self.rigEditProjDock.setWidget(self.rigEditProj)

        self.addDockWidget(QtCore.Qt.RightDockWidgetArea,
                            self.rigEditProjDock)


        # if project already set we don't need show project settings..
        if self._rigcontrol._root.get('projectpath') != '/':
            self.rigEditProjDock.setVisible(False)
        else: self.rigEditProjDock.setVisible(True)


        # setup xml view
        self.rigXmlDock = QtWidgets.QDockWidget('Rig As XML', self)
        self.rigXmlDock.setObjectName('RigAsXML')
        self.rigXmlDock.setVisible(False)

        self.rigasXml = rigxml.RigXmlPanel()
        self.rigasXml.updateXml(self._rigcontrol.rigToXml())
        self.rigXmlDock.setWidget(self.rigasXml)

        self.addDockWidget(QtCore.Qt.TopDockWidgetArea,
                           self.rigXmlDock)

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

        # size and position of main window
        self.resize(self._QSettings.value("size", QtCore.QSize(400, 400)))
        self.move(self._QSettings.value("pos", QtCore.QPoint(200, 200)))

        # restore docks and toolbars
        self.restoreState(self._QSettings.value("state", ''), 1)

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
        self._QSettings.setValue('state', self.saveState(1))
        self._QSettings.setValue('theme', self._qssFile)
        self._QSettings.endGroup()
        self._QSettings.beginGroup("MainWindow")

        self._QSettings.beginGroup("MainWindowDocks")
        self._QSettings.setValue('size', self.size())


        event.accept()

if __name__ == '__main__':


    app = QtGui.QApplication(sys.argv)

    win = UI()
    win.show()

    sys.exit(app.exec_())
