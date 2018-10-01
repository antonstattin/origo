
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os

class MJaw(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MJaw, self).__init__(parent)

        self.add('jawcollision', True, public=True, nicename='Jaw Collision',
                 valuetype=bool, icon=':/collisionEvents.png')

    def pre(self):
        super(MJaw, self).pre()

        self.headroot = self.addRootGuide('HeadRoot')
        self.jawroot = self.addGuide('Root', parent=self.headroot, position=[2,0,0])
        self.jawLowerEnd = self.addGuide('LowerEnd', parent=self.jawroot, position=[8,0,0])
        self.jawUpperEnd = self.addGuide('UpperEnd', parent=self.headroot, position=[8, 1.3,0])

        self.headroot.build()

        cmds.xform(self.headroot.mayanode, ro=[0,-90,0])
        cmds.xform(self.jawroot.mayanode, ro=[0, 0, -15])


    def build(self):
        super(MJaw, self).build()

        # query data
        cName = self.get('name')
        skeletondata = self.get('skeleton')
        jawcollision = self.get('jawcollision')

        modgrp = self.getModGroup()

        offsetgrp  = cmds.group(em=True, n=cName + 'VectorOffset_GRP')
        startPos = cmds.spaceLocator(n=cName + 'StartPos_LOC')
        endPos = cmds.spaceLocator(n=cName + 'EndPos_LOC')
        moveOut = cmds.group(em=True, n=cName + 'JawMove_OUT')
        cmds.parent(endPos, startPos)
        cmds.parent(moveOut, startPos)
        cmds.parent(startPos, offsetgrp)

        cmds.delete(cmds.parentConstraint(skeletondata[1], offsetgrp, mo=False))
        cmds.setAttr(endPos[0] + '.tx', 1)

        cmds.addAttr(modgrp, ln='jawMoveAngle', min=0.0, dv=10.0)
        cmds.addAttr(modgrp, ln='jawMoveMult', min=0.0, dv=0.005)

        cmds.setAttr(modgrp + '.jawMoveAngle', cb=True)
        cmds.setAttr(modgrp + '.jawMoveMult', cb=True)

        getVector = cmds.createNode('plusMinusAverage', n=cName + 'GetVector_SUB')
        angleBetween = cmds.createNode('angleBetween', n=cName + 'GetAngle_SUB')
        moveCon = cmds.createNode('condition', n=cName + 'DoMove_CON')
        zeroDefult = cmds.createNode('addDoubleLinear', n=cName + 'ZeroDefault_CON')
        moveMult = cmds.createNode('multDoubleLinear', n=cName + 'Move_MULT')
        neg = cmds.createNode('multDoubleLinear', n=cName + '_NEG')

        cmds.connectAttr(cmds.listRelatives(endPos, s=True)[0] + '.worldPosition[0]', getVector + '.input3D[0]')
        cmds.connectAttr(cmds.listRelatives(startPos, s=True)[0] + '.worldPosition[0]', getVector + '.input3D[1]')

        cmds.connectAttr(getVector + '.output3D', angleBetween + '.vector1')
        cmds.connectAttr(angleBetween + '.axisAngle.angle', moveCon + '.colorIfTrueR')
        cmds.connectAttr(angleBetween + '.axisAngle.angle', moveCon + '.firstTerm')
        cmds.connectAttr(modgrp + '.jawMoveAngle', moveCon + '.secondTerm')
        cmds.connectAttr(modgrp + '.jawMoveAngle', moveCon + '.colorIfFalseR')
        cmds.connectAttr(modgrp + '.jawMoveAngle', neg + '.input1')
        cmds.connectAttr(moveCon + '.outColorR', zeroDefult + '.input1')
        cmds.connectAttr(neg + '.output', zeroDefult + '.input2')
        cmds.connectAttr(zeroDefult + '.output', moveMult + '.input1')
        cmds.connectAttr(modgrp + '.jawMoveMult', moveMult + '.input2')

        cmds.connectAttr(moveMult + '.output', moveOut + '.tx')

        cmds.setAttr(neg + '.input2', -1.0)
        cmds.setAttr(moveCon + '.operation', 3)
        cmds.setAttr(getVector + '.operation', 2)

        cmds.setAttr(angleBetween + '.vector2X', cmds.getAttr(angleBetween + '.vector1X'))
        cmds.setAttr(angleBetween + '.vector2Y', cmds.getAttr(angleBetween + '.vector1Y'))
        cmds.setAttr(angleBetween + '.vector2Z', cmds.getAttr(angleBetween + '.vector1Z'))

        matrix.jointConstraint(moveOut, skeletondata[1])


        if not jawcollision: return
        # build jaw collision

        upColPoint = cmds.spaceLocator(n=cName + 'UpperCollision_POINT')
        jawColPoint = cmds.spaceLocator(n=cName + 'JawCollision_POINT')

        cmds.delete(cmds.parentConstraint(skeletondata[3], upColPoint))
        cmds.delete(cmds.parentConstraint(skeletondata[2], jawColPoint))

        # save up-loc-positions for later adjustments
        self.reg('transform', upColPoint)

        dotProduct = cmds.createNode('vectorProduct', n=cName + 'DetectCollsion_VP')
        clamp = cmds.createNode('clamp', n=cName + 'Collsion_CLAMP')
        blend = cmds.createNode('clamp', n=cName + 'SmoothCollision_BLEND')
        colCon = cmds.createNode('condition', n=cName + 'Collision_CON')
