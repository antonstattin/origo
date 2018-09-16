
import origo.builder.components.maya.mrigcomponent as mrig
import maya.cmds as cmds
import os

class GlobalControl(mrig.MRigComponent):

    def __init__(self, parent=None):
        super(GlobalControl, self).__init__(parent)
        
