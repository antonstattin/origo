
import origo.builders.components.maya.mrigcomponent as mrig
reload(mrig)
import maya.cmds as cmds


class MAssetImport(mrig.MRigComponent):

    def __init__(self, parent=None):
        super(MAssetImport, self).__init__(parent)

        self.add('assetpath', '', public=True)

    def pre(self):
        super(MAssetImport, self).pre()
