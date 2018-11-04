
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os


import origo.builder.lib.maya.matrix as matrix
import origo.builder.lib.maya.mcurves as mcurves
reload(matrix)

class MTwistChain(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MTwistChain, self).__init__(parent)

        self.add('numberofjoints', 4, public=True, nicename='Number Of Twist Joints')

        self.add('topguide', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Eye Geometry',
                  icon=':/UVTkFace.png', placeholdertext='Top Guide Name')

        self.add('endguide', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Eye Geometry',
                  icon=':/UVTkFace.png', placeholdertext='End Guide Name')


    def build(self):
        super(MTwistChain, self).build()

        numberofjoints = self.get('numberofjoints')
        topguide = self.get('topguide')
        endguide = self.get('endguide')

        if numberofjoints < 1: numberofjoints=1

        if not topguide: return
        if not endguide: return

        if not isinstance(topguide, list): topguide = eval(topguide)[0]
        else: topguide = topguide[0]

        if not isinstance(endguide, list): endguide = eval(endguide)[0]
        else: endguide = endguide[0]
