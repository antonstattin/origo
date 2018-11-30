"""
Imports Pose Interpolator
"""
import origo.builder.components.maya.manimrigcomponent as manimrig
reload(manimrig)
import maya.cmds as cmds
import os

class MPoseDeformers(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MPoseDeformers, self).__init__(parent)


        self.add('poseDeformerFile', '', public=True, ui='origo.uiutils.widgets.'\
        'propertywidgets.RigBrowseProperty', browsetype='file', nicename="Pose File")




    def post(self):
        super(MPoseDeformers, self).post()

        posefile = self.get('poseDeformerFile')

        if os.path.exists(posefile) and posefile.endswith('.pose'):
            self.importCorrectives(posefile)

    def importCorrectives(self, posefile):
        """ This function finds the corresponding blendshapes and hooks everything up """

        # get the basename without .ext
        filename = os.path.basename(posefile).replace(".pose", "")

        # pose files director (where shape files are stored)
        directory = os.path.dirname(posefile)

        # filter out blendshapes if any
        bshps_files = filter(lambda f: f.startswith(filename) and f.endswith(".shp"),
        os.listdir(directory))

        for bshp_file in bshps_files:

            # query names and path
            bshp_name = bshp_file.split(".")[1]
            bshp_file_path = os.path.join(directory, bshp_file)

            # import and create blendshape front of chain
            cmds.blendShape(ip=bshp_file_path, frontOfChain=True, n=bshp_name)


        # import poseInterpolators and connect auto blendshapes
        cmds.poseInterpolator(im=posefile)
