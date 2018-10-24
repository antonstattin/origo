
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os


import origo.builder.lib.maya.matrix as matrix
import origo.builder.lib.maya.mcurves as mcurves
reload(matrix)

class MLocalBrows(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalBrows, self).__init__(parent)

        self.add('mirrorskeleton', False, public=False, valuetype=bool)


    def pre(self):
        super(MLocalBrows, self).pre()

        # create guides
        self.center = self.addRootGuide('Center', isSkeleton=False)

        self.leftIn  = self.addGuide('LeftIn', shape='axis', parent=self.center, position=[1,0,0], isSkeleton=False)
        self.leftMid  = self.addGuide('LeftMid', shape='axis', parent=self.center, position=[2,0,0], isSkeleton=False)
        self.leftOut  = self.addGuide('LeftOut', shape='axis', parent=self.center, position=[3,0,0], isSkeleton=False)

        self.rightIn  = self.addGuide('RightIn', shape='axis', parent=self.center, position=[-1,0,0], isSkeleton=False)
        self.rightMid  = self.addGuide('RightMid', shape='axis', parent=self.center, position=[-2,0,0], isSkeleton=False)
        self.rightOut  = self.addGuide('RightOut', shape='axis', parent=self.center, position=[-3,0,0], isSkeleton=False)

        self.centerCtl = self.addGuide('CenterCtl', shape='cube', isSkeleton=False, parent=self.center, position=[0,1,0])

        self.leftInCtl  = self.addGuide('LeftInCtl', parent=self.centerCtl, position=[1,1,0], isSkeleton=False)
        self.leftMidCtl  = self.addGuide('LeftMidCtl', parent=self.centerCtl, position=[2,1,0], isSkeleton=False)
        self.leftOutCtl  = self.addGuide('LeftOutCtl', parent=self.centerCtl, position=[3,1,0], isSkeleton=False)

        self.rightInCtl  = self.addGuide('RightInCtl', parent=self.centerCtl, position=[-1,1,0], isSkeleton=False)
        self.rightMidCtl  = self.addGuide('RightMidCtl', parent=self.centerCtl, position=[-2,1,0], isSkeleton=False)
        self.rightOutCtl  = self.addGuide('RightOutCtl', parent=self.centerCtl, position=[-3,1,0], isSkeleton=False)

        self.center.build()

        guidegrp = self.getGuideGroup()

        cname = self.get('name')
        col = cmds.sphere(spans=6, sections=9, ch=False, n=cname + 'CollisionSphere_COL')[0]
        cmds.parent(col, guidegrp)

        cmds.parent(self.center.mayanode, guidegrp)

        self.add('collisionsphere', col)
        self.reg('transform', col)
        self.reg('shape', col)

    def addCollisionSlider(self, sphere, guide, name='Name'):

        cname = self.get('name')

        rotpnt = cmds.spaceLocator(n="_%s%sRotation_LOC"%(cname, name))[0]
        pnt = cmds.spaceLocator(n="_%s%sPoint_LOC"%(cname, name))[0]
        cmds.parent(pnt, rotpnt)
        cmds.setAttr(pnt + '.v', 0)

        cmds.delete(cmds.parentConstraint(guide, rotpnt, mo=False))

        cpos = cmds.createNode("closestPointOnSurface", n="_%s%s_CPOS"%(cname, name))
        posi = cmds.createNode("pointOnSurfaceInfo", n="_%s%s_POSI"%(cname, name))
        fbfm = cmds.createNode("fourByFourMatrix", n="_%s%s_FBFMTX"%(cname, name))
        dm = cmds.createNode("decomposeMatrix", n="_%s%s_DMTX"%(cname, name))

        cmds.connectAttr(sphere + '.worldSpace[0]', cpos + '.inputSurface')
        cmds.connectAttr(cmds.listRelatives(pnt, s=True)[0] + '.worldPosition[0]',
                         cpos + '.inPosition')

        cmds.connectAttr(sphere + '.worldSpace[0]', posi + '.inputSurface')

        cmds.connectAttr(cpos + '.result.parameterV',
                         posi + '.parameterV')

        cmds.connectAttr(cpos + '.result.parameterU',
                         posi + '.parameterU')

        cmds.connectAttr(posi + '.result.tangentV.tangentVx', fbfm + '.in00')
        cmds.connectAttr(posi + '.result.tangentV.tangentVy', fbfm + '.in01')
        cmds.connectAttr(posi + '.result.tangentV.tangentVz', fbfm + '.in02')

        cmds.connectAttr(posi + '.normalX', fbfm + '.in10')
        cmds.connectAttr(posi + '.normalY', fbfm + '.in11')
        cmds.connectAttr(posi + '.normalZ', fbfm + '.in12')

        cmds.connectAttr(posi + '.tangentUx', fbfm + '.in20')
        cmds.connectAttr(posi + '.tangentUy', fbfm + '.in21')
        cmds.connectAttr(posi + '.tangentUz', fbfm + '.in22')

        cmds.connectAttr(posi + '.positionX', fbfm + '.in30')
        cmds.connectAttr(posi + '.positionY', fbfm + '.in31')
        cmds.connectAttr(posi + '.positionZ', fbfm + '.in32')

        cmds.connectAttr(fbfm + '.output', dm + '.inputMatrix')

        jntgrp = cmds.group(em=True, n='%s%sDrivenJnt_GRP'%(cname, name))
        cmds.select(clear=True)
        jnt = cmds.joint(n='%s%sDriven_JNT'%(cname, name))

        cmds.setAttr(jntgrp + '.tx', cmds.getAttr(dm + '.outputTranslateX'))
        cmds.connectAttr(dm + '.outputTranslateY', jntgrp + '.ty')
        cmds.connectAttr(dm + '.outputTranslateZ', jntgrp + '.tz')

        cmds.connectAttr(dm + '.outputRotateY', jntgrp + '.ry')
        cmds.connectAttr(dm + '.outputRotateZ', jntgrp + '.rz')

        cmds.parent(jnt, jntgrp)
        cmds.delete(cmds.pointConstraint(guide, jnt, mo=False))

        return rotpnt, jntgrp, pnt

    def neggConnect(self, attrDriver, attrDriven, name):
        cname = self.get('name')
        mdl = cmds.createNode('multDoubleLinear', n='_%s%sNegg_MDL'%(cname, name))

        cmds.connectAttr(attrDriver, mdl + '.input1')
        cmds.setAttr(mdl + '.input2', -1)

        cmds.connectAttr(mdl + '.output', attrDriven)

    def build(self):
        super(MLocalBrows, self).build()

        # get guide objects
        sphere = self.get('collisionsphere')
        guides = self.get('position_guides')
        cname = self.get('name')

        modgrp = self.getModGroup()

        joints = cmds.group(em=True, n="%sJoints_GRP"%cname)
        drivers = cmds.group(em=True, n="%sDrivers_GRP"%cname)

        cmds.setAttr(joints + '.v', 0)
        cmds.setAttr(drivers + '.v', 0)

        # get guides
        center = guides[0]

        leftIn = guides[1]
        leftMid = guides[2]
        leftOut = guides[3]

        rightIn = guides[4]
        rightMid = guides[5]
        rightOut = guides[6]

        li_rotpnt, li_jntgrp, li_pnt = self.addCollisionSlider(sphere, leftIn, name="LeftIn")
        lm_rotpnt, lm_jntgrp, lm_pnt = self.addCollisionSlider(sphere, leftMid, name="LeftMid")
        lo_rotpnt, lo_jntgrp, lo_pnt = self.addCollisionSlider(sphere, leftOut, name="LeftOut")

        ri_rotpnt, ri_jntgrp, ri_pnt = self.addCollisionSlider(sphere, rightIn, name="RightIn")
        rm_rotpnt, rm_jntgrp, rm_pnt = self.addCollisionSlider(sphere, rightMid, name="RightMid")
        ro_rotpnt, ro_jntgrp, ro_pnt = self.addCollisionSlider(sphere, rightOut, name="RightOut")

        leftDriven = cmds.group(em=True, n='%sLeft_GRP'%cname)
        rightDriven = cmds.group(em=True, n='%sRight_GRP'%cname)

        cmds.delete(cmds.parentConstraint(leftIn, leftMid, leftOut, leftDriven, mo=False))
        cmds.delete(cmds.parentConstraint(rightIn, rightMid, rightOut, rightDriven, mo=False))

        cmds.parent([li_jntgrp, lm_jntgrp, lo_jntgrp,
                     ri_jntgrp, rm_jntgrp, ro_jntgrp], joints)

        cmds.parent([li_rotpnt, lm_rotpnt, lo_rotpnt], leftDriven)
        cmds.parent([ri_rotpnt, rm_rotpnt, ro_rotpnt], rightDriven)

        cmds.parent([leftDriven, rightDriven], drivers)
        cmds.parent([joints, drivers], modgrp)

        leftIn = guides[1]
        leftMid = guides[2]
        leftOut = guides[3]

        rightIn = guides[4]
        rightMid = guides[5]

        rightOut = guides[7]

        lock_attrs = ['.v', '.rx', '.ry', '.rz', '.sx', '.sy', '.sz']
        leftInCtl = self.addControl('LeftIn', extra=2, size=0.8, mt=guides[8],
                                    shp='joint', color=18, lock=lock_attrs)

        leftMidCtl = self.addControl('LeftMid', extra=2, size=0.8, mt=guides[9],
                                    shp='joint', color=18, lock=lock_attrs)

        leftOutCtl = self.addControl('LeftOut', extra=2, size=0.8, mt=guides[10],
                                    shp='joint', color=18, lock=lock_attrs)

        rightInCtl = self.addControl('RightIn', extra=1, size=0.8, mt=guides[11],
                                     shp='joint', color=4, lock=lock_attrs)

        rightMidCtl = self.addControl('RightMid', extra=1, size=0.8, mt=guides[12],
                                     shp='joint', color=4, lock=lock_attrs)

        rightOutCtl = self.addControl('RightOut', extra=1, size=0.8, mt=guides[13],
                                     shp='joint', color=4, lock=lock_attrs)

        cmds.setAttr(leftInCtl['offsetgroups'][1] + '.sx', -1)
        cmds.setAttr(leftMidCtl['offsetgroups'][1] + '.sx', -1)
        cmds.setAttr(leftOutCtl['offsetgroups'][1] + '.sx', -1)

        guidegrp = self.getGuideGroup()
        cmds.setAttr(guidegrp + '.v', 0)
        cmds.setAttr(center + '.v', 0)

        cmds.connectAttr(leftInCtl['ctl'] +  '.tx',
                         cmds.listRelatives(li_jntgrp, c=True)[0] + '.ty')

        cmds.connectAttr(leftMidCtl['ctl'] +  '.tx',
                         cmds.listRelatives(lm_jntgrp, c=True)[0] + '.ty')

        cmds.connectAttr(leftOutCtl['ctl'] +  '.tx',
                         cmds.listRelatives(lo_jntgrp, c=True)[0] + '.ty')

        self.neggConnect(rightInCtl['ctl'] +  '.tx',
                         cmds.listRelatives(ri_jntgrp, c=True)[0] + '.ty',
                         'LeftInCtlTX')

        self.neggConnect(rightMidCtl['ctl'] +  '.tx',
                         cmds.listRelatives(rm_jntgrp, c=True)[0] + '.ty',
                         'LeftInCtlTX')

        self.neggConnect(rightOutCtl['ctl'] +  '.tx',
                         cmds.listRelatives(ro_jntgrp, c=True)[0] + '.ty',
                         'LeftInCtlTX')

        cmds.connectAttr(leftInCtl['ctl'] + '.ty', li_pnt + '.ty')
        cmds.connectAttr(leftMidCtl['ctl'] + '.ty', lm_pnt + '.ty')
        cmds.connectAttr(leftOutCtl['ctl'] + '.ty', lo_pnt + '.ty')

        cmds.connectAttr(rightInCtl['ctl'] + '.ty', ri_pnt + '.ty')
        cmds.connectAttr(rightMidCtl['ctl'] + '.ty', rm_pnt + '.ty')
        cmds.connectAttr(rightOutCtl['ctl'] + '.ty', ro_pnt + '.ty')

        cmds.connectAttr(leftInCtl['ctl'] + '.tz',  cmds.listRelatives(li_jntgrp, c=True)[0] + '.tz')
        cmds.connectAttr(leftMidCtl['ctl'] + '.tz',  cmds.listRelatives(lm_jntgrp, c=True)[0] + '.tz')
        cmds.connectAttr(leftOutCtl['ctl'] + '.tz',  cmds.listRelatives(lo_jntgrp, c=True)[0] + '.tz')

        cmds.connectAttr(rightInCtl['ctl'] + '.tz',  cmds.listRelatives(ri_jntgrp, c=True)[0] + '.tz')
        cmds.connectAttr(rightMidCtl['ctl'] + '.tz',  cmds.listRelatives(rm_jntgrp, c=True)[0] + '.tz')
        cmds.connectAttr(rightOutCtl['ctl'] + '.tz',  cmds.listRelatives(ro_jntgrp, c=True)[0] + '.tz')

        midposgrp = cmds.group(em=True, n='%sMidDetail_GRP'%cname)
        midjntgrp = cmds.group(em=True, n='%sMidDetailJnt_GRP'%cname)
        middjnt = cmds.joint(n='%sMidDetail_JNT'%cname)

        cmds.parent(midposgrp, modgrp)
        cmds.parent(midjntgrp, midposgrp)

        cmds.parent(midjntgrp, joints)
        cmds.delete(cmds.pointConstraint(center, midjntgrp, mo=False))

        midpos = cmds.group(em=True, n='%sMidPos_GRP'%cname)
        cmds.parent(midpos, midposgrp)
        cmds.delete(cmds.pointConstraint(center, midpos, mo=False))

        matrix.constraint(midpos,
                          cmds.listRelatives(ri_jntgrp, c=True)[0],
                          cmds.listRelatives(li_jntgrp, c=True)[0],
                          midjntgrp)


        adl = cmds.createNode('addDoubleLinear', n='_%sMidBrowOut_ADL'%(cname))
        mdl = cmds.createNode('multDoubleLinear', n='_%sMidBrowOutMult_MDL'%(cname))
        clamp = cmds.createNode('clamp', n='_%sMidBrowOut_CLAMP'%(cname))


        #self.neggConnect(leftInCtl['ctl'] + '.tx', adl + '.input1', 'MidBrowOut')
        cmds.connectAttr(leftInCtl['ctl'] + '.tx', adl + '.input1')
        cmds.connectAttr(rightInCtl['ctl'] + '.tx', adl + '.input2')

        cmds.addAttr(midposgrp, ln='MidBrowOut', min=0.0, dv=0.1)
        cmds.setAttr("%s.MidBrowOut"%(midposgrp), cb=True)

        self.reg('attribute', "%s.MidBrowOut"%(midposgrp))

        cmds.connectAttr(adl + '.output', mdl + '.input1')
        cmds.connectAttr(midposgrp + '.MidBrowOut', mdl + '.input2')

        cmds.setAttr(clamp + '.maxR', 9999)
        cmds.connectAttr(mdl + '.output', clamp + '.inputR')
        cmds.connectAttr(clamp + '.outputR', middjnt + '.tz')

        alljoints = [middjnt]
        for jgrp in [li_jntgrp, lm_jntgrp, lo_jntgrp,
                     ri_jntgrp, rm_jntgrp, ro_jntgrp]:

            jnt = cmds.listRelatives(jgrp, c=True)[0]
            alljoints.append(jnt)


        self.addToSkeletonSet(alljoints)


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

    def post(self):
        super(MLocalBrows, self).post()

        ctls = self.get('animcontrols')

        self.addArrow(ctls[2], ctls[1])
        self.addArrow(ctls[1], ctls[0])
        self.addArrow(ctls[5], ctls[4])
        self.addArrow(ctls[4], ctls[3])

#

    def undo_build(self):
        super(MLocalBrows, self).undo_build()

        try:
            guides = self.get('position_guides')
            guidegrp = self.getGuideGroup()
            cmds.setAttr(guidegrp + '.v', 1)
            cmds.setAttr(guides[0] + '.v', 1)
        except: pass
