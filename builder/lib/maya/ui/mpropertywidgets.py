
import origo.uiutils.widgets.propertywidgets as propertywidgets

try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

from functools import partial
import logging

import maya.cmds as cmds

logger = logging.getLogger('Origo')

class MRigSelectionProperty(propertywidgets.AbstractPropertyWidget):
    def __init__(self, name, value, **kwarg):
        super(MRigSelectionProperty, self).__init__()

        iconarg = kwarg.get('icon', ':/build.png')
        nicenamearg = kwarg.get('nicename', name)
        placeholdertextarg = kwarg.get('placeholdertext', 'Maya Nodes')

        # add labels
        self.pixmap = QtGui.QPixmap(iconarg)
        self.pixmap = self.pixmap.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.icon = QtWidgets.QLabel()
        self.icon.setPixmap(self.pixmap)
        self.label = QtWidgets.QLabel(nicenamearg)

        self.lineEdit = QtWidgets.QLineEdit()
        self.lineEdit.setPlaceholderText(placeholdertextarg)
        self.lineEdit.setText(str(value))
        self.lineEdit.setReadOnly(True)

        self.addbtn = QtWidgets.QPushButton('Add Selection')
        self.addbtn.setIcon(QtGui.QIcon(':/selectByObject.png'))
        self.addbtn.clicked.connect(self.addSelection)

        self.layout().addWidget(self.icon)
        self.layout().addWidget(self.label)
        self.layout().addWidget(self.lineEdit)
        self.layout().addWidget(self.addbtn)


    def addSelection(self):
        selection = cmds.ls(sl=True, fl=True)
        if not selection: return

        self.lineEdit.setText(str(selection))
        self.submit()

    def submit(self, *arg):
        self.doSubmit.emit()

    def setValue(self, val): return

    def getValue(self):
        return self.lineEdit.text()

    def widget(self):
        return self.lineEdit

    valueProperty = QtCore.Property(str, getValue, setValue)

class MRigDeformerStackPropertyTree(QtWidgets.QTreeWidget):

    enterPressed = QtCore.Signal()
    deletePressed = QtCore.Signal()

    def __init__(self, parent=None):
        super(MRigDeformerStackPropertyTree, self).__init__(parent)

        self.setColumnCount(2)
        self.setHeaderLabels(['Name(s)', 'deformSet'])
        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)

    def keyPressEvent(self, e):
        """
        Enter-key : submit enter signal


        :param e: event
        :type e: QEvent
        """
        super(MRigDeformerStackPropertyTree, self).keyPressEvent(e)

        if e.key() == QtCore.Qt.Key_Delete:
            currentItem = self.currentItem()
            parentItem = currentItem.parent()

            if not parentItem:
                parentItem = self.invisibleRootItem()

            parentItem.removeChild(currentItem)

            self.deletePressed.emit()

        if e.key() == QtCore.Qt.Key_Return:
            self.enterPressed.emit()

