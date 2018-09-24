
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
        if type(deformtree) == unicode:
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

        self.add('createdSets', allsets)

    def build(self):

        # register sets
        objectsets = self.get('createdSets')
        self.reg('set', objectsets)


    def post(self):
        super(MDeformerStack, self).post()

        deformtree = self.getDeformTree()

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

                self.addDeformer(nodes, deformerName, deformerType, deformerSet)

    def addDeformer(self, nodes, deformerName, deformerType, deformerSet):

        if deformerType == 'skinCluster':
            self.addSkinCluster(nodes, deformerName, deformerSet)

        elif deformerType == 'deltaMush':
            self.addDeltaMush(nodes, deformerName, deformerSet)

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

        fulldeformername = '_%s%s'%(self.get('name'), deformerName.title())

        allJoints = []
        if cmds.objExists(deformerSet):
            if cmds.objectType(deformerSet) == 'objectSet':
                setmembers = cmds.sets(deformerSet, q=True)
                allJoints = filter(lambda x:cmds.objectType(x) == 'joint', setmembers)

        if not len(allJoints):
            allJoints = [self._getDumpjoint()]

        for e, node in enumerate(nodes, 1):
            if cmds.objectType(node) == 'container': continue
            cmds.skinCluster(allJoints, node, bindMethod=0, n="%s%d_SKC"%(fulldeformername, e))

    def addDeltaMush(self, nodes, deformerName, deformerSet):
        fulldeformername = '_%s%s'%(self.get('name'), deformerName.title())

        for e, node in enumerate(nodes, 1):
            if cmds.objectType(node) == 'container': continue
            cmds.deltaMush(node, n="%s%d_MUSH"%(fulldeformername, e))
