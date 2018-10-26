

import sys
import os

sys.path.append("/jack/shared/PERSONAL/astattin/")
sys.path.append("/jack/system/TOOLS/AppConfig/MAYA/SCRIPTS/2018/mGear2.6.1/scripts/")

import maya.standalone
import maya.cmds as cmds

import origo.base.rigcontrol as rc
import origo.builder.roots.mrigroot as mrigroot

import origo.builder.components.maya.util.massetimport as massetimport
import origo.builder.components.maya.standards.mrigstructure as mrigstrct
import origo.builder.components.maya.standards.mdeformerstack as mdeformerstack

import origo.builder.components.maya.util.mgearmod as mgearmod


import SHARED.tools.mfSave.core.libMain as libMain
import SHARED.db as sharedDb



def mf_biped_blank_example():
    workpath_arg = '/jack/jobs/484_gluCastle/000_dev/000_820_rigging/maya/scenes'
    datapath_arg = '/jack/jobs/484_gluCastle/000_dev/000_820_rigging/maya/data/rigging/{chr}/origo'
    guidepath_arg = '/jack/jobs/484_gluCastle/000_dev/000_820_rigging/maya/data/rigging/{chr}/guide/guide_v001.ma'
    assetpath_arg = '/jack/jobs/484_gluCastle/000_dev/000_810_modeling/publish/{chr}/current/{chr}_current.ma'


    chr_dict = {
                 'chr_hook':{ 'workpath':workpath_arg,
                               'datapath':datapath_arg.format(chr='chr_hook'),
                               'guidepath':guidepath_arg.format(chr='chr_hook'),
                               'assetpath':assetpath_arg.format(chr='chr_hook')
                             },
                 'chr_iago':{ 'workpath':workpath_arg,
                               'datapath':datapath_arg.format(chr='chr_iago'),
                               'guidepath':guidepath_arg.format(chr='chr_iago'),
                               'assetpath':assetpath_arg.format(chr='chr_iago')
                             },
                 'chr_jafar':{ 'workpath':workpath_arg,
                               'datapath':datapath_arg.format(chr='chr_jafar'),
                               'guidepath':guidepath_arg.format(chr='chr_jafar'),
                               'assetpath':assetpath_arg.format(chr='chr_jafar')
                             },
                 'chr_mickey':{ 'workpath':workpath_arg,
                               'datapath':datapath_arg.format(chr='chr_mickey'),
                               'guidepath':guidepath_arg.format(chr='chr_mickey'),
                               'assetpath':assetpath_arg.format(chr='chr_mickey')
                             },
                 'chr_sully':{ 'workpath':workpath_arg,
                               'datapath':datapath_arg.format(chr='chr_sully'),
                               'guidepath':guidepath_arg.format(chr='chr_sully'),
                               'assetpath':assetpath_arg.format(chr='chr_sully')
                             }
               }

    quicksetup.mf_biped_blank(chr_dict)



def mf_biped_blank(chr_dict):
    """
        chr_dict should look like this:
            {
                chr_name:{'workpath':'/',
                          'datapath':'/'}
            }

        where the key is the name of the character and
        the workpath is where the character should be saved
        and datapath is where the origo data should be stored.
    """


    for chr_key in chr_dict.keys():


        # force new file
        cmds.file( f=True, new=True )

        workpath = chr_dict[chr_key]['workpath']
        datapath = chr_dict[chr_key]['datapath']
        guidepath = chr_dict[chr_key]['guidepath']
        assetpath = chr_dict[chr_key]['assetpath']

        print ' Creating {chr} '.format(chr=chr_key)

        root = mrigroot.MRigRoot(chr_key, datapath)

        rigcontrol = rc.RigControl(root)

        rigcontrol.addComponent(mrigstrct.MRigStructure)

        mrigstr = rigcontrol._root.getChild(0)
        mrigstr.set('name', chr_key)

        rigcontrol.addComponent(massetimport.MAssetImport)

        masset = rigcontrol._root.getChild(1)
        masset.set('name', 'ModelImport')
        masset.set('assetpath', assetpath)

        rigcontrol.addComponent(mgearmod.MGearMod)
        mdefstack = rigcontrol._root.getChild(2)
        mdefstack.set('name', 'MGear')
        mdefstack.set('assetpath', guidepath)

        rigcontrol.addComponent(mdeformerstack.MDeformerStack)
        mdefstack = rigcontrol._root.getChild(3)
        mdefstack.set('name', 'DeformStack')

        # save xml
        rigcontrol.saveRigxXml()


        # Initialize the core depending on application
        db = sharedDb.MilfordDB("maya")
        core = libMain.MainCore(db, "maya")

        core.setSceneType(7)
        core.setElementName(chr_key)

        core.connectDB()
        oResult = core.saveAs()
        core.closeDB()

        print ' {chr} done..\n'.format(chr=chr_key)
