
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os


import origo.builder.lib.maya.matrix as matrix
import origo.builder.lib.maya.mcurves as mcurves
reload(matrix)

class MLocalAttractCtl(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalAttractCtl, self).__init__(parent)

        self.add('drivers', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Driver(s)',
                  icon=':/transform.svg', placeholdertext='Transform Name(s)')


        self.add('worldspace', True, valuetype=bool, public=True,
                  nicename="Driver WorldSpace")


        self.add('drivex', False, valuetype=bool, public=True,
                 icon=":/directionallight.png", nicename="Drive .tx")

        self.add('drivey', True, valuetype=bool, public=True,
                 icon=":/directionallight.png", nicename="Drive .ty")

        self.add('drivez', False, valuetype=bool, public=True,
                 icon=":/directionallight.png", nicename="Drive .tz")

    def pre(self):
        super(MLocalAttractCtl, self).pre()

        # create guides
        self.main = self.addRootGuide('Main', isSkeleton=False)
        self.main.build()


    def build(self):
        super(MLocalAttractCtl, self).build()

        modgrp = self.getModGroup()

        cName = self.get('name')
        guide = self.get('position_guides')[0]

        cmds.setAttr(guide + '.v', 0)

        offsetgrp = cmds.group(em=True, n=cName + "JntOffset_GRP")
        drivenGrp = cmds.group(em=True, n=cName + "JntDriven_GRP")
        jnt = cmds.joint(n=cName + "_JNT")

        cmds.setAttr(offsetgrp + '.v', 0)

        cmds.parent(drivenGrp, offsetgrp)

        cmds.delete(cmds.parentConstraint(guide, offsetgrp, mo=False))

        mainNose = self.addControl('Main', extra=2, size=0.4,
                                   mt=guide, shp='joint')

        cmds.parent(offsetgrp, modgrp)

        self.addConnect([mainNose['ctl'], mainNose['offsetgroups'][1]], drivenGrp,
                        "CtlDrivers", rotate=True)

    def post(self):
        super(MLocalAttractCtl, self).post()

        cName = self.get('name')
        drivers = self.get('drivers')

        # worldspace
        worldspace = self.get('worldspace')

        # drive bools
        drivetx = self.get('drivex')
        drivety = self.get('drivey')
        drivetz = self.get('drivez')

        ctl = self.get('animcontrols')[0]

        if not drivers: return


        if not isinstance(drivers, list):
            drivers = eval(drivers)

        ctlparent = cmds.listRelatives(ctl, p=True)[0]
        for driver in drivers:
            cmds.addAttr(ctl, ln='%sMult'%driver, dv=1.0)
            self.reg('attribute', '%s.%sMult'%(ctl, driver))

        cmds.addAttr(ctl, ln='autoFollow', dv=0.1)
        cmds.setAttr('%s.autoFollow'%(ctl), cb=True, k=True)
        cmds.setAttr('%s.autoFollow'%(ctl), k=True)

        if drivetx:
            txAdd = cmds.createNode('plusMinusAverage', n='_%s_TX_PMA'%cName)

        if drivety:
            tyAdd = cmds.createNode('plusMinusAverage', n='_%s_TY_PMA'%cName)

        if drivetz:
            tzAdd = cmds.createNode('plusMinusAverage', n='_%s_TZ_PMA'%cName)

        for e, driver in enumerate(drivers):



            mult = cmds.createNode('multDoubleLinear', n='_%s%sMult_MDL'%(cName, driver))
            cmds.connectAttr('%s.%sMult'%(ctl, driver), mult + '.input1')
            cmds.connectAttr('%s.autoFollow'%ctl, mult + '.input2')

            if worldspace:
                dmat = cmds.createNode('decomposeMatrix', n="_%sDriver_DM"%cName)
                cmds.connectAttr( driver + '.worldMatrix[0]', dmat + '.inputMatrix')

            if drivetx:
                txMult = cmds.createNode('multDoubleLinear', n='_%s%sMult_TX_MDL'%(cName, driver))
                cmds.connectAttr(mult + '.output', txMult + '.input1')
                cmds.connectAttr(txMult + '.output', '%s.input1D[%d]'%(txAdd, e))

                if worldspace:
                    pos = cmds.getAttr(dmat  + '.outputTranslateX')
                    if pos != 0:
                        zadl = cmds.createNode('addDoubleLinear', n='_%sZeroOut_TX_ADL'%driver)
                        cmds.setAttr(zadl + '.input1', pos*-1.0)
                        cmds.connectAttr(dmat  + '.outputTranslateX', zadl + '.input2')
                        cmds.connectAttr(zadl + '.output', txMult + '.input2')
                    else:
                        cmds.connectAttr(mult + '.outputTranslateX', txMult + '.input2')

                else: cmds.connectAttr(driver + '.tx', txMult + '.input2')

            if drivety:
                tyMult = cmds.createNode('multDoubleLinear', n='_%s%sMult_TY_MDL'%(cName, driver))
                cmds.connectAttr(mult + '.output', tyMult + '.input1')
                cmds.connectAttr(tyMult + '.output', '%s.input1D[%d]'%(tyAdd, e))

                if worldspace:
                    pos = cmds.getAttr(dmat  + '.outputTranslateY')
                    if pos != 0:
                        zadl = cmds.createNode('addDoubleLinear', n='_%sZeroOut_TY_ADL'%driver)
                        cmds.setAttr(zadl + '.input1', pos*-1.0)
                        cmds.connectAttr(dmat  + '.outputTranslateY', zadl + '.input2')
                        cmds.connectAttr(zadl + '.output', tyMult + '.input2')
                    else:
                        cmds.connectAttr(mult + '.outputTranslateY', tyMult + '.input2')

                else: cmds.connectAttr(driver + '.ty', tyMult + '.input2')



            if drivetz:
                tzMult = cmds.createNode('multDoubleLinear', n='_%s%sMult_TZ_MDL'%(cName, driver))
                cmds.connectAttr(mult + '.output', tzMult + '.input1')
                cmds.connectAttr(tzMult + '.output', '%s.input1D[%d]'%(tzAdd, e))

                if worldspace:
                    pos = cmds.getAttr(dmat  + '.outputTranslateZ')
                    if pos != 0:
                        zadl = cmds.createNode('addDoubleLinear', n='_%sZeroOut_TZ_ADL'%driver)
                        cmds.setAttr(zadl + '.input1', pos*-1.0)
                        cmds.connectAttr(dmat  + '.outputTranslateZ', zadl + '.input2')
                        cmds.connectAttr(zadl + '.output', tzMult + '.input2')
                    else:
                        cmds.connectAttr(mult + '.outputTranslateZ', tzMult + '.input2')

                else: cmds.connectAttr(driver + '.tz', tyMult + '.input2')

        if drivetx: cmds.connectAttr(txAdd + '.output1D', ctlparent + '.tx')
        if drivety: cmds.connectAttr(tyAdd + '.output1D', ctlparent + '.ty')
        if drivetz: cmds.connectAttr(tzAdd + '.output1D', ctlparent + '.tz')

    def addConnect(self, nodes, node, name='additive', translate=True, rotate=False, scale=False):
        if translate:
            pma = cmds.createNode('plusMinusAverage', n='_' + name + 'Translate_ADL')

            for i, driver_node in enumerate(nodes):
                cmds.connectAttr(driver_node + '.translate', '%s.input3D[%d]'%(pma, i))

            cmds.connectAttr(pma + '.output3D', node + '.translate')

        if rotate:
            pma = cmds.createNode('plusMinusAverage', n='_' + name + 'Rotate_ADL')

            for i, driver_node in enumerate(nodes):
                cmds.connectAttr(driver_node + '.rotate', '%s.input3D[%d]'%(pma, i))

            cmds.connectAttr(pma + '.output3D', node + '.rotate')

        if scale:
            pma = cmds.createNode('plusMinusAverage', n='_' + name + 'Scale_ADL')

            for i, driver_node in enumerate(nodes):
                cmds.connectAttr(driver_node + '.scale', '%s.input3D[%d]'%(pma, i))

            cmds.connectAttr(pma + '.output3D', node + '.scale')
