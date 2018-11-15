
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix
import origo.builder.lib.maya.mjoint as mjoint
import origo.builder.lib.maya.mlimb as mlimb
reload(matrix)
reload(mlimb)

import maya.cmds as cmds
import maya.mel as mel
import os

class IkFk(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(IkFk, self).__init__(parent)

        self.add('numberofjoints', 3, public=True)

        self.add('softik', False, public=True, nicename='softIk',
                  valuetype=bool)

        self.add('elbowlock', False, public=True, nicename='elbow lock',
                  valuetype=bool)


    def pre(self):
        super(IkFk, self).pre()

        numberofjoints = self.get('numberofjoints')
        if numberofjoints < 3: numberofjoints = 3


        self.root = self.addRootGuide('Root')

        parent = self.root
        for i in range(numberofjoints-1):
            parent = self.addGuide('Limb%d'%(i+1),
                                    parent=parent,
                                    position=[i+1,0,0],
                                    rotateOrder=5)

        self.root.build()

    def build(self):
        super(IkFk, self).build()

        # query data
        cName = self.get('name')
        skeletondata = self.get('skeleton')
        modgrp = self.getModGroup()

        softik = self.get('softik')
        elbowlock = self.get('elbowlock')

        mid = len(skeletondata)/2

        poleVec = self.addControl('PV', extra=1, size=0.5, mt=skeletondata[mid], shp='joint',
                                      lock=['.sx', '.sy', '.sz', '.v', '.rx', '.ry', '.rz'])
        ik = self.addControl('Ik', extra=1, size=0.8, mt=skeletondata[len(skeletondata)-1], shp='cube')

        mjoint.placePoleVector(skeletondata[0], skeletondata[mid],
                               skeletondata[len(skeletondata)-1], poleVec['offsetgroups'][0], 3.0)

        ikfkData = mlimb.ikfk(skeletondata, poleVec['ctl'], cName + 'IkFK',
                              softik=softik, elbowlock=elbowlock)

        cmds.poleVectorConstraint(poleVec['ctl'] , ikfkData["ikhandle"], n="%s_PVC"%cName)
        cmds.connectAttr(ikfkData['blendrev'], ik['offsetgroups'][0] + '.v')
        cmds.connectAttr(ikfkData['blendrev'], poleVec['offsetgroups'][0] + '.v')

        # add polevector arrow for easier selection
        arrow = cmds.createNode("annotationShape")
        arrow_parent = cmds.listRelatives(arrow, p=True)[0]
        crv = cmds.curve(p=[0,0,0], d=1)
        cmds.connectAttr(cmds.listRelatives(crv, s=True)[0] +".worldMatrix[0]",
                         arrow+ ".dagObjectMatrix[0]")
        crvshp = cmds.listRelatives(crv, s=True)[0]
        cmds.setAttr(crvshp + ".template", 1)
        cmds.parent(crvshp, ikfkData["ikChain"][mid], r=True, s=True)
        cmds.delete(crv)
        cmds.parent(arrow,  poleVec['ctl'], r=True, s=True)
        cmds.setAttr(arrow + ".overrideEnabled", 1)
        col = cmds.getAttr(poleVec['ctl'] + ".overrideColor")
        cmds.setAttr(arrow + ".overrideColor", col)
        cmds.delete(arrow_parent)

        cmds.addAttr(ik['ctl'], k=True, ln="__switch", nn="_", at="enum", en="Switch")
        cmds.setAttr("{}.__switch".format(ik['ctl']), l=True)
        cmds.addAttr(ik['ctl'], k=True, ln="IkFkSwitch", dv=0.0, min=0.0, max=1.0)
        cmds.connectAttr(ik['ctl'] + '.IkFkSwitch', ikfkData['blend'])


        fk_parent = None
        for e, out in enumerate(ikfkData['outs']):
            matrix.jointConstraint(out, skeletondata[e], name='Skel{}'.format(e+1))

            fk = self.addControl(name='FK{}'.format(e+1), extra=1, size=0.8, mr=skeletondata[e],
                                  mt=skeletondata[e], shp='square',
                                  lock=['.sx', '.sy', '.sz', '.v', '.tx', '.ty', '.tz'])

            if fk_parent: cmds.parent(fk['offsetgroups'], fk_parent)
            fk_parent = fk['root']

            cmds.connectAttr(ikfkData['blend'], fk['offsetgroups'][0] + '.v')

            cmds.parent(ikfkData['fks'][e], fk['root'])

            cmds.addAttr(fk['ctl'], k=True, ln="__switch", nn="_", at="enum", en="Switch")
            cmds.setAttr("{}.__switch".format(fk['ctl']), l=True)

            cmds.addAttr(fk['ctl'], k=True, ln="IkFkSwitch", dv=0.0, min=0.0, max=1.0,
                         proxy="{}.IkFkSwitch".format(ik['ctl']), uap=True)









        cmds.parent(cmds.listRelatives(ikfkData['ikhandle'], p=True)[0], ik['root'])


        cmds.parent(ikfkData['maingrp'], modgrp)
