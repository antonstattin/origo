
import origo.base.rigdata as rigdata
reload(rigdata)
import maya.cmds as cmds

class MRigRoot(rigdata.RigRoot):

    def __init__(self, projectname,
                 projectpath, parent=None):
        """ the root node of the rig hierarchy

            :param rigcontrol: control object
            :type rigcontrol: RigControl

            :param projectname: name of project
            :type projectname: str

            :param projectpath: path to project (rig file and modules)
            :type projectpath:

        """
        super(MRigRoot, self).__init__(projectname, projectpath, parent)

    def pre(self):
        """ Root .pre creates the group structure of the rig

            the groups can be thought of as 'global' groups,
            which all the other component can access through the RigRoot
            or by name.
            The names between the project name and the identifier ('group')
            is all with capital letters.

            available groups are:
                * RIG
                * COMPONENTS  - where all the components main group goes
                * SKELETON    - where all the joints goes
                * GEO         - where all the Geo goes
                * GUIDE       - where all the guides goes

            If some groups are not used and feel redundant
            they can be deleted with a simple script-component..
        """
        super(MRigRoot, self).pre()

        projname = self.get('projectname')

        # create lambdas for creating and parenting groups (child, parent)
        makeGroup = lambda name: cmds.objExists(name) and name or cmds.group(em=True, n=name)
        parentGroup = lambda c, p: cmds.listRelatives(c, p=True) and None or cmds.parent(c, p)

        # create 'global' groups
        main = makeGroup('%s_GRP'%projname)
        rig = makeGroup('%s_RIG_GRP'%projname)
        components = makeGroup('%s_MOD_GRP'%projname)
        skeleton = makeGroup('%s_SKELETON_GRP'%projname)
        geo = makeGroup('%s_GEO_GRP'%projname)
        guide = makeGroup('%s_GUIDE_GRP'%projname)

        # parent groups, (child, parent)
        parentGroup(rig, main)
        parentGroup(geo, main)
        parentGroup(components, rig)
        parentGroup(guide, rig)
        parentGroup(skeleton, rig)

        # attributes to lock and hide
        attribs = ['.tx', '.ty', '.tz',
                   '.rx', '.ry', '.rz',
                   '.sx', '.sy', '.sz',
                   '.v']

        for node in [main, rig, components, skeleton, geo, guide]:
            for attr in attribs:
                cmds.setAttr("%s%s"%(node, attr), cb=False, k=False, lock=True)
