
import origo.builder.components.maya.mrigcomponent as mrig
import maya.cmds as cmds
import os

class MAssetImport(mrig.MRigComponent):

    def __init__(self, parent=None):
        super(MAssetImport, self).__init__(parent)

        self.add('assetpath', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigBrowseProperty', browsetype='file')

        self.add('parentmodel', 1, public=True, nicename='Parent Model', valuetype=bool)
        self.add('templated', 1, public=True, nicename='Templated Pre Mode',
                 icon='/:templated.png', valuetype=bool)

        self.set('icon', ':/UVTkFace.png')


    def pre(self):
        super(MAssetImport, self).pre()

        assetpath = self.get('assetpath')
        templated = self.get('templated')
        parentmodel = self.get('parentmodel')

        if os.path.exists(assetpath):
            cmds.file(assetpath, i=True)

        if cmds.ls('model_GRP'):
            if cmds.ls('*_GEO_GRP'):

                if parentmodel:
                    geogrp = cmds.ls('*_GEO_GRP')[0]
                    cmds.parent('model_GRP', geogrp)

            if templated:
                cmds.setAttr('model_GRP.overrideEnabled', 1)
                cmds.setAttr('model_GRP.overrideDisplayType', 1)

    def undo_build(self):
        super(MAssetImport, self).undo_build()

        templated = self.get('templated')

        if cmds.ls('model_GRP'):
            if templated:
                cmds.setAttr('model_GRP.overrideEnabled', 1)
                cmds.setAttr('model_GRP.overrideDisplayType', 1)


    def build(self):
        super(MAssetImport, self).build()

        templated = self.get('templated')

        if cmds.ls('model_GRP'):
            if templated:
                cmds.setAttr('model_GRP.overrideEnabled', 0)
