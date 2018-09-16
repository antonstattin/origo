import origo.base.rigdata as rigdata
import maya.cmds as cmds
# /:kinJoint.png

class MRigComponent(rigdata.RigComponent):

    def __init__(self, parent=None):
        super(MRigComponent, self).__init__(parent)

        self.add('guides', {})
        self.add('controls', {})
        self.set('icon', ':/mayaIcon.png')

    def getModGroup(self):
        """ returns the group name """
        groupname = "%s_mod_GRP"%self.get('name')

        if not cmds.objExists(groupname):
            groupname = cmds.group(em=True, n=groupname)

            maingrp = cmds.ls('*_MOD_*')
            if len(maingrp): cmds.parent(groupname, maingrp[0])

            inputs = self.get('inputs')
            inputs.update({'root':groupname})
            self.set('inputs', inputs)

        return groupname

    def getGuideGroup(self):
        """ returns the group name """
        groupname = "%s_guide_GRP"%self.get('name')

        if not cmds.objExists(groupname):
            cmds.group(em=True, n=groupname)

            maingrp = cmds.ls('*_GUIDE_*')
            if len(maingrp): cmds.parent(groupname, maingrp[0])

        return groupname

    def _delete_container(self, name):
        """ delete namespace and all nodes in it, used to revert stage"""
        if not cmds.objExists(name): return
        cmds.delete(name)

    def undo_pre(self):
        super(MRigComponent, self).undo_pre()

        self._delete_container('%s_%s'%('pre', self.get('id')))

    def undo_build(self):
        super(MRigComponent, self).undo_build()
        self._delete_container('%s_%s'%('build', self.get('id')))

    def undo_post(self):
        super(MRigComponent, self).undo_post()
        self._delete_container('%s_%s'%('post', self.get('id')))
