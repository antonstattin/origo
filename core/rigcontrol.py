import component
reload(component)
class RigControl(object):
    def __init__(self):
        print "Init RigBuilder"

    def getData(self):
        root = component.RigRoot("Root")
        layer = component.RigLayer("layer", root)
        cmpt = component.RigComponent("component", layer)

        return root


# takes care of the rig building
