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


        # create guides
        self.mainEye = self.addRootGuide('MainEye', isSkeleton=False)

        self.leftCorner = self.addGuide('LeftCorner', parent=self.mainEye, position=[2,0,0], isSkeleton=False)
        self.rightCorner = self.addGuide('RightCorner', parent=self.mainEye, position=[-2,0,0], isSkeleton=False)

        self.upperEyeMid = self.addGuide('UpperMid', parent=self.mainEye, position=[0,1,0], isSkeleton=False)
        self.upperEyeLeft = self.addGuide('UpperLeft', parent=self.mainEye, position=[1,1,0], isSkeleton=False)
        self.upperEyeRight = self.addGuide('UpperRight', parent=self.mainEye, position=[-1,1,0], isSkeleton=False)

        self.lowerEyeMid = self.addGuide('LowerMid', parent=self.mainEye, position=[0,-1,0], isSkeleton=False)
        self.lowerEyeLeft = self.addGuide('LowerLeft', parent=self.mainEye, position=[1,-1,0], isSkeleton=False)
        self.lowerEyeRight = self.addGuide('LowerRight', parent=self.mainEye, position=[-1,-1,0], isSkeleton=False)

        self.blinkUp = self.addGuide('UpBlink', parent=self.mainEye, position=[-2,1, 0], shape='cube', isSkeleton=False)
        self.blinkDwn = self.addGuide('DownBlink', parent=self.mainEye, position=[-2,-1, 0], shape='cube', isSkeleton=False)

        self.mainEye.build()

        if not eyegeo: return
        if not eyeloop: return

        if not isinstance(eyegeo, list): eyegeo = eval(eyegeo)[0]
        else: eyegeo = eyegeo[0]

        if not isinstance(eyeloop, list):
            eyeloop = eval(eyeloop)

        cavity_crv = ''
        if eyecavity:
            if not isinstance(eyecavity, list):
                eyecavity = eval(eyecavity)

            cavity_crv = mcurves.curve_from_edges(eyecavity, cName + 'Cavity_CRV')

            cmds.parent(cavity_crv, modgrp)

        # up dwn curves
        up, dwn = mcurves.create_edges(cName, eyeloop)
        cmds.parent([up, dwn], modgrp)

        self.add('cavitycrv', cavity_crv)
        self.add('upcrv', up)
        self.add('locrv', dwn)
        self.add('eye', eyegeo)

    def undo_build(self):
        super(MLocalEye, self).undo_build()

        # get curves
        try:
            upcrv = self.get('upcrv')
            locrv = self.get('locrv')

            cmds.setAttr(upcrv + '.v', 1)
            cmds.setAttr(locrv + '.v', 1)
        except: pass

    def post(self):
        super(MLocalEye, self).post()
        ctls = self.get('animcontrols')

    def build(self):
        super(MLocalEye, self).build()
        cName = self.get('name')

        # get curves
        upcrv = self.get('upcrv')
        locrv = self.get('locrv')
        eyegeo = self.get('eye')
        cavitycrv = self.get('cavitycrv')
        fleshy = self.get('fleshy')

        if cName.startswith("R_"):
            cmds.reverseCurve(upcrv, ch=0, rpo=1)
            cmds.reverseCurve(locrv, ch=0, rpo=1)


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

        crv_grp = cmds.group(em=True, n=cName + 'Curve_GRP')
        cmds.parent(crv_grp, modgrp)
        cmds.parent([prox_upCrv, prox_lowCrv], crv_grp)
        cmds.setAttr(crv_grp + '.v', 0)


        upBshpBlink = cmds.blendShape(lo_blinkShp, prox_upCrv, n='_%sUpToLoBlink_BSHP'%cName)
        dwnBshpBlink = cmds.blendShape(up_blinkShp, prox_lowCrv, n='_%sLoToUpBlink_BSHP'%cName)

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
        cmds.setAttr(ctlDriverGrp + '.v', 0)
        cmds.parent(ctlDriverGrp, modgrp)

        upper_ctl_drivers = []
        lower_ctl_drivers = []
        corner_ctl_drivers = []

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


                corner_ctl_drivers.append(ctldriven)

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

                lower_ctl_drivers.append(l_ctldriven)
                upper_ctl_drivers.append(u_ctldriven)

        # clean up
        cmds.delete([poci_up, poci_low])

        ctlDrivenGrp = cmds.group(em=True, n=cName + 'CtlDriven_GRP')
        cmds.parent(ctlDrivenGrp, modgrp)


        jointGrp = cmds.group(em=True, n=cName + 'Joints_GRP')
        cmds.parent(jointGrp, modgrp)
        cmds.setAttr(jointGrp + '.v', 0)

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


        # create controls from guide positions
        guides = self.get('position_guides')

        mainGuide = guides[0]
        cmds.setAttr(mainGuide + '.v', 0)

        main = self.addControl('Main', extra=1, size=0.8, mt=guides[0], shp='joint', lock=['.v'])

        leftCorner = self.addControl('LeftCorner', extra=2, size=0.4, mt=guides[1], shp='joint', color=18)
        rightCorner = self.addControl('RightCorner', extra=2, size=0.4, mt=guides[2], shp='joint', color=4)

        cmds.setAttr(leftCorner['offsetgroups'][1] + '.sx', -1)

        cmds.parent([leftCorner['offsetgroups'][0], rightCorner['offsetgroups'][0]], main['root'])

        upperMid = self.addControl('UpperMid', extra=2, size=0.4, mt=guides[3], shp='joint', color=21)
        upperLeftMid = self.addControl('UpperLeft', extra=2, size=0.4, mt=guides[4], shp='joint', color=28)
        upperRightMid = self.addControl('UpperRight', extra=2, size=0.4, mt=guides[5], shp='joint', color=12)

        cmds.parent([upperMid['offsetgroups'][0], upperLeftMid['offsetgroups'][0],
                upperRightMid['offsetgroups'][0]], main['root'])

        lowerMid = self.addControl('LowerMid', extra=2, size=0.4, mt=guides[6], shp='joint', color=21)
        lowerLeftMid = self.addControl('LowerLeft', extra=2, size=0.4, mt=guides[7], shp='joint', color=28)
        lowerRightMid = self.addControl('LowerRight', extra=2, size=0.4, mt=guides[8], shp='joint', color=12)

        cmds.parent([lowerMid['offsetgroups'][0], lowerLeftMid['offsetgroups'][0],
                lowerRightMid['offsetgroups'][0]], main['root'])


        cmds.connectAttr(main['ctl'] + '.rotate', crv_grp + '.rotate')
        cmds.connectAttr(main['ctl'] + '.translate', crv_grp + '.translate')
        cmds.connectAttr(main['ctl'] + '.scale', crv_grp + '.scale')

        # BLINK
        upBlink = self.addControl('UpBlink', extra=2, size=0.4, mt=guides[9], shp='square', lock=['.tx', '.tz',  '.rx', '.ry', '.rz',
                                                                                                  '.sx', '.sy', '.sz', '.v'])
        cmds.setAttr(upBlink['offsetgroups'][0] + '.rz', 180)

        dwnBlink = self.addControl('DownBlink', extra=2, size=0.4, mt=guides[10], shp='square', lock=['.tx', '.tz',  '.rx', '.ry', '.rz',
                                                                                                  '.sx', '.sy', '.sz', '.v'])

        cmds.addAttr(crv_grp, ln='upblinkMult', dv=10.0)
        cmds.addAttr(crv_grp, ln='dwnblinkMult', dv=10.0)

        upbmdl = cmds.createNode('multDoubleLinear', n='_' + cName + 'UpBlink_MDL')
        dwnbmdl = cmds.createNode('multDoubleLinear', n= '_' + cName + 'DwnBlink_MDL')

        cmds.connectAttr(crv_grp + '.upblinkMult', upbmdl + '.input1')
        cmds.connectAttr(crv_grp + '.dwnblinkMult', dwnbmdl + '.input1')

        cmds.connectAttr(upBlink['ctl'] + '.ty' , upbmdl + '.input2')
        cmds.connectAttr(dwnBlink['ctl'] + '.ty' , dwnbmdl + '.input2')

        """
        if fleshy:

            # create autoblink transform
            autoBlinkTransform = cmds.group(em=True, n="_%sAutoBlink_TRANSFORM"%cName)
            cmds.delete(cmds.pointConstraint(eyegeo, upAutoBlink, mo=False))
            cmds.parent(autoBlinkTransform, modgrp)
            cmds.setAttr(autoBlinkTransform + '.v', 0)

            autoblinkMdl = cmds.createNode('multDoubleLinear', n='_' + cName + 'AutoBlink_ADL')
            cmds.addAttr(crv_grp, ln='autoBlinkMult', dv=0.1)

            cmds.connectAttr(crv_grp + '.autoBlinkMult', autoblinkMdl + '.input1')
            cmds.connectAttr(autoBlinkTransform + '.rx', autoblinkMdl + '.input2')

            clamp = cmds.createNode("clamp", n='_' + cName + 'AutoBlink_CLAMP')

            cmds.connectAttr(autoblinkMdl + '.output', clamp + '.inputR')
            cmds.connectAttr(autoblinkMdl + '.output', clamp + '.inputG')

            cmds.setAttr(clamp + '.minR', -9999)
            cmds.setAttr(clamp + '.maxG', 9999)

            cmds.connectAttr(clamp + '.outputR', rotDriverUp + '.input2')
            cmds.connectAttr(clamp + '.outputG', rotDriverLo + '.input2')

            cmds.connectAttr(upbmdl + '.output', upbadl + '.input1')
            cmds.connectAttr(rotDriverUp + '.output', upbadl + '.input2')

            cmds.connectAttr(dwnbmdl + '.output', upbadl + '.input1')
            cmds.connectAttr(rotDriverLo + '.output', upbadl + '.input2')

            cmds.connectAttr(upbadl + '.output', upBshpBlink[0] + '.' + lo_blinkShp)
            cmds.connectAttr(dwnbadl + '.output', dwnBshpBlink[0] + '.' + up_blinkShp)

        else:
        """

        cmds.connectAttr(upbmdl + '.output', upBshpBlink[0] + '.' + lo_blinkShp)
        cmds.connectAttr(dwnbmdl + '.output', dwnBshpBlink[0] + '.' + up_blinkShp)

        # AIM
        l_cornerAim = cmds.spaceLocator(n='_%sLeftCorner_AIM'%cName)[0]
        r_cornerAim = cmds.spaceLocator(n='_%sRightCorner_AIM'%cName)[0]
        l_cornerAimAdd = cmds.spaceLocator(n='_%sLeftCornerAdd_AIM'%cName)[0]
        r_cornerAimAdd = cmds.spaceLocator(n='_%sRightCornerAdd_AIM'%cName)[0]

        cmds.connectAttr(leftCorner['ctl'] + '.rotate', l_cornerAimAdd + '.rotate')
        cmds.connectAttr(rightCorner['ctl'] + '.rotate', r_cornerAimAdd + '.rotate')

        cmds.parent(l_cornerAimAdd, l_cornerAim)
        cmds.parent(r_cornerAimAdd, r_cornerAim)

        cmds.delete(cmds.parentConstraint(leftCorner['ctl'], l_cornerAim, mo=False))
        cmds.delete(cmds.parentConstraint(rightCorner['ctl'], r_cornerAim, mo=False))

        cmds.parent(l_cornerAim, leftCorner['ctl'])
        cmds.parent(r_cornerAim, rightCorner['ctl'])

        matrix.constraint(l_cornerAimAdd, upperMid['ctl'], upperLeftMid['offsetgroups'][1])
        matrix.constraint(r_cornerAimAdd, upperMid['ctl'], upperRightMid['offsetgroups'][1])

        matrix.constraint(l_cornerAimAdd, lowerMid['ctl'], lowerLeftMid['offsetgroups'][1])
        matrix.constraint(r_cornerAimAdd, lowerMid['ctl'], lowerRightMid['offsetgroups'][1])


        self.addConnect([ upperMid['ctl'], upperMid['offsetgroups'][1]], upper_ctl_drivers[2], 'UpperMid', rotate=True)
        self.addConnect([ lowerMid['ctl'], lowerMid['offsetgroups'][1]], lower_ctl_drivers[2], 'LowerMid', rotate=True)

        self.addConnect([ upperLeftMid['ctl'], upperLeftMid['offsetgroups'][1]], upper_ctl_drivers[1],'UpperLeft', rotate=True)
        self.addConnect([ upperRightMid['ctl'], upperRightMid['offsetgroups'][1]], upper_ctl_drivers[3],'UpperRight', rotate=True)

        self.addConnect([ lowerLeftMid['ctl'], lowerLeftMid['offsetgroups'][1]], lower_ctl_drivers[1],'UpperLeft', rotate=True)
        self.addConnect([ lowerRightMid['ctl'], lowerRightMid['offsetgroups'][1]], lower_ctl_drivers[3],'UpperRight', rotate=True)

        self.addConnect([rightCorner['ctl']], corner_ctl_drivers[1], 'RightCorner')
        self.addConnect([leftCorner['ctl']], corner_ctl_drivers[0], 'LeftCorner')


        matrix.aimConstraint(main['ctl'], l_cornerAim)
        matrix.aimConstraint(main['ctl'], r_cornerAim)

        cmds.setAttr(l_cornerAim + '.v', 0)
        cmds.setAttr(r_cornerAim + '.v', 0)

        for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz', '.sx', '.sy', '.sz', '.v']:
            cmds.setAttr(l_cornerAim + attr, l=True, k=False)
            cmds.setAttr(l_cornerAim + attr, cb=False)
            cmds.setAttr(r_cornerAim + attr, l=True, k=False)
            cmds.setAttr(r_cornerAim + attr, cb=False)

        # SETUP PINCH!
        for i, name in enumerate(['left', 'right']):

            pma = cmds.createNode('plusMinusAverage', n='_%sPinchTranslate_ADL'%name)

            if i:
                cmds.connectAttr(rightCorner['ctl'] + '.translate', '%s.input3D[0]'%pma)
            else:
                leftmirr = cmds.createNode('multDoubleLinear', n='_%sLeftCornerMirr_MDL'%name)
                cmds.connectAttr(leftCorner['ctl'] + '.tx', leftmirr + '.input1')
                cmds.setAttr(leftmirr + '.input2', -1)

                cmds.connectAttr(leftmirr + '.output', '%s.input3D[0].input3Dx'%pma)
                cmds.connectAttr(leftCorner['ctl'] + '.ty', '%s.input3D[0].input3Dy'%pma)
                cmds.connectAttr(leftCorner['ctl'] + '.tz', '%s.input3D[0].input3Dz'%pma)


            pinchUpperADL = cmds.createNode('addDoubleLinear', n='_%sPinchUpper_ADL'%name)
            pinchLowerADL = cmds.createNode('addDoubleLinear', n='_%sPinchLower_ADL'%name)

            pinchUpperMDL = cmds.createNode('multDoubleLinear', n='_%sPinchUpper_MDL'%name)
            pinchLowerMDL = cmds.createNode('multDoubleLinear', n='_%sPinchLower_MDL'%name)

            cmds.addAttr([leftCorner['ctl'], rightCorner['ctl']][i], ln='upperPinch', dv=0.0)
            cmds.setAttr("%s.upperPinch"%([leftCorner['ctl'], rightCorner['ctl']][i]), cb=True, k=True)
            cmds.setAttr("%s.upperPinch"%([leftCorner['ctl'], rightCorner['ctl']][i]), k=True)

            cmds.addAttr([leftCorner['ctl'], rightCorner['ctl']][i], ln='lowerPinch', dv=0.0)
            cmds.setAttr("%s.lowerPinch"%([leftCorner['ctl'], rightCorner['ctl']][i]), cb=True)
            cmds.setAttr("%s.lowerPinch"%([leftCorner['ctl'], rightCorner['ctl']][i]), k=True)

            cmds.connectAttr('%s.lowerPinch'%[leftCorner['ctl'], rightCorner['ctl']][i], pinchLowerMDL + '.input1')
            cmds.connectAttr('%s.upperPinch'%[leftCorner['ctl'], rightCorner['ctl']][i], pinchUpperMDL + '.input1')

            cmds.setAttr(pinchUpperMDL + '.input2', 0.1)
            cmds.setAttr(pinchLowerMDL + '.input2', -0.1)

            cmds.connectAttr(pma + '.output3D.output3Dx', [upper_ctl_drivers[0], upper_ctl_drivers[4]][i] + '.tx')
            cmds.connectAttr(pma + '.output3D.output3Dx', [lower_ctl_drivers[0], lower_ctl_drivers[4]][i] + '.tx')

            cmds.connectAttr(pma + '.output3D.output3Dy', pinchUpperADL + '.input1')
            cmds.connectAttr(pma + '.output3D.output3Dy', pinchLowerADL + '.input1')

            cmds.connectAttr(pinchUpperMDL + '.output', pinchUpperADL + '.input2')
            cmds.connectAttr(pinchLowerMDL + '.output', pinchLowerADL + '.input2')

            cmds.connectAttr(pinchUpperADL + '.output', [upper_ctl_drivers[0], upper_ctl_drivers[4]][i] + '.ty')
            cmds.connectAttr(pinchLowerADL + '.output', [lower_ctl_drivers[0], lower_ctl_drivers[4]][i] + '.ty')

            cmds.connectAttr(pma + '.output3D.output3Dz', [upper_ctl_drivers[0], upper_ctl_drivers[4]][i] + '.tz')
            cmds.connectAttr(pma + '.output3D.output3Dz', [lower_ctl_drivers[0], lower_ctl_drivers[4]][i] + '.tz')

        # SETUP CAVITY (if curve)
        if not bool(cavitycrv): return

        cmds.rebuildCurve(cavitycrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)

        cmds.setAttr(cavitycrv + '.v', 0)

        # ADD CAVITY DRIVER ATTRIBUTES
        cmds.addAttr(main['ctl'], ln='cavityDown', dv=0.0)
        cmds.setAttr(main['ctl'] + '.cavityDown', cb=True, k=True)
        cmds.setAttr(main['ctl'] + '.cavityDown', k=True)

        cmds.addAttr(main['ctl'], ln='cavityOut', dv=0.0)
        cmds.setAttr(main['ctl'] + '.cavityOut', cb=True, k=True)
        cmds.setAttr(main['ctl'] + '.cavityOut', k=True)

        cmds.addAttr(main['ctl'], ln='cavityAutoMult', dv=0.1, min=0.0)
        cmds.setAttr(main['ctl'] + '.cavityAutoMult', cb=True, k=True)
        cmds.setAttr(main['ctl'] + '.cavityAutoMult', k=True)

        cmds.addAttr(main['ctl'], ln='browsAutoCavInput', dv=0.0)

        cavityDriverGrp = cmds.group(em=True, n=cName + 'CavityDrivers_GRP')
        cmds.parent(cavityDriverGrp, modgrp)

        cavityDriverJoints = cmds.group(em=True, n=cName + 'CavityJoints_GRP')
        cmds.parent(cavityDriverJoints, modgrp)

        cmds.setAttr(cavityDriverGrp + '.v', 0)
        cmds.setAttr(cavityDriverJoints + '.v', 0)

        cavityBshp = cmds.blendShape(lo_blinkShp, cavitycrv, n='_%sCavityAttract_BSHP'%cName)

        # connect auto behavior
        browsAutoCav = cmds.createNode('addDoubleLinear', n="_" + cName + "CavityAutoFromBrows_ADL")
        cavAutoMlt = cmds.createNode('multDoubleLinear', n="_" + cName + "CavityAutoMult_MDL")
        cavAutoOutMlt = cmds.createNode('multDoubleLinear', n="_" + cName + "CavityAutoMultOut_MDL")


        cmds.setAttr(cavAutoOutMlt + '.input2', 0.01)
        cmds.connectAttr(main['ctl'] + '.cavityOut', cavAutoOutMlt + '.input1')

        cmds.connectAttr(upbmdl + '.output', browsAutoCav + '.input1')
        cmds.connectAttr(main['ctl'] + '.browsAutoCavInput', browsAutoCav + '.input2')

        cmds.connectAttr(browsAutoCav + '.output', cavAutoMlt + '.input1')
        cmds.connectAttr(main['ctl'] + '.cavityAutoMult', cavAutoMlt + '.input2')

        cavadl = cmds.createNode('addDoubleLinear', n="_" + cName + "CavityAuto_ADL")
        cmds.connectAttr(cavAutoMlt + '.output', cavadl + '.input1')
        cmds.connectAttr(main['ctl'] + '.cavityDown', cavadl + '.input2')
        cmds.connectAttr(cavadl + '.output', cavityBshp[0] + '.' + lo_blinkShp)

        sides = ['left', 'mid', 'right']
        for e, param in enumerate([0, 0.5, 1.0]):

            poci = cmds.createNode('pointOnCurveInfo', n= '_%sCavityDriver%s_POCI'%(cName, sides[e]))
            cmds.connectAttr(cavitycrv + '.worldSpace[0]', poci + '.inputCurve')

            cmds.setAttr(poci + '.parameter', param)
            cmds.setAttr(poci + '.turnOnPercentage', 1)

            driverGrp = cmds.group(n='_%sDriverAim%s_GRP'%(cName, sides[e]), em=True)
            cmds.setAttr(driverGrp + '.v', 0)
            cmds.parent(driverGrp, cavityDriverGrp)

            cmds.connectAttr(poci + '.result.position', driverGrp + '.translate')

            cmds.select(cavityDriverJoints)
            cav_jnt = cmds.joint(n='_%sCavityDriver%s_JNT'%(cName, sides[e]))
            cav_jnt_end = cmds.joint(n='_%sUpperDriver%sEnd_INF'%(cName, sides[e]))
            cmds.delete(cmds.pointConstraint(eyegeo, cav_jnt, mo=False))

            matrix.aimConstraint(driverGrp, cav_jnt, n='%sCavityDriver%sAIM'%(cName, sides[e]), mo=False)
            cmds.delete(cmds.pointConstraint(driverGrp, cav_jnt_end, mo=False))

            cmds.makeIdentity(cav_jnt_end, a=True)

            outJntmoveAdl = cmds.createNode('addDoubleLinear', n="_%sCavity%sOutJntMove_ADL"%(cName, sides[e]))
            cmds.setAttr(outJntmoveAdl + '.input1', cmds.getAttr(cav_jnt_end + '.tx'))
            cmds.connectAttr(cavAutoOutMlt + '.output', outJntmoveAdl + '.input2')

            cmds.connectAttr(outJntmoveAdl + '.output', cav_jnt_end + '.tx')





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
