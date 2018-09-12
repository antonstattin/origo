try: from SHARED.Qt import QtXml, QtCore
except: from PySide2 import QtXml, QtCore

import logging
logger = logging.getLogger("Origo")

import rigdata
import copy
import xml.etree.ElementTree as ET
import importlib

class RigControl(object):

	def __init__(self, root=None, model=None):

		self._root = None
		self._model = model

		self.setRoot(root)

	def setRoot(self, root):
		self._root = root

		if self._model: self._model.setRoot(self._root )

	def getSelected(self):
		if not self._model: return

		self._model

	def addComponent(self, component, parent=None):

		if not parent: parent = self._root
		obj = component(parent)
		self.setRoot(self._root)


	def updateSourceModel(self):

		if self._model:
			model = self._model.sourceModel()
			model.dataChanged.emit(0, 0)
			QtCore.QCoreApplication.processEvents()

	def buildRig(self, root=None):
		""" build rig from a clean scene """

		# if we're not building from specific node, build from root
		if not root: root = self._root

		allModules = [root]
		allModules.extend(root._getRecursiveChildren())

		# reset all modules
		for mod in allModules: mod.set('bstage', 0)



		for mod in allModules:
			if mod._type == 1: continue # if layer

			with self._root._builder(1, mod):
				mod.set('bstage', 1)
				mod.pre()
				self.updateSourceModel()

		for mod in allModules:
			self._root.importData(1, mod)

		for mod in allModules:
			if mod._type == 1: continue # if layer

			with self._root._builder(2, mod):
				mod.set('bstage', 2)
				mod.build()

				self.updateSourceModel()

		for mod in allModules:
			self._root.importData(2, mod)

		for mod in allModules:
			if mod._type == 1: continue # if layer

			with self._root._builder(3, mod):

				mod.set('bstage', 3)
				mod.post()

				self.updateSourceModel()

		for mod in allModules:
			self._root.importData(3, mod)


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

			node.setAttribute(key, value)

		for child in rigobj.getChildren():
			self._rigToXmlRecursive(doc, node, child)

	def saveRigxXml(self):
		path = self._root.get('projectpath')

		with open("%srig.xml"%path, "w") as oFile:
			oFile.write(self.rigToXml())

		logger.info("%srig.xml"%path)

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
				rigobj.set(key, value)

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
				rigobj.set(key, value)

			self._rigFromXmlRecursive(child, rigobj)
