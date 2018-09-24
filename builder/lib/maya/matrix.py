"""
This module contains methods to create different type of matrix constraints
Some can be faster/more light weight then mayas built in constraints.

almost all of the constraints have a prevent beigncycle argument,
This will connect the parents worldmatrix instead of the
parentInverseMatrix attribute of the input node and skip the beign cycle.
"""
import pymel.core as pm

def constraint(*args, **kwargs):
	""" Creates a matrix constraint, if more then one driver are passed
		this setup will create a weight matrix node.

		Args: drivers, driven
		kwargs:
			n - name : name of setup
			mo - maintanoffset : maintans offset
			nt - notranslate : no translate (rotate only)
			nr - norotate : no rotate (translate only)
			beigncycle - bc : if false, prevents beign cycle
	"""

	# grab keyword arguments
	name = kwargs.get('n', kwargs.get('name', 'constraint_mtx'))
	mo = kwargs.get('mo', kwargs.get('maintanoffset', True))
	nt = kwargs.get('nt', kwargs.get('notranslate', False))
	nr = kwargs.get('nr', kwargs.get('norotate', False))
	beigncycle = kwargs.get('beigncycle', kwargs.get('bc', False))

	driven = args[-1:][0]
	drivers = args[:-1]

	invParMult = pm.createNode("multMatrix", n='_%sInv_mtx'%name)
	decomposeMat = pm.createNode("decomposeMatrix", n='_%s_DcmpMtx'%name)

	# set the rotate order
	rotateOrder = pm.getAttr(driven + '.rotateOrder')
	pm.setAttr(decomposeMat + '.inputRotateOrder', rotateOrder)

	# prevent begin cycle or create it
	if beigncycle:
		pm.connectAttr("%s.parentInverseMatrix"%driven,
						 "%s.matrixIn[1]"%invParMult)
	else:
		parent = pm.listRelatives(driven, p=True)

		if parent:
			pm.connectAttr("%s.worldInverseMatrix"%parent[0],
							 "%s.matrixIn[1]"%invParMult)
		else: pm.delete(invParMult)

	# setup maintain offset
	if mo:
		mult_objs = []
		for driver in drivers:
			mult = pm.createNode("multMatrix", n='_%s_%sMO_mtx'%(name, driver.title()))
			mult_objs.append(mult)

			drivenWsMtx = pm.getAttr(driven + '.worldMatrix')
			driverInvsWsMtx = pm.getAttr(driver + '.worldInverseMatrix')

			pm.setAttr(mult + '.matrixIn[0]', drivenWsMtx * driverInvsWsMtx)
			pm.connectAttr(driver + '.worldMatrix', mult + '.matrixIn[1]')

	# if we have multiple drivers, create a wtAddMatrix and to weight them
	wtMat = None
	if len(drivers) > 1:
		wtMat = pm.createNode('wtAddMatrix', n='_%s_WtMtx'%name)

		weight = 1.0/(len(drivers))
		# connect drivers to weight matrix
		for i, driver in enumerate(drivers):
			if mo:
				mult = mult_objs[i]
				pm.connectAttr('%s.matrixSum'%mult,
							   '%s.wtMatrix[%d].matrixIn'%(wtMat, i))
			else:
				pm.connectAttr('%s.worldMatrix'%driver,
							   '%s.wtMatrix[%d].matrixIn'%(wtMat, i))

			pm.setAttr('%s.wtMatrix[%d].weightIn'%(wtMat, i), weight)

		if invParMult:
			pm.connectAttr('%s.matrixSum'%wtMat, '%s.matrixIn[0]'%invParMult)
			pm.connectAttr('%s.matrixSum'%invParMult, '%s.inputMatrix'%decomposeMat)
		else:
			pm.connectAttr('%s.matrixSum'%wtMat, '%s.inputMatrix'%decomposeMat)
	else:
		if invParMult:
			if mo:
				pm.connectAttr('%s.matrixSum'%mult_objs[0],
								  '%s.matrixIn[0]'%invParMult)
			else:
				pm.connectAttr('%s.worldMatrix[0]'%drivers[0], '%s.matrixIn[0]'%invParMult)

			pm.connectAttr('%s.matrixSum'%invParMult, '%s.inputMatrix'%decomposeMat)
		else:
			if mo:
				pm.connectAttr('%s.matrixSum'%mult_objs[0], '%s.inputMatrix'%decomposeMat)
			else:
				pm.connectAttr('%s.worldMatrix'%drivers[0], '%s.inputMatrix'%decomposeMat)

	# if not no translate
	if not nr:
		pm.connectAttr('%s.outputRotate'%decomposeMat, '%s.rotate'%driven)
	# not no rotate
	if not nt:
		pm.connectAttr('%s.outputTranslate'%decomposeMat, '%s.translate'%driven)


	return decomposeMat, wtMat
