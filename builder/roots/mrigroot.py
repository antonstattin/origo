import origo.base.rigdata as rd
import origo.builder.lib.maya.io as mayaio
import maya.cmds as cmds

import logging
import os

logger = logging.getLogger("Origo")

MASTER_CONTAINER_NAME = '_RigData'

class MayaRootBuildFunction(object):
	""" MayaRoot runs function """
	def __init__(self, stage, component):

		self._stage = stage
		self._component = component
		self._container = None

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

	def createNameSpace(self, name):
		if not cmds.namespace(exists=name):
			cmds.namespace(addNamespace=name)

		return name

	def __enter__(self):
		""" use this to run a function
			before method before stage is run """
		if self._component._type != 2: return self._stage
		stage = ['pre', 'build', 'post'][self._stage-1]

		containerName = '%s_%s'%(stage, self._component.get('id'))

		self._container = cmds.container(n=containerName)

		if cmds.objExists(MASTER_CONTAINER_NAME):
			cmds.container(MASTER_CONTAINER_NAME, addNode=self._container, e=True)

		cmds.container(self._container, c=True, e=True)

		return self._stage

	def __exit__(self, *args):
		""" use this to run a function after
		 	methods build stage has run"""
		if self._component._type != 2: True

		if self._container:
			cmds.container(self._container, c=False, e=True)

		# update meta data stage data?


		return True

class MRigRoot(rd.RigRoot):

	def __init__(self, projectname, projectpath):
		super(MRigRoot, self).__init__(projectname, projectpath)

		# override _builder
		self._builder = MayaRootBuildFunction

	def _getStageMetaData(self):
		nodes = cmds.container(MASTER_CONTAINER_NAME, nodeList=True, q=True)

		if not nodes: return {}

		data = {}
		for node in nodes:
			id_name = node.rpartition('_')[2]

			if not data.has_key(id_name): data.update({id_name:0})
			data[id_name]+=1

		return data

	def importData(self, stage=None, component=None):
		""" import rig-related data from the .rigdata folder

			:type stage: INT!
		"""

		projpath = self.get('projectpath')

		if not os.path.exists(projpath): return

		cId = component.get('id')
		cName = component.get('name')

		stage = ['pre', 'build', 'post'][stage-1]

		importDataPath = "%s/.rigdata/component/%s/%s"%(projpath, cId, stage)

		if not os.path.exists(importDataPath): return

		for sFile in os.listdir(importDataPath):

			if sFile == 'versions' and '.json' not in sFile: continue

			dType = sFile.replace('.json', '')
			if not hasattr(mayaio, 'import%s'%dType.title()): continue

			print sFile

			importfnc = getattr(mayaio, 'import%s'%dType.title())
			importfnc('%s/%s'%(importDataPath, sFile), cName)




	def exportData(self, dType, stage, component):
		""" export rig-related-data to projects .rigdata folder """

		# gather component attributes data
		regdata = component.get('regdata')
		cId = component.get('id')
		cname = component.get('name')


		if dType == 'ALL': dTypes = regdata[stage].keys()
		else: dTypes = [dType]

		for dType in dTypes:

			# check if import type is valid
			if not hasattr(mayaio, 'export%s'%dType.title()):
				logger.info(' ROOT : %s : "%s" Is not yet implemented!'%(name, dType))
				return

			projectpath = self.get('projectpath')
			name = component.get('name')
			logger.info(' ROOT : %s : Exporting %s-%s-data '%(name, stage, dType))

			exportFnc = getattr(mayaio, 'export%s'%dType.title())

			# export
			nodes = regdata[stage][dType]
			exportFnc(nodes, projectpath, dType, stage, cId, cname)


	def update(self):
		super(MRigRoot, self).update()
		
		# update meta data
		if not cmds.objExists(MASTER_CONTAINER_NAME):
			cmds.container(n=MASTER_CONTAINER_NAME)
			cmds.addAttr(MASTER_CONTAINER_NAME, ln='xmlpath', dt='string')

		# update the path attribute
		cmds.setAttr(MASTER_CONTAINER_NAME + '.xmlpath',
					 self.get('projectpath') + '/rig.xml', type='string')

		stagedata = self._getStageMetaData()

		# set the stages
		for child in self._getRecursiveChildren():

			child_id = child.get('id')
			if stagedata.has_key(child_id): child.set('bstage', stagedata[child_id])
			else:
				stagedata.update({child_id:0})
				child.set('bstage', 0)

	def publish(self):
		super(MRigRoot, self).publish()

		if cmds.objExists(MASTER_CONTAINER_NAME):
			build_containers = cmds.container(MASTER_CONTAINER_NAME, nodeList=True, q=True)
			cmds.container(MASTER_CONTAINER_NAME, removeContainer=True, e=True)

		for container in build_containers:
			if not cmds.objExists(container): continue
			if not cmds.objectType(container) == 'container': continue

			nodes = cmds.container(container, nodeList=True, q=True)

			if nodes:
				for node in nodes:
					try: cmds.container(container, removeNode=node, e=True)
					except: continue

			cmds.container(container, removeContainer=True, e=True)
