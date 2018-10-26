"""
    creates a simple local eye
"""

import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os

import origo.builder.lib.maya.controlshape as controlshape

import origo.builder.lib.maya.matrix as matrix
import origo.builder.lib.maya.mcurves as mcurves
reload(matrix)

class MLocalEye(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalEye, self).__init__(parent)

        self.add('mirrorskeleton', False, public=False, valuetype=bool)

        self.add('fleshy', True, public=True, valuetype=bool)

        self.add('eyegeo', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Eye Geometry',
                  icon=':/UVTkFace.png', placeholdertext='Eye Geometry Name')

        # eye loop
        self.add('eyeloop', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Eye Edge Loop',
                 icon=':/polyEdgeToCurves.png', placeholdertext='Eye Edge Loop')

        # eye cavity
        self.add('eyecavity', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Upper Eye Cavity',
                 icon=':/polyEdgeToCurves.png', placeholdertext='Upper Eye Cavity Edge')

    def pre(self):
        super(MLocalEye, self).pre()

        # create curve
        cName = self.get('name')
        eyegeo = self.get('eyegeo')
        eyeloop = self.get('eyeloop')
        eyecavity = self.get('eyecavity')
        modgrp = self.getModGroup()

        if not eyegeo: return
        if not eyeloop: return

        if not isinstance(eyegeo, list): eyegeo = eval(eyegeo)[0]
        else: eyegeo = eyegeo[0]

        if not isinstance(eyeloop, list):
            eyeloop = eval(eyeloop)

        cavity_crv = ''
        if eyecavity:
            if not isinstance(eyecavity, list): eyecavity = eval(eyecavity)
            else: eyecavity = eyecavity[0]

            cavity_crv = mcurves.curve_from_edges(eyecavity, cName + 'Cavity_CRV')

        # up dwn curves
        up, dwn = mcurves.create_edges(cName, eyeloop)
        cmds.parent([up, dwn], modgrp)

        self.add('cavitycrv', cavity_crv)
        self.add('upcrv', up)
        self.add('locrv', dwn)
        self.add('eye', eyegeo)

    def addArrow(self, pointB, pointA):
        # create arrow
        arrow = cmds.createNode("annotationShape")
        arrow_parent = cmds.listRelatives(arrow, p=True)[0]
        crv = cmds.curve(p=[0,0,0], d=1)
        cmds.connectAttr(cmds.listRelatives(crv, s=True)[0] +".worldMatrix[0]",
                     arrow+ ".dagObjectMatrix[0]")
        crvshp = cmds.listRelatives(crv, s=True)[0]
        cmds.setAttr(crvshp + ".template", 1)
        cmds.parent(crvshp, pointA, r=True, s=True)
        cmds.parent(arrow, pointB, r=True, s=True)

        cmds.delete(arrow_parent)
        cmds.delete(crv)

    def undo_build(self):
        super(MLocalEye, self).undo_build()

        # get curves
        try:
            upcrv = self.get('upcrv')
            locrv = self.get('locrv')

            cmds.setAttr(upcrv + '.v', 1)
            cmds.setAttr(locrv + '.v', 1)
        except: pass

    def build(self):
        super(MLocalEye, self).build()
        cName = self.get('name')

        # get curves
        upcrv = self.get('upcrv')
        locrv = self.get('locrv')
        eyegeo = self.get('eye')
        cavitycrv = self.get('cavitycrv')

        modgrp = self.getModGroup()

        cmds.setAttr(upcrv + '.v', 0)
        cmds.setAttr(locrv + '.v', 0)

        prox_upCrv = cmds.duplicate(upcrv, name=cName + 'UpperProxy_CRV')[0]
        prox_lowCrv = cmds.duplicate(locrv, name=cName + 'LowerProxy_CRV')[0]

        up_blinkShp = cmds.duplicate(upcrv, name=cName + 'UpperBlink_SHP')[0]
        lo_blinkShp = cmds.duplicate(locrv, name=cName + 'LowerBlink_SHP')[0]


        cmds.rebuildCurve(prox_upCrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)

        cmds.rebuildCurve(prox_lowCrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)


        cmds.rebuildCurve(up_blinkShp, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)

        cmds.rebuildCurve(lo_blinkShp, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)

        cmds.blendShape(lo_blinkShp, prox_upCrv, n='_%sUpToLoBlink_BSHP'%cName)
        cmds.blendShape(up_blinkShp, prox_lowCrv, n='_%sLoToUpBlink_BSHP'%cName)

        for crv in [prox_upCrv, prox_lowCrv, up_blinkShp, lo_blinkShp]:
            cmds.setAttr(crv + '.v', 0)


        poci_up = cmds.createNode('pointOnCurveInfo', n=cName + 'TMP_UP_POCI')
        poci_low = cmds.createNode('pointOnCurveInfo', n=cName + 'TMP_DWN_POCI')

        for poci in [poci_up, poci_low]: cmds.setAttr(poci + '.turnOnPercentage', 1)

        cmds.connectAttr(prox_lowCrv + '.worldSpace[0]', poci_low + '.inputCurve')
        cmds.connectAttr(prox_upCrv + '.worldSpace[0]', poci_up + '.inputCurve')


        params = [0.0, 0.05, 0.25, 0.5, 0.75, 0.95, 1.0]
        names = ['LeftCorner', 'LeftPinch', 'Left', 'Mid', 'Right', 'RightPinch', 'RightCorner']


        ctlDriverGrp = cmds.group(em=True, n=cName + 'CtlDriver_GRP')
        cmds.parent(ctlDriverGrp, modgrp)

        for i, param in enumerate(params):
            side_name = names[i]

            cmds.setAttr(poci_up + '.parameter', param)
            cmds.setAttr(poci_low + '.parameter', param)

            # special case for corners
            if i == 0 or i == (len(params)-1):

                # create driver group
                offsetGrp = cmds.group(name='%s%sOffset_GRP'%(cName, side_name), em=True)
                ctldriven = cmds.group(name='%s%sCtlDriven_GRP'%(cName, side_name), em=True)

                #corner_ctl_drivers.append(ctldriven)

                cmds.parent(ctldriven, offsetGrp)

                cmds.xform(offsetGrp, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
                cmds.parent(offsetGrp, ctlDriverGrp)
                cmds.setAttr(offsetGrp + '.v', 0)

                # create cluster
                clsnode = cmds.cluster(['%s.cv[%d]'%(prox_lowCrv, i), '%s.cv[%d]'%(prox_upCrv, i)],
                                       name='%sCurveDriver%s_CLS'%(cName, side_name))

                cmds.parent(clsnode[1], ctldriven)

            else:
                # create driver groups for upper
                u_offsetGrp = cmds.group(name='%s%sUpperOffset_GRP'%(cName, side_name), em=True)
                u_ctldriven = cmds.group(name='%s%sUpperCtlDriven_GRP'%(cName, side_name), em=True)


                cmds.parent(u_ctldriven, u_offsetGrp)

                cmds.xform(u_offsetGrp, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
                cmds.parent(u_offsetGrp, ctlDriverGrp)
                #cmds.makeIdentity(u_offsetGrp, a=True)
                cmds.setAttr(u_offsetGrp + '.v', 0)


                u_cls = cmds.cluster(['%s.cv[%d]'%(prox_upCrv, i)],
                                     name='%s%sUpper_CLS'%(cName, side_name))

                cmds.parent(u_cls[1], u_ctldriven)


                # create driver groups for lower
                l_offsetGrp = cmds.group(name='%s%sLowerOffset_GRP'%(cName, side_name), em=True)
                l_ctldriven = cmds.group(name='%s%sLowerCtlDriven_GRP'%(cName, side_name), em=True)

                cmds.parent(l_ctldriven, l_offsetGrp)

                cmds.xform(l_offsetGrp, t=cmds.getAttr(poci_low + '.result.position')[0], ws=True)
                cmds.parent(l_offsetGrp, ctlDriverGrp)
                #cmds.makeIdentity(l_offsetGrp, a=True)
                cmds.setAttr(l_offsetGrp + '.v', 0)


                l_cls = cmds.cluster(['%s.cv[%d]'%(prox_lowCrv, i)],
                                     name='%s%sUpper_CLS'%(cName, side_name))

                cmds.parent(l_cls[1], l_ctldriven)

        # clean up
        cmds.delete([poci_up, poci_low])

        ctlDrivenGrp = cmds.group(em=True, n=cName + 'CtlDriven_GRP')
        cmds.parent(ctlDrivenGrp, modgrp)


        jointGrp = cmds.group(em=True, n=cName + 'Joints_GRP')
        cmds.parent(jointGrp, modgrp)

        # build joints on and between all controls
        params = 0.125
        joints = []

        for i in xrange(9):
            param = i*params


            # Upper curve driver
            poci_upperDriver = cmds.createNode('pointOnCurveInfo', n= '_%sUpperDriver%d_POCI'%(cName, i+1))
            cmds.connectAttr(prox_upCrv + '.worldSpace[0]', poci_upperDriver + '.inputCurve')

            cmds.setAttr(poci_upperDriver + '.parameter', param)
            cmds.setAttr(poci_upperDriver + '.turnOnPercentage', 1)

            upper_grp = cmds.group(n='_%sUpperDriverAim%d_GRP'%(cName, i+1), em=True)
            cmds.setAttr(upper_grp + '.v', 0)
            cmds.parent(upper_grp, ctlDrivenGrp)

            # skip corners
            if i > 0 and i < 8:

                poci_lowerDriver = cmds.createNode('pointOnCurveInfo', n= '_%sLowerDriver%d_POCI'%(cName, i+1))
                cmds.connectAttr(prox_lowCrv + '.worldSpace[0]', poci_lowerDriver + '.inputCurve')

                cmds.setAttr(poci_lowerDriver + '.parameter', param)
                cmds.setAttr(poci_lowerDriver + '.turnOnPercentage', 1)

                lower_grp = cmds.group(n='_%sLowerDriver%d_GRP'%(cName, i+1), em=True)
                cmds.setAttr(lower_grp + '.v', 0)
                cmds.parent(lower_grp, ctlDrivenGrp)

                cmds.connectAttr(poci_upperDriver + '.result.position', upper_grp + '.translate')
                cmds.connectAttr(poci_lowerDriver + '.result.position', lower_grp + '.translate')

                cmds.select(jointGrp)
                up_jnt = cmds.joint(n='_%sUpperDriver%d_JNT'%(cName, i+1))
                up_jnt_end = cmds.joint(n='_%sUpperDriver%dEnd_INF'%(cName, i+1))
                joints.append(up_jnt_end)
                cmds.delete(cmds.pointConstraint(eyegeo, up_jnt, mo=False))
                matrix.aimConstraint(upper_grp, up_jnt, n='%sUpperDriver%dAIM'%(cName, i+1), mo=False)
                cmds.delete(cmds.pointConstraint(upper_grp, up_jnt_end, mo=False))

                cmds.select(jointGrp)
                low_jnt = cmds.joint(n='_%sLowerDriver%d_JNT'%(cName, i+1))
                low_jnt_end = cmds.joint(n='_%sLowerDriver%dEnd_INF'%(cName, i+1))
                joints.append(low_jnt_end)
                cmds.delete(cmds.pointConstraint(eyegeo, low_jnt, mo=False))
                matrix.aimConstraint(lower_grp, low_jnt, n='%sLowerDriver%dAIM'%(cName, i+1), mo=False)
                cmds.delete(cmds.pointConstraint(lower_grp, low_jnt_end, mo=False))

            else:
                cmds.connectAttr(poci_upperDriver + '.result.position', upper_grp + '.translate')

                cmds.select(jointGrp)
                up_jnt = cmds.joint(n='_%sUpperDriver%d_JNT'%(cName, i+1))
                up_jnt_end = cmds.joint(n='_%sUpperDriver%dEnd_INF'%(cName, i+1))
                cmds.delete(cmds.pointConstraint(eyegeo, up_jnt, mo=False))
                matrix.aimConstraint(upper_grp, up_jnt, n='%sUpperDriver%dAIM'%(cName, i+1), mo=False)
                cmds.delete(cmds.pointConstraint(upper_grp, up_jnt_end, mo=False))

                joints.append(up_jnt_end)

        self.addToSkeletonSet(joints)

    def addConnect(self, nodes, node, name='additive', translate=True, rotate=False, scale=False):


        if translate:
            pma = cmds.createNode('plusMinusAverage', n='_' + name + 'Translate_ADL')

            for i, driver_node in enumerate(nodes):
                cmds.connectAttr(driver_node + '.translate', '%s.input3D[%d]'%(pma, i))

            cmds.connectAttr(pma + '.output3D', node + '.translate')

        if rotate:
            pma = cmds.createNode('plusMinusAverage', n='_' + name + 'Rotate_ADL')

            for i, driver_node in enumerate(nodes):
                cmds.connectAttr(driver_node + '.rotate', '%s.input3D[%d]'%(pma, i))

            cmds.connectAttr(pma + '.output3D', node + '.rotate')

        if scale:
            pma = cmds.createNode('plusMinusAverage', n='_' + name + 'Scale_ADL')

            for i, driver_node in enumerate(nodes):
                cmds.connectAttr(driver_node + '.scale', '%s.input3D[%d]'%(pma, i))

            cmds.connectAttr(pma + '.output3D', node + '.scale')
