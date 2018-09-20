
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix
reload(matrix)

import maya.cmds as cmds
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

        cName = self.get('name')
        bonegrp = cName + 'Bone_GRP'

        if cmds.objExists(bonegrp): cmds.setAttr(bonegrp + ".v", 0)


    def undo_build(self):
        super(MQuadLeg, self).undo_build()

        cName = self.get('name')
        bonegrp = cName + 'Bone_GRP'

        if cmds.objExists(bonegrp): cmds.setAttr(bonegrp + ".v", 1)
