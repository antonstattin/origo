try: from SHARED.Qt import QtXml, QtCore
except: from PySide2 import QtXml, QtCore

import logging
logger = logging.getLogger("Origo")

import rigdata
import copy
import os
import xml.etree.ElementTree as ET
import importlib

class RigControl(object):
	""" The Rig control handles the rig data by loading,
		saving, adding and building """

	def __init__(self, root=None, model=None):
		"""
			:param root: the root object:
			:type root: RigRoot

			:param model: the model (proxy model)
			:type model: QAbstractItemModel
		"""
		# the root of the project use setRoot
		self._root = None

		# the current model (proxy)
		self._model = model

		self.setRoot(root)

	def setRoot(self, root):
		""" set the root of the project

			:param root: the new root
			:type root: RigRoot
		"""
		if not root: return

		# set root
		self._root = root

		# run refresh root command
		self._root.update()

		# update the model too
		if self._model: self._model.setRoot(self._root )

	def addComponent(self, component, parent=None):
		""" adds a new component to the rig

			:param component: the component object
			:type component: RigComponent or RigLayer

			:param parent: the parent to add object under default=root
			:type paranet: RigComponent, RigLayer or RigRoot
		"""

		if not parent: parent = self._root
		obj = component(parent)
		self.setRoot(self._root)

	def updateSourceModel(self):
		""" updates the source model if any"""

		if self._model:
			model = self._model.sourceModel()
			model.dataChanged.emit(0, 0)
			self._model.dataChanged.emit(0, 0)
			QtCore.QCoreApplication.processEvents()

	def _sortStages(self, root):
		if not root: root = self._root

		# get children under parent and parent in a list
		allModules = [root]
		allModules.extend(root._getRecursiveChildren())

		init = filter(lambda m: m.get('bstage')==0, allModules)
		pre = filter(lambda m: m.get('bstage')==1, allModules)
		build = filter(lambda m: m.get('bstage')==2, allModules)
		post = filter(lambda m: m.get('bstage')==3, allModules)

		return init, pre, build, post

	def _buildMods(self, modlist, stage, importdata=True):

		stagename = ['pre', 'build', 'post'][stage-1]

		for mod in modlist:
			if mod._type == 1:
				mod.set('bstage', stage)
				continue

			with self._root._builder(stage, mod):
				mod.set('bstage', stage)
				buildfnc = getattr(mod, stagename)
				buildfnc()

				if importdata:
					self._root.importData(stage, mod)


				self.updateSourceModel()


	def undoStage(self, current_stage, root=None):

		init, pre, build, post = self._sortStages(root)

		if current_stage <= 3:
			post.reverse()
			for mod in post:
				if mod._type == 1:
					mod.set('bstage', 2)
					continue

				mod.undo_post()
				mod.set('bstage', 2)
				self.updateSourceModel()

		if current_stage <= 2:
			build.reverse()
			for mod in build:
				if mod._type == 1:
					mod.set('bstage', 1)
					continue
				mod.undo_build()
				mod.set('bstage', 1)
				self.updateSourceModel()

		if current_stage <= 1:
			pre.reverse()
			for mod in pre:
				if mod._type == 1:
					mod.set('bstage', 0)
					continue
				mod.undo_pre()
				mod.set('bstage', 0)
				self.updateSourceModel()

	def buildStage(self, stage, parent=None, importdata=True):
		if not parent: parent = self._root

		# get children under parent and parent in a list
		allModules = [parent]
		allModules.extend(parent._getRecursiveChildren())

		init, pre, build, post = self._sortStages(parent)

		if stage >= 1:
			self._buildMods(init, 1)
		if stage >= 2:
			self._buildMods(pre, 2)
		if stage >= 3:
			self._buildMods(build, 3)


	def buildRig(self, root=None, importdata=True):
		""" build rig from a clean scene """

		# if we're not building from specific node, build from root
		if not root: root = self._root

		allModules = [root]
		allModules.extend(root._getRecursiveChildren())

		# reset all modules
		allModules.reverse()
		for mod in allModules:

			if mod._type == 1:
				mod.set('bstage', 0)
				continue

			current_stage = mod.get('bstage')

			if current_stage <= 3:
				mod.undo_post()
				mod.set('bstage', 2)
				current_stage = 2

			if current_stage <= 2:
				mod.undo_build()
				mod.set('bstage', 1)
				current_stage = 1

			if current_stage <= 1:
				mod.undo_pre()
				mod.set('bstage', 0)
				current_stage = 0

		self.updateSourceModel()

		# run all stages
		self.buildStage(1, root, importdata)
		self.buildStage(2, root, importdata)
		self.buildStage(3, root, importdata)

	def rigToXml(self):
		""" serialize rig into xml """

		if not self._root: return ''

		doc = QtXml.QDomDocument()

		# add root node and attributes to doc
		rootNode = doc.createElement(self._root.get('name'))

		for data in self._root.getAttributes():

			# get data
			key = data[0]
			value = data[1]

			# serialize dict, tuple and lists
			if type(value) == dict \
			or type(value) == tuple \
			or type(value) ==list: value = str(data[1])

			rootNode.setAttribute(key, value)

		doc.appendChild(rootNode)

		for childobj in self._root.getChildren():
			self._rigToXmlRecursive(doc, rootNode, childobj)

		return doc.toString(indent=4)

	def _rigToXmlRecursive(self, doc, parent, rigobj):

		node = doc.createElement(rigobj.get('name'))
		parent.appendChild(node)

		for data in rigobj.getAttributes():
			# get data
			key = data[0]
			value = data[1]

			# serialize dict, tuple and lists
			if type(value) == dict \
			or type(value) == tuple \
			or type(value) ==list: value = str(data[1])

			# rare error where a id with letters is casted as float..
			if float('Inf') == value:
				value = str(value)

			node.setAttribute(key, value)

		for child in rigobj.getChildren():
			self._rigToXmlRecursive(doc, node, child)

	def saveRigxXml(self):
		path = self._root.get('projectpath')

		if not os.path.exists(path): raise OSError("'%s' Doesn't exist!"%path)

		# check that we have a .rigdata folder
		if not os.path.isdir('%s/.rigdata'%path):
			os.mkdir('%s/.rigdata'%path)

		# check that we have a rig folder in .rigdata to store versions of rig
		if not os.path.isdir('%s/.rigdata/rig'%path):
			os.mkdir('%s/.rigdata/rig'%path)

		version = len(os.listdir('%s/.rigdata/rig'%path)) + 1

		# save to current rig
		with open("%s/rig.xml"%path, "w") as oFile:
			oFile.write(self.rigToXml())

		# save to versions
		with open("%s/.rigdata/rig/rig_v%s.xml"%(path, str(version).zfill(3)), "w") as oFile:
			oFile.write(self.rigToXml())

		logger.info("%s/rig.xml ( version %d )"%(path, version))


	def rigFromXmlFile(self, sFile):

		tree = ET.parse(sFile)

		dlist = []

		root = tree.getroot().attrib['module']
		rootcls = tree.getroot().attrib['class']
		root = importlib.import_module(root)

		projectname = tree.getroot().attrib['projectname']
		projectpath = tree.getroot().attrib['projectpath']

		rootobject = getattr(root, rootcls)(projectname, projectpath)

		for key in tree.getroot().attrib.keys():
			value = tree.getroot().attrib[key]

			try: value = eval(value)
			except: pass

			rootobject.set(key, value)


		for element in tree.getroot().getchildren():

			mod = element.attrib['module']
			modcls = element.attrib['class']
			rigmod = importlib.import_module(mod)
			rigobj = getattr(rigmod, modcls)(rootobject)

			for key in element.attrib.keys():
				value = element.attrib[key]
				try: value = eval(value)
				except: pass
				exists = rigobj.set(key, value)

				# if we can't set the value because it's not a
				# attribute that's been declare in the init
				# add the new value
				if not exists: rigobj.add(key, value)



			self._rigFromXmlRecursive(element, rigobj)

		self.setRoot(rootobject)

	def _rigFromXmlRecursive(self, node, parentobj):

		if not node.getchildren(): return

		for child in node.getchildren():


			mod = child.attrib['module']
			modcls = child.attrib['class']

			rigmod = importlib.import_module(mod)
			rigobj = getattr(rigmod, modcls)(parentobj)

			for key in child.attrib.keys():
				value = child.attrib[key]
				try: value = eval(value)
				except: pass
				exists = rigobj.set(key, value)

				# if we can't set the value because it's not a
				# attribute that's been declare in the init
				# add the new value
				if not exists: rigobj.add(key, value)

			self._rigFromXmlRecursive(child, rigobj)
