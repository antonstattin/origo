try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

import origo.uiutils.widgets.righighlighter as righighlighter

class RigXmlPanel(QtWidgets.QWidget):
    """This Panel is the main widget in RigXmlDock """

    def __init__(self, parent=None):
        super(RigXmlPanel, self).__init__(parent)

        self.setLayout(QtWidgets.QHBoxLayout())

        self.xmleditor = QtWidgets.QPlainTextEdit()
        self.xmleditor.setObjectName('console')
        self.highlighter = righighlighter.XMLHighlighter(self.xmleditor.document())
        self.layout().addWidget(self.xmleditor)

    def updateXml(self, xml):
        self.xmleditor.setPlainText(xml)
