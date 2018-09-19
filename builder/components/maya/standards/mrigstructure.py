
import origo.builder.components.maya.mrigcomponent as mrig
import maya.cmds as cmds
import os

class MRigStructure(mrig.MRigComponent):

    def __init__(self, parent=None):
        super(MRigStructure, self).__init__(parent)

        self.add('Geo', 1, public=True, nicename='Create Geo Group',
                 valuetype=bool, icon=':/folder-new.png')

        self.add('Rig', 1, public=True, nicename='Create Rig Group',
                valuetype=bool, icon=':/folder-new.png')

        self.add('Mod', 1, public=True, nicename='Create Mod Group',
                valuetype=bool, icon=':/folder-new.png')

        self.add('Guide', 1, public=True, nicename='Create Guide Group',
                valuetype=bool, icon=':/folder-new.png')

        self.add('Skeleton', 1, public=True, nicename='Create Skeleton Group',
                valuetype=bool, icon=':/folder-new.png')

        self.add('suffix', 'GRP', public=True, nicename='Group Suffx')
        self.add('extra', '', public=True, nicename='Extra Groups')
        self.set('icon', ':/character.svg')
    def pre(self):
        super(MRigStructure, self).pre()

        projname = self.get('name')

        makeGroup = lambda name: cmds.objExists(name) and name or cmds.group(em=True, n=name)
        parentGroup = lambda c, p: cmds.listRelatives(c, p=True) and None or cmds.parent(c, p)

        geo = self.get('Geo')
        rig = self.get('Rig')
        mod = self.get('Mod')
        guide = self.get('Guide')
        skeleton = self.get('Skeleton')
        suffix = self.get('suffix')

        attribs = ['.tx', '.ty', '.tz',
                   '.rx', '.ry', '.rz',
                   '.sx', '.sy', '.sz',
                   '.v']

        # create 'global' groups
        main_grp = makeGroup('%s_%s'%(projname, suffix))

        lock = [main_grp]

        if rig:
            rig_grp = makeGroup('%s_RIG_%s'%(projname, suffix))
            lock.append(rig_grp)

            parentGroup(rig_grp, main_grp)

        if mod:
            mod_grp = makeGroup('%s_MOD_%s'%(projname, suffix))
            lock.append(mod_grp)

            if rig: parentGroup(mod_grp, rig_grp)
            else: parentGroup(mod_grp, main_grp)

        if guide:
            guide_grp = makeGroup('%s_GUIDE_%s'%(projname, suffix))
            lock.append(guide_grp)

            if rig: parentGroup(guide_grp, rig_grp)
            else: parentGroup(guide_grp, main_grp)

        if skeleton:
            skeleton_grp = makeGroup('%s_SKELETON_%s'%(projname, suffix))
            lock.append(skeleton_grp)

            if rig: parentGroup(skeleton_grp, rig_grp)
            else: parentGroup(skeleton_grp, main_grp)

        if geo:
            geo_grp = makeGroup('%s_GEO_%s'%(projname, suffix))
            lock.append(geo_grp)

            parentGroup(geo_grp, main_grp)

        # attributes to lock and hide
        for node in lock:
            for attr in attribs:
                cmds.setAttr("%s%s"%(node, attr), cb=False, k=False, lock=True)
