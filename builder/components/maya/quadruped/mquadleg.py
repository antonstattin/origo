
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix
import origo.builder.lib.maya.mjoint as mjoint
import origo.builder.lib.maya.mlimb as mlimb
reload(matrix)
reload(mlimb)

import maya.cmds as cmds
import maya.mel as mel
import os

class MQuadLeg(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MQuadLeg, self).__init__(parent)

        self.add('importboneguides', False, public=True, nicename='Bone Guides',
                  valuetype=bool, icon=':/cube.png')


    def pre(self):
        super(MQuadLeg, self).pre()

        cName = self.get('name')

        # create guides
        self.upperLeg = self.addRootGuide('UpperLeg')
        self.lowerLeg = self.addGuide('LowerLeg', parent=self.upperLeg)
        self.tarsal = self.addGuide('Tarsal', parent=self.lowerLeg)
        self.tarsalEnd = self.addGuide('TarsalEnd', parent=self.tarsal)
        self.toe = self.addGuide('Toe', parent=self.tarsalEnd)

        outBank = self.addGuide('OutBankPivot', parent=self.tarsalEnd,
                                isSkeleton=False, position=[0,0, 1], shape='cube')

        inBank = self.addGuide('InBankPivot', parent=self.tarsalEnd,
                                isSkeleton=False, position=[0,0,-1], shape='cube')

        toePivot = self.addGuide('ToePivot', parent=self.tarsalEnd,
                                isSkeleton=False, position=[3, 0, 0], shape='cube')

        heelPivot = self.addGuide('HeelPivot', parent=self.tarsalEnd,
                                isSkeleton=False, position=[-1, 0, 0], shape='cube')

        self.upperLeg.build()

        # create defualt transforms
        self.upperLegTransform = {'translate':[0, 7.509, 0], 'rotate':[90, -26.8, -90]}
        self.lowerLegTransform = {'translate':[2.924, 0, 0], 'rotate':[0, 0, -61.897]}
        self.tarsalTransform = {'translate':[3.755, 0, 0], 'rotate':[0, 0, 59.722]}
        self.tarsalEndTransform = {'translate':[1.893, 0, 0], 'rotate':[0, 0, 65.633]}
        self.toeTransform = {'translate':[1.490, 0, 0], 'rotate':[0, 0, 0]}

        for guide in ['upperLeg', 'lowerLeg', 'tarsal', 'tarsalEnd', 'toe']:
            oGuide = getattr(self, guide)
            tdata = getattr(self, guide +'Transform')

            node = oGuide.mayanode

            cmds.xform(node, t=tdata['translate'])
            cmds.xform(node, ro=tdata['rotate'])

            if guide != 'upperLeg':
                cmds.setAttr(node + '.ty', l=True)
                cmds.setAttr(node + '.tz', l=True)

        # import bones guides
        if self.get('importboneguides'):
            import origo.builder.lib.maya as m

            boneFile = os.path.join(os.path.dirname(m.__file__),
                                    'models/mquadleg_bone.ma')


            # import bones
            if os.path.exists(boneFile):
                nodes = cmds.file(boneFile, i=True, rnn=True)

                for node in cmds.ls(nodes):
                    try:cmds.rename(node, cName + node)
                    except: continue

                # add switch for switching between models left and right side
                cmds.addAttr(self.upperLeg.mayanode, ln='boneGeoSide', at='enum', en='Left:Right')
                cmds.setAttr(self.upperLeg.mayanode + '.boneGeoSide', cb=True)

                cmds.connectAttr(self.upperLeg.mayanode + '.boneGeoSide', cName +'BoneGEO_GRP.leftRight')
                self.reg('attribute', self.upperLeg.mayanode + '.boneGeoSide')

                # setup rig
                clsStartUpperLeg =  cName + 'StartUpperLeg_CLS'
                clsEndUpperLeg =  cName + 'EndUpperLeg_CLS'
                cmds.parentConstraint(self.upperLeg.mayanode, clsStartUpperLeg, n=cName+'StartUpperLeg', mo=True)
                cmds.pointConstraint(self.lowerLeg.mayanode, clsEndUpperLeg, n=cName+'EndUpperLeg', mo=True)
                cmds.scaleConstraint(self.upperLeg.mayanode, clsStartUpperLeg, n=cName+'StartUpperLegScl', mo=True)
                cmds.scaleConstraint(self.lowerLeg.mayanode, clsEndUpperLeg, n=cName+'EndUpperLegScl', mo=True)

                clsStartLowerLeg =  cName + 'StartLowerLeg_CLS'
                clsEndLowerLeg =  cName + 'EndLowerLeg_CLS'
                cmds.parentConstraint(self.lowerLeg.mayanode, clsStartLowerLeg, n=cName+'StartLowerLeg', mo=True)
                cmds.pointConstraint(self.tarsal.mayanode, clsEndLowerLeg, n=cName+'EndLowerLeg', mo=True)
                cmds.scaleConstraint(self.lowerLeg.mayanode, clsStartLowerLeg, n=cName+'StartLowerLeg', mo=True)
                cmds.scaleConstraint(self.tarsal.mayanode, clsEndLowerLeg, n=cName+'EndLowerLeg', mo=True)


                clsStartTarsal =  cName + 'StartTarsal_CLS'
                clsEndTarsal =  cName + 'EndTarsal_CLS'

                cmds.parentConstraint(self.tarsal.mayanode, clsStartTarsal, n=cName+'StartTarsal', mo=True)
                cmds.pointConstraint(self.tarsalEnd.mayanode, clsEndTarsal, n=cName+'EndTarsal', mo=True)
                cmds.scaleConstraint(self.tarsal.mayanode, clsStartTarsal, n=cName+'StartTarsalScl', mo=True)
                cmds.scaleConstraint(self.tarsalEnd.mayanode, clsEndTarsal, n=cName+'EndTarsalScl', mo=True)


                bonegrp = cName + 'Bone_GRP'
                cmds.parent(bonegrp, self.getModGroup())

    def build(self):
        super(MQuadLeg, self).build()


        # query data
        cName = self.get('name')
        skeletondata = self.get('skeleton')
        bankrollpositionsdata = self.get('position_guides')

        # hide bones-geo if any
        bonegrp = cName + 'Bone_GRP'
        if cmds.objExists(bonegrp): cmds.setAttr(bonegrp + ".v", 0)

        # get bank positions
        outBankTransform = bankrollpositionsdata[0]
        inBankTransform = bankrollpositionsdata[1]
        toeRoll = bankrollpositionsdata[2]
        heelRoll = bankrollpositionsdata[3]


        legIk = self.addControl('Ik', extra=1, size=0.8, mt=skeletondata[3], shp='cube')

        legPv = self.addControl('PV', extra=1, size=0.5, mt=skeletondata[1], shp='joint',
                                lock=['.sx', '.sy', '.sz', '.v', '.rx', '.ry', '.rz'])

        tarsal = self.addControl('Tarsal', extra=1, size=0.3, mt=skeletondata[3], shp='linecirclecross',
                                 lock=['.sx', '.sy', '.sz', '.v', '.tx', '.ty', '.tz'])

        mjoint.placePoleVector(skeletondata[0], skeletondata[1],
                               skeletondata[2], legPv['offsetgroups'][0], 3.0)

        ikfkData = mlimb.ikfk(skeletondata[:3], legPv['ctl'], cName + 'IkFK')

        # add polevector arrow for easier selection
        arrow = cmds.createNode("annotationShape")
        arrow_parent = cmds.listRelatives(arrow, p=True)[0]
        crv = cmds.curve(p=[0,0,0], d=1)
        cmds.connectAttr(cmds.listRelatives(crv, s=True)[0] +".worldMatrix[0]",
                         arrow+ ".dagObjectMatrix[0]")
        crvshp = cmds.listRelatives(crv, s=True)[0]
        cmds.setAttr(crvshp + ".template", 1)
        cmds.parent(crvshp, ikfkData["ikChain"][1], r=True, s=True)
        cmds.delete(crv)
        cmds.parent(arrow,  legPv['ctl'], r=True, s=True)
        cmds.setAttr(arrow + ".overrideEnabled", 1)
        col = cmds.getAttr(legPv['ctl'] + ".overrideColor")
        cmds.setAttr(arrow + ".overrideColor", col)
        cmds.delete(arrow_parent)

        # pv constraint
        cmds.poleVectorConstraint(legPv['ctl'] , ikfkData["ikhandle"], n="%s_PVC"%cName)


        # create ikSpringSolver for tarsal alignment
        try: mel.eval("ikSpringSolver;")
        except: pass

        auto_tarsal_chain = []
        alpha = list("ABCDEFGHIJ")
        jnt_parent = None

        for i, driver in enumerate(skeletondata[:4]):
            cmds.select(clear=True)
            jnt = cmds.joint(n="{}{}_AUTOTARSAL".format(cName, alpha[i]))
            cmds.delete(cmds.parentConstraint(driver, jnt, mo=False))

            if jnt_parent: cmds.parent(jnt, jnt_parent)
            jnt_parent = jnt

            auto_tarsal_chain.append(jnt)

        cmds.setAttr(auto_tarsal_chain[0] + ".v", 0)
        cmds.parent(auto_tarsal_chain[0], self.getModGroup())

        for jnt in auto_tarsal_chain: cmds.makeIdentity(jnt, a=True)

        ikss = cmds.ikHandle(sol="ikSpringSolver", n= cName + "AutoTarsal_IKSS",
                      sj=auto_tarsal_chain[0], ee=auto_tarsal_chain[3])[0]
        cmds.setAttr(ikss + ".v", 0)
        cmds.poleVectorConstraint(legPv['ctl'], ikss, n="{}IKAutoTarsal_PVCON".format(cName))[0]


    def undo_build(self):
        super(MQuadLeg, self).undo_build()

        cName = self.get('name')
        bonegrp = cName + 'Bone_GRP'

        if cmds.objExists(bonegrp): cmds.setAttr(bonegrp + ".v", 1)
