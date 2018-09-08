#Qt imports
try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui


class RigModel(QtCore.QAbstractItemModel):

    def __init__(self, controller, parent=None):
        super(RigModel, self).__init__(parent)
        self._root = controller.getData()

    def index(self, row, column, parent):

        parentNode = self.getNode(parent)
        childItem = parentNode.child(row)

        if childItem:
            return self.createIndex(row, column, childItem)
        else:
            return QtCore.QModelIndex()

    def parent(self, index):
        node = self.getNode(index)
        parentNode = node.parent()

        if parentNode == self._root:
            return QtCore.QModelIndex()

        return self.createIndex(parentNode.row(), 0, parentNode)

    def supportedDropActions(self):
        return QtCore.Qt.MoveAction

    def flags(self, index):

        if index.column() == 0:
            return QtCore.Qt.ItemIsEnabled | QtCore.Qt.ItemIsSelectable | QtCore.Qt.ItemIsEditable
        else:
            return QtCore.Qt.ItemIsEnabled


    def getNode(self, index):
        if index.isValid():
            node = index.internalPointer()
            if node:
                return node

        return self._root


    def headerData(self, col, orientation, role):
        if orientation == QtCore.Qt.Horizontal and role == QtCore.Qt.DisplayRole:
            return ["Component Name", "Pre", "Run", "Post"][col]

        if role == QtCore.Qt.DecorationRole:

            return QtGui.QIcon(QtGui.QPixmap(":/done.png"))

    def rowCount(self, parent):
        if not parent.isValid():
            parentNode = self._root
        else:
            parentNode = parent.internalPointer()

        return parentNode.childCount()

    def columnCount(self, parent): return 4

    def data(self, index, role):
        if not index.isValid():
            return None

        node = index.internalPointer()

        if index.column() == 0:
            if role == QtCore.Qt.DisplayRole or role == QtCore.Qt.EditRole:
                return node.data(index.column())
        else:
            if role == QtCore.Qt.DecorationRole:
                resource = node.data(index.column())
                return QtGui.QIcon(QtGui.QPixmap(resource))

    def setData(self, index, value, role=QtCore.Qt.EditRole):

        if index.isValid():

            node = index.internalPointer()

            if role == QtCore.Qt.EditRole:
                node.setData(index.column(), value)
                self.dataChanged.emit(index, index)
                return True



        return False

#class RigIOModel
# delegates the rigs IO-data

#class RigInputModel():
# rig input models
# delegates the rigs components Inputs

#class RigOutputModel():
# delegates the rigs components Outputs

#class ComponentsModel()
# available modules model
