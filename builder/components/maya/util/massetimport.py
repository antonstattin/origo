
import origo.builder.components.maya.mrigcomponent as mrig
import maya.cmds as cmds
import os

class MAssetImport(mrig.MRigComponent):

    def __init__(self, parent=None):
        super(MAssetImport, self).__init__(parent)

        self.add('assetpath', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigBrowseProperty', browsetype='file')

        self.add('parentmodel', 1, public=True, nicename='Parent Model', valuetype=bool)

        self.set('icon', ':/UVTkFace.png')


    def pre(self):
        super(MAssetImport, self).pre()

        assetpath = self.get('assetpath')

        if os.path.exists(assetpath):
            cmds.file(assetpath, i=True)
