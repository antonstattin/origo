import component
reload(component)
class RigControl(object):
    def __init__(self):
        print "Init RigBuilder"

    def getData(self):
        root = component.RigRoot("Root")
        layer = component.RigLayer("layer_A", root)
        cmpt = component.RigComponent("A", layer)
        component.RigComponent("B", root)

        layerb = component.RigLayer("layer_B", layer)
        layerc = component.RigLayer("layer_C", layerb)
        lastlayer = component.RigLayer("layer_D", layerc)

        c = component.RigComponent("C", lastlayer)

        print root.asXml()

        return root


# takes care of the rig building
