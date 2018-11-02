

import mgear.maya.shifter as shifter
import origo.builder.components.maya.mrigcomponent as mrig
import maya.cmds as cmds
import os
import re

class MGearMod(mrig.MRigComponent):

	def __init__(self, parent=None):
		super(MGearMod, self).__init__(parent)

		self.add('assetpath', '', public=True, ui='origo.uiutils.widgets.'\
				 'propertywidgets.RigBrowseProperty', browsetype='file')

		self.add('SaveUpdate', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigActionButtonProperty', icon=':/save.png',
				 nicename='Save And Update', fnc=self.saveBtnAction)

		self.set('icon', ':/humanIK_CharCtrl.png')

	def saveBtnAction(self):
		"""
			Button Function Command, saves a new version of the guide
		"""

		# double check guide group exists
		guide = cmds.ls('guide')
		if not guide: return

		guidegrp = guide[0]

		assetpath = self.get('assetpath')

		cmds.select(clear=True)
		cmds.select(guidegrp)

		os.path.exists(assetpath)

		if not os.path.exists(assetpath): return

		dir_path = os.path.dirname(assetpath)
		currentpath = os.path.join(dir_path, 'guide_current.ma')
		versionpath = os.path.join(dir_path, '.version')

		if not os.path.exists(versionpath): os.mkdir(versionpath)

		latest_version = 0
		for fname in os.listdir(versionpath):
			version = int(re.search('_v\d\d\d', fname).group().replace('_v', ''))

			if latest_version < version:
				latest_version = version

		newfile =  os.path.join(versionpath, 'guide_v%s.ma'%(str(latest_version+1).zfill(3)))

		cmds.file(currentpath, force=True, options="v=0;", typ="mayaAscii", pr=True, es=True)
		cmds.file(newfile, force=True, options="v=0;", typ="mayaAscii", pr=True, es=True)

		self.set('assetpath', currentpath)


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

		# register controls
		for ctl in cmds.ls("*_ctl"): self.reg('shape', ctl)

		for ctl in cmds.ls("*_CTR"): self.reg('shape', ctl)
