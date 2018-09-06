
class RigObject(object):

	def __init__(self, name, parent=None):
		super(RigObject, self).__init__()

		self._properties = {}

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
