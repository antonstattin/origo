import os
import sys
import logging

#Qt imports
try: from Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

class RigTreeView(QtWidgets.QTreeView):
	""" This is the tree view displaying all the rig data and their stages
		main purpose is just to display the model
	"""

	def __init__(self, parent=None):
		super(RigTreeView, self).__init__(parent)

		self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
		self.setDragDropMode(self.InternalMove);

	def dragEnterEvent(self, e):
		super(RigTreeView, self).dragEnterEvent(e)

		if e.mimeData().hasFormat('text/plain'):
			e.acceptProposedAction()

	def keyPressEvent(self, e):
		"""
			Delete-key : will remove selected rignode


			:param e: event
			:type e: QEvent
		"""
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

				mts_index= self.model().mapToSource(index)
				rignode = self.model().sourceModel().getRigNode(mts_index)

				# clean up before deleting..
				allnodes = [rignode]
				if rignode._getRecursiveChildren():
					allnodes.extend(rignode._getRecursiveChildren())
					allnodes.reverse()

				for node in allnodes:
					stage = node.get('bstage')

					if stage > 2: node.undo_post()
					if stage > 1: node.undo_build()
					if stage > 0: node.undo_pre()

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
