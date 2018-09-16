import abc

try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

import origo.uiutils.widgets.righighlighter as righighlighter

class AbstractPropertyWidget(QtWidgets.QWidget):
    """ Abstract property widget

        Override getValue and the property 'valueProperty'
        valueProperty = QtCore.Property(bool, getValue, setValue)

        This module is the base class for all the Property widgets
    """

    doSubmit = QtCore.Signal()

    def __init__(self):
        super(AbstractPropertyWidget, self).__init__()

        self.setLayout(QtWidgets.QHBoxLayout())
        self.setContentsMargins(2, 2, 2 ,2)

    def setValue(self, value): return

    def getValue(self):
        """ returns the value to the modelmapper"""

        raise NotImplementedError('abstract method! ' \
                                  'Needs to override .getValue')

    def widget(self): return None




# ------------------- DEFAULT PROPERTYWIDGETS ------------------------ #



class RigCheckBoxProperty(AbstractPropertyWidget):
    """ Property for attribute values of type 'bool' """

    def __init__(self, name, value):
        super(RigCheckBoxProperty, self).__init__()

        self.pixmap = QtGui.QPixmap(':/done.png')
        self.pixmap = self.pixmap.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.icon = QtWidgets.QLabel()
        self.icon.setPixmap(self.pixmap)
        self.label = QtWidgets.QLabel(name)
        self.checkbox = QtWidgets.QCheckBox()
        self.checkbox.setChecked(bool(value))

        self.layout().addWidget(self.icon)
        self.layout().addWidget(self.label)
        self.layout().addWidget(self.checkbox)
        self.layout().addStretch()

        self.checkbox.stateChanged.connect(self.submit)

    def submit(self, value): self.doSubmit.emit()

    def setValue(self, value): return

    def getValue(self): return self.checkbox.isChecked()

    def widget(self):
        return self.checkbox

    valueProperty = QtCore.Property(bool, getValue, setValue)


class RigLineEditProperty(AbstractPropertyWidget):
    """ Property for attribute values of type 'str' """
    def __init__(self, name, value):
        super(RigLineEditProperty, self).__init__()

        self.pixmap = QtGui.QPixmap(':/editObj.png')
        self.pixmap = self.pixmap.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.icon = QtWidgets.QLabel()
        self.icon.setPixmap(self.pixmap)
        self.label = QtWidgets.QLabel(name)
        self.lineEdit = QtWidgets.QLineEdit()
        self.lineEdit.setText(value)

        self.layout().addWidget(self.icon)
        self.layout().addWidget(self.label)
        self.layout().addWidget(self.lineEdit)


    def setValue(self, value):
        if value == '': return
        self.lineEdit.setText(value)

    def getValue(self):
        return self.lineEdit.text()

    def widget(self):
        return self.lineEdit

    valueProperty = QtCore.Property(str, getValue, setValue)


# ------------------- SPECIAL PROPERTYWIDGETS ------------------------ #
class CodeEditor(QtWidgets.QTextEdit):

    def __init__(self):
        super(CodeEditor, self).__init__(None)
        self.setTabStopWidth(20)
        self.highlighter = righighlighter.PythonHighlighter(self, "Classic")

class RigPythonScriptProperty(AbstractPropertyWidget):
    def __init__(self, name, value, **kwarg):
        super(RigPythonScriptProperty, self).__init__()

        self.textedit = CodeEditor()
        self.textedit.setText(value)
        self.layout().addWidget(self.textedit)
        self.textedit.textChanged.connect(self.submit)
        self.layout().setSpacing(1)

    def submit(self, *arg):
        self.doSubmit.emit()

    def setValue(self, val):
        if val == '': return
        self.textedit.setText(val)

    def getValue(self):
        return self.textedit.toPlainText()

    def widget(self):
        return self.textedit

    valueProperty = QtCore.Property(str, getValue, setValue)



class RigBrowseProperty(AbstractPropertyWidget):
    """ Special widget for browsing files """

    def __init__(self, name, value, **kwarg):
        super(RigBrowseProperty, self).__init__()

        self.browsetype = kwarg.get('browsetype', 'file')

        self.pixmap = QtGui.QPixmap(':/editObj.png')
        self.pixmap = self.pixmap.scaledToWidth(20, QtCore.Qt.SmoothTransformation)
        self.icon = QtWidgets.QLabel()
        self.icon.setPixmap(self.pixmap)
        self.label = QtWidgets.QLabel(name)
        self.lineEdit = QtWidgets.QLineEdit()
        self.lineEdit.setText(value)
        self.lineEdit.setReadOnly(True)
        self.browseBtn = QtWidgets.QPushButton('Browse')
        self.browseBtn.setIcon(QtGui.QIcon(QtGui.QPixmap(':/layer.png')))
        self.browseBtn.clicked.connect(self.openFileDialog)

        self.layout().addWidget(self.icon)
        self.layout().addWidget(self.label)
        self.layout().addWidget(self.lineEdit)
        self.layout().addWidget(self.browseBtn)

    def openFileDialog(self):

        if self.browsetype == 'folder':
            path = QtWidgets.QFileDialog.getExistingDirectory(self)[0]
        elif self.browsetype == 'file':
            path = QtWidgets.QFileDialog.getOpenFileName(self)[0]

        if path == '': return

        self.setValue(path)
        self.doSubmit.emit()

    def setValue(self, value):
        if value == '': return
        self.lineEdit.setText(value)

    def getValue(self):
        return self.lineEdit.text()

    def widget(self):
        return self.lineEdit

    valueProperty = QtCore.Property(str, getValue, setValue)
