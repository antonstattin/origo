
from collections import OrderedDict
import traceback
import logging
import uuid

logger = logging.getLogger("Origo")

# --------------------------------------------------------- #
# ------------------- base objects ------------------------ #
# --------------------------------------------------------- #

class RigBuilder(object):
	""" Contains all the stages in the build
		Override pre, build, post, undo_post/-build/-pre
		the rig will be built in the set order pre > build > post
	"""

# ------------------- Build methods ------------------------ #

	def pre(self):
		logger.info('Running pre method..')

	def build(self):
		logger.info('Running build method..')

	def post(self):
		logger.info('Running post method..')

# ------------------- Undo methods ------------------------ #

	def undo_post(self):
		logger.info('undo post..')

	def undo_build(self):
		logger.info('undo build..')

	def undo_pre(self):
		logger.info('undo pre..')


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

		if not len(self._children): return None

		if len(self._children)>row:
			return self._children[row]

		return None

	def addChild(self, child):
		""" adds a new child to self """
		self._children.append(child)
		child._parent = self

	def removeChild(self, position):
		""" removes child at position """
		if position < 0 or position > len(self._children):
			return False

		child = self._children.pop(position)
		child._parent = None

		return True


	def getRow(self):
		""" returns row """
		if self._parent is not None:
			return self._parent._children.index(self)

	def insertChild(self, position, child):
		""" inserts child at position """
		if position < 0 or position > len(self._children):
			return False

		self._children.insert(position, child)
		child._parent = self

		return True

	def __iter__(self):
		""" iterate over all nodes under self """

		for child in self._getRecursiveChildren():
			yield child

# ------------------- private methods ------------------------ #

	def _getRecursiveChildren(self):
		""" Private function that returns all nodes under self """


		def _recursiveChildren(child, _childlist):
			for child in child._children:
				_childlist.append(child)
				_recursiveChildren(child, _childlist)

		_childlist = []
		for child in self._children:
			_childlist.append(child)
			_recursiveChildren(child, _childlist)

		return _childlist



class RigData(object):
	"""Keeps track of all rig component data"""

	def __init__(self):

		self._dataDict = OrderedDict()

		# controll object so we can access the tree through every component
		self._controller = None

		# add default parameters
		self.add('name', str(self.__class__.__name__))
		self.add('id', str(uuid.uuid4()).partition("-")[0])
		self.add('class', self.__class__.__name__)
		self.add('module', self.__class__.__module__)
		self.add('bstage', 0)
		self.add('enabled', 1)

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
		currentStage = ['pre', 'build', 'post'][self.get('bstage')-1]

		# check if we already have stored data of dType
		if dType not in self._dataDict['regdata']['value'][currentStage].keys():
			self._dataDict['regdata']['value'][currentStage].update({dType:[]})

		# be sure we store a list and save it
		if type(data) != list: data = [data]

		# only unique values
		if data in self._dataDict['regdata']['value'][currentStage][dType]: return

		self._dataDict['regdata']['value'][currentStage][dType].extend(data)

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
		if key in keys:
			self._setData(keys.index(key), value)
			return True
		else:

			logger.debug("Can't find key: {} in data".format(key))
			return False


	def getKeyIndex(self, key):
		""" returns the index of the key, this is usefull for the models
		    and the model mappers.

			:param key: key name
			:type key: str

			:return: returns index of key if found else returns none
		"""
		keys = self._dataDict.keys()
		if key in keys: return keys.index(key)

		return None

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
		""":returns: returns all public attributes and meta data (used for UI creation)"""
		publicfilter = filter(lambda items: items[1]['meta']['public'],
							  self._dataDict.items())

		return [(key, data) for key, data in publicfilter]

	def log(self, msg):
		"""log data

			   :param msg: message to log
			   :type msg: str
		"""
		cName = self.get('name') # get the components user specified name
		logger.info('{} : {}'.format(cName, msg))


# ------------------- private methods ------------------------ #

	def _data(self, column):
		""" return data to model """

		key = self._dataDict.keys()[column]
		return self._dataDict[key]['value']

	def _setData(self, column, value):
		""" set data from model """

		if len(self._dataDict.keys())-1 < column: return


		key = self._dataDict.keys()[column]
		self._dataDict[key]['value'] = value

# ------------------- Enum and Util Classes ------------------------ #
class RigObjectType():
	""" enum class for rig object types """
	Root = 0
	Layer = 1
	Component = 2


class RootBuildFunction(object):
	""" this class by the root, override it to create other
		special functions for the specific app """
	def __init__(self, stage, component):

		self._stage = stage
		self._component = component

	@property
	def stage():
		return self._stage
	@stage.setter
	def stage(self, val): return

	@property
	def component():
		return self._component
	@stage.setter
	def component(self, val): return

	def __enter__(self):
		""" use this to run a function
			before method before stage is run """
		return self._stage

	def __exit__(self, exc_type, exc_val, exc_tb):
		""" use this to run a function after
		 	methods build stage has run"""
		traceback.print_tb(exc_tb)

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
		RigBuilder.log(self, '%s : %s'%(self.get('name'), msg))

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

		self._builder = RootBuildFunction

		# create attributes
		self.add('projectname', projectname)
		self.add('projectpath', projectpath)

	def findChild(self, id):
		""" finds child from id """
		for child in self._getRecursiveChildren():
			if id == child.get('id'): return child

	def publish(self):
		""" publish method """
		logger.info('Publishing Rig..')

	def update(self):
		""" a way to 'refresh' and update the root """
		logger.debug('Updating root..')

	def importData(self, stage=None, component=None):
		""" override this as an data import function """
		return

	def exportData(self, dType=None, stage=None, component=None):
		""" overide this as an data export function """
		return

class RigLayer(RigNode, RigData):
	""" This class is used to make a nicer and more readable
		structure in the view """

	def __init__(self, parent=None):
		RigNode.__init__(self, parent)
		RigData.__init__(self)
		RigBuilder.__init__(self)

		self._type = RigObjectType.Layer

		# create attributes
		self.add('icon', ':/layer.png')
		self.add('color', (190, 190, 190))
