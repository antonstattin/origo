
import origo.builder.components.maya.manimrigcomponent as manimrig
import origo.builder.lib.maya.matrix as matrix

import maya.cmds as cmds
import maya.mel as mel
import os

import origo.builder.lib.maya.mcurves as mcurves



class MLocalLips(manimrig.MAnimRigComponent):

    def __init__(self, parent=None):
        super(MLocalLips, self).__init__(parent)

        self.add('mirrorskeleton', False, public=False, valuetype=bool)

        # upper lip
        self.add('upperLip', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Upper Lip',
                  icon=':/curveEP.png')

        # lower lip
        self.add('lowerLip', '', public=True, ui='origo.builder.lib.'\
                 'maya.ui.mpropertywidgets.MRigSelectionProperty', nicename='Lower Lip',
                  icon=':/curveEP.png')


    def pre(self):
        super(MLocalLips, self).pre()

        cName = self.get('name')
        upperLipEdges = self.get('upperLip')
        lowerLipEdges = self.get('lowerLip')

        modgrp = self.getModGroup()

        upCrv = mcurves.curve_from_edges(upperLipEdges, cName + 'Upper_CRV')
        lowCrv = mcurves.curve_from_edges(lowerLipEdges, cName + 'Lower_CRV')

        cmds.parent(upCrv, modgrp)
        cmds.parent(lowCrv, modgrp)

        # register shape
        self.reg('shape', [upCrv, lowCrv])

        # add curves
        self.add('upcrv', upCrv)
        self.add('lowcrv', lowCrv)

    def build(self):
        super(MLocalLips, self).build()

        cName = self.get('name')
        upCrv = self.get('upcrv')
        lowCrv = self.get('lowcrv')

        prox_upCrv = cmds.duplicate(upCrv, name=cName + 'UpperProxy_CRV')[0]
        prox_lowCrv = cmds.duplicate(lowCrv, name=cName + 'LowerProxy_CRV')[0]

        cmds.rebuildCurve(prox_upCrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)

        cmds.rebuildCurve(prox_lowCrv, ch=False, rpo=1, rt=0, end=1, kr=0, kcp=0,
                          kep=1, kt=1, s=4, d=3, tol=0.01)



        poci_up = cmds.createNode('pointOnCurveInfo', n=cName + 'TMP_UP_POCI')
        poci_low = cmds.createNode('pointOnCurveInfo', n=cName + 'TMP_DWN_POCI')


        for poci in [poci_up, poci_low]:
            cmds.setAttr(poci + '.turnOnPercentage', 1)

        cmds.connectAttr(prox_lowCrv + '.worldSpace[0]', poci_low + '.inputCurve')
        cmds.connectAttr(prox_upCrv + '.worldSpace[0]', poci_up + '.inputCurve')

        params = [0.0, 0.05, 0.25, 0.5, 0.75, 0.95, 1.0]

        for i, param in enumerate(params):
            cmds.setAttr(poci_up + '.parameter', param)
            cmds.setAttr(poci_low + '.parameter', param)

            locA = cmds.spaceLocator()[0]
            cmds.xform(locA, t=cmds.getAttr(poci_up + '.result.position')[0], ws=True)
            cmds.makeIdentity(locA, a=True)

            cmds.cluster('%s.cv[%d]'%(prox_upCrv, i), wn=[locA, locA])

            locB = cmds.spaceLocator()[0]
            cmds.xform(locB, t=cmds.getAttr(poci_low + '.result.position')[0], ws=True)
            cmds.makeIdentity(locB, a=True)

            cmds.cluster('%s.cv[%d]'%(prox_lowCrv, i), wn=[locB, locB])
