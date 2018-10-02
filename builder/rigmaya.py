import sys
sys.path.append("/jack/shared/PERSONAL/astattin/")

import origo.base.rigcontrol as rigcontrol

import os
from sys import argv

import maya.standalone
# Start Maya in batch mode
maya.standalone.initialize()

import maya.cmds as cmds


def main():
    xml_file = argv[1]


    cmds.loadPlugin("matrixNodes.so")
    cmds.loadPlugin("ikSpringSolver.so")

    cmds.file(new=True)

    rc = rigcontrol.RigControl()
    rc.rigFromXmlFile(xml_file)
    rc.buildRig()

    cmds.file(rename='/home/astattin/Documents/testt.ma' )
    cmds.file(save=True, type="mayaAscii")


if __name__ == "__main__":

    main()
    maya.standalone.uninitialize()
