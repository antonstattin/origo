

#TODO translate so we dont have to use wrapped cmds = pymel
import pymel.core as pm
import pymel.core.datatypes as dt

def get_param_from_pos(curve, pos):

    npoc = pm.createNode("nearestPointOnCurve")
    pm.connectAttr(curve + ".worldSpace", npoc + ".inputCurve")
    pm.setAttr(npoc + ".inPosition.inPositionX", pos[0])
    pm.setAttr(npoc + ".inPosition.inPositionY", pos[1])
    pm.setAttr(npoc + ".inPosition.inPositionZ", pos[2])
    param = pm.getAttr(npoc + ".parameter")
    pm.delete(npoc)

    return param


def create_edges(name, medges):
    """ creates up and down curve """

    edges = []
    for edge in medges:
        edges.append(pm.PyNode(edge))

    left, right = find_corners(edges)
    crv = curve_from_edges(edges, name + "Main_CRV")

    leftcv = find_closest_cv(crv, left.getPosition("world"))[0]
    rightcv = find_closest_cv(crv, right.getPosition("world"))[0]

    acrv, bcrv = build_from_cvs(crv, rightcv, leftcv, name + "A", name + "B")

    # check which one should be up or down
    a = sum([v.getPosition("world").y for v in pm.ls(str(acrv) + ".cv[*]", fl=True)]) / len(pm.ls(str(acrv) + ".cv[*]", fl=True))
    b = sum([v.getPosition("world").y for v in pm.ls(str(bcrv) + ".cv[*]", fl=True)]) / len(pm.ls(str(bcrv) + ".cv[*]", fl=True))

    upcrv = acrv
    dwncrv = bcrv


    if a<b:
        upcrv = bcrv
        dwncrv = acrv

    pm.rename(upcrv, name + "Up_crv")
    pm.rename(dwncrv, name + "Dwn_crv")

    pm.delete(crv)

    return str(upcrv), str(dwncrv)


def find_corners(edges):
    """ find corners by mesuaring positions """


    points = reduce(lambda x,y: x+y,[edge.connectedVertices() for edge in edges])
    left = points[0]
    right = points[0]
    maxval = points[0].getPosition("world")[0]
    minval = points[0].getPosition("world")[0]

    for point in points:
        x = point.getPosition("world")[0]

        if x > maxval:
            maxval = x
            left = point

        if x < minval:
            minval = x
            right = point

    return left, right

def curve_from_edges(edges, name="eye_CRV"):
    """ creates a curve from mesh """
    pm.select(clear=True)
    pm.select(edges)
    crv = pm.polyToCurve(ch=False, n=name, dg=1)
    return crv[0]

def build_from_cvs(curve, cv_a, cv_b, a_curve_name, b_curve_name):
    """ builds curve from cvs """

    cv_list_a = pm.ls("{}.cv[{}:{}]".format(curve, cv_b.index(), cv_a.index()), fl=True)
    if not cv_list_a: cv_list_a = pm.ls("{}.cv[{}:{}]".format(curve, cv_a.index(), cv_b.index()), fl=True)


    length = len(pm.ls("{} .cv[*]".format(curve), fl=True))
    if cv_b.index() > cv_a.index():
        listA = pm.ls("{}.cv[{}:{}]".format(curve, 0,cv_a.index()), fl=True)
        listB = pm.ls("{}.cv[{}:{}]".format(curve,cv_b.index(), length), fl=True)
    else:
        listA = pm.ls("{}.cv[{}:{}]".format(curve,0,cv_b.index()), fl=True)
        listB = pm.ls("{}.cv[{}:{}]".format(curve,cv_a.index(), length), fl=True)

    cv_list_b = listA[::-1] + listB[::-1]

    points_a = [point.getPosition("world") for point in cv_list_a]

    curve_a = pm.curve(d=2, p=points_a, n=a_curve_name + "_CRV")

    points_b = [point.getPosition("world") for point in cv_list_b]
    curve_b = pm.curve(d=2, p=points_b, n=b_curve_name + "_CRV")

    return curve_a, curve_b

def find_closest_cv(curve, point):
    """ finds the closest cv on curve to point """
    closest_distance = 0
    closest_cv = None

    point_vector = dt.Vector(point)

    for e, cv in enumerate(pm.ls(curve + ".cv[*]", fl=True)):
        vector = dt.Vector(cv.getPosition("world"))
        distance = vector.distanceTo(point_vector)

        if not e:
            closest_distance = distance
            closest_cv = cv

        if distance < closest_distance:
            closest_distance = distance
            closest_cv = cv

    return closest_cv, closest_distance
