"""
Author: Anton Stattin

About:

    This module is used to create and manage control shapes.

    example:

        # adds a control shape with text 'resolution' to the transform
        ControlShapes.resolution(transform)

        # adds a control shape with the shape of a circle to the transform
        ControlShapes.circle(transform)



    Available control shapes (staticmethods):

        resolution
        visibility
        spaceswitch
        circle
        joint
        cube
        square
        axis

"""

import pymel.core as pm


class ControlShape(object):
    """ ControlShapes contains multiple functions to deal with control shape creations.
        This class is mostly used as a namespace as most functions are staticmethods"""

    @staticmethod
    def fix_text(text_top_group, transform):
        """ cleans up texts and parents all the shapes underneath specifiec transform

            Args:
                text_top_group: top group of text (maya text curves)
                transform: parent all shapes underneath this node

        """

        curve_list = []

        pm.setAttr("%s.tx"%text_top_group[0], -2)

        for letter in pm.listRelatives(text_top_group):
            for crv in pm.listRelatives(letter):
                pm.parent(crv, text_top_group[0])
                pm.makeIdentity(crv, a=True)
                for shape in pm.listRelatives(crv):
                    curve_list.append(shape)

        pm.parent(curve_list, transform, r=True, s=True)

        pm.delete(text_top_group[0])

    @staticmethod
    def from_string(text_string, transform):
        text_curves = pm.textCurves(ch=0, f="Source Sans Pro Black|wt:87|sz:28|sl:n|st:100",t=text_string)
        ControlShape.fix_text(text_curves, transform)

    @staticmethod
    def resolution(transform):
        """ Creates a control with the text 'Resolution'

            Args:
                transform: name of transform that will be parent to shapenode

        """

        vis_text = pm.textCurves(ch=0, f="Source Sans Pro Black|wt:87|sz:28|sl:n|st:100",t="Resolution")

        ControlShape.fix_text(vis_text, transform)



    @staticmethod
    def spaceswitch(transform):
        """ Creates a control with the text 'Spaceswitch'

            Args:
                transform: name of transform that will be parent to shapenode

        """

        vis_text = pm.textCurves(ch=0, f="Source Sans Pro Black|wt:87|sz:28|sl:n|st:100",t="SpaceSwitch")

        ControlShape.fix_text(vis_text, transform)


    @staticmethod
    def visibility(transform):
        """ Creates a control with the text 'Visibility'

            Args:
                transform: name of transform that will be parent to shapenode

        """

        vis_text = pm.textCurves(ch=0, f="Source Sans Pro Black|wt:87|sz:28|sl:n|st:100",t="Visibility")

        ControlShape.fix_text(vis_text, transform)

    @staticmethod
    def circle(transform):
        """ Creates a control with the shape of a circle

            Args:
                transform: name of transform that will be parent to shapenode

        """
        circle = pm.circle(ch=False, n="CircleShape".format(transform))[0]

        pm.setAttr("%s.rotateY"%circle, 90)

        pm.makeIdentity(circle, a=True)

        pm.parent(pm.listRelatives(circle)[0], transform, s=True, r=True)

        pm.delete(circle)

    @staticmethod
    def joint(transform):
        """ Creates a control with the shape of a joint

            Args:
                transform: name of transform that will be parent to shapenode

        """

        circleA = pm.circle(ch=False, n="{}Circle1Shape".format(transform))[0]
        circleB = pm.circle(ch=False, n="{}Circle2Shape".format(transform))[0]
        circleC = pm.circle(ch=False, n="{}Circle3Shape".format(transform))[0]

        pm.setAttr("%s.rotateY"%circleA, 90)
        pm.setAttr("%s.rotateX"%circleB, 90)

        pm.makeIdentity([circleA,circleB], a=True)

        pm.parent(pm.listRelatives(circleA)[0], transform, s=True, r=True)
        pm.parent(pm.listRelatives(circleB)[0], transform, s=True, r=True)
        pm.parent(pm.listRelatives(circleC)[0], transform, s=True, r=True)

        pm.delete([circleA,circleB,circleC])

    @staticmethod
    def cube(transform):
        """ Creates a control with the shape of a cube

            Args:
                transform: name of transform that will be parent to shapenode

        """

        xPos = pm.nurbsSquare(nr=[1,0,0], ch=False, n="{}Square1".format(transform))[0]
        pm.setAttr(xPos + ".tx", 0.5)
        pm.makeIdentity(xPos, a=True)
        xPos_curves = pm.listRelatives(xPos)
        pm.delete([xPos_curves[1],xPos_curves[3]])

        xNeg = pm.nurbsSquare(nr=[1,0,0], ch=False, n="{}Square2".format(transform))[0]
        pm.setAttr(xNeg + ".tx", -0.5)
        pm.makeIdentity(xNeg, a=True)
        xNeg_curves = pm.listRelatives(xNeg)
        pm.delete([xNeg_curves[1],xNeg_curves[3]])

        zPos = pm.nurbsSquare(nr=[0,0,1], ch=False, n="{}Square3".format(transform))[0]
        pm.setAttr(zPos + ".tz", 0.5)
        pm.makeIdentity(zPos, a=True)

        zNeg = pm.nurbsSquare(nr=[0,0,1], ch=False, n="{}Square4".format(transform))[0]
        pm.setAttr(zNeg + ".tz", -0.5)
        pm.makeIdentity(zNeg, a=True)

        for square in [xPos, xNeg, zPos, zNeg]:
            for crv in pm.listRelatives(square):
                shape = pm.listRelatives(crv)[0]
                pm.parent(shape, transform, r=True, s=True)

        pm.delete([xPos, xNeg, zPos, zNeg])

    @staticmethod
    def square(transform):
        """ Creates a control with the shape of a square

            Args:
                transform: name of transform that will be parent to shapenode

        """

        square = pm.nurbsSquare(n="{}Square1".format(transform), ch=False)

        for crv in pm.listRelatives(square):
            shape = pm.listRelatives(crv)[0]
            pm.parent(shape, transform, r=True, s=True)

        pm.delete(square)

    @staticmethod
    def four_directions_arrow(transform):
        """ Creates a control with the shape of a four arrows

            Args:
                transform: name of transform that will be parent to shapenode

        """
        crv = pm.curve(d=1, p=[[-1.0, 0.0, 1.0], [-3.0, 0.0, 1.0], [-3.0, 0.0, 2.0], [-5.0, 0.0, 0.0],
                [-3.0, 0.0, -2.0], [-3.0, 0.0, -1.0], [-1.0, 0.0, -1.0], [-1.0, 0.0, -3.0],
                [-2.0, 0.0, -3.0], [0.0, 0.0, -5.0], [2.0, 0.0, -3.0], [1.0, 0.0, -3.0],
                [1.0, 0.0, -1.0], [3.0, 0.0, -1.0], [3.0, 0.0, -2.0], [5.0, 0.0, 0.0],
                [3.0, 0.0, 2.0], [3.0, 0.0, 1.0], [1.0, 0.0, 1.0], [1.0, 0.0, 3.0],
                [2.0, 0.0, 3.0], [0.0, 0.0, 5.0], [-2.0, 0.0, 3.0], [-1.0, 0.0, 3.0], [-1.0, 0.0, 1.0]]
                )

        pm.parent(crv.getShape(), transform, r=True, s=True)
        pm.delete(crv)

    @staticmethod
    def axis(transform):
        """ Creates a control with the shape of a axis handle (adds colors)

            Args:
                transform: name of transform that will be parent to shapenode

        """
        arrows = []

        # loop: root, translate and color data
        for i, data in enumerate([[[0,0,0],[0,0.5,0],14],
                                 [[0,0,-90],[0.5,0,0],4],
                                 [[90,0,0],[0,0,0.5],6]]):

            square = pm.nurbsSquare(n="{}Square{}".format(transform, i), ch=False)
            right_crv = pm.listRelatives(square)[3]
            pm.xform("{}.cv[2]".format(right_crv), t=[0,1.2,0])
            pm.xform("{}.cv[1]".format(right_crv), t=[0,1.2,0])
            pm.setAttr("{}.sx".format(square[0]),0.1)
            pm.xform(square, ro=data[0])
            pm.xform(square, t=data[1])
            pm.makeIdentity(square, a=True)

            for shape in pm.listRelatives(square):
                pm.setAttr("{}Shape.overrideEnabled".format(shape), 1)
                pm.setAttr("{}Shape.overrideColor".format(shape), data[2])

            arrows.append(square[0])

        for arrow in arrows:
            for crv in pm.listRelatives(arrow):
                shape = pm.listRelatives(crv)[0]
                pm.parent(shape, transform, r=True, s=True)
            pm.delete(arrow)

    @staticmethod
    def circlefill(transform):
        crv = pm.curve( degree = 1,
            knot = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,
            26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,
            51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76],
            point = [(3.6915440258113947, -9.3629908994031406e-017, 1.5290924543994273),
            (2.8282092152668978, -1.731777004387582e-016, 2.8282064765013288),
            (1.4141046076334489, -8.6588850219379102e-017, 1.4141032382506644),
            (1.8457720129056974, -4.6814954497015703e-017, 0.76454622719971366),
            (3.6915440258113947, -9.3629908994031406e-017, 1.5290924543994273),
            (3.9996918294590156, 5.4462398553035891e-022, -8.8943846656142078e-006),
            (1.9998459147295078, 2.7231199276517946e-022, -4.4471923328071039e-006),
            (1.8457720129056974, -4.6814954497015703e-017, 0.76454622719971366),
            (1.4141046076334489, -8.6588850219379102e-017, 1.4141032382506644),
            (0.76454380079422812, -1.130209927361695e-016, 1.8457728843101386),
            (1.5290876015884562, -2.26041985472339e-016, 3.6915457686202773),
            (2.8282092152668978, -1.731777004387582e-016, 2.8282064765013288),
            (1.4141046076334489, -8.6588850219379102e-017, 1.4141032382506644),
            (0.76454380079422812, -1.130209927361695e-016, 1.8457728843101386),
            (8.3266726846886741e-017, -1.2245520061760724e-016, 1.9998451913297028),
            (1.6653345369377348e-016, -2.4491040123521448e-016, 3.9996903826594057),
            (1.5290876015884562, -2.26041985472339e-016, 3.6915457686202773),
            (0.76454380079422812, -1.130209927361695e-016, 1.8457728843101386),
            (8.3266726846886741e-017, -1.2245520061760724e-016, 1.9998451913297028),
            (-0.76454380079422712, -1.130209927361695e-016, 1.8457728843101384),
            (-1.5290876015884542, -2.26041985472339e-016, 3.6915457686202768),
            (1.6653345369377348e-016, -2.4491040123521448e-016, 3.9996903826594057),
            (8.3266726846886741e-017, -1.2245520061760724e-016, 1.9998451913297028),
            (-0.76454380079422712, -1.130209927361695e-016, 1.8457728843101384),
            (-1.4141046076334489, -8.6588850219379053e-017, 1.414103238250664),
            (-2.8282092152668978, -1.7317770043875811e-016, 2.8282064765013279),
            (-1.5290876015884542, -2.26041985472339e-016, 3.6915457686202768),
            (-0.76454380079422712, -1.130209927361695e-016, 1.8457728843101384),
            (-1.4141046076334489, -8.6588850219379053e-017, 1.414103238250664),
            (-1.8457720129056985, -4.6814954497015678e-017, 0.76454622719971232),
            (-3.691544025811397, -9.3629908994031357e-017, 1.5290924543994246),
            (-2.8282092152668978, -1.7317770043875811e-016, 2.8282064765013279),
            (-1.4141046076334489, -8.6588850219379053e-017, 1.414103238250664),
            (-1.8457720129056985, -4.6814954497015678e-017, 0.76454622719971232),
            (-1.9998459147295065, 2.7231199284837963e-022, -4.4471923335287489e-006),
            (-3.9996918294590129, 5.4462398569675926e-022, -8.8943846670574978e-006),
            (-3.691544025811397, -9.3629908994031357e-017, 1.5290924543994246),
            (-1.8457720129056985, -4.6814954497015678e-017, 0.76454622719971232),
            (-1.9998459147295065, 2.7231199284837963e-022, -4.4471923335287489e-006),
            (-1.8457720129056985, 4.6814304039116263e-017, -0.76453560441606883),
            (-3.691544025811397, 9.3628608078232526e-017, -1.5290712088321377),
            (-3.9996918294590129, 5.4462398569675926e-022, -8.8943846670574978e-006),
            (-1.9998459147295065, 2.7231199284837963e-022, -4.4471923335287489e-006),
            (-1.8457720129056985, 4.6814304039116263e-017, -0.76453560441606883),
            (-1.414104607633448, 8.658982224938694e-017, -1.4141191127053805),
            (-2.8282092152668961, 1.7317964449877388e-016, -2.828238225410761),
            (-3.691544025811397, 9.3628608078232526e-017, -1.5290712088321377),
            (-1.8457720129056985, 4.6814304039116263e-017, -0.76453560441606883),
            (-1.414104607633448, 8.658982224938694e-017, -1.4141191127053805),
            (-0.76454380079422712, 1.1301958153051444e-016, -1.8457498375728087),
            (-1.5290876015884542, 2.2603916306102888e-016, -3.6914996751456175),
            (-2.8282092152668961, 1.7317964449877388e-016, -2.828238225410761),
            (-1.414104607633448, 8.658982224938694e-017, -1.4141191127053805),
            (-0.76454380079422712, 1.1301958153051444e-016, -1.8457498375728087),
            (-2.7755575615628914e-017, 1.2246467991473535e-016, -2.0000000000000009),
            (-5.5511151231257827e-017, 2.4492935982947069e-016, -4.0000000000000018),
            (-1.5290876015884542, 2.2603916306102888e-016, -3.6914996751456175),
            (-0.76454380079422712, 1.1301958153051444e-016, -1.8457498375728087),
            (-2.7755575615628914e-017, 1.2246467991473535e-016, -2.0000000000000009),
            (0.76454380079422657, 1.1301958153051444e-016, -1.845749837572809),
            (1.5290876015884531, 2.2603916306102888e-016, -3.6914996751456179),
            (-5.5511151231257827e-017, 2.4492935982947069e-016, -4.0000000000000018),
            (-2.7755575615628914e-017, 1.2246467991473535e-016, -2.0000000000000009),
            (0.76454380079422657, 1.1301958153051444e-016, -1.845749837572809),
            (1.4141046076334503, 8.6589822249386927e-017, -1.4141191127053805),
            (2.8282092152669005, 1.7317964449877385e-016, -2.828238225410761),
            (1.5290876015884531, 2.2603916306102888e-016, -3.6914996751456179),
            (0.76454380079422657, 1.1301958153051444e-016, -1.845749837572809),
            (1.4141046076334503, 8.6589822249386927e-017, -1.4141191127053805),
            (1.8457720129056994, 4.681430403911622e-017, -0.76453560441606694),
            (3.6915440258113987, 9.3628608078232439e-017, -1.5290712088321339),
            (2.8282092152669005, 1.7317964449877385e-016, -2.828238225410761),
            (1.4141046076334503, 8.6589822249386927e-017, -1.4141191127053805),
            (1.8457720129056994, 4.681430403911622e-017, -0.76453560441606694),
            (1.9998459147295078, 2.7231199276517946e-022, -4.4471923328071039e-006),
            (3.9996918294590156, 5.4462398553035891e-022, -8.8943846656142078e-006),
            (3.6915440258113987, 9.3628608078232439e-017, -1.5290712088321339)]
            )

        pm.parent(pm.listRelatives(crv, s=True)[0], transform, r=True, s=True)
        pm.delete(crv)

    @staticmethod
    def linecirclecross(transform):
        crv = pm.curve( degree = 1,\
                    knot = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,\
                            16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30],\
                    point = [(0, 0, 0),\
                             (6.8580220752251786e-016, 5.6000000000000005, 0),\
                             (0.20683760000000073, 5.6279536000000006, 0),\
                             (0.39966240000000075, 5.7078255999999996, 0),\
                             (0.56568960000000068, 5.8343100000000003, 0),\
                             (0.69217500000000076, 6.0003378000000005, 0),\
                             (0.77204560000000089, 6.1931621999999997, 0),\
                             (0.80000600000000066, 6.4000000461260003, 0),\
                             (0, 6.4000000000000004, 0),\
                             (6.8580220752251786e-016, 5.6000000000000005, 0),\
                             (-0.20683759999999932, 5.6279536000000006, 0),\
                             (-0.39966239999999931, 5.7078256000000005, 0),\
                             (-0.56568959999999924, 5.8343100000000003, 0),\
                             (-0.69217499999999932, 6.0003378000000005, 0),\
                             (-0.77204559999999933, 6.1931622000000006, 0),\
                             (-0.80000599999999933, 6.4000000461260003, 0),\
                             (-0.77204559999999933, 6.6068376000000004, 0),\
                             (-0.69217499999999921, 6.7996623999999999, 0),\
                             (-0.56568959999999913, 6.965689600000001, 0),\
                             (-0.39966239999999914, 7.092175000000001, 0),\
                             (-0.20683759999999915, 7.1720456000000006, 0),\
                             (8.8174643017417381e-016, 7.200006000000001, 0),\
                             (0.20683760000000093, 7.1720456000000006, 0),\
                             (0.39966240000000092, 7.092175000000001, 0),\
                             (0.5656896000000009, 6.965689600000001, 0),\
                             (0.69217500000000098, 6.7996623999999999, 0),\
                             (0.77204560000000089, 6.6068376000000004, 0),\
                             (0.80000600000000066, 6.4000000461260003, 0),\
                             (-0.80000599999999933, 6.4000000461260003, 0),\
                             (0, 6.4000000000000004, 0),\
                             (8.8174643017417381e-016, 7.200006000000001, 0)]\
                  )

        pm.parent(pm.listRelatives(crv, s=True)[0], transform, r=True, s=True)
        pm.delete(crv)
