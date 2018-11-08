
import origo.builder.components.maya.mrigcomponent as mrig
import maya.cmds as cmds
import os
import logging

class MDeformerStack(mrig.MRigComponent):

    def __init__(self, parent=None):
        super(MDeformerStack, self).__init__(parent)

        self.add('deformertree', '{}', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigDeformerStackProperty', nicename='Deformer Stack', icon=':/bind.png',
                  enums=['Closest Distance', 'Heat Map', 'Baked Mush'])
        self.set('icon', ':/layeredTexture.svg')

    def getMainSet(self):

        mainsetname = self.get('name') + 'Deform_SET'

        if not cmds.objExists(mainsetname):
            cmds.sets(n=mainsetname)

        return mainsetname

    def getDeformTree(self):

        deformtree = self.get('deformertree')
        if type(deformtree) == unicode or type(deformtree) == str:
            deformtree = eval(deformtree)

        return deformtree

    def pre(self):
        super(MDeformerStack, self).pre()


        allsets = []
        deformtree = self.getDeformTree()


        # if any targetType, check if sets exists else create
        for nodename in deformtree.keys():
            deformerdata = deformtree[nodename]
            targetType = deformerdata['targetType']

            if targetType == 'Set':

                if cmds.objExists(nodename):
                    if cmds.objectType(nodename) == 'objectSet':
                        continue

                newset = cmds.sets(n=nodename)
                mainset = self.getMainSet()

                allsets.append(newset)

                cmds.sets(newset, addElement=mainset, e=True)

                self.reg('set', newset)

    def build(self):
        super(MDeformerStack, self).build()

        deformtree = self.getDeformTree()
        alldeformers = []
        for nodename in deformtree.keys():
            deformerdata = deformtree[nodename]
            targetType = deformerdata['targetType']

            deformerdata['deformers'].reverse()
            for deformer in deformerdata['deformers']:

                deformerName = deformer[0]
                deformerType = deformer[1]
                deformerSet = deformer[2]

                nodes = []
                if targetType == 'Set':
                    if cmds.objExists(nodename):

                        if cmds.objectType(nodename) != 'objectSet':
                            continue
                        nodes = cmds.sets(nodename, q=True)
                    else: continue

                else:
                    if not cmds.objExists(nodename): continue
                    nodes = [nodename]

                deformer = self.addDeformer(nodes, deformerName, deformerType, deformerSet)
                alldeformers.extend(deformer)

                if deformerType == 'skinCluster': self.reg('joints', deformer)

        self.add('deformernodes', alldeformers)

    def post(self):
        super(MDeformerStack, self).post()

        alldeformers = self.get('deformernodes')
        if not isinstance(alldeformers, list):
            alldeformers = eval(alldeformers)

        # register deformers
        for deformer in alldeformers: self.reg('weight', deformer)


    def addDeformer(self, nodes, deformerName, deformerType, deformerSet):

        if deformerType == 'skinCluster':
            return self.addSkinCluster(nodes, deformerName, deformerSet)

        elif deformerType == 'deltaMush':
            return self.addDeltaMush(nodes, deformerName, deformerSet)

        elif deformerType == 'tension':
            return
        elif deformerType == 'cluster':
            return

    def _getDumpjoint(self):

        dumpjointname = self.get('name') + 'Dump_JNT'

        if not cmds.objExists(dumpjointname):
            cmds.select(clear=True)
            dumpjointname = cmds.joint(n=dumpjointname)

            # parent skeleton group if any
            skeleton = cmds.ls("*_SKELETON_*")
            if skeleton: cmds.parent(dumpjointname, skeleton[0])

        return dumpjointname


    def addSkinCluster(self, nodes, deformerName, deformerSet):

        allJoints = []
        if cmds.objExists(deformerSet):
            if cmds.objectType(deformerSet) == 'objectSet':
                setmembers = cmds.sets(deformerSet, q=True)
                allJoints = filter(lambda x:cmds.objectType(x) == 'joint', setmembers)

        if not len(allJoints):
            allJoints = [self._getDumpjoint()]

        skcs = []
        for e, node in enumerate(nodes, 1):
            if cmds.objectType(node) == 'container': continue
            skc = cmds.skinCluster(allJoints, node, bindMethod=0,
                                   n="%s_%s_SKC"%(self.get('name'), node))
            skcs.append(skc)

        return skcs

    def addDeltaMush(self, nodes, deformerName, deformerSet):
        fulldeformername = '_%s%s'%(self.get('name'), deformerName.title())

        dms = []
        for e, node in enumerate(nodes, 1):
            if cmds.objectType(node) == 'container': continue
            dm = cmds.deltaMush(node, n="%s_%s_MUSH"%(self.get('name'), node))
            dms.append(dm)
        return dms
