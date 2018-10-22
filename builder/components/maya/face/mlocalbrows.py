
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

        self.leftIn  = self.addGuide('LeftIn', parent=self.center, position=[1,0,0], isSkeleton=False)
        self.leftMid  = self.addGuide('LeftMid', parent=self.leftIn, position=[2,0,0], isSkeleton=False)
        self.leftOut  = self.addGuide('LeftOut', parent=self.leftMid, position=[3,0,0], isSkeleton=False)

        self.rightIn  = self.addGuide('RightIn', parent=self.center, position=[-1,0,0], isSkeleton=False)
        self.rightMid  = self.addGuide('RightMid', parent=self.rightIn, position=[-2,0,0], isSkeleton=False)
        self.rightOut  = self.addGuide('RightOut', parent=self.rightMid, position=[-3,0,0], isSkeleton=False)

        self.center.build()

        cname = self.get('name')
        guidegrp = self.getGuideGroup()
        col = cmds.sphere(spans=6, sections=9, ch=False, n=cname + 'CollisionSphere_COL')[0]
        cmds.parent(col, guidegrp)

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
        jnt = cmds.joint(n='%s%sDriven_JNT'%(cname, name))

        cmds.setAttr(jntgrp + '.tx', cmds.getAttr(dm + '.outputTranslateX'))
        cmds.connectAttr(dm + '.outputTranslateY', jntgrp + '.ty')
        cmds.connectAttr(dm + '.outputTranslateZ', jntgrp + '.tz')

        cmds.connectAttr(dm + '.outputRotateY', jntgrp + '.ry')
        cmds.connectAttr(dm + '.outputRotateZ', jntgrp + '.rz')

        return rotpnt, jntgrp


    def build(self):
        super(MLocalBrows, self).build()

        # get guide objects
        sphere = self.get('collisionsphere')
        guides = self.get('position_guides')
        cname = self.get('name')

        modgrp = self.getModGroup()

        joints = cmds.group(em=True, n="%sJoints_GRP"%cname)
        drivers = cmds.group(em=True, n="%sDrivers_GRP"%cname)

        # get guides
        center = guides[0]

        leftIn = guides[1]
        leftMid = guides[2]
        leftOut = guides[3]

        rightIn = guides[4]
        rightMid = guides[5]
        rightOut = guides[6]

        li_rotpnt, li_jntgrp = self.addCollisionSlider(sphere, leftIn, name="LeftIn")
        lm_rotpnt, lm_jntgrp = self.addCollisionSlider(sphere, leftMid, name="LeftMid")
        lo_rotpnt, lo_jntgrp = self.addCollisionSlider(sphere, leftOut, name="LeftOut")

        ri_rotpnt, ri_jntgrp = self.addCollisionSlider(sphere, rightIn, name="RightIn")
        rm_rotpnt, rm_jntgrp = self.addCollisionSlider(sphere, rightMid, name="RightMid")
        ro_rotpnt, ro_jntgrp = self.addCollisionSlider(sphere, rightOut, name="RightOut")

        leftDriven = cmds.group(em=True, n='%sLeft_GRP'%cname)
        rightDriven = cmds.group(em=True, n='%sRight_GRP'%cname)

        cmds.delete(cmds.parentConstraint(leftIn, leftMid, leftOut, leftDriven, mo=False))
        cmds.delete(cmds.parentConstraint(rightIn, rightMid, rightOut, rightDriven, mo=False))

        cmds.parent([li_jntgrp, lm_jntgrp, lo_jntgrp,
                     ri_jntgrp, rm_jntgrp, ro_jntgrp], joints)

        cmds.parent([li_rotpnt, lm_rotpnt, lo_rotpnt], leftDriven)
        cmds.parent([ri_rotpnt, rm_rotpnt, ro_rotpnt], rightDriven)

        cmds.parent([leftDriven, rightDriven], drivers)


        leftInCtl = self.addControl('LeftIn', extra=1, size=0.8, mt=leftIn, shp='joint', lock=['.v'])
        leftInCtl = self.addControl('LeftMid', extra=1, size=0.8, mt=leftMid, shp='joint', lock=['.v'])
        leftInCtl = self.addControl('LeftOut', extra=1, size=0.8, mt=leftOut, shp='joint', lock=['.v'])

        rightInCtl = self.addControl('RightIn', extra=1, size=0.8, mt=rightIn, shp='joint', lock=['.v'])
        rightInCtl = self.addControl('RightMid', extra=1, size=0.8, mt=rightMid, shp='joint', lock=['.v'])
        rightInCtl = self.addControl('RightOut', extra=1, size=0.8, mt=rightOut, shp='joint', lock=['.v'])

    def undo_post(self):
        super(MLocalBrows, self).undo_post()

        guidegrp = self.getGuideGroup()
        cmds.setAttr(guidegrp + '.v', 1)

    def post(self):
        super(MLocalBrows, self).post()

        guidegrp = self.getGuideGroup()
        cmds.setAttr(guidegrp + '.v', 0)
