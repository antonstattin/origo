
try: from SHARED.Qt import QtCore, QtWidgets, QtGui, QtXml
except: from PySide2 import QtCore, QtWidgets, QtGui, QtXml

from collections import OrderedDict


class RigObject(object):

	def __init__(self, name, parent=None):
		super(RigObject, self).__init__()

		self._properties = {}

		self._data = [["name", name, {}],
					  ["parent", parent, {}],
					  ["id", "123123", {}],
					  ["var", True, {}]]
		self._name = name
		self._children = []
		self._parent = parent

		if parent is not None: parent.addChild(self)

	def child(self, row):
		return self._children[row]

	def addChild(self, child):
		self._children.append(child)
		child._parent = self

	def insertChild(self, position, child):

		if position < 0 or position > len(self._children):
			return False

		self._children.insert(position, child)
		child._parent = self
		return True

	def removeChild(self, position):

		if position < 0 or position > len(self._children):
			return False

		child = self._children.pop(position)
		child._parent = None

		return True

	def childCount(self):
		return len(self._children)

	def getChildren(self):
		childlist = []
		for child in self._children:
			childlist.append(child.getChildren())

		return childlist

	def parent(self):
		return self._parent

	def row(self):
		if self._parent is not None:
			return self._parent._children.index(self)

	def data(self, column):
		if   column is 0: return self._name

	def setData(self, column):
		print "hey"


	def attrs(self):

		kv = []
		print "Ordered"

		for data in self._data:
			kv.append([data[0],data[1]])

		return kv

	def asXml(self):

		doc = QtXml.QDomDocument()

		node = doc.createElement(self.typeInfo())

		for data in self._data:
			node.setAttribute(data[0], data[1])

		doc.appendChild(node)

		for i in self._children:
			i._recurseXml(doc, node)

		return doc.toString(indent=4)

	def _recurseXml(self, doc, parent):
		node = doc.createElement(self.typeInfo())
		parent.appendChild(node)

		attrs = self.attrs()

		for data in self._data:
			node.setAttribute(str(data[0]), str(data[1]))

		for i in self._children:
			i._recurseXml(doc, node)

	def typeInfo(self):

		return str("%s.%s"%(self.__class__.__module__,
							self.__class__.__name__))



class RigComponent(RigObject):

	def __init__(self, name, parent=None):
		super(RigComponent, self).__init__(name, parent)

	def data(self, column):
		if column is 0: return self._name
		if column is 1: return ":/done.png"
		if column is 2: return ":/play.png"
		if column is 3: return ":/play.png"

class RigLayer(RigObject):

	def __init__(self, name, parent=None):
		super(RigLayer, self).__init__(name, parent)

class RigRoot(RigObject):

	def __init__(self, name, parent=None):
		super(RigRoot, self).__init__(name, parent)
