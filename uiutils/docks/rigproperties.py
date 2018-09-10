
try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

from functools import partial
import importlib
import os
from subprocess import call

import origo.uiutils.widgets.propertywidgets as propertywidgets
reload(propertywidgets)

class RigLineEdit(QtWidgets.QLineEdit):


    def __init__(self, parent=None):
        super(RigLineEdit, self).__init__(parent)

    def setValue(self, text):
        if text != '': self.setText(text)

    def getValue(self):
        return self.text()

    textvalue = QtCore.Property(str, getValue, setValue)


class RigPropertiesPanel(QtWidgets.QWidget):

    def __init__(self, model, parent=None):
        super(RigPropertiesPanel, self).__init__(parent)

        self._model = model
        self.setLayout(QtWidgets.QHBoxLayout())
        self.layout().setContentsMargins(0, 0, 0 ,0 )
        self.layout().setSpacing(0)
        self.layout().setAlignment(QtCore.Qt.AlignTop)

        self._dataMapper = QtWidgets.QDataWidgetMapper()
        self._dataMapper.setModel(self._model)
        #self._dataMapper.setSubmitPolicy(self._dataMapper.AutoSubmit)

    def clearLayout(self):
        for i in range(self.layout().count()):
            self.layout().itemAt(i).widget().close()

    def openScript(self, modulename):

        texteditor = 'gedit'
        filepath = importlib.import_module(modulename).__file__

        if filepath.endswith('.pyc'):
            filepath = filepath.replace('.pyc', '.py')

        if os.path.exists(filepath):
            os.system('%s %s'%(texteditor, filepath))

    def updateSelected(self, node, index):


        # set current Model Index
        self._dataMapper.setRootIndex(index.parent())
        self._dataMapper.setCurrentModelIndex(index)

        self.clearLayout()

        pFrame = QtWidgets.QFrame()
        pFrame.setObjectName('RigProperties')
        pFrame.setLayout(QtWidgets.QVBoxLayout())
        pFrame.layout().setContentsMargins(1, 1, 1 ,1 )
        pFrame.layout().setSpacing(2)

        # ---- Setup default layout ---- #
        default_bar = QtWidgets.QHBoxLayout()
        default_bar.setContentsMargins(5, 2, 5, 2)
        default_bar.setSpacing(5)

        editIconLabel = QtWidgets.QLabel()
        editIcon = QtGui.QPixmap(':/build.png')
        editIcon = editIcon.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        editIconLabel.setPixmap(editIcon)

        scriptbttn = QtWidgets.QPushButton()
        scriptbttn.setIcon(QtGui.QIcon(QtGui.QPixmap(':/python.png')))
        scriptbttn.clicked.connect(partial(self.openScript, node.__module__))

        nameedit = QtWidgets.QLineEdit()
        nameedit.setText(node.get('name'))

        default_bar.addWidget(editIconLabel)
        default_bar.addWidget(nameedit)
        default_bar.addWidget(scriptbttn)

        pFrame.layout().addLayout(default_bar)

        line = QtWidgets.QFrame()
        line.setFrameShape(QtWidgets.QFrame.HLine)
        line.setFrameShadow(QtWidgets.QFrame.Sunken)

        pFrame.layout().addWidget(line)

        # add default mapping
        self._dataMapper.addMapping(nameedit, 0)

        # ---- Setup dynamic layout ---- #

        for attrib in node.getPublicAttributes():

            # gather data
            key = attrib[0]
            key_index = node.getKeyIndex(key)
            value = attrib[1]['value']
            meta = attrib[1]['meta']

            attr_name = meta.get('nicename', key)
            valuetype = meta.get('valuetype', type(value))

            # setup custom widget
            if meta.has_key('ui'):
                uimoddata = meta.get('ui').rpartition('.')
                uimod = uimoddata[0]
                uicls = uimoddata[2]
                ui = importlib.import_module(uimod)

                fnc = getattr(ui, uicls)
                uiwidget =  fnc(attr_name, value, **meta)

                # add mapping and connect submit for force updating model
                self._dataMapper.addMapping(uiwidget, key_index, 'valueProperty')
                uiwidget.doSubmit.connect(self._dataMapper.submit)

                pFrame.layout().addWidget(uiwidget)

                continue

            if valuetype == str or valuetype == unicode:

                widget = propertywidgets.RigLineEditProperty(attr_name, value)
                self._dataMapper.addMapping(widget, key_index, 'valueProperty')
                pFrame.layout().addWidget(widget)

            elif valuetype == bool:

                widget = propertywidgets.RigCheckBoxProperty(attr_name, value)
                self._dataMapper.addMapping(widget, key_index, 'valueProperty')
                widget.doSubmit.connect(self._dataMapper.submit)
                pFrame.layout().addWidget(widget)


        # add property frame
        self.layout().addWidget(pFrame)
        #self._dataMapper.toFirst()
