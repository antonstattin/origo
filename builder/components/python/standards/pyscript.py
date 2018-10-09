import origo.base.rigdata as rigdata

class PyScript(rigdata.RigComponent):

    def __init__(self, parent=None):
        super(PyScript, self).__init__(parent)

        self.add('prescript', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigPythonScriptProperty')

        self.add('buildscript', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigPythonScriptProperty')

        self.add('postscript', '', public=True, ui='origo.uiutils.widgets.'\
                 'propertywidgets.RigPythonScriptProperty')

    def pre(self):
        super(PyScript, self).pre()
        code = self.get('prescript')

        if code != '': exec(code)

    def build(self):
        super(PyScript, self).build()

        code = self.get('buildscript')
        if code != '': exec(code)

    def post(self):
        super(PyScript, self).post()

        code = self.get('postscript')
        if code != '': exec(code)
