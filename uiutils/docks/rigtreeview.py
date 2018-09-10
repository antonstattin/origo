import os
import sys
import logging

#Qt imports
try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

class RigTreeView(QtWidgets.QTreeView):

    def __init__(self, parent=None):
        super(RigTreeView, self).__init__(parent)

    def keyPressEvent(self, e):
        super(RigTreeView, self).keyPressEvent(e)

        # Delete item(s)
        if e.key() == QtCore.Qt.Key_Delete:

            # get and check index
            index = self.currentIndex()
            if not index.isValid(): return

            # get nodeobjs name
            nodename = self.model().itemData(index)[0]

            # create question message
            del_msg = " Sure you want to delete '%s' ?"%nodename
            del_title = "Delete '%s'"%nodename
            del_reply = QtWidgets.QMessageBox.question(self, del_title,del_msg,
                                                       QtWidgets.QMessageBox.Yes,
                                                       QtWidgets.QMessageBox.No)

            if del_reply == QtWidgets.QMessageBox.Yes:
                self.model().removeRow(index.row(), parent=index.parent())

    def setModel(self, model):
        """ override model to do some extra layouts tweaks"""
        super(RigTreeView, self).setModel(model)

        # setup treeview
        self.setColumnWidth(0, 300)
        for column in [1,2,3]:
            self.header().setSectionResizeMode(column, QtWidgets.QHeaderView.Fixed)
            self.setColumnWidth(column, 50)

        self.setDragDropMode( self.InternalMove )
        self.setDragEnabled( True )
        self.setAcceptDrops( True )
