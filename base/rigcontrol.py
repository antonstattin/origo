try: from SHARED.Qt import QtXml
except: from PySide2 import QtXml


import rigdata
reload(rigdata)

import xml.etree.ElementTree as ET

class RigControl(object):

	def __init__(self, root=None):
		self._root = root

	def getData(self):
		return self._root

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


	"""
	#def saveRigxXml(self):
	def rigFromXmlFile(self, sFile):
		tree = ET.parse(sFile)

	def rigFromXml(self):

		dlist = []
		objects = {}
		for object in tree.getroot().getchildren():
			dlist.append([object.attrib["name"], "PARENT: ROOT"])
			_rigFromXmlRecursive(object, dlist)

	def _rigFromXmlRecursive(self, node, dlist):
		if not node.getchildren(): return
		for child in node.getchildren():
		dlist.append([child.attrib["name"], "PARENT: %s"%node.attrib["name"]])
		recurseXml(child, dlist)
	"""
