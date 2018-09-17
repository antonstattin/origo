import origo.base.rigdata as rigdata
import maya.cmds as cmds
# /:kinJoint.png

import origo.builder.lib.maya.controlshape as controlshape

import mrigcomponent as mrigc

class RigGuide(rigdata.RigNode):

    def __init__(self, name, isSkeleton=True, shape='joint',
                 rotateOrder=0, position=[0,0,0], parent=None,
                 module=None):

        super(RigGuide, self).__init__(parent)
        self._name = name
        self._position = position
        self._isSkeleton = isSkeleton
        self._shape = shape
        self._rotateOrder = rotateOrder
        self._module = module

    def build(self):
        """should be run from the root, builds the guides"""

        skeleton_data = []
        position_data = []

        root_guide = cmds.group(em=True, n='%s_GUIDE'%self._name)
        controlshape.ControlShape.cube(root_guide)

        if self._module:
            self._module.reg('transform', root_guide)
            self._module.reg('hierarchy', root_guide)

        # parent root to guide group if any
        guidegrp = cmds.ls('*_GUIDE_*')
        if guidegrp: cmds.parent(root_guide, guidegrp[0])

        cmds.setAttr(root_guide + ".overrideEnabled", 1)
        cmds.setAttr(root_guide + ".overrideColor", 19)

        if self.isSkeleton: skeleton_data.append(root_guide)
        else: position_data.append(root_guide)

        for child in self._getRecursiveChildren():
            oGuide = cmds.group(em=True, n='%s_GUIDE'%child.name)
            cmds.setAttr(oGuide + ".rotateOrder", child._rotateOrder)

            if self._module: self._module.reg('transform', oGuide)

            if child.isSkeleton:
                fnc = getattr(controlshape.ControlShape, child.shape)
                fnc(oGuide)

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
                fnc = getattr(controlshape.ControlShape, child.shape)
                fnc(oGuide)

                for scale in ['.sx', '.sy', '.sz']:
                    cmds.setAttr(oGuide + scale, 0.5)
                cmds.makeIdentity(oGuide, a=True)

                position_data.append(oGuide)

            cmds.setAttr(oGuide + ".overrideEnabled", 1)
            cmds.setAttr(oGuide + ".overrideColor", 19)

            cmds.xform(oGuide, t=child.position, ws=True)

        for child in self._getRecursiveChildren():
            if not child._parent: continue

            oGuide = '%s_GUIDE'%child.name
            oGuideParent = '%s_GUIDE'%child._parent.name

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
    def position(self): return self._position

    @position.setter
    def position(self, value):
        self._position = value

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

    @isSkeleton.setter
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

        self.set('icon', ':/joint.svg')

        self._rootguide = None

    def addRootGuide(self, name, isSkeleton=True):
        self._rootguide = RigGuide(self.get('name') + name.title(),
                                   isSkeleton, module=self)

        return self._rootguide

    def addGuide(self, name, isSkeleton=True, shape='joint',
                 rotateOrder=0, position=[0,0,0], parent=None):
        if not parent: parent = self._rootguide

        oGuide = RigGuide(self.get('name') + name.title(), isSkeleton,
                          shape, rotateOrder, position, parent)

        return oGuide

    def pre(self):
        super(MAnimRigComponent, self).pre()
