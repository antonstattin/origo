import origo.base.rigdata as rigdata
import maya.cmds as cmds
# /:kinJoint.png

import origo.builder.lib.maya.controlshape as controlshape

import mrigcomponent as mrigc

class RigGuide(rigdata.RigNode):
    """ class for generating guides hierarchical structures """

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
        self._mayanode = None

    def build(self):
        """should be run from the root, builds the guides"""

        skeleton_data = []
        position_data = []

        root_guide = cmds.group(em=True, n='%s_GUIDE'%self._name)
        controlshape.ControlShape.cube(root_guide)

        self._mayanode = root_guide

        if self._module:
            self._module.reg('transform', root_guide)

        # parent root to guide group if any
        guidegrp = cmds.ls('*_GUIDE_*')
        if guidegrp: cmds.parent(root_guide, guidegrp[0])

        cmds.setAttr(root_guide + ".overrideEnabled", 1)
        cmds.setAttr(root_guide + ".overrideColor", 20)

        for shp in cmds.listRelatives(root_guide, s=True):
            if shp: cmds.setAttr(shp + ".lineWidth", 1.5)

        if self.isSkeleton: skeleton_data.append(root_guide)
        else: position_data.append(root_guide)

        for child in self._getRecursiveChildren():
            oGuide = cmds.group(em=True, n='%s_GUIDE'%child.name)
            cmds.setAttr(oGuide + ".rotateOrder", child._rotateOrder)

            child._mayanode = oGuide

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
                    cmds.setAttr(oGuide + scale, 0.8)
                cmds.makeIdentity(oGuide, a=True)

                position_data.append(oGuide)

            cmds.setAttr(oGuide + ".overrideEnabled", 1)
            cmds.setAttr(oGuide + ".overrideColor", 20)

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

        if self._module:
            self._module.set('skeleton_guides', skeleton_data)
            self._module.set('position_guides', position_data + skeleton_data)

        return skeleton_data, position_data

# ------------------- Properties ------------------------ #
    @property
    def mayanode(self): return self._mayanode

    @mayanode.setter
    def mayanode(self, value): self._mayanode = value

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
    """ the main base component for animation components.  This base component
        helps with generation of skeleton and building controls.
        if controls nor skeleton-guides are needed use the mrigcomponent..
    """
    def __init__(self, parent=None):
        super(MAnimRigComponent, self).__init__(parent)
        self.add('skeleton', [])

        self.set('icon', ':/joint.svg')

        self.add('mirrorskeleton', False, public=True, nicename='Skeleton Flip X-axis (Mirror Behavior)',
                  valuetype=bool, icon=':/mirrorSkinWeight.png')

        self._rootguide = None

    def undo_build(self):
        """ unhides the guides """
        super(MAnimRigComponent, self).undo_build()

        skeleton_guides = self.get('skeleton_guides')

        for guide in skeleton_guides:
            if cmds.objExists(guide):
                cmds.setAttr(guide + ".v", 1)

    def pre(self):
        super(MAnimRigComponent, self).pre()

    def build(self):
        """ This build method will create the joints from the guides, if any """

        super(MAnimRigComponent, self).build()

        # build skeleton
        allJoints = []
        skeleton_guides = self.get('skeleton_guides')
        mirrorskeleton = self.get('mirrorskeleton')

        # create Joints
        for guide in skeleton_guides:
            cmds.select(clear=True)
            jnt = cmds.joint(name=guide.replace('_GUIDE', '_JNT'))

            cmds.delete(cmds.parentConstraint(guide, jnt, mo=False))
            cmds.makeIdentity(jnt, a=True)
            allJoints.append(jnt)

            cmds.setAttr(guide + ".v", 0)

            if mirrorskeleton:
                cmds.setAttr(jnt + ".ry", 180)
                cmds.setAttr(jnt + ".rx", 180)
                cmds.makeIdentity(jnt, a=True)

        # try to find the main skeleton group
        skeleton_grp = cmds.ls("*_SKELETON_*")
        if skeleton_grp:
            if cmds.objExists(skeleton_grp[0]): skeleton_grp = skeleton_grp[0]
            else: skeleton_grp = None

        # parent joints
        for guide in skeleton_guides:
            jnt = guide.replace('_GUIDE', '_JNT')

            guide_parent = cmds.listRelatives(guide, p=True)
            if not guide_parent:
                if skeleton_grp: cmds.parent(jnt, skeleton_grp)
                continue

            joint_parent = guide_parent[0].replace('_GUIDE', '_JNT')
            if cmds.objExists(joint_parent):
                cmds.parent(jnt, joint_parent)
            else:
                if skeleton_grp:
                    cmds.parent(jnt, skeleton_grp)


        self.set('skeleton', allJoints)

    def addRootGuide(self, name, isSkeleton=True):
        """ Add the root guide, create the guide objects by using the .build()
            use this components .addGuide to add more guides to the root.
            All Guides are stored in a hierarchical order with the root guide as top.

            :param name: name of root
            :type name: str

            :param isSkeleton: if we want to generate a joint from guide
            :type isSkeleton: bool

        """

        self._rootguide = RigGuide(self.get('name') + name,
                                   isSkeleton, module=self)


        return self._rootguide

    def addGuide(self, name, isSkeleton=True, shape='joint',
                 rotateOrder=0, position=[0,0,0], parent=None):
        """ add guide object, should be used in combination with the addRootGuide

            :param name: name of guide
            :type name: str

            :param isSkeleton: if the guide should generate a skeleton
            :type isSkeleton: bool

            :param shape: shape of the guide, check lib.maya.controlshape
            :type shape: str

            :param rotateOrder: rotation order
            :type rotateOrder: int (check mayas rotation order enum)

            :param position: position where the guide should be created
            :type position: list, vector3, [x,y, z]

            :param parent: guide object if none the parent is root
            :type parent: RigGuide

        """
        if not parent: parent = self._rootguide

        oGuide = RigGuide(self.get('name') + name, isSkeleton,
                          shape, rotateOrder, position, parent)

        return oGuide

    def addControl(self, name, **kwarg):
        """ creates a control

            :param name: name of control
            :type name: str

            ::keyword arguments::

            :param shape (s): control shape (lib.maya.controlshape)
            :type shape (s): str

            :param color (c): color of control (Default side prefix color)
            :type color (c): int (maya overrideColor enum)

            :param offsets (o): offset controls to be built, default 2
            :type offsets (o): int

            :param rotateOrder (ro): controls rotate order
            :type rotateOrder (ro): int (maya rotateOrder enum)

            :param controltag (ct): if adding a maya controll tag
            :type controltag (ct): int (maya rotateOrder enum)

            :param lock (ct): attributes to lock
            :type lock (ct): list
        """

        shape = kwarg.get('shape', kwarg.get('s', 'circle'))
        color = kwarg.get('color', kwarg.get('c', None))
        offsets = kwarg.get('offsets', kwarg.get('o', 2))
        rotateOrder = kwarg.get('rotateOrder', kwarg.get('ro', 0))
        controltag = kwarg.get('controlTag', kwarg.get('ct', True))
        lock = kwarg.get('lock', kwarg.get('l', ['.sx', '.sy', '.sz', '.v']))
