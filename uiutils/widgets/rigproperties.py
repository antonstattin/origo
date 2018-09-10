
try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

from functools import partial
import importlib
import os
from subprocess import call

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
        self.layout().setAlignment(QtCore.Qt.AlignTop)

        self._dataMapper = QtWidgets.QDataWidgetMapper()
        self._dataMapper.setModel(self._model)

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

        # ---- Setup default layout ---- #
        default_bar = QtWidgets.QHBoxLayout()
        default_bar.setContentsMargins(2, 2, 2 ,2 )

        editIconLabel = QtWidgets.QLabel()
        editIcon = QtGui.QPixmap(':/editObj.png')
        editIcon = editIcon.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        editIconLabel.setPixmap(editIcon)

        scriptbttn = QtWidgets.QPushButton()
        scriptbttn.setIcon(QtGui.QIcon(QtGui.QPixmap(':/consoleinfo.png')))
        scriptbttn.clicked.connect(partial(self.openScript, node.__module__))

        nameedit = QtWidgets.QLineEdit()
        nameedit.setText(node.get('name'))

        default_bar.addWidget(editIconLabel)
        default_bar.addWidget(nameedit)
        default_bar.addWidget(scriptbttn)

        pFrame.layout().addLayout(default_bar)

        # add default mapping
        self._dataMapper.addMapping(nameedit, 0)

        # ---- Setup dynamic layout ---- #

        for attrib in node.getPublicAttributes():

            print attrib

            # gather data
            key = attrib[0]
            key_index = node.getKeyIndex(key)
            value = attrib[1]['value']
            meta = attrib[1]['meta']

            # setup custom widget
            if meta.has_key('ui'): continue

            attr_name = meta.get('nicename', key)

            print type(value)


            if type(value) == str or type(value) == unicode:
                hlayout = QtWidgets.QHBoxLayout()
                hlayout.setContentsMargins(2, 2, 2 ,2 )

                label = QtWidgets.QLabel(attr_name)
                lineedit = RigLineEdit()
                lineedit.setText(value)

                hlayout.addWidget(label)
                hlayout.addWidget(lineedit)

                self._dataMapper.addMapping(lineedit, key_index, 'textvalue')
                pFrame.layout().addLayout(hlayout)




        # add property frame
        self.layout().addWidget(pFrame)
