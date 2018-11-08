
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
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Top Guide',
                  icon=':/UVTkFace.png', placeholdertext='Top Guide Name')

        self.add('endguide', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='End Guide',
                  icon=':/UVTkFace.png', placeholdertext='End Guide Name')

    def build(self):
        super(MTwistChain, self).build()

        numberofjoints = self.get('numberofjoints')
        topguide = self.get('topguide')
        endguide = self.get('endguide')
        cName = self.get('name')

        modgrp = self.getModGroup()

        if numberofjoints < 1: numberofjoints=1

        if not topguide: return
        if not endguide: return

        if not isinstance(topguide, list): topguide = eval(topguide)[0]
        else: topguide = topguide[0]

        if not isinstance(endguide, list): endguide = eval(endguide)[0]
        else: endguide = endguide[0]

        topjnt = topguide.replace('GUIDE', 'JNT')
        endjnt = endguide.replace('GUIDE', 'JNT')

        if not (cmds.objExists(topjnt) and cmds.objExists(endjnt)):
            self.log('Cant find [%s, %s] joints'%(topjnt, endjnt))
            return

        drivergrp = cmds.group(em=True, n='%sDriver_GRP'%cName)
        cmds.parent(drivergrp, modgrp)

        param_add = 1.0/(numberofjoints+1)
        param = param_add
        for i in range(1, numberofjoints+1):

            paramneg = 1.0 - param

            driver = cmds.group(em=True, n='%sJntDriver%d_GRP'%(cName, i))[0]
            cmds.parent(driver, drivergrp)

            cmds.delete(cmds.orientConstraint(topjnt, driver, mo=False))
            comp, wtMat = matrix.constraint(topjnt, endjnt, driver, mo=False, norotate=True)

            cmds.setAttr(wtMat  + ".wtMatrix[0].weightIn", param)
            cmds.setAttr(wtMat +".wtMatrix[1].weightIn", paramneg)

            param += param_add

            
