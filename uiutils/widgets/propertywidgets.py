import abc

try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

class AbstractPropertyWidget(QtWidgets.QWidget):
    """ Abstract property widget """

    doSubmit = QtCore.Signal()

    def __init__(self):
        super(AbstractPropertyWidget, self).__init__()

        self.setLayout(QtWidgets.QHBoxLayout())
        self.setContentsMargins(2, 2, 2 ,2)

    def setValue(self, value):
        raise NotImplementedError('abstract method! ' \
                                  'Needs to override .setValue')
    def getValue(self):
        raise NotImplementedError('abstract method! ' \
                                  'Needs to override .getValue')
    def widget(self):
        raise NotImplementedError('abstract method! '\
                                  'Needs to override .widget')

class RigCheckBoxProperty(AbstractPropertyWidget):

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



class RigBrowseProperty(AbstractPropertyWidget):

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
