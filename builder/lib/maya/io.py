
import maya.cmds as cmds
import json
import logging
import os

logger = logging.getLogger("Origo")

def importShape(fPath, cName):

    with open(fPath) as f:
        data = json.load(f)


    for key in data.keys():
        cvdata = data[key]

        if '$NAME::' in key: key = key.replace('$NAME::', cName)
        if not cmds.objExists(key): continue

        for cv in cvdata:
            try:
                if '$NAME::' in cv[0]: cv[0] = cv[0].replace('$NAME::', cName)
                cmds.xform(cv[0], t=cv[1])
            except: pass

    logger.info("%s : Shape Data Imported "%(cName))

def importAttribute(fPath, cName):

    with open(fPath) as f:
        data = json.load(f)

    for key in data.keys():
        value = data[key]

        if '$NAME::' in key: key = key.replace('$NAME::', cName)

        if not '.' in key: continue

        node = key.partition('.')[0]
        attribute = key.partition('.')[2]

        if cmds.objExists(node):
            if cmds.attributeQuery(attribute, node=key, exists=True):
                cmds.setAttr(key, value)

    logger.info("%s : Attribute Data Imported "%(cName))

def importTransform(fPath, cName):

    data = {}
    with open(fPath) as f:
        data = json.load(f)

    for node in data.keys():

        # get xform data
        transformData = data[node]

        # replace dyanmic-name-variable
        if '$NAME::' in node: node = node.replace('$NAME::', cName)
        if not cmds.objExists(node): continue


        parent_node = transformData['parent']

        if parent_node:
            if '$NAME::' in parent_node:
                parent_node = parent_node.replace('$NAME::', cName)

            # parent parent ndoe
            if cmds.objExists(parent_node):
                pnodes = cmds.listRelatives(node, p=True)
                if pnodes:
                    if pnodes[0] != parent_node: cmds.parent(node, parent_node)
                else: cmds.parent(node, parent_node)


        # set transform
        cmds.xform(node, t=transformData['translate'])
        cmds.xform(node, ro=transformData['rotate'])
        cmds.xform(node, scale=transformData['scale'])

    logger.info("%s : Transform Data Imported "%(cName))


def importHierarchy(fPath, cName):

    data = {}
    with open(fPath) as f:
        data = json.load(f)

    for node in data.keys():

        # get xform data
        parent_node = data[node]

        # replace dyanmic-name-variable
        if '$NAME::' in node: node = node.replace('$NAME::', cName)
        if not cmds.objExists(node): continue
        if not cmds.objExists(parent_node): continue

        cmds.parent(node, parent_node)

    logger.info("%s : Hierarchy Data Imported "%(cName))


def exportData(data, path, dtype, stage, cid):

    # check that we have a .rigdata folder
    if not os.path.isdir('%s/.rigdata'%path):
        os.mkdir('%s/.rigdata'%path)

    # check that we have a rig folder in .rigdata to store versions of rig
    if not os.path.isdir('%s/.rigdata/component'%path):
        os.mkdir('%s/.rigdata/component'%path)

    # check that we have the component id-folder
    if not os.path.isdir('%s/.rigdata/component/%s'%(path, cid)):
        os.mkdir('%s/.rigdata/component/%s'%(path, cid))

    # check that we have the components stage folder
    if not os.path.isdir('%s/.rigdata/component/%s/%s'%(path, cid, stage)):
        os.mkdir('%s/.rigdata/component/%s/%s'%(path, cid, stage))

    if not os.path.isdir('%s/.rigdata/component/%s/%s/versions'%(path, cid, stage)):
        os.mkdir('%s/.rigdata/component/%s/%s/versions'%(path, cid, stage))

    exportPath = '%s/.rigdata/component/%s/%s/'%(path, cid, stage)

    # save new current
    with open('%s/%s.json'%(exportPath, dtype), 'w') as outfile:
        json.dump(data, outfile, indent=4)

    # get version
    version = len(filter(lambda x: x.split('_')[0] == dtype,
                         os.listdir('%s/versions'%exportPath))) + 1

    # save new version
    with open('%s/versions/%s_%s.json'%(exportPath, dtype, str(version).zfill(3)), 'w') as outfile:
        json.dump(data, outfile, indent=4)

    logger.info("Exported %s %s version %d"%(stage, dtype.title(), version))
    logger.info("Export Path: '%s'"%exportPath)


def exportAttribute(nodes, path, dtype, stage, cId, name):

    data = {}

    for attribute in nodes:
        if '.' not in attribute: continue

        node = attribute.partition('.')[0]
        if not cmds.objExists(node): continue

        value = cmds.getAttr(attribute)
        if name in attribute:
            attribute = attribute.replace(name, '$NAME::')

        data.update({attribute:value})

    exportData(data, path, dtype, stage, cId)

def exportShape(nodes, path, dtype, stage, cId, name):

    data = {}
    for node in nodes:
        if not cmds.objExists(node): continue

        shapes = cmds.listRelatives(transform, shapes=True)
        if not len(shapes): shapes = [transform]

        for shape in shapes:
            position = []
            for cv in cmds.ls(shape + ".cv[*]", fl=True):
                cvpos = cmds.xform(cv, t=True, q=True)

                if name in cv: cv = node.replace(name, '$NAME::')

                position.append([cv, cvpos])

            if name in shape: shape = node.replace(name, '$NAME::')

            data.update({shape:position})

    exportData(data, path, dtype, stage, cId)

def exportTransform(nodes, path, dtype, stage, cId, name):

    data = {}
    for node in nodes:
        if not cmds.objExists(node): continue

        translate = cmds.xform(node, t=True, q=True)
        rotate = cmds.xform(node, ro=True, q=True)
        scale = cmds.xform(node, scale=True, q=True)

        if not cmds.listRelatives(node, p=True): parent = None
        else:
            parent = cmds.listRelatives(node, p=True)[0]
            if name in parent: parent = parent.replace(name, '$NAME::')

        if name in node: node = node.replace(name, '$NAME::')

        data.update({node:{'parent':parent, 'translate':translate, 'rotate':rotate, 'scale':scale}})

    exportData(data, path, dtype, stage, cId)

def exportHierarchy(nodes, path, dtype, stage, cId, name):

    data = {}
    for node in nodes:
        if not cmds.objExists(node): continue
        if not cmds.listRelatives(node, p=True): continue

        parent = cmds.listRelatives(node, p=True)[0]
        if name in node: node = node.replace(name, '$NAME::')

        data.update({node:parent})


    exportData(data, path, dtype, stage, cId)
