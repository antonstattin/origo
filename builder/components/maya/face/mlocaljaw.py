"""
    creates a simple local jaw with lip collision
"""
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os

class MLocalJaw(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalJaw, self).__init__(parent)

        self.add('mirrorskeleton', False, public=False, valuetype=bool)
        self.add('jawcollision', True, public=True, nicename='Jaw Collision',
                 valuetype=bool, icon=':/collisionEvents.png')

    def pre(self):
        super(MLocalJaw, self).pre()

        self.headroot = self.addRootGuide('HeadRoot')
        self.jawroot = self.addGuide('Root', parent=self.headroot, position=[2,0,0], rotateOrder=5)
        self.jawLowerEnd = self.addGuide('LowerEnd', parent=self.jawroot, position=[8,0,0])
        self.jawUpperEnd = self.addGuide('UpperEnd', parent=self.headroot, position=[8, 1.3,0])

        self.headroot.build()

        cmds.xform(self.headroot.mayanode, ro=[0,-90,0])
        cmds.xform(self.jawroot.mayanode, ro=[0, 0, -15])


    def build(self):
        super(MLocalJaw, self).build()

        # query data
        cName = self.get('name')
        skeletondata = self.get('skeleton')
        jawcollision = self.get('jawcollision')

        modgrp = self.getModGroup()

        offsetgrp  = cmds.group(em=True, n=cName + 'VectorOffset_GRP')
        cmds.parent(offsetgrp, modgrp)
        startPos = cmds.spaceLocator(n=cName + 'StartPos_LOC')
        endPos = cmds.spaceLocator(n=cName + 'EndPos_LOC')
        moveOut = cmds.group(em=True, n=cName + 'JawMove_OUT')
        cmds.parent(endPos, startPos)
        cmds.parent(moveOut, startPos)
        cmds.parent(startPos, offsetgrp)

        cmds.setAttr(startPos[0] + '.v', 0)
        cmds.setAttr(endPos[0] + '.v', 0)

        cmds.delete(cmds.parentConstraint(skeletondata[1], offsetgrp, mo=False))
        cmds.setAttr(endPos[0] + '.tx', 1)

        cmds.addAttr(modgrp, ln='jawMoveAngle', min=0.0, dv=10.0)
        cmds.addAttr(modgrp, ln='jawMoveMult', min=0.0, dv=0.005)

        cmds.setAttr(modgrp + '.jawMoveAngle', cb=True)
        cmds.setAttr(modgrp + '.jawMoveMult', cb=True)

        self.reg('attribute', modgrp + '.jawMoveMult')
        self.reg('attribute', modgrp + '.jawMoveAngle')

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


        jawctl = self.addControl('Main', shape='linecirclecross', rotateOrder=5,
                                 mt=skeletondata[1], mr=skeletondata[1],
                                 lock=['.sx', '.sy', '.sz', '.v', '.tx', '.ty', '.tz'])

        cmds.connectAttr(jawctl['root'] + '.rx',  startPos[0] + '.rx')
        cmds.connectAttr(jawctl['root'] + '.ry',  startPos[0] + '.ry')
        cmds.connectAttr(jawctl['root'] + '.rz',  startPos[0] + '.rz')


        if not jawcollision: return
        # build jaw collision

        upColPoint = cmds.spaceLocator(n=cName + 'UpperCollision_POINT')[0]
        jawColOut = cmds.spaceLocator(n=cName + 'JawCollision_OUT')[0]
        jawColPoint = cmds.spaceLocator(n=cName + 'JawCollision_POINT')[0]

        cmds.parent(upColPoint, modgrp)
        cmds.parent(jawColOut, modgrp)

        cmds.setAttr(jawColOut + '.v', 0)
        cmds.setAttr(upColPoint + '.v', 0)

        attractAdl = cmds.createNode('addDoubleLinear', n=cName + 'AttractOffset_ADL')
        attractRemap = cmds.createNode('remapValue', n=cName + 'Attract_RMP')
        blendTransform = cmds.createNode('blendColors', n=cName + 'Transform_BLEND')
        collisionBlend = cmds.createNode('blendColors', n=cName + 'CollisionOnOff_BLEND')

        cmds.addAttr(modgrp, ln='attractOffset', max=0.0, dv=-0.1)
        cmds.setAttr(modgrp + '.attractOffset', cb=True)

        cmds.addAttr(modgrp, ln='collision', max=1.0, min=0.0, dv=1.0)
        cmds.setAttr(modgrp + '.collision', cb=True)


        cmds.addAttr(jawctl['root'], ln='collision', max=1.0, min=0.0, dv=1.0)
        cmds.setAttr(jawctl['root'] + '.collision', cb=True)
        cmds.setAttr(jawctl['root'] + '.collision', k=True)

        cmds.connectAttr(jawctl['root'] + '.collision',  modgrp + '.collision')


        self.reg('attribute', modgrp + '.attractOffset')
        self.reg('attribute', jawColPoint + '.v')

        lowColOffset = cmds.group(em=True, n=cName + 'LowerCollisionPoint_GRP')
        cmds.parent(jawColPoint, lowColOffset)
        cmds.parent(lowColOffset, modgrp)

        cmds.delete(cmds.pointConstraint(skeletondata[3], upColPoint, mo=False))
        cmds.delete(cmds.pointConstraint(skeletondata[3], jawColOut, mo=False))
        cmds.delete(cmds.pointConstraint(skeletondata[3], lowColOffset, mo=False))

        # save positions for later adjustments
        self.reg('transform', jawColPoint)

        cmds.connectAttr(cmds.listRelatives(upColPoint, s=True)[0] + '.worldPosition[0].worldPositionY',
                         attractAdl + '.input1')
        cmds.connectAttr(modgrp + '.attractOffset', attractAdl + '.input2')

        cmds.connectAttr(cmds.listRelatives(upColPoint, s=True)[0] + '.worldPosition[0].worldPositionY',
                         attractRemap + '.inputMax')

        cmds.connectAttr(attractAdl + '.output', attractRemap + '.inputMin')
        cmds.connectAttr(cmds.listRelatives(jawColPoint, s=True)[0] + '.worldPosition[0].worldPositionY',
                         attractRemap + '.inputValue')

        cmds.connectAttr(attractRemap + '.outValue', blendTransform + '.blender')

        cmds.connectAttr(cmds.listRelatives(jawColPoint, s=True)[0] + '.worldPosition[0]', blendTransform + '.color1')
        cmds.connectAttr(cmds.listRelatives(upColPoint, s=True)[0] + '.worldPosition[0]', blendTransform + '.color2')


        cmds.transformLimits(jawColOut, ty=[1,1], ety=[1,0])
        cmds.connectAttr(cmds.listRelatives(upColPoint, s=True)[0] + '.worldPosition[0].worldPositionY',
                         jawColOut + '.minTransLimit.minTransYLimit')

        cmds.connectAttr(modgrp + '.collision', collisionBlend + '.blender')
        cmds.connectAttr(blendTransform + '.output', collisionBlend + '.color1')
        cmds.connectAttr(cmds.listRelatives(upColPoint, s=True)[0] + '.worldPosition[0]',
                         collisionBlend + '.color2')

        cmds.connectAttr(collisionBlend + '.outputR', jawColOut + '.tx')
        cmds.connectAttr(collisionBlend + '.outputG', jawColOut + '.ty')

        matrix.jointConstraint(jawColOut, skeletondata[3])
        matrix.constraint(skeletondata[2], lowColOffset)
