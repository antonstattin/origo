
from collections import OrderedDict
import logging
import uuid

logger = logging.getLogger("Origo")

# --------------------------------------------------------- #
# ------------------- base objects ------------------------ #
# --------------------------------------------------------- #

class RigBuilder(object):

# ------------------- Build methods ------------------------ #
	def pre(self):
		self.log('Running pre method..')

	def build(self):
		self.log('Running build method..')

	def post(self):
		self.log('Running post method..')

# ------------------- Undo methods ------------------------ #

	def undo_post(self):
		self.log('undo post..')

	def undo_build(self):
		self.log('undo build..')

	def undo_pre(self):
		self.log('undo pre..')

# ------------------- methods ------------------------ #

	def log(self, msg):
		"""log data

		   :param msg: message to log
		   :type msg: str
		"""
		logger.info('{} : {}'.format(__class__, msg))


class RigNode(object):
	"""Keeps track of children and parents"""

	def __init__(self, parent=None):

		self._children = []
		self._parent = parent

		if parent is not None: parent.addChild(self)

# ------------------- methods ------------------------ #

	def getChildren(self):
		""" returns children nodes """
		return self._children

	def getParent(self):
		""" returns current parent nodes """
		return self._parent

	def getChild(self, row):
		""" returns child of current row"""
		if len(self._children)>row:
			return self._children[row]

		return None

	def addChild(self, child):
		""" adds a new child to self """
		self._children.append(child)
		child._parent = self

	def removeChild(self, position):

		if position < 0 or position > len(self._children):
			return False

		child = self._children.pop(position)
		child._parent = None

		return True


	def getRow(self):
		if self._parent is not None:
			return self._parent._children.index(self)

	def insertChild(self, position, child):

		if position < 0 or position > len(self._children):
			return False

		self._children.insert(position, child)
		child._parent = self

		return True

	def __iter__(self):
		""" iterate over all nodes under self """
		for child in _getRecursiveChildren():
			yield child

# ------------------- private methods ------------------------ #

	def _getRecursiveChildren(self):
		""" Private function that returns all nodes under self """

		def _recursiveChildren(child, _childlist):
			for child in child._children():
				childlist.append(child)
				_recursiveChildren(child, childlist)

		_childlist = []
		for child in self._children:
			_recursiveChildren(child, _childlist)

		return _childlist



class RigData(object):
	"""Keeps track of all rig component data"""

	def __init__(self):
		super(RigData, self).__init__()

		self._dataDict = OrderedDict()

		# add default parameters
		self.add('name', str(self.__class__.__name__))
		self.add('id', str(uuid.uuid4()).partition("-")[0])
		self.add('class', self.__class__.__name__)
		self.add('module', self.__class__.__module__)
		self.add('bstage', 0)

		# special data
		self.add('regdata', {'pre':{}, 'build':{}, 'post':{}})
		self.add('inputs', {})
		self.add('outputs', {})


# ------------------- methods ------------------------ #

	def reg(self, dType, data):
		""" register data for export with io
			Data type needs to have a corresponding IO method

			:param dType: type of data to export
			:type dType: ComponentIOType enum (io name string)

			:param value: data to store
			:type data: any seriealized
		"""

		# get current stage
		currentStage = ['pre', 'build', 'post'][self.get('bstage')]

		# check if we already have stored data of dType
		if dType not in self._dataDict['regdata'][currentStage].keys():
			self._dataDict['regdata'][currentStage].update({dType:[]})

		# be sure we store a list and save it
		if type(data) != list: data = [data]
		self._dataDict['regdata'][currentStage][dType].extend(data)

	def add(self, key, value, **kwarg):
		""" add a new attribute

			:param key: key of new attribute
			:type key: str

			:param value: value to store
			:type value: str, int, bool, list, float, dict, serialized objects

			:param meta: extra meta data
			:type meta: dict
		"""

		# add a default public attribute if none
		if not kwarg.has_key('public'): kwarg.update({'public':False})
		self._dataDict[key] = {'value':value, 'meta':kwarg}

	def set(self, key, value):
		""" Set attribute

			:param key: key of attribute
			:type key: str

			:param value: value to store
			:type value: str, in, bool, list, float, dict, any seriealized obj
		"""

		keys = self._dataDict.keys()
		if key in keys: self._setData(keys.index(key), value)
		else: logger.debug("Can't find key: {} in data".format(key))



	def get(self, key):
		""" returns value from data

			:param key: key to data
			:type key: str

			:return: returns value if any
		"""
		if key in self._dataDict.keys():
			return self._dataDict[key]['value']

		logger.debug("Can't find key: {} in data".format(key))
		return None

	def getAttributes(self):
		""":return: returns a list of tuples, keys and values"""
		return [(key, d['value']) for key, d in self._dataDict.items()]

	def getPublicAttributes(self):
		publicfilter = filter(lambda items: items[1]['meta']['public'],
							  self._dataDict.items())

		return [(key, data) for key, d in publicfilter]

	def getController(self):
		""":return: returns the current rig controller"""

# ------------------- private methods ------------------------ #

	def _data(self, column):
		""" return data to model """
		key = self._dataDict.keys()[column]
		return self._dataDict[key]['value']

	def _setData(self, column, value):
		""" set data from model """

		key = self._dataDict.keys()[column]
		self._dataDict[key]['value'] = value



# ------------------- Enum Classes ------------------------ #


class RigObjectType():
	""" enum class for rig object types """
	Root = 0
	Layer = 1
	Component = 2


# --------------------------------------------------------- #
# ------------------- Rig  Objects ------------------------ #
# --------------------------------------------------------- #


class RigComponent(RigNode, RigData, RigBuilder):
	""" baseclass for all components """

	def __init__(self, parent=None):
		RigNode.__init__(self, parent)
		RigData.__init__(self)
		RigBuilder.__init__(self)

		self._type = RigObjectType.Component

		# create attributes
		self.add('icon', ':/code.png')
		self.add('color', (140, 140, 140))

	def log(self, msg):
		""" override rigbuilder log function and add component name

			:param msg: message to log
			:type msg: str
		"""
		RigBuilder.log('%s - %s'%(self.get('name'), msg))


class RigRoot(RigNode, RigData, RigBuilder):

	def __init__(self, projectname, projectpath, parent=None):
		""" the root node of the rig hierarchy

			:param rigcontrol: control object
			:type rigcontrol: RigControl

			:param projectname: name of project
			:type projectname: str

			:param projectpath: path to project (rig file and modules)
			:type projectpath:

		"""
		RigNode.__init__(self, parent)
		RigData.__init__(self)
		RigBuilder.__init__(self)

		self._type = RigObjectType.Root

		# create attributes
		self.add('projectname', projectname)
		self.add('projectpath', projectpath)


class RigLayer(RigNode, RigData):
	""" This class is used to make a nicer and more readable
		structure in the view """

	def __init__(self, parent=None):
		RigNode.__init__(self, parent)
		RigData.__init__(self)

		self._type = RigObjectType.Layer

		# create attributes
		self.add('icon', ':/layer.png')
		self.add('color', (190, 190, 190))
