#Qt imports
try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui


class MainWindowSignals(object):

    def __init__(self):

        self.treeviewfilterEdit.textChanged.connect(self._proxyModel.setFilterRegExp)
        
