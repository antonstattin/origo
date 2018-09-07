try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

import cPickle

class RigModel(QtCore.QAbstractItemModel):

	def __init__(self, root, parent=None):
		super(RigModel, self).__init__(parent)

		# root object
		self._root = root

	def data(self, index, role):
		""" return data to view """


		if not index.isValid(): return None

		# get rigNode
		rigNode = index.internalPointer()

		# setup first column
		if index.column() == 0:
			# set name
			if role == QtCore.Qt.DisplayRole or role == QtCore.Qt.EditRole:
				return rigNode._data(index.column()) # return name

			# set icon
			if role == QtCore.Qt.DecorationRole and rigNode._type:
				return QtGui.QIcon(QtGui.QPixmap(rigNode.get('icon')))
		else:
			if role == QtCore.Qt.DecorationRole and rigNode._type:
				# get current stage
				stage = rigNode.get('bstage')

				# resource
				done_icon = QtGui.QIcon(QtGui.QPixmap(":/done.png"))
				not_done_icon = QtGui.QIcon(QtGui.QPixmap(":/play.png"))

				# set a visual representation of current stage



				if index.column() == 1:
					if stage > 0: return done_icon
					else: return not_done_icon

				if index.column() == 2:
					if stage > 1: return done_icon
					else: return not_done_icon

				if index.column() == 3:
					if stage > 2: return done_icon
					else: return not_done_icon


	def setData(self, index, value, role=QtCore.Qt.EditRole):
		""" set data """

		if index.isValid():
			rigNode = index.internalPointer()

			if role == QtCore.Qt.EditRole:
				rigNode._setData(index.column(), value)
				self.dataChanged.emit(index, index)

			return True

		return False

	def supportedDropActions(self):
		""" return suppoerted drop action """
		return QtCore.Qt.MoveAction | QtCore.Qt.CopyAction

	def flags(self, index):
		""" set flags """

		if index.column() == 0:
			return QtCore.Qt.ItemIsEnabled | QtCore.Qt.ItemIsDropEnabled | \
				   QtCore.Qt.ItemIsDragEnabled | QtCore.Qt.ItemIsSelectable | \
				   QtCore.Qt.ItemIsEditable
		else:
			#return QtCore.Qt.ItemIsEnabled | QtCore.Qt.ItemIsDropEnabled

			return QtCore.Qt.ItemIsEnabled | QtCore.Qt.ItemIsDropEnabled | QtCore.Qt.ItemIsDragEnabled |\
					QtCore.Qt.ItemIsSelectable | QtCore.Qt.ItemIsEditable


	def headerData(self, col, orientation, role):
		""" return the header data to view """

		if orientation == QtCore.Qt.Horizontal and role == QtCore.Qt.DisplayRole:
			return ["Component Name", "Pre", "Run", "Post"][col]

		if role == QtCore.Qt.DecorationRole:
			resource = [":/done.png", ":/done.png",
						":/done.png", ":/done.png"][col]

			return QtGui.QIcon(QtGui.QPixmap(resource))

	def rowCount(self, parent):
		""" get the row count """
		if not parent.isValid():
			parentRigNode = self._root
		else:
			parentRigNode = parent.internalPointer()

		return len(parentRigNode._children)

	def columnCount(self, parent):
		""" return the number of columns """
		return 4


	# # # # # # # # # TEST # # # # # # # # #

	def insertRows(self, row, count, parentIndex):
		self.beginInsertRows(parentIndex, row, row+count-1)
		self.endInsertRows()
		return True

	def removeRows(self, row, count, parentIndex):
		self.beginRemoveRows(parentIndex, row, row+count-1)
		parent =  self.getRigNode(parentIndex)
		parent.removeChild(row)
		self.endRemoveRows()
		return True

	def mimeTypes(self): return ['application/x-pyobj']

	def mimeData(self, index):
		rignode = self.getRigNode(index[0])
		data = cPickle.dumps(rignode)

		mimedata = QtCore.QMimeData()
		mimedata.setData('application/x-pyobj', data)

		return mimedata

	def dropMimeData(self, mimedata, action, row, column, parentIndex):


		if not mimedata.hasFormat( 'application/x-pyobj' ): return False

		item = cPickle.loads( str( mimedata.data( 'application/x-pyobj' ) ) )
		dropParent = self.getRigNode( parentIndex )
		dropParent.addChild( item )
		self.insertRows( len(dropParent.getChildren())-1, 1, parentIndex )
		self.dataChanged.emit( parentIndex, parentIndex )
		return True
	# # # # # # # # # TEST # # # # # # # # #

	def index(self, row, column, parentIndex):
		""" return the model index """
		parentRigNode = self.getRigNode(parentIndex)

		childItem = parentRigNode.getChild(row)
		if childItem: return self.createIndex(row, column, childItem)

		return QtCore.QModelIndex()

	def parent(self, index):
		""" return parent """
		rigNode = self.getRigNode(index)
		parentNode = rigNode.getParent()

		if parentNode == self._root: return QtCore.QModelIndex()

		return self.createIndex(parentNode.getRow(), 0, parentNode)


	def getRigNode(self, index):
		""" return rigNode object from index """

		if index.isValid():
			rigNode = index.internalPointer()
			if rigNode: return rigNode

		return self._root
