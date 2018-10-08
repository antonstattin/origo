
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os

import origo.builder.lib.maya.mcurves as mcurves



class MLocalLips(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalLips, self).__init__(parent)

        self.add('mirrorskeleton', False, public=False, valuetype=bool)

        self.add('makelowress', False, public=True, valuetype=bool, nicename='Make Lowress',
                 icon=':/polyApplyColor.png')

        # upper lip
        self.add('upperLip', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Upper Lip',
                  icon=':/polyEdgeToCurves.png')

        # lower lip
        self.add('lowerLip', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Lower Lip',
                  icon=':/polyEdgeToCurves.png')


    def pre(self):
        super(MLocalLips, self).pre()

        cName = self.get('name')
        upperLipEdges = self.get('upperLip')
        lowerLipEdges = self.get('lowerLip')

        modgrp = self.getModGroup()

        upCrv = mcurves.curve_from_edges(upperLipEdges, cName + 'Upper_CRV')
        lowCrv = mcurves.curve_from_edges(lowerLipEdges, cName + 'Lower_CRV')

        cmds.parent(upCrv, modgrp)
        cmds.parent(lowCrv, modgrp)

        # register shape
        self.reg('shape', [upCrv, lowCrv])

        # add curves
        self.add('upcrv', upCrv)
        self.add('lowcrv', lowCrv)


    def build(self):
        super(MLocalLips, self).build()

        cName = self.get('name')
        upCrv = self.get('upcrv')
        lowCrv = self.get('lowcrv')
        lowress = self.get('makelowress')

        modgrp = self.getModGroup()

        prox_upCrv = cmds.duplicate(upCrv, name=cName + 'UpperProxy_CRV')[0]
        prox_lowCrv = cmds.duplicate(lowCrv, name=cName + 'LowerProxy_CRV')[0]

        cmds.rebuildCurve(prox_upCrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)

        cmds.rebuildCurve(prox_lowCrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)

        poci_up = cmds.createNode('pointOnCurveInfo', n=cName + 'TMP_UP_POCI')
        poci_low = cmds.createNode('pointOnCurveInfo', n=cName + 'TMP_DWN_POCI')

        for poci in [poci_up, poci_low]:
            cmds.setAttr(poci + '.turnOnPercentage', 1)

        cmds.connectAttr(prox_lowCrv + '.worldSpace[0]', poci_low + '.inputCurve')
        cmds.connectAttr(prox_upCrv + '.worldSpace[0]', poci_up + '.inputCurve')

        # cluster/control placements
        params = [0.0, 0.05, 0.25, 0.5, 0.75, 0.95, 1.0]
        names = ['LeftCorner', 'LeftPinch', 'Left', 'Mid', 'Right', 'RightPinch', 'RightCorner']

        upperdrivergrp = cmds.group(em=True, n=cName + 'UpperDrivers_GRP')
        lowerdrivergrp = cmds.group(em=True, n=cName + 'LowerDrivers_GRP')

        cmds.parent([upperdrivergrp, lowerdrivergrp], modgrp)

        for i, param in enumerate(params):
            side_name = names[i]
            cmds.setAttr(poci_up + '.parameter', param)
            cmds.setAttr(poci_low + '.parameter', param)

            upperCls = cmds.spaceLocator(name='%sUpper%sCls_WN'%(cName, side_name))[0]
            cmds.parent(upperCls, upperdrivergrp)
            cmds.xform(upperCls, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
            cmds.makeIdentity(upperCls, a=True)
            cmds.setAttr(upperCls + '.v', 0)

            cmds.cluster('%s.cv[%d]'%(prox_upCrv, i), wn=[upperCls, upperCls],
                         name='%s%s_CLS'%(cName, side_name))

            lowerCls = cmds.spaceLocator(name='%sLower%s_WN'%(cName, side_name))[0]
            cmds.parent(lowerCls, lowerdrivergrp)
            cmds.xform(lowerCls, t=cmds.getAttr(poci_low + '.result.position')[0], ws=True)
            cmds.makeIdentity(lowerCls, a=True)
            cmds.setAttr(lowerCls + '.v', 0)

            cmds.cluster('%s.cv[%d]'%(prox_lowCrv, i), wn=[lowerCls, lowerCls],
                         name='%sLower%s_CLS'%(cName, side_name))

        cmds.delete([poci_up, poci_low])

        # build one joint per vert
        if not lowress:
            joints = self.buildHighress(upCrv, lowCrv, prox_upCrv, prox_lowCrv)
            self.addToSkeletonSet(joints)

        cmds.setAttr(upCrv + '.v', 0)
        cmds.setAttr(lowCrv + '.v', 0)


    def buildHighress(self, upCrv, lowCrv, upPrxyCrv, lowPrxyCrv):

        cName = self.get('name')

        jntgrp = cmds.group(em=True, n=cName + 'Joint_GRP')
        cmds.parent(jntgrp, self.getModGroup())

        upNpoc = cmds.createNode('nearestPointOnCurve', n=cName + 'UpCrvTMP_NPOC')
        lowNpoc = cmds.createNode('nearestPointOnCurve', n=cName + 'LowCrvTMP_NPOC')

        cmds.connectAttr(upPrxyCrv + '.worldSpace[0]', upNpoc + '.inputCurve')
        cmds.connectAttr(lowPrxyCrv + '.worldSpace[0]', lowNpoc + '.inputCurve')

        joints = []

        # Build Upper joints
        for e, pnt in enumerate(cmds.ls(upCrv + '.cv[*]', fl=True), 1):
            poci_up = cmds.createNode('pointOnCurveInfo', n= '_%sUpperDriver%d_POCI'%(cName, e))
            cmds.connectAttr(upPrxyCrv + '.worldSpace[0]', poci_up + '.inputCurve')

            pos = cmds.xform(pnt, t=True, ws=True, q=True)
            cmds.setAttr(upNpoc + '.inPositionX', pos[0])
            cmds.setAttr(upNpoc + '.inPositionY', pos[1])
            cmds.setAttr(upNpoc + '.inPositionZ', pos[2])

            cmds.setAttr(poci_up + '.parameter', cmds.getAttr(upNpoc + '.result.parameter'))
            cmds.setAttr(poci_up + '.turnOnPercentage', 1)

            crvDriven = cmds.group(em=True, n='%sUpperJointCurveDriven%dOffset_GRP'%(cName, e))
            cmds.parent(crvDriven, jntgrp)
            cmds.connectAttr(poci_up + '.result.position.positionX', crvDriven + '.tx')
            cmds.connectAttr(poci_up + '.result.position.positionY', crvDriven + '.ty')
            cmds.connectAttr(poci_up + '.result.position.positionZ', crvDriven + '.tz')

            jntDriver = cmds.group(em=True, n='%sUpperJointDriven%dOffset_GRP'%(cName, e))
            cmds.parent(jntDriver, crvDriven)
            jnt = cmds.joint(n='%sUpper%d_JNT'%(cName, e))
            cmds.xform(jntDriver, t=pos, ws=True)

            joints.append(jnt)


        # create lower joints (skip corners..)
        for e, pnt in enumerate(cmds.ls(lowCrv + '.cv[*]', fl=True)[1:-1], 1):

            poci_low = cmds.createNode('pointOnCurveInfo', n= '_%sLowerDriver%d_POCI'%(cName, e))
            cmds.connectAttr(lowPrxyCrv + '.worldSpace[0]', poci_low + '.inputCurve')

            pos = cmds.xform(pnt, t=True, ws=True, q=True)
            cmds.setAttr(lowNpoc + '.inPositionX', pos[0])
            cmds.setAttr(lowNpoc + '.inPositionY', pos[1])
            cmds.setAttr(lowNpoc + '.inPositionZ', pos[2])

            cmds.setAttr(poci_low + '.parameter', cmds.getAttr(lowNpoc + '.result.parameter'))
            cmds.setAttr(poci_low + '.turnOnPercentage', 1)

            crvDriven = cmds.group(em=True, n='%sLowerJointCurveDriven%dOffset_GRP'%(cName, e))
            cmds.parent(crvDriven, jntgrp)
            cmds.connectAttr(poci_low + '.result.position.positionX', crvDriven + '.tx')
            cmds.connectAttr(poci_low + '.result.position.positionY', crvDriven + '.ty')
            cmds.connectAttr(poci_low + '.result.position.positionZ', crvDriven + '.tz')

            jntDriver = cmds.group(em=True, n='%sLowerJointDriven%dOffset_GRP'%(cName, e))
            cmds.parent(jntDriver, crvDriven)
            jnt = cmds.joint(n='%sLower%d_JNT'%(cName, e))
            cmds.xform(jntDriver, t=pos, ws=True)

            joints.append(jnt)

        return joints
