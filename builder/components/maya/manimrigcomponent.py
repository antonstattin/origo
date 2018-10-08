import origo.base.rigdata as rigdata
import maya.cmds as cmds
import origo.builder.lib.maya.controlshape as controlshape

import mrigcomponent as mrigc

class RigGuide(rigdata.RigNode):
	""" class for generating guides hierarchical structures """

	def __init__(self, name, isSkeleton=True, shape='joint',
				 rotateOrder=0, position=[0,0,0], parent=None,
				 module=None):

		super(RigGuide, self).__init__(parent)

		self._name = name
		self._position = position
		self._isSkeleton = isSkeleton
		self._shape = shape
		self._rotateOrder = rotateOrder
		self._module = module
		self._mayanode = None

	def build(self):
		"""should be run from the root, builds the guides"""

		skeleton_data = []
		position_data = []

		root_guide = cmds.group(em=True, n='%s_GUIDE'%self._name)
		controlshape.ControlShape.cube(root_guide)

		self._mayanode = root_guide

		if self._module:
			self._module.reg('transform', root_guide)

		# parent root to guide group if any
		guidegrp = cmds.ls('*_GUIDE_*')
		if guidegrp: cmds.parent(root_guide, guidegrp[0])

		cmds.setAttr(root_guide + ".overrideEnabled", 1)
		cmds.setAttr(root_guide + ".overrideColor", 20)

		for shp in cmds.listRelatives(root_guide, s=True):
			if shp: cmds.setAttr(shp + ".lineWidth", 1.5)

		if self.isSkeleton: skeleton_data.append(root_guide)
		else: position_data.append(root_guide)

		for child in self._getRecursiveChildren():
			oGuide = cmds.group(em=True, n='%s_GUIDE'%child.name)
			cmds.setAttr(oGuide + ".rotateOrder", child._rotateOrder)

			child._mayanode = oGuide

			if self._module: self._module.reg('transform', oGuide)

			if child.isSkeleton:
				fnc = getattr(controlshape.ControlShape, child.shape)
				fnc(oGuide)

				# scale joint control
				for scale in ['.sx', '.sy', '.sz']:
					cmds.setAttr(oGuide + scale, 0.6)
				cmds.makeIdentity(oGuide, a=True)

				controlshape.ControlShape.axis(oGuide)

				# scale joint + axis control
				for scale in ['.sx', '.sy', '.sz']:
					cmds.setAttr(oGuide + scale, 0.5)
				cmds.makeIdentity(oGuide, a=True)

				skeleton_data.append(oGuide)
			else:
				fnc = getattr(controlshape.ControlShape, child.shape)
				fnc(oGuide)

				for scale in ['.sx', '.sy', '.sz']:
					cmds.setAttr(oGuide + scale, 0.3)
				cmds.makeIdentity(oGuide, a=True)

				position_data.append(oGuide)

			cmds.setAttr(oGuide + ".overrideEnabled", 1)
			cmds.setAttr(oGuide + ".overrideColor", 20)

			cmds.xform(oGuide, t=child.position, ws=True)

		for child in self._getRecursiveChildren():
			if not child._parent: continue

			oGuide = '%s_GUIDE'%child.name
			oGuideParent = '%s_GUIDE'%child._parent.name

			cmds.parent(oGuide, oGuideParent)

			# create arrow
			arrow = cmds.createNode("annotationShape")
			arrow_parent = cmds.listRelatives(arrow, p=True)[0]
			crv = cmds.curve(p=[0,0,0], d=1)
			cmds.connectAttr(cmds.listRelatives(crv, s=True)[0] +".worldMatrix[0]",
						 arrow+ ".dagObjectMatrix[0]")
			crvshp = cmds.listRelatives(crv, s=True)[0]
			cmds.setAttr(crvshp + ".template", 1)
			cmds.parent(crvshp, oGuide, r=True, s=True)
			cmds.parent(arrow, oGuideParent, r=True, s=True)

			cmds.delete(arrow_parent)
			cmds.delete(crv)

		if self._module:
			self._module.set('skeleton_guides', skeleton_data)
			self._module.set('position_guides', position_data + skeleton_data)

		return skeleton_data, position_data

