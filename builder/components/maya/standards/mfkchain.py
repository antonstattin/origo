
import origo.builder.components.maya.manimrigcomponent as manimrig
reload(manimrig)
import maya.cmds as cmds
import os

class MFKChain(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MFKChain, self).__init__(parent)

        self.add('controls', 3)
        self.add('buildJoint', False, public=True, nicename='Build Joint', valuetype=bool)

    def pre(self):
        super(MFKChain, self).pre()

        controlnumber = self.get('controls')

        if controlnumber<1: controlnumber=1

        root = self.addRootGuide('FK1')

        parent = None
        for index in xrange(controlnumber-1):
            oguide = self.addGuide('FK%d'%(index+2),
                                   parent=parent,
                                   position=[index+1, 0, 0])
            parent = oguide

        root.build()
