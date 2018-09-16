import origo.base.rigdata as rigdata
import maya.cmds as cmds
# /:kinJoint.png

import mrigcomponent as mrigc

class RigGuide(rigdata.RigNode):

    def __init__(self, name, isSkeleton=True, shape='joint',
                 rotateOrder=0, parent=None):

        super(Guide, self).__init__(parent)
        self._name = name
        self._isSkeleton = isSkeleton
        self._shape = shape
        self._rotateOrder = rotateOrder

    def build(self):
        """should be run from the root, builds the guides"""

        skeleton_data = []
        position_data = []

        root_guide = cmds.group(em=True, n='%s_GUIDE'%self._name)
        controlshape.ControlShape.cube(root_guide)

        if self.isSkeleton: skeleton_data.append(root_guide)
        else: position_data.append(root_guide)

        for child in self._getRecursiveChildren():
            oGuide = cmds.group(em=True, n='%s_GUIDE'%child.name)
            cmds.setAttr(oGuide + ".rotateOrder", child._rotateOrder)
            
            if child.isskeleton:
                controlshape.ControlShape.joint(oGuide)

                # scale joint control
                for scale in ['.sx', '.sy', '.sz']:
                    cmds.setAttr(oGuide + scale, 0.6)
                cmds.makeIdentity(oGuide, a=True)

                controlshape.ControlShape.axis(oGuide)

                # scale joint + axis control
                for scale in ['.sx', '.sy', '.sz']:
                    cmds.setAttr(oGuide + scale, 0.5)
                cmds.makeIdentity(oGuide, a=True)

                skeleton_data.append(oGuide)
            else:
                controlshape.ControlShape.cube(oGuide)

                for scale in ['.sx', '.sy', '.sz']:
                    cmds.setAttr(oGuide + scale, 0.5)
                cmds.makeIdentity(oGuide, a=True)

                position_data.append(oGuide)

            cmds.setAttr(oGuide + ".overrideEnabled", 1)
            cmds.setAttr(oGuide + ".overrideColor", 19)

        for child in self._getRecursiveChildren():
            if not child._parent: continue

            oGuide = '%s_GUIDE'%child.name
            oGuideParent = '%s_GUIDE'%child._parent

            cmds.parent(oGuide, oGuideParent)

            # create arrow
            arrow = cmds.createNode("annotationShape")
            arrow_parent = cmds.listRelatives(arrow, p=True)[0]
            crv = cmds.curve(p=[0,0,0], d=1)
            cmds.connectAttr(cmds.listRelatives(crv, s=True)[0] +".worldMatrix[0]",
                         arrow+ ".dagObjectMatrix[0]")
            crvshp = cmds.listRelatives(crv, s=True)[0]
            cmds.setAttr(crvshp + ".template", 1)
            cmds.parent(crvshp, oGuide, r=True, s=True)
            cmds.parent(arrow, oGuideParent, r=True, s=True)

            cmds.delete(arrow_parent)
            cmds.delete(crv)

        return skeleton_data, position_data

# ------------------- Properties ------------------------ #
    @property
    def rotateOrder(self):
        return self._rotateOrder

    @rotateOrder.setter
    def rotateOrder(self, value):
        self._rotateOrder = value

    @property
    def shape(self):
        return self._shape

    @shape.setter
    def shape(self, value):
        self._shape = value

    @property
    def isSkeleton(self):
        return self._isSkeleton

    @isskeleton.setter
    def isSkeleton(self, value):
        if isinstance(value, bool):
            self._isSkeleton=value
    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, value):
        self._name = value


class MAnimRigComponent(mrigc.MRigComponent):

    def __init__(self, parent=None):
        super(MAnimRigComponent, self).__init__(parent)
        self.add('skeleton', {})

        self._rootguide = None

    def addRootGuide(self, name, isSkeleton=True):
        self._rootguide = RigGuide(name, isSkeleton)
        return self._rootguide

    def pre(self):
        super(MAnimRigComponent, self).pre()