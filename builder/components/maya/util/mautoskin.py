
import origo.builder.components.maya.mrigcomponent as mrig
import maya.cmds as cmds
import os

import logging

OrigoFileLogger = logging.getLogger('OrigoFileLogger')
origoLogger = logging.getLogger('Origo')

class MAutoSkin(mrig.MRigComponent):

    def __init__(self, parent=None):
        super(MAutoSkin, self).__init__(parent)

        self.add('modelfolder', 'model_GRP', public=True, nicename='Model Group', icon=':/group.png')
        self.add('objectset', 'rig_deformers_grp', public=True, nicename='Joint Deformer Set', icon=':/objectSet.svg')
        self.add('bindmethod', 'Closest Distance', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigComboBoxProperty', nicename='Bind Method', icon=':/bind.png',
                  enums=['Closest Distance', 'Heat Map', 'Baked Mush'])
        self.set('icon', ':/paintTextureDeformer.png')

    def _getDeformerName(self, node):

        # create a nice deformer name
        cName = self.get('name')
        if '_' in node: nodename = cName + node.rpartition('_')[0].title()
        else: nodename = cName + node.title()

        return nodename

    def getAllJoints(self):
        jointset = self.get('objectset')

        alljoints = []
        for joint in cmds.sets(jointset, q=True):
            if cmds.objectType(joint) == 'joint': alljoints.append(joint)

        return alljoints

    def closestDistanceBind(self, node):
        """ creates a closest distance bind on node """
        nodename = self._getDeformerName(node)
        joints = self.getAllJoints()

        cmds.skinCluster(joints, node, bindMethod=0, ignoreHierarchy=True, name='_%sBind_SKC'%(nodename))

    def heatMapBind(self, node):
        """ Create a heat map bind on node """

        nodename = self._getDeformerName(node)
        joints = self.getAllJoints()
        cmds.skinCluster(joints, node, bindMethod=2, dr=4.0, ignoreHierarchy=True, name='_%sBind_SKC'%(nodename))

    def post(self):
        super(MAutoSkin, self).post()

        modelgrp = self.get('modelfolder')
        jointset = self.get('objectset')
        bindmethod = self.get('bindmethod')

        if not cmds.objExists(jointset):
            self.log("Can't find a object set named %s "%jointset)
            return

        if not cmds.objectType(jointset) == 'objectSet':
            self.log("%s is not of type 'objectSet'"%jointset)
            return

        if not cmds.objExists(modelgrp):
            self.log("Can't Find model group named %s"%modelgrp)
            OrigoFileLogger.error("Can't find model group of name %s"%modelgrp)
            return

        nodes = cmds.ls(modelgrp, dag=True)

        for node in nodes:
            if cmds.objectType(node) == 'mesh' or cmds.objectType(node) == 'nurbsSurface':
                try:
                    if bindmethod == 'Heat Map': self.heatMapBind(node)
                    if bindmethod == 'Closest Distance': self.closestDistanceBind(node)

                except RuntimeError:

                    origoLogger.debug('Skipping %s" not valid'%node)

                else: continue
