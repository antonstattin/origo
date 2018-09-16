import origo.base.rigdata as rd
import maya.cmds as cmds

class MayaRootBuildFunction(object):
	""" MayaRoot runs function """
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

	def createNameSpace(self, name):
		if not cmds.namespace(exists=name):
			cmds.namespace(addNamespace=name)

		return name

	def __enter__(self):
		""" use this to run a function
			before method before stage is run """
		if self._component._type != 2: return self._stage
		stage = ['pre', 'build', 'post'][self._stage-1]
		ns = '%s_%s'%(stage, self._component.get('id'))
		namespace = self.createNameSpace(ns)
		cmds.namespace(setNamespace=namespace)

		return self._stage

	def __exit__(self, *args):
		""" use this to run a function after
		 	methods build stage has run"""
		if self._component._type != 2: True
		cmds.namespace(setNamespace=":")
		return True

class MRigRoot(rd.RigRoot):

	def __init__(self, projectname, projectpath):
		super(MRigRoot, self).__init__(projectname, projectpath)

		# override _builder
		self._builder = MayaRootBuildFunction
