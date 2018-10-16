
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

    def pre(self):
        super(MLocalLips, self).pre()

        # create guides
        self.mainmouth = self.addRootGuide('MainMouth', isSkeleton=False)

        self.leftCorner = self.addGuide('LeftCorner', parent=self.mainmouth, position=[2,0,0], isSkeleton=False)
        self.rightCorner = self.addGuide('RightCorner', parent=self.mainmouth, position=[-2,0,0], isSkeleton=False)

        self.leftUpPinch = self.addGuide('LeftUpperPinch', parent=self.leftCorner, position=[1.9,0.1,0], isSkeleton=False)
        self.leftLowPinch = self.addGuide('LeftLowerPinch', parent=self.leftCorner, position=[1.9,-0.1,0], isSkeleton=False)

        self.rightUpPinch = self.addGuide('RightUpperPinch', parent=self.rightCorner, position=[-1.9,0.1,0], isSkeleton=False)
        self.rightLowPinch = self.addGuide('RightLowerPinch', parent=self.rightCorner, position=[-1.9,-0.1,0], isSkeleton=False)

        self.upperLip = self.addGuide('MainUpperLip', parent=self.mainmouth, position=[0,1,0], isSkeleton=False)
        self.upperLipMid = self.addGuide('UpperLipMid', parent=self.upperLip, position=[0,1,0], isSkeleton=False)
        self.upperLipLeft = self.addGuide('UpperLipLeft', parent=self.upperLip, position=[1,1,0], isSkeleton=False)
        self.upperLipRight = self.addGuide('UpperLipRight', parent=self.upperLip, position=[-1,1,0], isSkeleton=False)

        self.lowerLip = self.addGuide('MainLowerLip', parent=self.mainmouth, position=[0,-1,0], isSkeleton=False)
        self.lowerLipMid = self.addGuide('LowerLipMid', parent=self.lowerLip, position=[0,-1,0], isSkeleton=False)
        self.lowerLipLeft = self.addGuide('LowerLipLeft', parent=self.lowerLip, position=[1,-1,0], isSkeleton=False)
        self.lowerLipRight = self.addGuide('LowerLipRight', parent=self.lowerLip, position=[-1,-1,0], isSkeleton=False)

        self.mainmouth.build()

        # create curve
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

    def undo_build(self):
        super(MLocalLips, self).undo_build()

        guides = self.get('position_guides')

        if guides:
            mainMouthGuide = guides[0]
            cmds.setAttr(mainMouthGuide + '.v', 1)

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


        # Create Lowress Curves
        prox_upCrv = cmds.duplicate(upCrv, name=cName + 'UpperProxy_CRV')[0]
        prox_lowCrv = cmds.duplicate(lowCrv, name=cName + 'LowerProxy_CRV')[0]

        cmds.rebuildCurve(prox_upCrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)

        cmds.rebuildCurve(prox_lowCrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)


        # Create Up Curve
        up_upcrv = cmds.duplicate(prox_upCrv, name=cName + 'UpperUpCurve_CRV')[0]
        up_lowcrv = cmds.duplicate(prox_lowCrv, name=cName + 'LowerUpCurve_CRV')[0]

        cmds.setAttr(up_upcrv + '.ty', 0.1)
        cmds.setAttr(up_lowcrv + '.ty', 0.1)

        # Loop parameters and create curve drivers.
        # A stack of transforms, creating the o-shape and transform
        # from the control and a cluster driving the curves.

        ctlDriverGrp = cmds.group(em=True, n=cName + 'CtlDrivers_GRP')
        jointGrp = cmds.group(em=True, n=cName + 'Joints_GRP')
        cmds.parent([ctlDriverGrp, jointGrp], modgrp)

        poci_up = cmds.createNode('pointOnCurveInfo', n=cName + 'TMP_UP_POCI')
        poci_low = cmds.createNode('pointOnCurveInfo', n=cName + 'TMP_DWN_POCI')

        for poci in [poci_up, poci_low]: cmds.setAttr(poci + '.turnOnPercentage', 1)

        cmds.connectAttr(prox_lowCrv + '.worldSpace[0]', poci_low + '.inputCurve')
        cmds.connectAttr(prox_upCrv + '.worldSpace[0]', poci_up + '.inputCurve')

        # cluster/control placements
        params = [0.0, 0.05, 0.25, 0.5, 0.75, 0.95, 1.0]
        ctl_rots = [40, 35, 10, 0, -10, -45, -40]
        names = ['LeftCorner', 'LeftPinch', 'Left', 'Mid', 'Right', 'RightPinch', 'RightCorner']

        upper_ctl_drivers = []
        lower_ctl_drivers = []
        corner_ctl_drivers = []


        for i, param in enumerate(params):
            side_name = names[i]

            cmds.setAttr(poci_up + '.parameter', param)
            cmds.setAttr(poci_low + '.parameter', param)

            # special case for corners
            if i == 0 or i == (len(params)-1):

                # add weight attribute
                cmds.addAttr(modgrp, ln=side_name + 'Weight', min=0.0, max=1.0, dv=0.85)
                cmds.setAttr("%s.%sWeight"%(modgrp, side_name), cb=True)
                self.reg('attribute', "%s.%sWeight"%(modgrp, side_name))

                # create driver group
                offsetGrp = cmds.group(name='%s%sOffset_GRP'%(cName, side_name), em=True)
                oshapdriven = cmds.group(name='%s%sOShapeDriven_GRP'%(cName, side_name), em=True)
                rotdirection = cmds.spaceLocator(n='%s%sRotationDirection_LOC'%(cName, side_name))[0]
                ctldriven = cmds.group(name='%s%sCtlDriven_GRP'%(cName, side_name), em=True)
                self.reg('transform', rotdirection)

                corner_ctl_drivers.append(ctldriven)

                cmds.parent(oshapdriven, offsetGrp)
                cmds.parent(rotdirection, oshapdriven)
                cmds.parent(ctldriven, rotdirection)

                cmds.xform(offsetGrp, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
                cmds.parent(offsetGrp, ctlDriverGrp)
                cmds.setAttr(offsetGrp + '.v', 0)

                cmds.setAttr(rotdirection + '.ry', ctl_rots[i])

                # create cluster
                clsnode = cmds.cluster(['%s.cv[%d]'%(prox_lowCrv, i), '%s.cv[%d]'%(prox_upCrv, i),
                              '%s.cv[%d]'%(up_lowcrv, i), '%s.cv[%d]'%(up_upcrv, i)],
                             name='%sCurveDriver%s_CLS'%(cName, side_name))

                cmds.parent(clsnode[1], ctldriven)

                # setup the O-shape weighting
                decomposeMat, wtMat = matrix.constraint(headjoint, jawjoint, oshapdriven,
                                                        n='_%s%sWeightOShape'%(cName, side_name))

                wtrev = cmds.createNode('reverse', n= '_%s%sWeight_REV'%(cName, side_name))
                cmds.connectAttr("%s.%sWeight"%(modgrp, side_name), wtrev + '.inputX')

                cmds.connectAttr("%s.%sWeight"%(modgrp, side_name), wtMat  + ".wtMatrix[0].weightIn")
                cmds.connectAttr(wtrev + '.outputX', wtMat +".wtMatrix[1].weightIn")
            else:
                # the default weight-values
                upperDv = [0.85, 0.95, 0.98, 1.0, 0.98, 0.95, 0.85]
                lowerDv = [0.85, 0.45, 0.1, 0.0, 0.1, 0.45, 0.85]

                cmds.addAttr(modgrp, ln=side_name + 'UpperWeight', min=0.0, max=1.0, dv=upperDv[i])
                cmds.setAttr("%s.%sUpperWeight"%(modgrp, side_name), cb=True)
                self.reg('attribute', "%s.%sUpperWeight"%(modgrp, side_name))

                cmds.addAttr(modgrp, ln=side_name + 'LowerWeight', min=0.0, max=1.0, dv=lowerDv[i])
                cmds.setAttr("%s.%sLowerWeight"%(modgrp, side_name), cb=True)
                self.reg('attribute', "%s.%sLowerWeight"%(modgrp, side_name))

                # create driver groups for upper
                u_offsetGrp = cmds.group(name='%s%sUpperOffset_GRP'%(cName, side_name), em=True)
                u_oshapdriven = cmds.group(name='%s%sUpperOShapeDriven_GRP'%(cName, side_name), em=True)
                u_ctldriven = cmds.group(name='%s%sUpperCtlDriven_GRP'%(cName, side_name), em=True)
                u_rotDir = cmds.spaceLocator(n='%s%sUpperRotationDirection_LOC'%(cName, side_name))[0]
                self.reg('transform', u_rotDir)
                upper_ctl_drivers.append(u_ctldriven)


                cmds.parent(u_oshapdriven, u_offsetGrp)
                cmds.parent(u_ctldriven, u_rotDir)
                cmds.parent(u_rotDir, u_oshapdriven)

                cmds.xform(u_offsetGrp, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
                cmds.parent(u_offsetGrp, ctlDriverGrp)
                #cmds.makeIdentity(u_offsetGrp, a=True)
                cmds.setAttr(u_offsetGrp + '.v', 0)

                cmds.setAttr(u_rotDir + '.ry', ctl_rots[i])

                u_cls = cmds.cluster(['%s.cv[%d]'%(prox_upCrv, i), '%s.cv[%d]'%(up_upcrv, i)],
                                     name='%s%sUpper_CLS'%(cName, side_name))

                cmds.parent(u_cls[1], u_ctldriven)

                # setup the O-shape weighting
                decomposeMat, wtMat = matrix.constraint(headjoint, jawjoint, u_oshapdriven,
                                                        n='_%s%sUpperWeightOShape'%(cName, side_name))

                u_wtrev = cmds.createNode('reverse', n= '_%s%sUpperWeight_REV'%(cName, side_name))
                cmds.connectAttr("%s.%sUpperWeight"%(modgrp, side_name), u_wtrev + '.inputX')

                cmds.connectAttr("%s.%sUpperWeight"%(modgrp, side_name), wtMat  + ".wtMatrix[0].weightIn")
                cmds.connectAttr(u_wtrev + '.outputX', wtMat +".wtMatrix[1].weightIn")

                # create driver groups for lower
                l_offsetGrp = cmds.group(name='%s%sLowerOffset_GRP'%(cName, side_name), em=True)
                l_oshapdriven = cmds.group(name='%s%sLowerOShapeDriven_GRP'%(cName, side_name), em=True)
                l_ctldriven = cmds.group(name='%s%sLowerCtlDriven_GRP'%(cName, side_name), em=True)
                l_rotDir = cmds.spaceLocator(n='%s%sLowerRotationDirection_LOC'%(cName, side_name))[0]
                lower_ctl_drivers.append(l_ctldriven)
                self.reg('transform', l_rotDir)

                cmds.parent(l_oshapdriven, l_offsetGrp)
                cmds.parent(l_rotDir, l_oshapdriven)
                cmds.parent(l_ctldriven, l_rotDir)

                cmds.xform(l_offsetGrp, t=cmds.getAttr(poci_low + '.result.position')[0], ws=True)
                cmds.parent(l_offsetGrp, ctlDriverGrp)
                #cmds.makeIdentity(l_offsetGrp, a=True)
                cmds.setAttr(l_offsetGrp + '.v', 0)

                cmds.setAttr(l_rotDir + '.ry', ctl_rots[i])

                l_cls = cmds.cluster(['%s.cv[%d]'%(prox_lowCrv, i), '%s.cv[%d]'%(up_lowcrv, i)],
                                     name='%s%sUpper_CLS'%(cName, side_name))

                cmds.parent(l_cls[1], l_ctldriven)

                # setup the O-shape weighting
                decomposeMat, wtMat = matrix.constraint(headjoint, jawjoint, l_oshapdriven,
                                                        n='_%s%sLowerWeightOShape'%(cName, side_name))

                u_wtrev = cmds.createNode('reverse', n= '_%s%sLowerWeight_REV'%(cName, side_name))
                cmds.connectAttr("%s.%sLowerWeight"%(modgrp, side_name), u_wtrev + '.inputX')

                cmds.connectAttr("%s.%sLowerWeight"%(modgrp, side_name), wtMat  + ".wtMatrix[0].weightIn")
                cmds.connectAttr(u_wtrev + '.outputX', wtMat +".wtMatrix[1].weightIn")

        # clean up
        cmds.delete([poci_up, poci_low])
        cmds.setAttr(upCrv + '.v', 0)
        cmds.setAttr(lowCrv + '.v', 0)

        # build joints on and between all controls
        params = 0.125
        joints = []

        for i in xrange(9):
            param = i*params

            # Upper curves driver and UP-rotation curve
            poci_upperDriver = cmds.createNode('pointOnCurveInfo', n= '_%sUpperDriver%d_POCI'%(cName, i+1))
            cmds.connectAttr(prox_upCrv + '.worldSpace[0]', poci_upperDriver + '.inputCurve')


            cmds.setAttr(poci_upperDriver + '.parameter', param)
            cmds.setAttr(poci_upperDriver + '.turnOnPercentage', 1)


            upper_grp = cmds.group(n='_%sUpperDriver%d_GRP'%(cName, i+1), em=True)
            jnt = cmds.joint(n='_%sUpperDriver%d_JNT'%(cName, i+1))
            joints.append(jnt)

            cmds.parent(upper_grp, jointGrp)

            # skip corners
            if i > 0 and i < 8:

                #up
                poci_UP_upperDriver = cmds.createNode('pointOnCurveInfo', n= '_%sUpperDriverUP%d_POCI'%(cName, i+1))
                cmds.connectAttr(up_upcrv + '.worldSpace[0]', poci_UP_upperDriver + '.inputCurve')

                cmds.setAttr(poci_UP_upperDriver + '.parameter', param)
                cmds.setAttr(poci_UP_upperDriver + '.turnOnPercentage', 1)

                # create nodes for aim
                up_aim_mtx = cmds.createNode('fourByFourMatrix', n='%s%dUpperAim_MTX'%(cName, i+1))
                up_uVector = cmds.createNode('plusMinusAverage', n='%s%dUpperUpVector_PMA'%(cName, i+1))
                up_crsPrd = cmds.createNode('vectorProduct', n='%s%dUpperCrossProduct_VP'%(cName, i+1))
                up_decomp = cmds.createNode('decomposeMatrix', n='%s%dUpperAimOut_DMtx'%(cName, i+1))

                cmds.setAttr(up_uVector + '.operation', 2)
                cmds.setAttr(up_crsPrd + '.operation', 2)

                # NEG
                cmds.connectAttr(poci_UP_upperDriver + '.result.position', up_uVector + '.input3D[0]')
                cmds.connectAttr(poci_upperDriver + '.result.position', up_uVector + '.input3D[1]')

                # CROSS
                cmds.connectAttr(up_uVector + '.output3D', up_crsPrd + '.input1')
                cmds.connectAttr(poci_upperDriver + '.result.tangent', up_crsPrd + '.input2')

                # FOUR BY FOUR MTX
                cmds.connectAttr(up_crsPrd + ".outputX", up_aim_mtx + ".in00")
                cmds.connectAttr(up_crsPrd + ".outputY", up_aim_mtx + ".in01")
                cmds.connectAttr(up_crsPrd + ".outputZ", up_aim_mtx + ".in02")

                cmds.connectAttr(up_uVector + ".output3D.output3Dx", up_aim_mtx + ".in10")
                cmds.connectAttr(up_uVector + ".output3D.output3Dy", up_aim_mtx + ".in11")
                cmds.connectAttr(up_uVector + ".output3D.output3Dz", up_aim_mtx + ".in12")

                cmds.connectAttr(poci_upperDriver + ".result.tangent.tangentX", up_aim_mtx + ".in20")
                cmds.connectAttr(poci_upperDriver + ".result.tangent.tangentY", up_aim_mtx + ".in21")
                cmds.connectAttr(poci_upperDriver + ".result.tangent.tangentZ", up_aim_mtx + ".in22")

                cmds.connectAttr(poci_upperDriver + ".result.position.positionX", up_aim_mtx + ".in30")
                cmds.connectAttr(poci_upperDriver + ".result.position.positionY", up_aim_mtx + ".in31")
                cmds.connectAttr(poci_upperDriver + ".result.position.positionZ", up_aim_mtx + ".in32")

                cmds.connectAttr(up_aim_mtx + '.output', up_decomp + '.inputMatrix')

                # Connect group
                cmds.connectAttr(up_decomp + '.outputRotate', upper_grp + '.rotate')
                cmds.connectAttr(up_decomp + '.outputTranslate', upper_grp + '.translate')


                # LOWER

                # Lower curves driver acNamend UP-rotation curve
                poci_lowerDriver = cmds.createNode('pointOnCurveInfo', n= '_%sLowerDriver%d_POCI'%(cName, i+1))
                poci_UP_lowerDriver = cmds.createNode('pointOnCurveInfo', n= '_%sLowerDriverUP%d_POCI'%(cName, i+1))
                cmds.connectAttr(prox_lowCrv + '.worldSpace[0]', poci_lowerDriver + '.inputCurve')
                cmds.connectAttr(up_lowcrv + '.worldSpace[0]', poci_UP_lowerDriver + '.inputCurve')

                cmds.setAttr(poci_lowerDriver + '.parameter', param)
                cmds.setAttr(poci_lowerDriver + '.turnOnPercentage', 1)

                cmds.setAttr(poci_UP_lowerDriver + '.parameter', param)
                cmds.setAttr(poci_UP_lowerDriver + '.turnOnPercentage', 1)

                lower_grp = cmds.group(n='_%sLowerDriver%d_GRP'%(cName, i+1), em=True)
                jnt = cmds.joint(n='_%sLowerDriver%d_JNT'%(cName, i+1))
                joints.append(jnt)

                cmds.parent(lower_grp, jointGrp)

                # create nodes for aim
                lo_aim_mtx = cmds.createNode('fourByFourMatrix', n='%s%dLowerAim_MTX'%(cName, i+1))
                lo_uVector = cmds.createNode('plusMinusAverage', n='%s%dLowerUpVector_PMA'%(cName, i+1))
                lo_crsPrd = cmds.createNode('vectorProduct', n='%s%dLowerCrossProduct_VP'%(cName, i+1))
                lo_decomp = cmds.createNode('decomposeMatrix', n='%s%dLowerAimOut_DMtx'%(cName, i+1))

                cmds.setAttr(lo_uVector + '.operation', 2)
                cmds.setAttr(lo_crsPrd + '.operation', 2)

                # NEG
                cmds.connectAttr(poci_UP_lowerDriver + '.result.position', lo_uVector + '.input3D[0]')
                cmds.connectAttr(poci_lowerDriver + '.result.position', lo_uVector + '.input3D[1]')

                # CROSS
                cmds.connectAttr(lo_uVector + '.output3D', lo_crsPrd + '.input1')
                cmds.connectAttr(poci_lowerDriver + '.result.tangent', lo_crsPrd + '.input2')

                # FOUR BY FOUR MTX
                cmds.connectAttr(lo_crsPrd + ".outputX", lo_aim_mtx + ".in00")
                cmds.connectAttr(lo_crsPrd + ".outputY", lo_aim_mtx + ".in01")
                cmds.connectAttr(lo_crsPrd + ".outputZ", lo_aim_mtx + ".in02")

                cmds.connectAttr(lo_uVector + ".output3D.output3Dx", lo_aim_mtx + ".in10")
                cmds.connectAttr(lo_uVector + ".output3D.output3Dy", lo_aim_mtx + ".in11")
                cmds.connectAttr(lo_uVector + ".output3D.output3Dz", lo_aim_mtx + ".in12")

                cmds.connectAttr(poci_lowerDriver + ".result.tangent.tangentX", lo_aim_mtx + ".in20")
                cmds.connectAttr(poci_lowerDriver + ".result.tangent.tangentY", lo_aim_mtx + ".in21")
                cmds.connectAttr(poci_lowerDriver + ".result.tangent.tangentZ", lo_aim_mtx + ".in22")

                cmds.connectAttr(poci_lowerDriver + ".result.position.positionX", lo_aim_mtx + ".in30")
                cmds.connectAttr(poci_lowerDriver + ".result.position.positionY", lo_aim_mtx + ".in31")
                cmds.connectAttr(poci_lowerDriver + ".result.position.positionZ", lo_aim_mtx + ".in32")

                cmds.connectAttr(lo_aim_mtx + '.output', lo_decomp + '.inputMatrix')

                # Connect group
                cmds.connectAttr(lo_decomp + '.outputRotate', lower_grp + '.rotate')
                cmds.connectAttr(lo_decomp + '.outputTranslate', lower_grp + '.translate')

            else:
                cmds.connectAttr(poci_upperDriver + '.result.position', upper_grp + '.translate')


            self.addToSkeletonSet(joints)


        # create controls from guide positions
        guides = self.get('position_guides')

        mainMouthGuide = guides[0]
        cmds.setAttr(mainMouthGuide + '.v', 0)


        mainMouth = self.addControl('MainMouth', extra=1, size=0.8, mt=guides[0], shp='square')

        leftCorner = self.addControl('LeftCorner', extra=1, size=0.4, mt=guides[1], shp='square', color=18)
        leftUpperPinch = self.addControl('LeftUpperPinch', extra=1, size=0.4, mt=guides[2], shp='square', color=18)
        leftLowerPinch = self.addControl('LeftLowerPinch', extra=1, size=0.4, mt=guides[3], shp='square', color=18)

        cmds.parent([leftUpperPinch['offsetgroups'][0], leftLowerPinch['offsetgroups'][0]], leftCorner['root'])

        rightCorner = self.addControl('RightCorner', extra=1, size=0.4, mt=guides[4], shp='square', color=4)
        rightUpperPinch = self.addControl('RightUpperPinch', extra=1, size=0.4, mt=guides[5], shp='square', color=4)
        rightLowerPinch = self.addControl('RightLowerPinch', extra=1, size=0.4, mt=guides[6], shp='square', color=4)

        cmds.parent([rightUpperPinch['offsetgroups'][0], rightLowerPinch['offsetgroups'][0]], rightCorner['root'])

        upperLip = self.addControl('MainUpperLip', extra=1, size=0.8, mt=guides[7], shp='square')
        lowerLip = self.addControl('MainLowerLip', extra=1, size=0.8, mt=guides[11], shp='square')

        cmds.parent([leftCorner['offsetgroups'][0], rightCorner['offsetgroups'][0],
                    upperLip['offsetgroups'][0], lowerLip['offsetgroups'][0]], mainMouth['root'])


        upperMidLip = self.addControl('UpperLipMid', extra=1, size=0.4, mt=guides[8], shp='square', color=21)
        upperLeftMidLip = self.addControl('UpperLipLeft', extra=2, size=0.4, mt=guides[9], shp='square', color=28)
        upperRightMidLip = self.addControl('UpperLipRight', extra=2, size=0.4, mt=guides[10], shp='square', color=12)

        cmds.parent([upperMidLip['offsetgroups'][0], upperLeftMidLip['offsetgroups'][0],
                    upperRightMidLip['offsetgroups'][0]], upperLip['root'])

        lowerMidLip = self.addControl('LowerLipMid', extra=1, size=0.4, mt=guides[12], shp='square', color=21)
        lowerLeftMidLip = self.addControl('LowerLipLeft', extra=2, size=0.4, mt=guides[13], shp='square', color=28)
        lowerRightMidLip = self.addControl('LowerLipRight', extra=2, size=0.4, mt=guides[14], shp='square', color=12)

        cmds.parent([lowerMidLip['offsetgroups'][0], lowerLeftMidLip['offsetgroups'][0],
                    lowerRightMidLip['offsetgroups'][0]], lowerLip['root'])

        self.addConnect([mainMouth['ctl'], upperLip['ctl'], upperMidLip['ctl']], upper_ctl_drivers[2],'UpperMid', rotate=True)
        self.addConnect([mainMouth['ctl'], upperLip['ctl'], upperLeftMidLip['ctl']], upper_ctl_drivers[1],'UpperLeft', rotate=True)
        self.addConnect([mainMouth['ctl'], upperLip['ctl'], upperRightMidLip['ctl']], upper_ctl_drivers[3],'UpperRight', rotate=True)

        self.addConnect([mainMouth['ctl'], lowerLip['ctl'], lowerMidLip['ctl']], lower_ctl_drivers[2],'UpperMid', rotate=True)
        self.addConnect([mainMouth['ctl'], lowerLip['ctl'], lowerLeftMidLip['ctl']], lower_ctl_drivers[1],'UpperLeft', rotate=True)
        self.addConnect([mainMouth['ctl'], lowerLip['ctl'], lowerRightMidLip['ctl']], lower_ctl_drivers[3],'UpperRight', rotate=True)

        self.addConnect([mainMouth['ctl'], leftCorner['ctl']], corner_ctl_drivers[0], 'LeftCorner', rotate=True)
        self.addConnect([mainMouth['ctl'], rightCorner['ctl']], corner_ctl_drivers[1], 'RightCorner', rotate=True)

        self.addConnect([mainMouth['ctl'], leftCorner['ctl'], leftUpperPinch['ctl']], upper_ctl_drivers[0], 'LeftUpperPinch', rotate=True)
        self.addConnect([mainMouth['ctl'], leftCorner['ctl'], leftLowerPinch['ctl']], lower_ctl_drivers[0], 'LeftLowerPinch', rotate=True)

        self.addConnect([mainMouth['ctl'], rightCorner['ctl'], rightUpperPinch['ctl']], upper_ctl_drivers[4], 'RightUpperPinch', rotate=True)
        self.addConnect([mainMouth['ctl'], rightCorner['ctl'], rightLowerPinch['ctl']], lower_ctl_drivers[4], 'RightLowerPinch', rotate=True)
