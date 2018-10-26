"""

    Builds Rigs in batchmode.
    Rigs are built from mfbuild scripts located in ./mfbuilds

    pass a mfbuilds config name as first argument to build rigs
    eg. gluCastle/chr_ariel or gluCastle/all for rebuilding all rigs in folder
    This will build the rig from the rig.xml specified and publish a new version
    of the character rig. (deformRig, renderRig and geo)

    example (run in projects maya shell):
        mayapy ../mfbashbuild.py gluCastle/chr_ariel

    for optimal use create alias to mfbashbuild..

"""

import sys
import os
import json

import logging
logger = logging.getLogger("Origo")

sys.path.append("/jack/shared/PERSONAL/astattin/")
sys.path.append("/jack/system/TOOLS/AppConfig/MAYA/SCRIPTS/2018/mGear2.6.1/scripts/")

import maya.standalone
import maya.cmds as cmds
import re


import SHARED.tools.mfSave.core.libMain as libMain
import SHARED.db as sharedDb


# import origos rigcontrol - 'the rig builder'
import origo.base.rigcontrol as rc
reload(rc)

if __name__ == "__main__":

    if len(sys.argv) > 2:
        raise KeyError('Missing build argument.. (mfbuilds config)')

    build_name = sys.argv[1]

    build_config_path = os.path.join(os.path.dirname(__file__),
                                     'mfbuilds',
                                     build_name + '.json')

    if not os.path.exists(build_config_path):
        raise KeyError('"{}" does not exist.. check ./mfbuilds folder'.format(build_config_path))

    # log the build..
    print('\n{line}  Preparing {} {line}'.format(build_name, line='-'*8))

    print('\nJSON: "{}"\n'.format(build_config_path))

    with open(build_config_path) as f:
        data = json.load(f)

    # query data
    rig_scene_path = data.get('rig_scene_path', '')
    rig_plugins = data.get('rig_plugins', ["matrixNodes.so"])
    chr_name = data.get('chr_name', '')

    if not os.path.exists(rig_scene_path):
        raise KeyError('"{}" does not exist.. check ./mfbuilds folder'.format(rig_scene_path))

    latest = ""
    latest_version = 0
    for fname in os.listdir(rig_scene_path):
        version = int(re.search('_v\d\d\d', fname).group().replace('_v', ''))

        if latest_version < version:
            latest_version = version
            latest = os.path.join(rig_scene_path, fname)

    # LOG
    print('RIG SCENE FOLDER: "{}"\n'.format(rig_scene_path))
    print('LATEST VERSION: {}'.format(latest_version))
    print('LATEST FILE: {}\n'.format(latest.rpartition('/')[2]))

    # START BUILD
    print('\n{line}  BULDING {} {line}\n'.format(build_name, line='-'*7))
    print('- Maya init -')
    maya.standalone.initialize(name='python')

    print('\n- Preparing build.. Loading plugins -')

    for plugin in rig_plugins:
        print('loading {}'.format(plugin))
        cmds.loadPlugin( plugin )


    # opening latest file
    print('\n- Opening File - ')
    try: cmds.file(latest, o=True, f=True)
    except RuntimeError: print 'Close Scene! Seems to be locked!!'

    # get rig meta data
    rigdata = cmds.ls('_RigData')
    if not rigdata: raise RuntimeError('No _RigData in Scene...')
    xml = cmds.getAttr(rigdata[0] + '.xmlpath')

    print('\n- Reading XML - ')
    print(str(xml))

    print('\n- Starting Origo Build - ')

    rigcontrol = rc.RigControl()
    rigcontrol.rigFromXmlFile(xml)

    rigcontrol.buildRig()

    print('- Origo Build Complete - ')

    print('\n- Saving Work Scene - ')
    # Initialize the core depending on application
    db = sharedDb.MilfordDB("maya")
    core = libMain.MainCore(db, "maya")

    core.setSceneType(7)
    core.setElementName(chr_name)

    core.connectDB()
    oResult = core.saveAs()
    core.closeDB()

    print('\n- Publishing Rig - ')
    rigcontrol._root.publish()

    print('\n New Rig published..')








    # print a nice line ending matching the first build print length
    print('\n{}'.format('-'*(16 + len(build_name) + 13)))
