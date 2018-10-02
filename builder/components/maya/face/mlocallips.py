
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os

class MLocalLips(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalLips, self).__init__(parent)

        # generate up curve

        # generate low curve


    def pre(self):
        super(MLocalLips, self).pre()

        # build curves if any

    def build(self):
        super(MLocalLips, self).build()
        