class MRigDeformerStackProperty(propertywidgets.AbstractPropertyWidget):
    def __init__(self, name, value, **kwarg):
        super(MRigDeformerStackProperty, self).__init__()

        iconarg = kwarg.get('icon', ':/build.png')
        nicenamearg = kwarg.get('nicename', name)

        self.mainlayout = QtWidgets.QVBoxLayout()
        self.namelayout = QtWidgets.QHBoxLayout()
        self.toolbar = QtWidgets.QHBoxLayout()

        # add labels
        self.pixmap = QtGui.QPixmap(iconarg)
        self.pixmap = self.pixmap.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.icon = QtWidgets.QLabel()
        self.icon.setPixmap(self.pixmap)
        self.label = QtWidgets.QLabel(nicenamearg)

        # setup deformer stack
        self.deformerStack = MRigDeformerStackPropertyTree()
        self.deformerStack.customContextMenuRequested.connect(self.deformerStackContextMenu)

        # setup toolbar
        self.toolbarpixmap = QtGui.QPixmap(':/toolSettings.png')
        self.toolbarpixmap = self.pixmap.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.toolbaricon = QtWidgets.QLabel()
        self.toolbaricon.setPixmap(self.toolbarpixmap)

        self.toolbarLineEdit = QtWidgets.QLineEdit()
        self.toolbarLineEdit.setPlaceholderText('The item Name')
        self.toolbarComboBox = QtWidgets.QComboBox()

        for roottype in ['Set', 'Geometry']:
            self.toolbarComboBox.addItem(roottype)

        self.fromSelButton = QtWidgets.QPushButton('From Selection')
        self.fromSelButton.setIcon(QtGui.QIcon(':/selectByObject.png'))
        self.addButton = QtWidgets.QPushButton('Add')
        self.addButton.setIcon(QtGui.QIcon(':/addDivision24.png'))

        self.addButton.clicked.connect(self.addRootItem)
        self.fromSelButton.clicked.connect(self.addSelectionRootItem)

        self.toolbar.addWidget(self.toolbaricon)
        self.toolbar.addWidget(self.toolbarLineEdit)
        self.toolbar.addWidget(self.toolbarComboBox)
        self.toolbar.addWidget(self.addButton)
        self.toolbar.addWidget(self.fromSelButton)

        # reconstruct the string to a dictonary
        if type(value) != dict:
            try: value = eval(value)
            except: value = {}

        # ICONS
        self.skinClusterIcon = ':/paintCluster.png'
        self.deltaMushIcon = ':/Smooth.png'
        self.tensionIcon = ':/sculptPinch.png'
        self.clusterIcon = ':/cluster.png'

        for node in value.keys():
            deformerData = value[node]
            targetType = deformerData['targetType']

            modelitem = self.addRoot(node, targetType)

            for deformerdata in deformerData['deformers']:

                deformername = deformerdata[0]
                deformer = deformerdata[1]
                deformset = deformerdata[2]

                if deformer == 'skinCluster': icon = self.skinClusterIcon
                elif deformer == 'deltaMush': icon = self.deltaMushIcon
                elif deformer == 'tension': icon = self.tensionIcon
                elif deformer == 'cluster': icon = self.clusterIcon
                else: icon = self.clusterIcon

                deformeritem = QtWidgets.QTreeWidgetItem([deformername, deformset, 'Deformer', deformer])
                deformeritem.setIcon(0, QtGui.QIcon(icon))
                deformeritem.setFlags(QtCore.Qt.ItemIsEditable | QtCore.Qt.ItemIsEnabled)
                modelitem.addChild(deformeritem)

        self.namelayout.addWidget(self.icon)
        self.namelayout.addWidget(self.label)
        self.namelayout.addStretch()

        self.mainlayout.addLayout(self.namelayout)
        self.mainlayout.addWidget(self.deformerStack)

        self.mainlayout.addLayout(self.toolbar)
        self.layout().addLayout(self.mainlayout)

        self.deformerStack.currentItemChanged.connect(self.submit)
        self.deformerStack.enterPressed.connect(self.submit)
        self.deformerStack.deletePressed.connect(self.submit)

    def addSelectionRootItem(self):
        selection = cmds.ls(sl=True)
        if not len(selection):
            logger.info('need a selection!')
            return

        for node in selection:
            if cmds.objectType(node) == 'objectSet':
                self.addSetItem(node)

        self.submit()

    def addRoot(self, node, targetType=None):

        if targetType == 'Set':
            item = self.addSetItem(node)
        else:
            item = self.addGeoItem(node)

        return item

    def addGeoItem(self, nodename):
        modelitem = QtWidgets.QTreeWidgetItem([nodename, '', 'Geometry', ''])
        modelitem.setFlags(QtCore.Qt.ItemIsEditable | QtCore.Qt.ItemIsEnabled)
        modelitem.setIcon(0, QtGui.QIcon(':/polyCube.png'))
        self.deformerStack.addTopLevelItem(modelitem)

        return modelitem

    def addSetItem(self, nodename):
        modelitem = QtWidgets.QTreeWidgetItem([nodename, '', 'Set', ''])
        modelitem.setFlags(QtCore.Qt.ItemIsEditable | QtCore.Qt.ItemIsEnabled)
        modelitem.setIcon(0, QtGui.QIcon(':/objectSet.svg'))
        self.deformerStack.addTopLevelItem(modelitem)

        return modelitem

    def addDeformerItem(self, root, deformername, deformertype):

        deformerset = ''
        if deformertype == 'skinCluster': deformerset = 'skeleton_SET'


        deformeritem = QtWidgets.QTreeWidgetItem([deformername, deformerset,
                                                  'Deformer', deformertype])
        deformeritem.setFlags(QtCore.Qt.ItemIsEditable | QtCore.Qt.ItemIsEnabled)
        icon = getattr(self, deformertype + 'Icon' )
        deformeritem.setIcon(0, QtGui.QIcon(icon))
        root.addChild(deformeritem)


    def addRootItem(self):


        targetType = self.toolbarComboBox.currentText()

        nodename = self.toolbarLineEdit.text()
        if nodename == '':
            logger.info('Need to specify set name!')
            return

        self.addRoot(nodename, targetType)
        self.submit()

    def deformerStackContextMenu(self, position):

        currentItem = self.deformerStack.currentItem()
        itemType = currentItem.text(2)

        menu = QtWidgets.QMenu()

        if itemType == 'Deformer':
            moveUpAction = menu.addAction(QtGui.QIcon(':/arrowUp.png'), 'Move Up')
            moveDownAction = menu.addAction(QtGui.QIcon(':/arrowDown.png'), 'Move Down')

            moveUpAction.triggered.connect(partial(self.moveDeformer, currentItem, 'UP'))
            moveDownAction.triggered.connect(partial(self.moveDeformer, currentItem, 'DOWN'))

            menu.addSeparator()

            removeDeformerAction = menu.addAction(QtGui.QIcon(':/removeRenderable.png'), 'Remove')
            removeDeformerAction.triggered.connect(partial(self.removeItem, currentItem))

        elif itemType == 'Set' or itemType == 'Geometry':
            addSkinClsAction = menu.addAction(QtGui.QIcon(self.skinClusterIcon), 'Add skinCluster')
            addDeltaMushAction = menu.addAction(QtGui.QIcon(self.deltaMushIcon), 'Add deltaMush')
            addTensionAction = menu.addAction(QtGui.QIcon(self.tensionIcon), 'Add tension')
            addClsAction = menu.addAction(QtGui.QIcon(self.clusterIcon), 'Add cluster')
            menu.addSeparator()
            removeGeoAction = menu.addAction(QtGui.QIcon(':/removeRenderable.png'), 'Remove')

            addSkinClsAction.triggered.connect(partial(self.addDeformer, currentItem, 'skinCluster', 'skinCluster'))
            addDeltaMushAction.triggered.connect(partial(self.addDeformer, currentItem, 'deltaMush', 'deltaMush'))
            addTensionAction.triggered.connect(partial(self.addDeformer, currentItem, 'tension', 'tension'))
            addClsAction.triggered.connect(partial(self.addDeformer, currentItem, 'cluster', 'cluster'))

            removeGeoAction.triggered.connect(partial(self.removeItem, currentItem))


        menu.exec_(self.deformerStack.viewport().mapToGlobal(position))

    def moveDeformer(self, item, direction):

        parentItem = item.parent()
        currentChildIndex = parentItem.indexOfChild(item)
        childCount = parentItem.childCount()

        if currentChildIndex == 0 and currentChildIndex == childCount-1: return

        if direction == 'UP':
            if currentChildIndex == 0: return

            parentItem.removeChild(item)
            parentItem.insertChild(currentChildIndex-1, item)

        if direction == 'DOWN':
            if currentChildIndex == childCount-1: return

            parentItem.removeChild(item)
            parentItem.insertChild(currentChildIndex+1, item)

        self.submit()

    def removeItem(self, currentItem):
        parentItem = currentItem.parent()

        if not parentItem:
            parentItem = self.deformerStack.invisibleRootItem()

        parentItem.removeChild(currentItem)

        self.submit()

    def addDeformer(self, root, name, deformertype):

        # check deformers that should be unique so we dont add ex. double skinCluster
        if name == 'skinCluster':
            childCount = root.childCount()
            for childIndex in xrange(childCount):
                deformer = root.child(childIndex)
                childname = deformer.text(3)

                if childname == name:
                    logger.info('Stack already contains %s'%name)
                    return

        self.addDeformerItem(root, name, deformertype)

        self.submit()

    def submit(self, *arg):
        self.doSubmit.emit()

    def setValue(self, val):
        if val == '': return

    def getValue(self):

        data = {}
        QtWidgets.QApplication.processEvents()

        for index in xrange(self.deformerStack.topLevelItemCount()):
            modelitem = self.deformerStack.topLevelItem(index)
            nodename = modelitem.text(0)
            targetType = modelitem.text(2)

            deformers = []
            for childIndex in xrange(modelitem.childCount()):
                deformerItem = modelitem.child(childIndex)
                deformername =  deformerItem.text(0)
                deformset =  deformerItem.text(1)
                deformerType =  deformerItem.text(3)
                deformers.append([deformername, deformerType, deformset])

            data.update({nodename:{'deformers':deformers, 'targetType':targetType}})

        return str(data)

    def widget(self):
        return self.deformerStack

    valueProperty = QtCore.Property(str, getValue, setValue)