# ------------------- Properties ------------------------ #
	@property
	def mayanode(self): return self._mayanode

	@mayanode.setter
	def mayanode(self, value): self._mayanode = value

	@property
	def position(self): return self._position

	@position.setter
	def position(self, value):
		self._position = value

	@property
	def rotateOrder(self):
		return self._rotateOrder

	@rotateOrder.setter
	def rotateOrder(self, value):
		self._rotateOrder = value

	@property
	def shape(self):
		return self._shape

	@shape.setter
	def shape(self, value):
		self._shape = value

	@property
	def isSkeleton(self):
		return self._isSkeleton

	@isSkeleton.setter
	def isSkeleton(self, value):
		if isinstance(value, bool):
			self._isSkeleton=value
	@property
	def name(self):
		return self._name

	@name.setter
	def name(self, value):
		self._name = value


class MAnimRigComponent(mrigc.MRigComponent):
	""" the main base component for animation components.  This base component
		helps with generation of skeleton and building controls.
		if controls nor skeleton-guides are needed use the mrigcomponent..
	"""
	def __init__(self, parent=None):
		super(MAnimRigComponent, self).__init__(parent)

		self.add('skeleton', [])
		self.add('animcontrols', [])
		self.add('position_guides', [])
		self.add('skeleton_guides', [])

		self.set('icon', ':/joint.svg')
		self.add('mirrorskeleton', False, public=True, nicename='Skeleton Flip X-axis (Mirror Behavior)',
				  valuetype=bool, icon=':/polyMirrorGeometry.png')

		self._rootguide = None

	def addToSkeletonSet(self, bones):

		if not cmds.objExists('skeleton_SET'):
			cmds.sets(n='skeleton_SET')
		cmds.sets(bones, addElement='skeleton_SET')


	def undo_build(self):
		""" unhides the guides """
		super(MAnimRigComponent, self).undo_build()

		skeleton_guides = self.get('skeleton_guides')

		if not isinstance(skeleton_guides, list): return

		for guide in skeleton_guides:
			if cmds.objExists(guide):
				cmds.setAttr(guide + ".v", 1)

	def pre(self):
		super(MAnimRigComponent, self).pre()

	def build(self):
		""" This build method will create the joints from the guides, if any """

		super(MAnimRigComponent, self).build()

		# build skeleton
		allJoints = []
		skeleton_guides = self.get('skeleton_guides')
		mirrorskeleton = self.get('mirrorskeleton')

		if not isinstance(skeleton_guides, list): return

		# create Joints
		for guide in skeleton_guides:
			cmds.select(clear=True)
			jnt = cmds.joint(name=guide.replace('_GUIDE', '_JNT'))


			cmds.delete(cmds.parentConstraint(guide, jnt, mo=False))

			cmds.makeIdentity(jnt, a=True)
			allJoints.append(jnt)

			cmds.setAttr(guide + ".v", 0)

			if mirrorskeleton:
				cmds.setAttr(jnt + ".ry", 180)
				cmds.setAttr(jnt + ".rx", 180)
				cmds.makeIdentity(jnt, a=True)

		# try to find the main skeleton group
		skeleton_grp = cmds.ls("*_SKELETON_*")
		if skeleton_grp:
			if cmds.objExists(skeleton_grp[0]): skeleton_grp = skeleton_grp[0]
			else: skeleton_grp = None

		# parent joints
		for guide in skeleton_guides:
			jnt = guide.replace('_GUIDE', '_JNT')

			guide_parent = cmds.listRelatives(guide, p=True)
			if not guide_parent:
				if skeleton_grp: cmds.parent(jnt, skeleton_grp)
				continue

			joint_parent = guide_parent[0].replace('_GUIDE', '_JNT')
			if cmds.objExists(joint_parent):
				cmds.parent(jnt, joint_parent)
			else:
				if skeleton_grp:
					cmds.parent(jnt, skeleton_grp)

		self.addToSkeletonSet(allJoints)
		self.set('skeleton', allJoints)

	def addRootGuide(self, name, isSkeleton=True):
		""" Add the root guide, create the guide objects by using the .build()
			use this components .addGuide to add more guides to the root.
			All Guides are stored in a hierarchical order with the root guide as top.

			:param name: name of root
			:type name: str

			:param isSkeleton: if we want to generate a joint from guide
			:type isSkeleton: bool

		"""

		self._rootguide = RigGuide(self.get('name') + name,
								   isSkeleton, module=self)


		return self._rootguide

	def addGuide(self, name, isSkeleton=True, shape='joint',
				 rotateOrder=0, position=[0,0,0], parent=None):
		""" add guide object, should be used in combination with the addRootGuide

			:param name: name of guide
			:type name: str

			:param isSkeleton: if the guide should generate a skeleton
			:type isSkeleton: bool

			:param shape: shape of the guide, check lib.maya.controlshape
			:type shape: str

			:param rotateOrder: rotation order
			:type rotateOrder: int (check mayas rotation order enum)

			:param position: position where the guide should be created
			:type position: list, vector3, [x,y, z]

			:param parent: guide object if none the parent is root
			:type parent: RigGuide

		"""
		if not parent: parent = self._rootguide

		oGuide = RigGuide(self.get('name') + name, isSkeleton,
						  shape, rotateOrder, position, parent)

		return oGuide

	def addControl(self, name, **kwarg):
		""" creates a control

			:param name: name of control
			:type name: str

			::keyword arguments::

			:param shape (shp): control shape (lib.maya.controlshape)
			:type shape (shp): str

			:param color (c): color of control (Default side prefix color)
			:type color (c): int (maya overrideColor enum)

			:param offsets (o): offset controls to be built, default 2
			:type offsets (o): int

			:param rotateOrder (ro): controls rotate order
			:type rotateOrder (ro): int (maya rotateOrder enum)

			:param controltag (ct): if adding a maya controll tag
			:type controltag (ct): int (maya rotateOrder enum)

			:param lock (ct): attributes to lock
			:type lock (ct): list

			:param lineWidth (w): width of the curve (thickness)
			:type lineWidth (w): float

			:param secondary (sec): specify if control is a secondary control
			:type secondary (sec): bool

			:param size (s): size of control
			:type size (s): float

			:param offsetControls (oc): number of offset controls
			:type offsetControls (oc): int
		"""

		controls = self.get('animcontrols')
		if not isinstance(controls, list):
			controls = []


		controlprefix = self.get('name')

		# query arguments
		shape = kwarg.get('shape', kwarg.get('shp', 'circle'))
		color = kwarg.get('color', kwarg.get('c', None))
		offsets = kwarg.get('offsets', kwarg.get('o', 2))
		rotateOrder = kwarg.get('rotateOrder', kwarg.get('ro', 0))
		controltag = kwarg.get('controlTag', kwarg.get('ct', True))
		lock = kwarg.get('lock', kwarg.get('l', ['.sx', '.sy', '.sz', '.v']))
		linewidth = kwarg.get('lineWidth', kwarg.get('w', 1.5))
		secondary = kwarg.get('secondary', kwarg.get('sec', False))
		size = kwarg.get('size', kwarg.get('w', 1.0))
		offsetControls = kwarg.get('offsetControls', kwarg.get('oc', 0))
		matchTranslate = kwarg.get('matchTranslate', kwarg.get('mt', None))
		matchRotate = kwarg.get('matchRotate', kwarg.get('mr', None))

		# check if any prefix
		findprefix = self.get('name').split('_')
		if len(findprefix)>1 and findprefix[0] in ['L', 'R', 'C']:
			prefix = findprefix[0]
		else: prefix = 'C' # set center as default

		# generate color from prefix if not specified
		secondaryColor = 9
		if not color:
			if prefix == 'C':
				secondaryColor =  21
				if secondary: color = 21
				else: color = 22
			elif prefix == 'L':
				secondaryColor = 28
				if secondary: color = 28
				else: color = 18
			elif prefix == 'R':
				secondaryColor = 12
				if secondary: color = 12
				else: color = 4

		# create control
		controlname = '{}{}'.format(controlprefix, name)
		ctl = cmds.group(em=True, n='%s_CTL'%controlname)

		controls.append(ctl)




		# get control function
		shapefnc = getattr(controlshape.ControlShape, shape)
		shapefnc(ctl)

		cmds.setAttr(ctl + '.sx', size)
		cmds.setAttr(ctl + '.sy', size)
		cmds.setAttr(ctl + '.sz', size)
		cmds.makeIdentity(ctl, a=True)

		# set line width
		for shp in cmds.listRelatives(ctl, s=True):
			cmds.setAttr(shp + '.lineWidth', linewidth)

		# set color
		cmds.setAttr(ctl + '.overrideEnabled', True)
		cmds.setAttr(ctl + '.overrideColor', color)
		cmds.setAttr(ctl + ".rotateOrder", rotateOrder)

		if offsets < 1: offsets = 1

		offsetgroups = []
		for i in xrange(1, offsets+1):
			offsetname = '%sOffset%d_GRP'%(controlname, i)
			offsetgroup = cmds.group(em=True, n=offsetname)

			if len(offsetgroups):
				cmds.parent(offsetgroup, offsetgroups[len(offsetgroups)-1])

			offsetgroups.append(offsetgroup)

		cmds.parent(ctl, offsetgroups[len(offsetgroups)-1])

		offsetctls = []
		for i in xrange(1, offsetControls+1):
			offsetname = '%sOffset%d_CTL'%(controlname, i)
			offsetctl = cmds.group(em=True, n=offsetname)
			shapefnc(offsetctl)
			controls.append(offsetctl)

			cmds.setAttr(offsetctl + '.sx', size/2.0)
			cmds.setAttr(offsetctl + '.sy', size/2.0)
			cmds.setAttr(offsetctl + '.sz', size/2.0)
			cmds.makeIdentity(offsetctl, a=True)

			cmds.setAttr(offsetctl + '.overrideEnabled', True)
			cmds.setAttr(offsetctl + '.overrideColor', secondaryColor)
			cmds.setAttr(offsetctl + ".rotateOrder", rotateOrder)

			if len(offsetctls):
				cmds.parent(offsetctl, offsetctls[len(offsetctls)-1])
			offsetctls.append(offsetctl)

		if len(offsetctls):
			cmds.parent(offsetctls[0], ctl)

			cmds.addAttr(ctl, ln='offsetControls', dv=False, at='bool')
			cmds.setAttr(ctl + '.offsetControls', cb=True)

			cmds.connectAttr(ctl + '.offsetControls', offsetctls[0] + '.v')

			root = offsetctls[len(offsetctls)-1]

		else: root = ctl

		if matchTranslate:
			if cmds.objExists(matchTranslate):
				position = cmds.xform(matchTranslate, t=True, ws=True, q=True)
				cmds.xform(offsetgroups[0], t=position, ws=True)

		if matchRotate:
			if cmds.objExists(matchRotate):
				rotation = cmds.xform(matchRotate, ro=True, ws=True, q=True)
				cmds.xform(offsetgroups[0], ro=rotation, ws=True)

		if lock:
			for attr in lock:
				cmds.setAttr(ctl + attr, k=False, l=True, cb=False)
				#cmds.setAttr(ctl + attr, )

		cmds.parent(offsetgroups[0], self.getModGroup())

		self.set('animcontrols', controls)
		self.reg('shape', controls)

		return {'ctl':ctl, 'root':root, 'offsetControls':offsetctls,
				'offsetgroups':offsetgroups}
