

import mgear.maya.shifter as shifter
import origo.builder.components.maya.mrigcomponent as mrig
import maya.cmds as cmds
import os

class MGearMod(mrig.MRigComponent):

	def __init__(self, parent=None):
		super(MGearMod, self).__init__(parent)

		self.add('assetpath', '', public=True, ui='origo.uiutils.widgets.'\
				 'propertywidgets.RigBrowseProperty', browsetype='file')

		self.set('icon', ':/humanIK_CharCtrl.png')


	def pre(self):
		super(MGearMod, self).pre()

		assetpath = self.get('assetpath')

		if os.path.exists(assetpath):
			cmds.file(assetpath, i=True)

	def undo_build(self):
		super(MGearMod, self).undo_build()

		try:
			guidegrp = cmds.ls("*_GUIDE_GRP")
			if guidegrp: cmds.parent('guide',  ws=True)
			cmds.setAttr('guide.v', 1)
		except: pass


	def build(self):
		super(MGearMod, self).build()


		guidegrp = cmds.ls('guide')

		if not guidegrp: return

		# build rig
		rig = shifter.Rig()
		cmds.select('guide')
		rig.buildFromSelection()

		try:
			riggrp = cmds.ls("*_RIG_GRP")
			if riggrp: cmds.parent('rig',  riggrp[0])
		except: pass

		try:
			guidegrp = cmds.ls("*_GUIDE_GRP")
			if guidegrp: cmds.parent('guide',  guidegrp)
		except: pass

		cmds.setAttr('guide.v', 0)
