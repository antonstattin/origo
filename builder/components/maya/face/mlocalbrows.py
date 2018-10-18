
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

        self.left  = self.addGuide('LeftMain', parent=self.center, position=[2,0.5,0], isSkeleton=False)
        self.right  = self.addGuide('RightMain', parent=self.center, position=[-2,0.5,0], isSkeleton=False)

        self.center.build()
        
