new ui
pyside-rcc C:/Users/Anton/Downloads/icons/icons.qrc -o D:/project/origo/uiutils/icons.py


import sys

sys.path.append("D:/project/")


import origo.ui as ui
reload(ui)

import origo.base.rigcontrol as rc

rigcontrol = rc.RigControl()
rigcontrol.rigFromXmlFile('D:/project/origo/test/rig.xml')
win = ui.inMaya(root=rigcontrol._root)
