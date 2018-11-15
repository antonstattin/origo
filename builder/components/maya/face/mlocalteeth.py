
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os


import origo.builder.lib.maya.matrix as matrix
import origo.builder.lib.maya.mcurves as mcurves
reload(matrix)

class MLocalTeeth(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalTeeth, self).__init__(parent)


    def pre(self):
        super(MLocalTeeth, self).pre()

        # create guides
        self.main = self.addRootGuide('main')
        self.main.build()



    def build(self):
        super(MLocalTeeth, self).build()

        cName = self.get('name')
        guide = self.get('position_guides')[0]
        joint = self.get('skeleton')[0]

        modgrp = self.getModGroup()

        ctl = self.addControl('Main', shape='cube',
                                 mt=guide, mr=guide,
                                 lock=['.v'])



        driver = cmds.group(em=True, n=cName + 'Driver_GRP')
        ogrp = cmds.group(n=cName + 'DriverOffset_GRP')

        cmds.parent(ogrp, modgrp)
        cmds.delete(cmds.parentConstraint(guide, ogrp, mo=False))

        cmds.connectAttr(ctl['ctl'] + '.translate',  driver + '.translate')
        cmds.connectAttr(ctl['ctl'] + '.rotate',  driver + '.rotate')
        cmds.connectAttr(ctl['ctl'] + '.scale',  driver + '.scale')

        matrix.jointConstraint(driver, joint, name="Driver")
