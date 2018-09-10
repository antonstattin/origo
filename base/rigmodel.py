try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

import cPickle

class RigModel(QtCore.QAbstractItemModel):

	sortRole   = QtCore.Qt.UserRole
	filterRole = QtCore.Qt.UserRole + 1

	def __init__(self, parent=None):
		super(RigModel, self).__init__(parent)

		# root object
		self._root = None

	def setRoot(self, root):
		self._root = root

	def addRigNode(self, node, index=None):
		""" add node to rigmodel """

		if index: parent = self.getRigNode(index)
		else: parent = self._root

		node(parent)
		self.layoutChanged.emit()

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

			if role == RigModel.sortRole:
				return rigNode.get('name')

			if role == RigModel.filterRole:
				return rigNode.get('name')

		else:
			if role == QtCore.Qt.DecorationRole and rigNode._type == 2:
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
		""" set model data """

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
		""" set item flags """

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
			resource = [":/console.png", ":/planing.png",
						":/build.png", ":/connect.png"][col]

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

	def remove(self, row, count, index):
		""" remove node and subnodes """
		self.removeRows(row, count, index.parent())

	def insertRows(self, row, count, parentIndex):
		self.beginInsertRows(parentIndex, row, row+count-1)
		self.endInsertRows()
		return True

	def removeRows(self, row, count, parentIndex):
		self.beginRemoveRows(parentIndex, row, row+count-1)
		parent =  self.getRigNode(parentIndex)
		parent.removeChild(row)
		self.endRemoveRows()
		self.dataChanged.emit( parentIndex, parentIndex )
		return True

	def mimeTypes(self):
		""" return mime types """
		return ['application/x-pyobj']

	def mimeData(self, index):
		""" create mime data """
		rignode = self.getRigNode(index[0])
		data = cPickle.dumps(rignode)

		mimedata = QtCore.QMimeData()
		mimedata.setData('application/x-pyobj', data)

		return mimedata

	def dropMimeData(self, mimedata, action, row, column, parentIndex):
		""" emit drop mime data """

		if not mimedata.hasFormat( 'application/x-pyobj' ): return False

		item = cPickle.loads( str( mimedata.data( 'application/x-pyobj' ) ) )
		dropParent = self.getRigNode( parentIndex )
		dropParent.addChild( item )
		self.insertRows( len(dropParent.getChildren())-1, 1, parentIndex )
		self.dataChanged.emit( parentIndex, parentIndex )
		return True

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

class RigProxyModel(QtCore.QSortFilterProxyModel):
	''' Recursive sort proxy
	'''

	def __init__(self, parent=None):
		super(RigProxyModel, self).__init__(parent)

		self.setDynamicSortFilter(True)
		self.setFilterCaseSensitivity(QtCore.Qt.CaseInsensitive)

		self.setSortRole(RigModel.sortRole)
		self.setFilterRole(RigModel.filterRole)
		self.setFilterKeyColumn(0)


	def filterAcceptsRow(self, row_num, source_parent):
		''' Overriding the parent function '''

		# Check if the current row matches
		if self.filter_accepts_row_itself(row_num, source_parent):
			return True

		# Traverse up all the way to root and check if any of them match
		if self.filter_accepts_any_parent(source_parent):
			return True

		# Finally, check if any of the children match
		return self.has_accepted_children(row_num, source_parent)

	def filter_accepts_row_itself(self, row_num, parent):
		return super(RigProxyModel, self).filterAcceptsRow(row_num, parent)

	def filter_accepts_any_parent(self, parent):
		''' Traverse to the root node and check if any of the
			ancestors match the filter
		'''
		while parent.isValid():
			if self.filter_accepts_row_itself(parent.row(), parent.parent()):
				return True
			parent = parent.parent()
		return False

	def has_accepted_children(self, row_num, parent):
		''' Starting from the current node as root, traverse all
			the descendants and test if any of the children match
		'''
		model = self.sourceModel()
		source_index = model.index(row_num, 0, parent)

		children_count =  model.rowCount(source_index)
		for i in xrange(children_count):
			if self.filterAcceptsRow(i, source_index):
				return True
		return False
