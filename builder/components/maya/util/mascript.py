import origo.builder.components.maya.mrigcomponent as mrig

class MaScript(mrig.MRigComponent):

    def __init__(self, parent=None):
        super(MaScript, self).__init__(parent)

        self.add('mayacmds', 1, public=True, nicename='Import Maya.cmds as cmds', valuetype=bool)
        self.add('pymelcore', 0, public=True, nicename='Import pymel.core as pm', valuetype=bool)

        self.add('prescript', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigPythonScriptProperty')

        self.add('buildscript', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigPythonScriptProperty')

        self.add('postscript', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigPythonScriptProperty')

    def runCode(self, scriptnname):
        # need to import it into this space
        mayacmds = self.get('mayacmds')
        pymelcore = self.get('pymelcore')

        if mayacmds: import maya.cmds as cmds
        if pymelcore: import pymel.core as pm

        code = self.get(scriptnname)
        if code != '': exec(code)

    def pre(self):
        super(MaScript, self).pre()

        self.runCode('prescript')

    def build(self):
        super(MaScript, self).build()

        self.runCode('buildscript')


    def post(self):
        super(MaScript, self).post()

        self.runCode('postscript')
