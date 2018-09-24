import maya.cmds as cmds
import os
import math

def placePoleVector(start, mid, end, ctl, mult=2.0):

    apos = cmds.xform(start, q=True, t=True, ws=True)
    midpos = cmds.xform(mid, q=True, t=True, ws=True)
    bpos = cmds.xform(end, q=True, t=True, ws=True)

    # vector calculations
    vec = [a-b for a,b in zip(bpos, apos)]
    mid = [a+(b/2.0) for a,b in zip(apos, vec)]
    mvec = [a-b for a,b in zip(midpos, mid)]

    final = [a+(b*mult) for a,b in zip(mid, mvec)]

    cmds.xform(ctl, t=final, ws=True)


def getJointsBetween(parent, child, include=False):
    """ loops children until it finds 'child'
        :param parent: parent to start search under
        :param child: child to know when to stop search
    """

    inbetweens = []
    next_jnt = parent

    if include: inbetweens.append(parent)

    while(True):
        children = cmds.listRelatives(next_jnt, c=True)

        if not len(children): break

        if children[0] != child:
            next_jnt = children[0]
            inbetweens.append(next_jnt)
        else: break

    if include: inbetweens.append(child)

    return inbetweens

def getChainLength(chain):
    """ calculates the full length of the chain
        :param chain: chain to measure
        :type chain: list
        :return: float value, length
    """

    length = 0
    for e, jnt in enumerate(chain):
        if e == len(chain)-1: break

        posA = cmds.xform(jnt, t=True, q=True, ws=True)
        posB = cmds.xform(chain[e+1], t=True, q=True, ws=True)

        v = [posB[i] - x for i, x in enumerate(posA)]

        # calculate magnitude
        vlen = math.sqrt((math.pow(v[0], 2) + math.pow(v[1], 2) + math.pow(v[2], 2)))

        # add new length
        length += vlen


    return length

def cleanDuplicate(chain, names):
    """ duplicate chain without duplicating the whole hierarchy
        :param chain: the chain to duplicate
        :type chain: list
        :param names: a list of names with same length as chain
        :type names: list

        :return: the duplicated joint chain
    """

    if len(chain) != len(names): return

    parent = None
    dupchain = []
    for e, jnt in enumerate(chain):
        cmds.select(clear=True)
        dup = cmds.joint(n="%s_JNT"%names[e])
        cmds.delete(cmds.parentConstraint(jnt, dup, mo=False))
        dupchain.append(dup)

        if parent: cmds.parent(dup, parent)
        parent = dup

    for jnt in dupchain:
        cmds.makeIdentity(jnt, a=True)

    return dupchain
