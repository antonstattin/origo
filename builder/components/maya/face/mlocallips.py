
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os


import origo.builder.lib.maya.matrix as matrix
import origo.builder.lib.maya.mcurves as mcurves
reload(mcurves)

class MLocalLips(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalLips, self).__init__(parent)

        self.add('mirrorskeleton', False, public=False, valuetype=bool)

        # upper lip
        self.add('upperLip', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Upper Lip',
                  icon=':/polyEdgeToCurves.png', placeholdertext='Geo Upper Lip Edges')

        # lower lip
        self.add('lowerLip', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Lower Lip',
                  icon=':/polyEdgeToCurves.png', placeholdertext='Geo Lower Lip Edges')


        self.add('headjoint', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Head Joint',
                  icon=':/joint.svg', placeholdertext='Joint Name or guide')

        self.add('jawjoint', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Jaw Joint',
                  icon=':/joint.svg', placeholdertext='Joint Name or guide')


    def pre(self):
        super(MLocalLips, self).pre()

        cName = self.get('name')
        upperLipEdges = self.get('upperLip')
        lowerLipEdges = self.get('lowerLip')


        if not upperLipEdges: return
        if not lowerLipEdges: return

        modgrp = self.getModGroup()

        if not isinstance(upperLipEdges, list):
            upperLipEdges = eval(upperLipEdges)

        if not isinstance(lowerLipEdges, list):
            lowerLipEdges = eval(lowerLipEdges)

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

        # get head/jaw joint
        headjointlist = self.get('headjoint')
        jawjointlist = self.get('jawjoint')

        if not isinstance(headjointlist, list):
            headjointlist = eval(headjointlist)

        if not isinstance(jawjointlist, list):
            jawjointlist = eval(jawjointlist)

        headjoint = headjointlist[0]
        jawjoint = jawjointlist[0]



        if headjoint.endswith('_GUIDE'):
            headjoint = headjoint.replace('_GUIDE', '_JNT')

        if jawjoint.endswith('_GUIDE'):
            jawjoint = jawjoint.replace('_GUIDE', '_JNT')

        ###

        modgrp = self.getModGroup()

        headDriver = cmds.spaceLocator()[0]
        jawDriver = cmds.spaceLocator()[0]

        cmds.delete(cmds.parentConstraint(headjoint, headDriver, mo=False))
        cmds.delete(cmds.parentConstraint(jawjoint, jawDriver, mo=False))

        cmds.parent([headDriver, jawDriver], modgrp)


        cmds.makeIdentity(headDriver, a=True)
        cmds.makeIdentity(jawDriver, a=True)


        #matrix.constraint(headjoint, headDriver)
        #matrix.constraint(jawjoint, jawDriver)

        cmds.parent(headDriver, headjoint)
        cmds.parent(jawDriver, jawjoint)

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

        ctlDriverGrp = cmds.group(em=True, n=cName + 'CtlDrivers_GRP')
        weightDriverGrp = cmds.group(em=True, n=cName + 'WeightCurve_GRP')


        cmds.parent([ctlDriverGrp, weightDriverGrp], modgrp)


        # up curve
        for i, param in enumerate(params):
            side_name = names[i]
            cmds.setAttr(poci_up + '.parameter', param)
            cmds.setAttr(poci_low + '.parameter', param)

            # special case for corners
            if i == 0 or i == (len(params)-1):

                cmds.addAttr(modgrp, ln=side_name + 'Weight', min=0.0, max=1.0, dv=0.85)
                cmds.setAttr("%s.%sWeight"%(modgrp, side_name), cb=True)

                self.reg('attribute', "%s.%sWeight"%(modgrp, side_name))


                cornerCls = cmds.spaceLocator(name='%s%sCls_WN'%(cName, side_name))[0]
                cmds.xform(cornerCls, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
                cmds.parent(cornerCls, ctlDriverGrp)
                cmds.makeIdentity(cornerCls, a=True)
                cmds.setAttr(cornerCls + '.v', 0)

                cmds.cluster(['%s.cv[%d]'%(prox_lowCrv, i), '%s.cv[%d]'%(prox_upCrv, i)],
                             wn=[cornerCls, cornerCls],
                             name='%s%s_CLS'%(cName, side_name))

                cornerWeightCls = cmds.spaceLocator(name='%s%sWeightCls_WN'%(cName, side_name))[0]
                cmds.xform(cornerWeightCls, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
                cmds.parent(cornerWeightCls, weightDriverGrp)
                cmds.makeIdentity(cornerWeightCls, a=True)
                cmds.setAttr(cornerWeightCls + '.v', 0)

                cmds.cluster(['%s.cv[%d]'%(prox_lowCrv, i), '%s.cv[%d]'%(prox_upCrv, i)],
                             wn=[cornerWeightCls, cornerWeightCls],
                             name='%sWeight%s_CLS'%(cName, side_name))

                decomposeMat, wtMat = matrix.constraint(headDriver, jawDriver, cornerWeightCls, mo=False)

                wtrev = cmds.createNode('reverse', n= '_%s%sWeight_REV'%(cName, side_name))
                cmds.connectAttr("%s.%sWeight"%(modgrp, side_name), wtrev + '.inputX')

                cmds.connectAttr("%s.%sWeight"%(modgrp, side_name), wtMat  + ".wtMatrix[0].weightIn")
                cmds.connectAttr(wtrev + '.outputX', wtMat +".wtMatrix[1].weightIn")

            else:

                upperDv = [0.85, 0.95, 0.98, 1.0, 0.98, 0.95, 0.85]
                lowerDv = [0.85, 0.45, 0.1, 0.0, 0.1, 0.45, 0.85]

                cmds.addAttr(modgrp, ln=side_name + 'UpperWeight', min=0.0, max=1.0, dv=upperDv[i])
                cmds.setAttr("%s.%sUpperWeight"%(modgrp, side_name), cb=True)
                cmds.addAttr(modgrp, ln=side_name + 'LowerWeight', min=0.0, max=1.0, dv=lowerDv[i])
                cmds.setAttr("%s.%sLowerWeight"%(modgrp, side_name), cb=True)

                self.reg('attribute', "%s.%sUpperWeight"%(modgrp, side_name))
                self.reg('attribute', "%s.%sLowerWeight"%(modgrp, side_name))

                upperCls = cmds.spaceLocator(name='%s%sUpperCls_WN'%(cName, side_name))[0]
                cmds.xform(upperCls, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
                cmds.parent(upperCls, ctlDriverGrp)
                cmds.makeIdentity(upperCls, a=True)
                cmds.setAttr(upperCls + '.v', 0)

                lowerCls = cmds.spaceLocator(name='%s%sLowerCls_WN'%(cName, side_name))[0]
                cmds.xform(lowerCls, t=cmds.getAttr(poci_low + '.result.position')[0], ws=True)
                cmds.parent(lowerCls, ctlDriverGrp)
                cmds.makeIdentity(lowerCls, a=True)
                cmds.setAttr(lowerCls + '.v', 0)

                cmds.cluster('%s.cv[%d]'%(prox_upCrv, i), wn=[upperCls, upperCls],
                         name='%s%sUpper_CLS'%(cName, side_name))

                cmds.cluster('%s.cv[%d]'%(prox_lowCrv, i), wn=[lowerCls, lowerCls],
                         name='%s%sLower_CLS'%(cName, side_name))



                upperWeightCls = cmds.spaceLocator(name='%s%sUpperWeightCls_WN'%(cName, side_name))[0]
                cmds.xform(upperWeightCls, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
                cmds.parent(upperWeightCls, weightDriverGrp)
                cmds.makeIdentity(upperWeightCls, a=True)
                cmds.setAttr(upperWeightCls + '.v', 0)

                lowerWeightCls = cmds.spaceLocator(name='%s%sLowerWeightCls_WN'%(cName, side_name))[0]
                cmds.xform(lowerWeightCls, t=cmds.getAttr(poci_low + '.result.position')[0], ws=True)
                cmds.parent(lowerWeightCls, weightDriverGrp)
                cmds.makeIdentity(lowerWeightCls, a=True)
                cmds.setAttr(lowerWeightCls + '.v', 0)

                decomposeMat, upperWtMat = matrix.constraint(headDriver, jawDriver, upperWeightCls)

                wtupperrev = cmds.createNode('reverse', n= '_%s%sUpperWeight_REV'%(cName, side_name))
                cmds.connectAttr("%s.%sUpperWeight"%(modgrp, side_name), wtupperrev + '.inputX')

                cmds.connectAttr("%s.%sUpperWeight"%(modgrp, side_name), upperWtMat  + ".wtMatrix[0].weightIn")
                cmds.connectAttr(wtupperrev + '.outputX', upperWtMat +".wtMatrix[1].weightIn")

                decomposeMat, lowerWtMat = matrix.constraint(headDriver, jawDriver, lowerWeightCls, mo=False)

                wtlowerrev = cmds.createNode('reverse', n= '_%s%sUpperWeight_REV'%(cName, side_name))
                cmds.connectAttr("%s.%sLowerWeight"%(modgrp, side_name), wtlowerrev + '.inputX')

                cmds.connectAttr("%s.%sLowerWeight"%(modgrp, side_name), lowerWtMat  + ".wtMatrix[0].weightIn")
                cmds.connectAttr(wtlowerrev + '.outputX', lowerWtMat +".wtMatrix[1].weightIn")


                cmds.cluster('%s.cv[%d]'%(prox_upCrv, i), wn=[upperWeightCls, upperWeightCls],
                         name='%s%sUpperWeight_CLS'%(cName, side_name))

                cmds.cluster('%s.cv[%d]'%(prox_lowCrv, i), wn=[lowerWeightCls, lowerWeightCls],
                         name='%s%sLowerWeight_CLS'%(cName, side_name))

        # clean up
        cmds.delete([poci_up, poci_low])
        cmds.setAttr(upCrv + '.v', 0)
        cmds.setAttr(lowCrv + '.v', 0)

        # build joints on and between all controls
        # 9 - 7
        params = 0.125

        for i in xrange(9):
            param = e*a

            poci_up = cmds.createNode('pointOnCurveInfo', n= '_%sUpperDriver%d_POCI'%(cName, i+1))
            cmds.connectAttr(prox_upCrv + '.worldSpace[0]', poci_up + '.inputCurve')

            cmds.setAttr(poci_up + '.parameter', param)
            cmds.setAttr(poci_up + '.turnOnPercentage', 1)

            if i > 0 and i < 8:

                poci_lower = cmds.createNode('pointOnCurveInfo', n= '_%sLowerDriver%d_POCI'%(cName, i+1))
                cmds.connectAttr(prox_lowCrv + '.worldSpace[0]', poci_lower + '.inputCurve')

                cmds.setAttr(poci_lower + '.parameter', param)
                cmds.setAttr(poci_lower + '.turnOnPercentage', 1)







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
