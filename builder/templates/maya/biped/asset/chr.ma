//Maya ASCII 2018 scene
//Name: chr.ma
//Last modified: Wed, Sep 19, 2018 09:18:18 AM
//Codeset: UTF-8
requires maya "2018";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
requires "3delight_for_maya2012" "6.0.51";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201708311015-002f4fe637";
fileInfo "osv" "Linux 3.10.0-693.17.1.el7.x86_64 #1 SMP Thu Jan 25 20:13:58 UTC 2018 x86_64";
createNode transform -n "guide";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001335";
	addAttr -ci true -sn "rig_name" -ln "rig_name" -dt "string";
	addAttr -ci true -k true -sn "mode" -ln "mode" -min 0 -max 1 -en "Final:WIP" -at "enum";
	addAttr -ci true -k true -sn "step" -ln "step" -min 0 -max 6 -en "All Steps:Objects:Properties:Operators:Connect:Joints:Finalize" 
		-at "enum";
	addAttr -ci true -sn "ismodel" -ln "ismodel" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "classicChannelNames" -ln "classicChannelNames" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "proxyChannels" -ln "proxyChannels" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "worldCtl" -ln "worldCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "importSkin" -ln "importSkin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "skin" -ln "skin" -dt "string";
	addAttr -ci true -sn "L_color_fk" -ln "L_color_fk" -dv 6 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "L_color_ik" -ln "L_color_ik" -dv 18 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_fk" -ln "R_color_fk" -dv 23 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_ik" -ln "R_color_ik" -dv 14 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_fk" -ln "C_color_fk" -dv 13 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_ik" -ln "C_color_ik" -dv 17 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "joint_rig" -ln "joint_rig" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "synoptic" -ln "synoptic" -dt "string";
	addAttr -ci true -sn "doPreCustomStep" -ln "doPreCustomStep" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "doPostCustomStep" -ln "doPostCustomStep" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "preCustomStep" -ln "preCustomStep" -dt "string";
	addAttr -ci true -sn "postCustomStep" -ln "postCustomStep" -dt "string";
	addAttr -ci true -sn "comments" -ln "comments" -dt "string";
	addAttr -ci true -sn "user" -ln "user" -dt "string";
	addAttr -ci true -sn "date" -ln "date" -dt "string";
	addAttr -ci true -sn "maya_version" -ln "maya_version" -dt "string";
	addAttr -ci true -sn "gear_version" -ln "gear_version" -dt "string";
	setAttr ".rig_name" -type "string" "rig";
	setAttr -k on ".step" 6;
	setAttr ".skin" -type "string" "";
	setAttr ".synoptic" -type "string" "biped";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2017-08-29 18:34:07.211000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.2.4";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001336";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "global_C0_root" -p "guide";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001337";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 8 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.89633854099826915 0.89633854099826915 0.89633854099826915 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "global";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "global_C0_rootShape" -p "global_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001338";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "global_C0_root10Shape" -p "global_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001339";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "global_C0_root11Shape" -p "global_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000133A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "global_C0_root12Shape" -p "global_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000133B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "global_C0_sizeRef" -p "global_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000133C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "local_C0_root" -p "global_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000133D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 6 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "local";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "local_C0_rootShape" -p "local_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000133E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "local_C0_root10Shape" -p "local_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000133F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "local_C0_root11Shape" -p "local_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001340";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "local_C0_root12Shape" -p "local_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001341";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "local_C0_sizeRef" -p "local_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001342";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "body_C0_root" -p "local_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001343";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -dv 2 -min 0 -max 
		5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 3 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 10.853210488970383 0.18241213460091918 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.8613851194869455 1.8613851194869344 1.8613851194869455 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "body";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "body_C0_rootShape" -p "body_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001344";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "body_C0_root34Shape" -p "body_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001345";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "body_C0_root35Shape" -p "body_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001346";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "body_C0_root36Shape" -p "body_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001347";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "body_C0_sizeRef" -p "body_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001348";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.53723433669418719 0 1.1928998604342202e-16 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.53723433669418763 0.53723433669419063 0.53723433669418763 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "spine_C0_root" -p "body_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001349";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "position" -ln "position" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "maxsquash" -ln "maxsquash" -dv 0.5 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "softness" -ln "softness" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "lock_ori" -ln "lock_ori" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "division" -ln "division" -dv 5 -min 3 -at "long";
	addAttr -ci true -sn "autoBend" -ln "autoBend" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "centralTangent" -ln "centralTangent" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.7144514654701197e-17 1.7763568394002505e-15 -2.1570415377137042e-32 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 90.000000000000014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.51189149642410492 0.51189149642410237 0.51189149642410159 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "spine_ik_01";
	setAttr ".comp_name" -type "string" "spine";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000134A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_root34Shape" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000134B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_root35Shape" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000134C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_root36Shape" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000134D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "spine_C0_eff" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000134E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3760066881565312 -1.6930901125533637e-15 1.1093356479670479e-31 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999944 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000134F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spine_C0_eff34Shape" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001350";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spine_C0_eff35Shape" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001351";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spine_C0_eff36Shape" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001352";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "spine_C0_eff36_0crvShape" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001353";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "spine_C0_eff36_1crvShape" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001354";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "spineUI_C0_root" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001355";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2578484988603389 0.60394549966678468 -1.9764781265571727 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.8877599067547628 0.88775990675476024 0.88775990675475913 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "spineUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "spineUI_C0_rootShape" -p "spineUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001356";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "spineUI_C0_root34Shape" -p "spineUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001357";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "spineUI_C0_root35Shape" -p "spineUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001358";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "spineUI_C0_root36Shape" -p "spineUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001359";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "spineUI_C0_sizeRef" -p "spineUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000135A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -3.5527136788005009e-15 1.1821982708976551 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.1821982708976524 1.1821982708976528 1.1821982708976548 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "shoulder_L0_root" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000135B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "refArray" -ln "refArray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7395848890977401 -0.016853043661003379 -1.2305275670526359 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 1.0000000000000031 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "shoulder_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".refArray" -type "string" "shoulder_L0_root,local_C0_root,body_C0_root,spine_C0_eff,global_C0_root";
createNode nurbsCurve -n "shoulder_L0_rootShape" -p "shoulder_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000135C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_root34Shape" -p "shoulder_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000135D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_root35Shape" -p "shoulder_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000135E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_root36Shape" -p "shoulder_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000135F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "shoulder_L0_tip" -p "shoulder_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001360";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.7325288375128135 -1.1969123199874903 -1.0548511419838524 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999567 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001361";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip34Shape" -p "shoulder_L0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001362";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_L0_tip35Shape" -p "shoulder_L0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001363";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_L0_tip36Shape" -p "shoulder_L0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001364";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip36_0crvShape" -p "shoulder_L0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001365";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "shoulder_L0_tip36_1crvShape" -p "shoulder_L0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001366";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "arm_L0_root" -p "shoulder_L0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001367";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "ikTR" -ln "ikTR" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorIK" -ln "mirrorIK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraTweak" -ln "extraTweak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.5987211554602254e-14 6.6613381477509392e-16 4.4408920985006262e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.675418190965701 42.279968099085103 -5.174555661754229 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999811 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "arm_2jnt_01";
	setAttr ".comp_name" -type "string" "arm";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "shoulder_01";
	setAttr ".ui_host" -type "string" "armUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "arm_L0_rootShape" -p "arm_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001368";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_root34Shape" -p "arm_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001369";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_root35Shape" -p "arm_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000136A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_root36Shape" -p "arm_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000136B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "arm_L0_elbow" -p "arm_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000136C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9643359867233028 9.1384148512285696e-15 0.10464692943620449 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784277 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000136D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow34Shape" -p "arm_L0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000136E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_elbow35Shape" -p "arm_L0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000136F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_elbow36Shape" -p "arm_L0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001370";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow36_0crvShape" -p "arm_L0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001371";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_elbow36_1crvShape" -p "arm_L0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001372";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "arm_L0_wrist" -p "arm_L0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001373";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.7578837198083419 1.4220395694319864e-15 -0.11960611218230625 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000018 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001374";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist34Shape" -p "arm_L0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001375";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_wrist35Shape" -p "arm_L0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001376";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_wrist36Shape" -p "arm_L0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001377";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist36_0crvShape" -p "arm_L0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001378";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_wrist36_1crvShape" -p "arm_L0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001379";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "arm_L0_eff" -p "arm_L0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000137A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308153 1.2434497875801753e-14 9.298117831235686e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_effShape" -p "arm_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000137B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_L0_eff34Shape" -p "arm_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000137C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_L0_eff35Shape" -p "arm_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000137D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_L0_eff36Shape" -p "arm_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000137E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_eff36_0crvShape" -p "arm_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000137F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_L0_eff36_1crvShape" -p "arm_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001380";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "armUI_L0_root" -p "arm_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001381";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2124561875008095 0.5607311476451784 -0.29276117198398871 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "armUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "armUI_L0_rootShape" -p "armUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001382";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "armUI_L0_root34Shape" -p "armUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001383";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "armUI_L0_root35Shape" -p "armUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001384";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "armUI_L0_root36Shape" -p "armUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001385";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "armUI_L0_sizeRef" -p "armUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001386";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.113476230858093 -0.027001577630491269 1.0430060296210657 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145882209 3.3190804973695687 45.379324150247761 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377431 1.0495082267377382 1.0495082267377405 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "meta_L0_root" -p "arm_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001387";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "intScale" -ln "intScale" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intRotation" -ln "intRotation" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intTranslation" -ln "intTranslation" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0556240028445685 -0.075350553640982199 0.35296225288850192 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008866914 93.717381466937198 86.467960127478079 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716935 0.30838721081716924 0.30838721081716952 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "meta_01";
	setAttr ".comp_name" -type "string" "meta";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "meta_L0_rootShape" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001388";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_root34Shape" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001389";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_root35Shape" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000138A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_root36Shape" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000138B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "meta_L0_0_loc" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000138C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.6632084735361703 7.1054273576010019e-15 -2.6645352591003757e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000138D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc34Shape" -p "meta_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000138E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_0_loc35Shape" -p "meta_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000138F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_0_loc36Shape" -p "meta_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001390";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc36_0crvShape" -p "meta_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001391";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_0_loc36_1crvShape" -p "meta_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001392";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "meta_L0_1_loc" -p "meta_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001393";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618406 4.2632564145606011e-14 1.2434497875801753e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001394";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc34Shape" -p "meta_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001395";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_1_loc35Shape" -p "meta_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001396";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_1_loc36Shape" -p "meta_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001397";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc36_0crvShape" -p "meta_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001398";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_1_loc36_1crvShape" -p "meta_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001399";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "meta_L0_2_loc" -p "meta_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000139A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618806 -7.1054273576010019e-15 -2.4868995751603507e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999878 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_2_locShape" -p "meta_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000139B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc34Shape" -p "meta_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000139C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_L0_2_loc35Shape" -p "meta_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000139D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_L0_2_loc36Shape" -p "meta_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000139E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc36_0crvShape" -p "meta_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000139F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_L0_2_loc36_1crvShape" -p "meta_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L3_root" -p "meta_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 3 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.27518484001103172 -0.17360051577777114 2.4946799341790467 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878593587 -68.587073855452587 -5.8163374181190042 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566181 1.2929668245661787 1.2929668245661798 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_L3_rootShape" -p "finger_L3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_root34Shape" -p "finger_L3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_root35Shape" -p "finger_L3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_root36Shape" -p "finger_L3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_L3_0_loc" -p "finger_L3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830561934 1.4210854715202004e-14 -3.9968028886505635e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc34Shape" -p "finger_L3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_0_loc35Shape" -p "finger_L3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013A9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_0_loc36Shape" -p "finger_L3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013AA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc36_0crvShape" -p "finger_L3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013AB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_0_loc36_1crvShape" -p "finger_L3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013AC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L3_1_loc" -p "finger_L3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013AD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070876662 -2.1316282072803006e-14 2.6645352591003757e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999933 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013AE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc34Shape" -p "finger_L3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013AF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_1_loc35Shape" -p "finger_L3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_1_loc36Shape" -p "finger_L3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc36_0crvShape" -p "finger_L3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_1_loc36_1crvShape" -p "finger_L3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L3_2_loc" -p "finger_L3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259193812 3.5527136788005009e-15 -2.4424906541753444e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1.0000000000000011 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc34Shape" -p "finger_L3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L3_2_loc35Shape" -p "finger_L3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L3_2_loc36Shape" -p "finger_L3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc36_0crvShape" -p "finger_L3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013B9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L3_2_loc36_1crvShape" -p "finger_L3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013BA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L3_blade" -p "finger_L3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013BB";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013BC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970855 0 0
		0 0.2585933649132362 0
		0 0 0
		;
createNode aimConstraint -n "finger_L3_blade_aimConstraint12" -p "finger_L3_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013BD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_L3_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L3_blade_pointConstraint12" -p "finger_L3_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_L3_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013BF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646754391 -29.032786855763433 1.4804327725055146 ;
	setAttr ".r" -type "double3" -7.5791665394153647 -14.30424437889981 49.348303523762077 ;
	setAttr ".s" -type "double3" 2.6320983106786136 2.632098310678602 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_L2_root" -p "meta_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 2 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21404201232122722 -0.17620518664706708 2.8414845756647331 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121376634 -82.086889237978838 -14.829711404954057 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661787 1.2929668245661774 1.2929668245661794 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_L2_rootShape" -p "finger_L2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_root34Shape" -p "finger_L2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_root35Shape" -p "finger_L2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_root36Shape" -p "finger_L2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_L2_0_loc" -p "finger_L2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406041 -3.5527136788005009e-15 2.886579864025407e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.000000000000002 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc34Shape" -p "finger_L2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013C9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_0_loc35Shape" -p "finger_L2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013CA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_0_loc36Shape" -p "finger_L2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013CB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc36_0crvShape" -p "finger_L2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013CC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_0_loc36_1crvShape" -p "finger_L2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013CD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L2_1_loc" -p "finger_L2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013CE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587175555 7.1054273576010019e-15 -2.2204460492503131e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999933 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013CF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc34Shape" -p "finger_L2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_1_loc35Shape" -p "finger_L2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_1_loc36Shape" -p "finger_L2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc36_0crvShape" -p "finger_L2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_1_loc36_1crvShape" -p "finger_L2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L2_2_loc" -p "finger_L2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674915532 -1.0658141036401503e-14 -1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc34Shape" -p "finger_L2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L2_2_loc35Shape" -p "finger_L2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L2_2_loc36Shape" -p "finger_L2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013D9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc36_0crvShape" -p "finger_L2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013DA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L2_2_loc36_1crvShape" -p "finger_L2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013DB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L2_blade" -p "finger_L2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013DC";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.000000000000002 1.0000000000000009 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013DD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970722 0 0
		0 0.25859336491323576 0
		0 0 0
		;
createNode aimConstraint -n "finger_L2_blade_aimConstraint12" -p "finger_L2_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013DE";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_L2_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L2_blade_pointConstraint12" -p "finger_L2_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_L2_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3.5527136788005009e-15 0 -2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L2_crv" -p "finger_L2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931309277 -29.023661369441495 1.4173349723096382 ;
	setAttr ".r" -type "double3" -0.54140613099220503 -1.5904804996484601 47.737641631364042 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.632098310678602 2.6320983106786078 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_L1_root" -p "meta_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 1 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.0077643969605980523 -0.12358406696708357 2.9483952421545787 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870092 -79.977014017423315 -112.77222628638573 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566179 1.2929668245661803 1.2929668245661792 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_L1_rootShape" -p "finger_L1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_root34Shape" -p "finger_L1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_root35Shape" -p "finger_L1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_root36Shape" -p "finger_L1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_L1_0_loc" -p "finger_L1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999998046 1.0658141036401503e-14 6.6613381477509392e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013E9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc34Shape" -p "finger_L1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013EA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_0_loc35Shape" -p "finger_L1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013EB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_0_loc36Shape" -p "finger_L1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013EC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc36_0crvShape" -p "finger_L1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013ED";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_0_loc36_1crvShape" -p "finger_L1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013EE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L1_1_loc" -p "finger_L1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013EF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414019505 0 -6.6613381477509392e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc34Shape" -p "finger_L1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_1_loc35Shape" -p "finger_L1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_1_loc36Shape" -p "finger_L1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc36_0crvShape" -p "finger_L1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_1_loc36_1crvShape" -p "finger_L1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L1_2_loc" -p "finger_L1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549590294 -7.1054273576010019e-15 -1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_2_locShape" -p "finger_L1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc34Shape" -p "finger_L1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L1_2_loc35Shape" -p "finger_L1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013F9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L1_2_loc36Shape" -p "finger_L1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013FA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc36_0crvShape" -p "finger_L1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013FB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L1_2_loc36_1crvShape" -p "finger_L1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013FC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L1_blade" -p "finger_L1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013FD";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013FE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970733 0 0
		0 0.25859336491323576 0
		0 0 0
		;
createNode aimConstraint -n "finger_L1_blade_aimConstraint12" -p "finger_L1_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000013FF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_L1_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L1_blade_pointConstraint12" -p "finger_L1_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001400";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_L1_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.5527136788005009e-15 0 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001401";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153216 -28.040620010901364 1.1418187531084816 ;
	setAttr ".r" -type "double3" 5.8484943948555266 9.9768879508731931 54.111347352878482 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106786011 2.6320983106786091 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001402";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001403";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "meta_L0_blade" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001404";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999956 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001405";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.1850323264903016 0 0
		0 0.06167744216343387 0
		0 0 0
		;
createNode aimConstraint -n "meta_L0_blade_aimConstraint12" -p "meta_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001406";
	addAttr -dcb 0 -ci true -sn "w0" -ln "meta_L0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "meta_L0_blade_pointConstraint12" -p "meta_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001407";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "meta_L0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 -7.1054273576010019e-15 3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001408";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058400278 -38.076493243284858 11.714163621936773 ;
	setAttr ".r" -type "double3" -81.595645682431567 -44.654258545702156 89.275820115296398 ;
	setAttr ".s" -type "double3" 3.4032157947041277 3.403215794704114 3.4032157947041233 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001409";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000140A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_L0_root" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000140B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.1840372367976344 -0.30586006047044378 2.7614233959505619 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808449 -71.606679450097857 -133.79382708613443 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661787 1.2929668245661794 1.2929668245661805 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_L0_rootShape" -p "finger_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000140C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_root34Shape" -p "finger_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000140D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_root35Shape" -p "finger_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000140E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_root36Shape" -p "finger_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000140F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_L0_0_loc" -p "finger_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001410";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1 0 4.4408920985006262e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001411";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc34Shape" -p "finger_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001412";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_0_loc35Shape" -p "finger_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001413";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_0_loc36Shape" -p "finger_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001414";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc36_0crvShape" -p "finger_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001415";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_0_loc36_1crvShape" -p "finger_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001416";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L0_1_loc" -p "finger_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001417";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.8044200808092743 -2.8421709430404007e-14 2.2204460492503131e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001418";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc34Shape" -p "finger_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001419";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_1_loc35Shape" -p "finger_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000141A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_1_loc36Shape" -p "finger_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000141B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc36_0crvShape" -p "finger_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000141C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_1_loc36_1crvShape" -p "finger_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000141D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L0_2_loc" -p "finger_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000141E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392368187 2.8421709430404007e-14 -5.3290705182007514e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000141F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc34Shape" -p "finger_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001420";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_L0_2_loc35Shape" -p "finger_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001421";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_L0_2_loc36Shape" -p "finger_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001422";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc36_0crvShape" -p "finger_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001423";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_L0_2_loc36_1crvShape" -p "finger_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001424";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_L0_blade" -p "finger_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001425";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001426";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970722 0 0
		0 0.25859336491323576 0
		0 0 0
		;
createNode aimConstraint -n "finger_L0_blade_aimConstraint12" -p "finger_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001427";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_L0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L0_blade_pointConstraint12" -p "finger_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001428";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_L0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 0 -4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001429";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713119 -27.336008057181211 2.4648652761296894 ;
	setAttr ".r" -type "double3" 9.1654334880191293 22.111176212555293 57.120615095545304 ;
	setAttr ".s" -type "double3" 2.6320983106786104 2.6320983106785998 2.6320983106786047 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000142A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000142B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "thumbRoll_L0_root" -p "meta_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000142C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.7 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21303623709073616 -0.22489125789798692 0.13070337452154135 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848349577 -84.001563523230956 11.009204406913662 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041286 3.4032157947041144 3.4032157947041215 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "thumbRoll";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "sphere";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "thumbRoll_L0_rootShape" -p "thumbRoll_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000142D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumbRoll_L0_root25Shape" -p "thumbRoll_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000142E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumbRoll_L0_root26Shape" -p "thumbRoll_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000142F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumbRoll_L0_root27Shape" -p "thumbRoll_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001430";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumbRoll_L0_sizeRef" -p "thumbRoll_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001431";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.5527136788005009e-15 4.2632564145606011e-14 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205701 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999756 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "thumb_L0_root" -p "thumbRoll_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001432";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 3.5527136788005009e-15 4.9960036108132044e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913069 -43.900240512232436 -37.623269198287794 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511095 0.48936434703511017 0.48936434703511167 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "thumb";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "thumb_L0_rootShape" -p "thumb_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001433";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_root34Shape" -p "thumb_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001434";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_root35Shape" -p "thumb_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001435";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_root36Shape" -p "thumb_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001436";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumb_L0_0_loc" -p "thumb_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001437";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470206 0.0024095775966985755 -3.5527136788005009e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.238425749806054 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 1 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001438";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc34Shape" -p "thumb_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001439";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc35Shape" -p "thumb_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000143A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_0_loc36Shape" -p "thumb_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000143B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc36_0crvShape" -p "thumb_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000143C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_0_loc36_1crvShape" -p "thumb_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000143D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "thumb_L0_1_loc" -p "thumb_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000143E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522321 -9.7699626167013776e-15 1.7763568394002505e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999856 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_1_locShape" -p "thumb_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000143F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc34Shape" -p "thumb_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001440";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc35Shape" -p "thumb_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001441";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_1_loc36Shape" -p "thumb_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001442";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc36_0crvShape" -p "thumb_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001443";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_1_loc36_1crvShape" -p "thumb_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001444";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "thumb_L0_2_loc" -p "thumb_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001445";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510209 1.3322676295501878e-14 1.7763568394002505e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000011 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001446";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc34Shape" -p "thumb_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001447";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc35Shape" -p "thumb_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001448";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_L0_2_loc36Shape" -p "thumb_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001449";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc36_0crvShape" -p "thumb_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000144A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_L0_2_loc36_1crvShape" -p "thumb_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000144B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "thumb_L0_blade" -p "thumb_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000144C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999811 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000144D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.29361860822106656 0 0
		0 0.097872869407022181 0
		0 0 0
		;
createNode aimConstraint -n "thumb_L0_blade_aimConstraint12" -p "thumb_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000144E";
	addAttr -dcb 0 -ci true -sn "w0" -ln "thumb_L0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 0 0 0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_L0_blade_pointConstraint12" -p "thumb_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000144F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_L0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001450";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042876 -7.0737929587543213 17.725867635512856 ;
	setAttr ".r" -type "double3" -124.44302205362676 63.100734454449622 -77.281354162701689 ;
	setAttr ".s" -type "double3" 2.0434672163157259 2.0434672163157197 2.0434672163157264 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001451";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001452";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "arm_L0_crv" -p "arm_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001453";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200507 -11.862061807473026 1.1564412205648551 ;
	setAttr ".r" -type "double3" -2.1534408611045617 -4.195937079336705 45.43774004929832 ;
	setAttr ".s" -type "double3" 1.0495082267377438 1.0495082267377394 1.0495082267377407 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001454";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001455";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "shoulder_L0_blade" -p "shoulder_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001456";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 89.999999999999886 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999667 0.99999999999999767 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001457";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000131 0 0
		0 0.20000000000000043 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint12" -p "shoulder_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001458";
	addAttr -dcb 0 -ci true -sn "w0" -ln "shoulder_L0_tipW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 90 179.9999999999994 180.0000000000002 ;
	setAttr ".rsrr" -type "double3" 23.386262286472945 122.5386402183822 110.03040021520766 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint12" -p "shoulder_L0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001459";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_L0_rootW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -2.4286128663675299e-17 -1.3877787807814457e-17 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000145A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509833 0.0092761897382757398 0.11673327753265013 ;
	setAttr ".r" -type "double3" -90.803889228153793 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377414 1.0495082267377365 1.049508226737736 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000145B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000145C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "neck_C0_root" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000145D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "headrefarray" -ln "headrefarray" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "maxsquash" -ln "maxsquash" -dv 0.5 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "softness" -ln "softness" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "division" -ln "division" -dv 3 -min 3 -at "long";
	addAttr -ci true -sn "tangentControls" -ln "tangentControls" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "chickenStyleIK" -ln "chickenStyleIK" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "IKWorldOri" -ln "IKWorldOri" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.266742961064848 0.53748181085566238 -4.2147015411630268e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 180 7.0622500768802529e-31 89.999999999999986 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.5983922810424368 0.59839228104243269 0.59839228104243281 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "neck_ik_01";
	setAttr ".comp_name" -type "string" "neck";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".headrefarray" -type "string" "spine_C0_eff,body_C0_root,local_C0_root,global_C0_root";
	setAttr ".ikrefarray" -type "string" "spine_C0_eff,body_C0_root,local_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "neck_C0_rootShape" -p "neck_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000145E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_root34Shape" -p "neck_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000145F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_root35Shape" -p "neck_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001460";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_root36Shape" -p "neck_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001461";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "neck_C0_neck" -p "neck_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001462";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.66811733981640997 2.467494625957773 1.5382908879615304e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999567 0.99999999999999623 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001463";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_neck34Shape" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001464";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_neck35Shape" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001465";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_neck36Shape" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001466";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_neck36_0crvShape" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001467";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_neck36_1crvShape" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001468";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "neck_C0_head" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001469";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.7755575615628914e-17 0.10000000000006182 1.2246467991476512e-17 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_headShape" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000146A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_head34Shape" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000146B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_head35Shape" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000146C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_head36Shape" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000146D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_head36_0crvShape" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000146E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_head36_1crvShape" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000146F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "neck_C0_eff" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001470";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1934897514720433e-15 3.0746209978281591 2.3592239273284182e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001471";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_eff34Shape" -p "neck_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001472";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_eff35Shape" -p "neck_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001473";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_eff36Shape" -p "neck_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001474";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_eff36_0crvShape" -p "neck_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001475";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_eff36_1crvShape" -p "neck_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001476";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "faceUI_C0_root" -p "neck_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001477";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.9567680809018384e-15 1.360468176387009 7.2046004192796093e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "faceUI";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "faceUI_C0_rootShape" -p "faceUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001478";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "faceUI_C0_root34Shape" -p "faceUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001479";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "faceUI_C0_root35Shape" -p "faceUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000147A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "faceUI_C0_root36Shape" -p "faceUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000147B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "faceUI_C0_sizeRef" -p "faceUI_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000147C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7538799546502086 -7.1054273576010019e-15 -3.8943958161623356e-16 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.7538799546502166 1.7538799546502193 1.75387995465021 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "mouth_C0_root" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000147D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 9.0205620750793969e-16 -3.5527136788005009e-14 1.7723706024530678e-17 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95913545105009501 0.95913545105009312 0.95913545105009046 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "mouth_01";
	setAttr ".comp_name" -type "string" "mouth";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "mouth_C0_rootShape" -p "mouth_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000147E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_root34Shape" -p "mouth_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000147F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_root35Shape" -p "mouth_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001480";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_root36Shape" -p "mouth_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001481";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "mouth_C0_rotcenter" -p "mouth_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001482";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.7644326417193498e-16 -0.62123610319591904 1.8022590188867551 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999589 0.99999999999999989 0.99999999999999656 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001483";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter34Shape" -p "mouth_C0_rotcenter";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001484";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter35Shape" -p "mouth_C0_rotcenter";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001485";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_rotcenter36Shape" -p "mouth_C0_rotcenter";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001486";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter36_0crvShape" -p "mouth_C0_rotcenter";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001487";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_rotcenter36_1crvShape" -p "mouth_C0_rotcenter";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001488";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "mouth_C0_lipup" -p "mouth_C0_rotcenter";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001489";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.9761536313416156e-17 0.12388352783447942 0.23628786867351437 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000148A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup34Shape" -p "mouth_C0_lipup";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000148B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_lipup35Shape" -p "mouth_C0_lipup";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000148C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_lipup36Shape" -p "mouth_C0_lipup";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000148D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup36_0crvShape" -p "mouth_C0_lipup";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000148E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_lipup36_1crvShape" -p "mouth_C0_lipup";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000148F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_lipup";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001490";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904467e-15 -30.115037669761495 -2.1322109539326477 ;
	setAttr ".s" -type "double3" 1.8286050763007577 1.8286050763007604 1.8286050763007606 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001491";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001492";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_liplow" -p "mouth_C0_rotcenter";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001493";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.8775621283846274e-17 -0.14678247393470301 0.18194531820222304 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001494";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow34Shape" -p "mouth_C0_liplow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001495";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_liplow35Shape" -p "mouth_C0_liplow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001496";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_liplow36Shape" -p "mouth_C0_liplow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001497";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow36_0crvShape" -p "mouth_C0_liplow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001498";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_liplow36_1crvShape" -p "mouth_C0_liplow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001499";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_liplow";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000149A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200162e-15 -29.844371667992309 -2.0778684034613559 ;
	setAttr ".s" -type "double3" 1.8286050763007577 1.8286050763007604 1.8286050763007606 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000149B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000149C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_jaw" -p "mouth_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000149D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0917243463457497e-15 -1.4111110000774936 2.0692083234973251 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999589 0.99999999999999989 0.99999999999999656 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000149E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw34Shape" -p "mouth_C0_jaw";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000149F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "mouth_C0_jaw35Shape" -p "mouth_C0_jaw";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "mouth_C0_jaw36Shape" -p "mouth_C0_jaw";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw36_0crvShape" -p "mouth_C0_jaw";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "mouth_C0_jaw36_1crvShape" -p "mouth_C0_jaw";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_root" -p "mouth_C0_jaw";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.2909663197644073e-16 0.86108709817294482 -1.6295011454214561 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.17172273903700599 0.17172273903700588 0.17172273903700599 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "tongue";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "tongue_C0_rootShape" -p "tongue_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_root34Shape" -p "tongue_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_root35Shape" -p "tongue_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_root36Shape" -p "tongue_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "tongue_C0_0_loc" -p "tongue_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014A9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0143079180641801e-16 -2.8421709430404007e-14 1.5794817263027459 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000018 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_0_locShape" -p "tongue_C0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014AA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc34Shape" -p "tongue_C0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014AB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc35Shape" -p "tongue_C0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014AC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_0_loc36Shape" -p "tongue_C0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014AD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc36_0crvShape" -p "tongue_C0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014AE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_0_loc36_1crvShape" -p "tongue_C0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014AF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_1_loc" -p "tongue_C0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.2170680441440669e-16 -0.16556620751518381 1.5794817263027463 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999944 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc34Shape" -p "tongue_C0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc35Shape" -p "tongue_C0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_1_loc36Shape" -p "tongue_C0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc36_0crvShape" -p "tongue_C0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_1_loc36_1crvShape" -p "tongue_C0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_2_loc" -p "tongue_C0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.3944831544645201e-16 -0.31043663909051133 1.5794817263027365 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc34Shape" -p "tongue_C0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014B9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc35Shape" -p "tongue_C0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014BA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_2_loc36Shape" -p "tongue_C0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014BB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc36_0crvShape" -p "tongue_C0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014BC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_2_loc36_1crvShape" -p "tongue_C0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014BD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_3_loc" -p "tongue_C0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014BE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0903429653440903e-16 -0.062087327818346694 1.5794817263027552 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 0.99999999999999878 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014BF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc34Shape" -p "tongue_C0_3_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc35Shape" -p "tongue_C0_3_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "tongue_C0_3_loc36Shape" -p "tongue_C0_3_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc36_0crvShape" -p "tongue_C0_3_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "tongue_C0_3_loc36_1crvShape" -p "tongue_C0_3_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "tongue_C0_blade" -p "tongue_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C5";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 1.0000000000000018 1.0000000000000013 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "tongue_C0_bladeShape" -p "tongue_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.1030336434222036 0 0
		0 0.034344547807401198 0
		0 0 0
		;
createNode aimConstraint -n "tongue_C0_blade_aimConstraint12" -p "tongue_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C7";
	addAttr -dcb 0 -ci true -sn "w0" -ln "tongue_C0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -1.0309989471807226e-12 -89.999999999998963 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "tongue_C0_blade_pointConstraint12" -p "tongue_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tongue_C0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "tongue_C0_crv" -p "tongue_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014C9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046799e-14 -175.06339877760738 -3.1060024283289889 ;
	setAttr ".s" -type "double3" 10.648590201596397 10.648590201596416 10.648590201596406 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014CA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014CB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv" -p "mouth_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014CC";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757836e-15 -30.612390245122914 -0.093664066372369542 ;
	setAttr ".s" -type "double3" 1.8286050763007495 1.8286050763007591 1.8286050763007526 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014CD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014CE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "mouth_C0_crv12" -p "mouth_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014CF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757836e-15 -30.612390245122914 -0.093664066372369542 ;
	setAttr ".s" -type "double3" 1.8286050763007495 1.8286050763007591 1.8286050763007526 ;
createNode nurbsCurve -n "mouth_C0_crv12Shape" -p "mouth_C0_crv12";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv12ShapeOrig" -p "mouth_C0_crv12";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "eyeslook_C0_root" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.26139926662895 0.71045535901631496 -3.3130608822386173e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932599 1.6711445512932537 1.6711445512932519 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "eyeslook";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "square";
	setAttr ".ikrefarray" -type "string" "neck_C0_head,local_C0_root,body_C0_root,spine_C0_eff";
createNode nurbsCurve -n "eyeslook_C0_rootShape" -p "eyeslook_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eyeslook_C0_root34Shape" -p "eyeslook_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eyeslook_C0_root35Shape" -p "eyeslook_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eyeslook_C0_root36Shape" -p "eyeslook_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "eyeslook_C0_sizeRef" -p "eyeslook_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.6607527914310027e-16 1.4210854715202004e-14 1.0495082267377378 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377327 1.0495082267377394 1.0495082267377347 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "eye_R0_root" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -k true -sn "upVectorDirection" -ln "upVectorDirection" -min 0 
		-max 2 -en "X:Y:Z" -at "enum";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.4961368484464235 0.70921581084613194 -0.51425464314724312 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999778 0.99999999999999944 -0.99999999999999811 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyeslook_C0_root";
createNode nurbsCurve -n "eye_R0_rootShape" -p "eye_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014D9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_root34Shape" -p "eye_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014DA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_root35Shape" -p "eye_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014DB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_root36Shape" -p "eye_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014DC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "eye_R0_look" -p "eye_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014DD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.5511151231257827e-16 0 3.769784225717923 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999978 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014DE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_R0_look34Shape" -p "eye_R0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014DF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_R0_look35Shape" -p "eye_R0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_R0_look36Shape" -p "eye_R0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "eye_R0_look36_0crvShape" -p "eye_R0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "eye_R0_look36_1crvShape" -p "eye_R0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "eye_R0_crv" -p "eye_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723901 -30.07064453632362 -1.5859733749936764 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.7538799546502168 1.7538799546502193 -1.7538799546502111 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "eye_L0_root" -p "neck_C0_head";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -k true -sn "upVectorDirection" -ln "upVectorDirection" -min 0 
		-max 2 -en "X:Y:Z" -at "enum";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.4961368484464219 0.70921581084613194 0.51425464314724101 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "eye_01";
	setAttr ".comp_name" -type "string" "eye";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "faceUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr -k on ".upVectorDirection" 1;
	setAttr ".ikrefarray" -type "string" "eyeslook_C0_root";
createNode nurbsCurve -n "eye_L0_rootShape" -p "eye_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_root34Shape" -p "eye_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014E9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_root35Shape" -p "eye_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014EA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_root36Shape" -p "eye_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014EB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "eye_L0_look" -p "eye_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1102230246251565e-16 -3.5527136788005009e-15 3.7697842257179142 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999578 0.99999999999999956 0.999999999999997 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014ED";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "eye_L0_look34Shape" -p "eye_L0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014EE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "eye_L0_look35Shape" -p "eye_L0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014EF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "eye_L0_look36Shape" -p "eye_L0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "eye_L0_look36_0crvShape" -p "eye_L0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "eye_L0_look36_1crvShape" -p "eye_L0_look";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "eye_L0_crv" -p "eye_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314724501 -30.07064453632362 -1.5859733749936711 ;
	setAttr ".s" -type "double3" 1.7538799546502135 1.7538799546502195 1.7538799546502075 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "neck_C0_tan1" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.097870096211562868 -0.34322132772766167 -2.0300963192815689e-17 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan1";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape4" -p "neck_C0_tan1";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape5" -p "neck_C0_tan1";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014F9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape6" -p "neck_C0_tan1";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014FA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_tan24_0crvShape1" -p "neck_C0_tan1";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014FB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_tan24_1crvShape1" -p "neck_C0_tan1";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014FC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "neck_C0_head_crv" -p "neck_C0_neck";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014FD";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.08983652654724919 -29.261428725477415 -4.0684386981538041e-15 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502162 1.7538799546502186 1.7538799546502084 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014FE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000014FF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 2 0 no 3
		3 0 1 2
		3
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "neck_C0_tan0" -p "neck_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001500";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.076579783198171381 0.45329667709497912 3.8508704761367353e-17 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999567 0.99999999999999623 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001501";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "neck_C0_tanShape1" -p "neck_C0_tan0";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001502";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "neck_C0_tanShape2" -p "neck_C0_tan0";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001503";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "neck_C0_tanShape3" -p "neck_C0_tan0";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001504";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_tan23_0crvShape0" -p "neck_C0_tan0";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001505";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "neck_C0_tan23_1crvShape0" -p "neck_C0_tan0";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001506";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "neck_C0_blade" -p "neck_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001507";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 360 -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932497 1.6711445512932441 1.6711445512932424 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001508";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.35903536862546209 0 0
		0 0.11967845620848737 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint12" -p "neck_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001509";
	addAttr -dcb 0 -ci true -sn "w0" -ln "neck_C0_tan0W0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".o" -type "double3" 360 0 359.99999999999972 ;
	setAttr ".rsrr" -type "double3" 540 3.3898800369025213e-29 459.58898802263559 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint12" -p "neck_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000150A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "neck_C0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.1102230246251565e-16 -3.5527136788005009e-15 7.8886090522101181e-31 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000150B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326916114 -26.793934099519536 -3.9146096093576495e-15 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502157 1.753879954650212 1.7538799546502009 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000150C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000150D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "shoulder_R0_root" -p "spine_C0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001ADD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "refArray" -ln "refArray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7395848890977383 -0.016853043661002653 1.2305275670526359 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184621 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 1.0000000000000031 -0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "shoulder_01";
	setAttr ".comp_name" -type "string" "shoulder";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".refArray" -type "string" "shoulder_R0_root,local_C0_root,body_C0_root,spine_C0_eff,global_C0_root";
createNode nurbsCurve -n "shoulder_R0_rootShape" -p "shoulder_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001ADC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_R0_root1Shape" -p "shoulder_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001AE2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_R0_root2Shape" -p "shoulder_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001AE8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_R0_root3Shape" -p "shoulder_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001AF2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "shoulder_R0_tip" -p "shoulder_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001AFB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.73252883751281317 -1.1969123199874911 -1.054851141983852 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 0.99999999999999567 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001AFA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip1Shape" -p "shoulder_R0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B00";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "shoulder_R0_tip2Shape" -p "shoulder_R0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B06";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "shoulder_R0_tip3Shape" -p "shoulder_R0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B10";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip3_0crvShape" -p "shoulder_R0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B16";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "shoulder_R0_tip3_1crvShape" -p "shoulder_R0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B1C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "arm_R0_root" -p "shoulder_R0_tip";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B49";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "ikTR" -ln "ikTR" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorIK" -ln "mirrorIK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraTweak" -ln "extraTweak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-14 1.1102230246251565e-15 4.4408920985006262e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.675418190965729 42.27996809908511 -5.1745556617542672 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999811 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "arm_2jnt_01";
	setAttr ".comp_name" -type "string" "arm";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "shoulder_01";
	setAttr ".ui_host" -type "string" "armUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "arm_R0_rootShape" -p "arm_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B48";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_root1Shape" -p "arm_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B4E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_root2Shape" -p "arm_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B54";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_root3Shape" -p "arm_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B5E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "arm_R0_elbow" -p "arm_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B69";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9643359867232952 1.5987211554602254e-14 0.10464692943620424 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784276 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999889 1.0000000000000009 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B68";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow1Shape" -p "arm_R0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B6E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_elbow2Shape" -p "arm_R0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B74";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_elbow3Shape" -p "arm_R0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B7E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow3_0crvShape" -p "arm_R0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B84";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_elbow3_1crvShape" -p "arm_R0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B8A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "arm_R0_wrist" -p "arm_R0_elbow";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B9B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.7578837198083499 -3.5527136788005009e-15 -0.11960611218230574 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1.0000000000000007 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B9A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist1Shape" -p "arm_R0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BA0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_wrist2Shape" -p "arm_R0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BA6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_wrist3Shape" -p "arm_R0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BB0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist3_0crvShape" -p "arm_R0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BB6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_wrist3_1crvShape" -p "arm_R0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BBC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "arm_R0_eff" -p "arm_R0_wrist";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BCD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308126 1.4210854715202004e-14 4.9960036108132044e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BCC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "arm_R0_eff1Shape" -p "arm_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BD2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "arm_R0_eff2Shape" -p "arm_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BD8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "arm_R0_eff3Shape" -p "arm_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BE2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_eff3_0crvShape" -p "arm_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BE8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "arm_R0_eff3_1crvShape" -p "arm_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BEE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "armUI_R0_root" -p "arm_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C12";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2124561875008071 0.5607311476451784 -0.29276117198398904 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "armUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "armUI_R0_rootShape" -p "armUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C11";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "armUI_R0_root1Shape" -p "armUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C17";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "armUI_R0_root2Shape" -p "armUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C1D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "armUI_R0_root3Shape" -p "armUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C27";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "armUI_R0_sizeRef" -p "armUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C30";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.11347623085809122 -0.027001577630494822 1.0430060296210657 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145882058 3.319080497369574 45.379324150247747 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377434 1.0495082267377382 1.0495082267377402 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "meta_R0_root" -p "arm_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C64";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "intScale" -ln "intScale" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intRotation" -ln "intRotation" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "intTranslation" -ln "intTranslation" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0556240028445683 -0.075350553640982199 0.35296225288850197 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008867099 93.717381466937184 86.467960127477866 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716947 0.30838721081716924 0.30838721081716963 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "meta_01";
	setAttr ".comp_name" -type "string" "meta";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "meta_R0_rootShape" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C63";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_root1Shape" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C69";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_root2Shape" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C6F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_root3Shape" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C79";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "meta_R0_0_loc" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C82";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617074 2.1316282072803006e-14 -2.5757174171303632e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999833 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C81";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc1Shape" -p "meta_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C87";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_0_loc2Shape" -p "meta_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C8D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_0_loc3Shape" -p "meta_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C97";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc3_0crvShape" -p "meta_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C9D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_0_loc3_1crvShape" -p "meta_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CA3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "meta_R0_1_loc" -p "meta_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CB4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618495 2.1316282072803006e-14 1.6875389974302379e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000011 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CB3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc1Shape" -p "meta_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CB9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_1_loc2Shape" -p "meta_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CBF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_1_loc3Shape" -p "meta_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CC9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc3_0crvShape" -p "meta_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CCF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_1_loc3_1crvShape" -p "meta_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CD5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "meta_R0_2_loc" -p "meta_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CE6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618961 -7.1054273576010019e-15 -2.042810365310288e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999856 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CE5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc1Shape" -p "meta_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CEB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "meta_R0_2_loc2Shape" -p "meta_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CF1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "meta_R0_2_loc3Shape" -p "meta_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001CFB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc3_0crvShape" -p "meta_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D01";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "meta_R0_2_loc3_1crvShape" -p "meta_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D07";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R3_root" -p "meta_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D34";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 3 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.27518484001102839 -0.17360051577774982 2.4946799341790546 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.417331987858967 -68.587073855452644 -5.8163374181179597 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566181 1.2929668245661785 1.2929668245661803 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_R3_rootShape" -p "finger_R3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D33";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_root1Shape" -p "finger_R3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D39";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_root2Shape" -p "finger_R3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D3F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_root3Shape" -p "finger_R3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D49";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_R3_0_loc" -p "finger_R3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D52";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830561401 1.4210854715202004e-14 -7.5495165674510645e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D51";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc1Shape" -p "finger_R3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D57";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_0_loc2Shape" -p "finger_R3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D5D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_0_loc3Shape" -p "finger_R3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D67";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc3_0crvShape" -p "finger_R3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D6D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_0_loc3_1crvShape" -p "finger_R3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D73";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R3_1_loc" -p "finger_R3_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D84";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070876839 -2.1316282072803006e-14 2.886579864025407e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999911 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D83";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc1Shape" -p "finger_R3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D89";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_1_loc2Shape" -p "finger_R3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D8F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_1_loc3Shape" -p "finger_R3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D99";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc3_0crvShape" -p "finger_R3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D9F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_1_loc3_1crvShape" -p "finger_R3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DA5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R3_2_loc" -p "finger_R3_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DB6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259193901 3.5527136788005009e-15 -1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999911 1.0000000000000011 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DB5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc1Shape" -p "finger_R3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DBB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R3_2_loc2Shape" -p "finger_R3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DC1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R3_2_loc3Shape" -p "finger_R3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DCB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc3_0crvShape" -p "finger_R3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DD1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R3_2_loc3_1crvShape" -p "finger_R3_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DD7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R3_blade" -p "finger_R3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DE8";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DE7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970855 0 0
		0 0.2585933649132362 0
		0 0 0
		;
createNode aimConstraint -n "finger_R3_blade_aimConstraint1" -p "finger_R3_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DED";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_R3_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R3_blade_pointConstraint1" -p "finger_R3_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001DEE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_R3_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 0 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DF1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.0248424695213565 -28.809690931729733 1.0272061103662709 ;
	setAttr ".r" -type "double3" 7.960458382116081 165.90486329417379 51.541438876192856 ;
	setAttr ".s" -type "double3" 2.9365002064367296 2.9365002064367145 -2.9365002064367198 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DF0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DF9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_R2_root" -p "meta_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E04";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 2 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21404201232122655 -0.17620518664705287 2.8414845756647367 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121375536 -82.086889237978951 -14.829711404951277 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661787 1.292966824566177 1.2929668245661798 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_R2_rootShape" -p "finger_R2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E03";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_root1Shape" -p "finger_R2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E09";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_root2Shape" -p "finger_R2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E0F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_root3Shape" -p "finger_R2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E19";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_R2_0_loc" -p "finger_R2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E22";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.9450138721740613 7.1054273576010019e-15 3.1086244689504383e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000018 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E21";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc1Shape" -p "finger_R2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E27";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_0_loc2Shape" -p "finger_R2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E2D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_0_loc3Shape" -p "finger_R2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E37";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc3_0crvShape" -p "finger_R2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E3D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_0_loc3_1crvShape" -p "finger_R2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E43";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R2_1_loc" -p "finger_R2_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E54";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587175689 0 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999944 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E53";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc1Shape" -p "finger_R2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E59";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_1_loc2Shape" -p "finger_R2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E5F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_1_loc3Shape" -p "finger_R2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E69";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc3_0crvShape" -p "finger_R2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E6F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_1_loc3_1crvShape" -p "finger_R2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E75";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R2_2_loc" -p "finger_R2_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E86";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674915355 -1.0658141036401503e-14 -1.5543122344752192e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_2_locShape" -p "finger_R2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E85";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc1Shape" -p "finger_R2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E8B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R2_2_loc2Shape" -p "finger_R2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E91";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R2_2_loc3Shape" -p "finger_R2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E9B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc3_0crvShape" -p "finger_R2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EA1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R2_2_loc3_1crvShape" -p "finger_R2_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EA7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R2_blade" -p "finger_R2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EB8";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000018 1.0000000000000009 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EB7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970722 0 0
		0 0.25859336491323576 0
		0 0 0
		;
createNode aimConstraint -n "finger_R2_blade_aimConstraint1" -p "finger_R2_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EBD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_R2_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R2_blade_pointConstraint1" -p "finger_R2_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EBE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_R2_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 0 -2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R2_crv" -p "finger_R2_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EC1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.9134934957969083 -28.773528334353223 1.6954937401389911 ;
	setAttr ".r" -type "double3" 0.44511028476874986 178.34761807162994 49.873977108200364 ;
	setAttr ".s" -type "double3" 2.9365002064367287 2.9365002064367149 -2.9365002064367212 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EC0";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EC9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_R1_root" -p "meta_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ED4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -dv 1 -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.0077643969605984964 -0.12358406696707647 2.948395242154584 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870121 -79.977014017423699 -112.77222628638675 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661792 1.2929668245661801 1.2929668245661792 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_R1_rootShape" -p "finger_R1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ED3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_root1Shape" -p "finger_R1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ED9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_root2Shape" -p "finger_R1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EDF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_root3Shape" -p "finger_R1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EE9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_R1_0_loc" -p "finger_R1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EF2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999998046 7.1054273576010019e-15 1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EF1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc1Shape" -p "finger_R1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EF7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_0_loc2Shape" -p "finger_R1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EFD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_0_loc3Shape" -p "finger_R1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F07";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc3_0crvShape" -p "finger_R1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F0D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_0_loc3_1crvShape" -p "finger_R1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F13";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R1_1_loc" -p "finger_R1_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F24";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414019416 0 -1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_1_locShape" -p "finger_R1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F23";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc1Shape" -p "finger_R1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F29";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_1_loc2Shape" -p "finger_R1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F2F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_1_loc3Shape" -p "finger_R1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F39";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc3_0crvShape" -p "finger_R1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F3F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_1_loc3_1crvShape" -p "finger_R1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F45";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R1_2_loc" -p "finger_R1_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F56";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549590294 -7.1054273576010019e-15 -4.4408920985006262e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F55";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc1Shape" -p "finger_R1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F5B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R1_2_loc2Shape" -p "finger_R1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F61";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R1_2_loc3Shape" -p "finger_R1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F6B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc3_0crvShape" -p "finger_R1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F71";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R1_2_loc3_1crvShape" -p "finger_R1_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F77";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R1_blade" -p "finger_R1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F88";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F87";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970744 0 0
		0 0.25859336491323581 0
		0 0 0
		;
createNode aimConstraint -n "finger_R1_blade_aimConstraint1" -p "finger_R1_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F8D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_R1_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R1_blade_pointConstraint1" -p "finger_R1_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F8E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_R1_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 -3.5527136788005009e-15 0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F91";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1907708478594596 -28.056675303491726 2.0738525271369435 ;
	setAttr ".r" -type "double3" 173.62863854098066 -9.6698039081387552 -123.74299621081478 ;
	setAttr ".s" -type "double3" 2.9365002064367278 2.9365002064367149 -2.9365002064367229 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F90";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F99";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "meta_R0_blade" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D18";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999967 0.99999999999999833 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D17";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030169 0 0
		0 0.061677442163433897 0
		0 0 0
		;
createNode aimConstraint -n "meta_R0_blade_aimConstraint1" -p "meta_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D1D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "meta_R0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "meta_R0_blade_pointConstraint1" -p "meta_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D1E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "meta_R0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr -k on ".w0";
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D21";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.886333676656295 -37.638445297030756 7.7419750558232936 ;
	setAttr ".r" -type "double3" -98.191955782300724 42.553308438629486 -90.189013632151685 ;
	setAttr ".s" -type "double3" 3.7967973472544241 3.7967973472544054 -3.7967973472544174 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D20";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "finger_R0_root" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FA4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.18403723679763528 -0.30586006047042247 2.7614233959505654 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808483 -71.606679450098127 -133.79382708613537 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661796 1.2929668245661792 1.2929668245661805 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "finger";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "finger_R0_rootShape" -p "finger_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FA3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_root1Shape" -p "finger_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FA9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_root2Shape" -p "finger_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FAF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_root3Shape" -p "finger_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FB9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "finger_R0_0_loc" -p "finger_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FC2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999999645 7.1054273576010019e-15 4.8849813083506888e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FC1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc1Shape" -p "finger_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FC7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_0_loc2Shape" -p "finger_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FCD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_0_loc3Shape" -p "finger_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FD7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc3_0crvShape" -p "finger_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FDD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_0_loc3_1crvShape" -p "finger_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FE3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R0_1_loc" -p "finger_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FF4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080927874 -2.8421709430404007e-14 1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FF3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc1Shape" -p "finger_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FF9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_1_loc2Shape" -p "finger_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FFF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_1_loc3Shape" -p "finger_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002009";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc3_0crvShape" -p "finger_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000200F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_1_loc3_1crvShape" -p "finger_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002015";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R0_2_loc" -p "finger_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002026";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392368276 2.4868995751603507e-14 -6.6613381477509392e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 1 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_2_locShape" -p "finger_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002025";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc1Shape" -p "finger_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000202B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "finger_R0_2_loc2Shape" -p "finger_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002031";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "finger_R0_2_loc3Shape" -p "finger_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000203B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc3_0crvShape" -p "finger_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002041";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "finger_R0_2_loc3_1crvShape" -p "finger_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002047";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "finger_R0_blade" -p "finger_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002058";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 0.99999999999999989 0.99999999999999967 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002057";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970777 0 0
		0 0.25859336491323592 0
		0 0 0
		;
createNode aimConstraint -n "finger_R0_blade_aimConstraint1" -p "finger_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000205D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "finger_R0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R0_blade_pointConstraint1" -p "finger_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000205E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "finger_R0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R0_crv" -p "finger_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002061";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.7131175381076265 -27.289958881490648 3.8825927793929345 ;
	setAttr ".r" -type "double3" 169.83741731198728 -21.673598392836581 -120.62575610805659 ;
	setAttr ".s" -type "double3" 2.9365002064367256 2.9365002064367105 -2.9365002064367181 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002060";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002069";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "thumbRoll_R0_root" -p "meta_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002074";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 0.7 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21303623709073616 -0.22489125789797271 0.13070337452154224 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848361301 -84.001563523230899 11.00920440691737 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.403215794704129 3.4032157947041148 3.4032157947041215 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "thumbRoll";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "sphere";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "thumbRoll_R0_rootShape" -p "thumbRoll_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002073";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumbRoll_R0_root1Shape" -p "thumbRoll_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002079";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumbRoll_R0_root2Shape" -p "thumbRoll_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000207F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumbRoll_R0_root3Shape" -p "thumbRoll_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002089";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumbRoll_R0_sizeRef" -p "thumbRoll_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002092";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-15 8.5265128291212022e-14 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205701 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999745 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "thumb_R0_root" -p "thumbRoll_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020C6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "mode" -ln "mode" -min 0 -at "long";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "neutralpose" -ln "neutralpose" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.6645352591003757e-15 1.7763568394002505e-15 8.3266726846886741e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631912783 -43.900240512234021 -37.623269198285833 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511089 0.48936434703511006 0.4893643470351115 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "chain_01";
	setAttr ".comp_name" -type "string" "thumb";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "thumb_R0_rootShape" -p "thumb_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020C5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_root1Shape" -p "thumb_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020CB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_root2Shape" -p "thumb_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020D1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_root3Shape" -p "thumb_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020DB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "thumb_R0_0_loc" -p "thumb_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020E4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470561 0.0024095775966932464 -3.5527136788005009e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.238425749806038 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 1.0000000000000002 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020E3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc1Shape" -p "thumb_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020E9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc2Shape" -p "thumb_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020EF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_0_loc3Shape" -p "thumb_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020F9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc3_0crvShape" -p "thumb_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B000020FF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_0_loc3_1crvShape" -p "thumb_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002105";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "thumb_R0_1_loc" -p "thumb_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002116";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522143 -8.8817841970012523e-15 2.1316282072803006e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999845 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002115";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc1Shape" -p "thumb_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000211B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc2Shape" -p "thumb_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002121";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_1_loc3Shape" -p "thumb_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000212B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc3_0crvShape" -p "thumb_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002131";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_1_loc3_1crvShape" -p "thumb_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002137";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "thumb_R0_2_loc" -p "thumb_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002148";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510387 1.2434497875801753e-14 1.7763568394002505e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000013 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002147";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc1Shape" -p "thumb_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000214D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc2Shape" -p "thumb_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002153";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "thumb_R0_2_loc3Shape" -p "thumb_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000215D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc3_0crvShape" -p "thumb_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002163";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "thumb_R0_2_loc3_1crvShape" -p "thumb_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002169";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "thumb_R0_blade" -p "thumb_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000217A";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.999999999999998 0.99999999999999989 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002179";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.2936186082210665 0 0
		0 0.097872869407022167 0
		0 0 0
		;
createNode aimConstraint -n "thumb_R0_blade_aimConstraint1" -p "thumb_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000217F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "thumb_R0_0_locW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 3.3116584830377592e-16 2.3654202254571168e-13 0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint1" -p "thumb_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002180";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "thumb_R0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 -1.7763568394002505e-15 0 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_R0_crv" -p "thumb_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002183";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.989767939712502 -5.0796963896103877 18.264826945284756 ;
	setAttr ".r" -type "double3" -53.301741364243192 -64.884388710150645 100.03531243731047 ;
	setAttr ".s" -type "double3" 2.2797939872582957 2.279793987258286 -2.2797939872582949 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002182";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000218B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "arm_R0_crv" -p "arm_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BFF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.2689841231008856 -11.711234327980664 1.382453511211049 ;
	setAttr ".r" -type "double3" 2.1534408611045528 175.80406292066326 47.57985917700509 ;
	setAttr ".s" -type "double3" 1.1708837439578212 1.1708837439578157 -1.1708837439578172 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001BFE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C07";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "shoulder_R0_blade" -p "shoulder_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B2D";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv -90.000000000000028 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999623 0.99999999999999822 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B2C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000131 0 0
		0 0.20000000000000043 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint1" -p "shoulder_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B32";
	addAttr -dcb 0 -ci true -sn "w0" -ln "shoulder_R0_tipW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -134.47356376850615 36.932309958916775 -58.532723544020179 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint1" -p "shoulder_R0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B33";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "shoulder_R0_rootW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -4.3368086899420177e-17 4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B36";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509833 0.0092761897382764701 1.2305275670526363 ;
	setAttr ".r" -type "double3" 90.803889228153778 -89.999999999999929 0 ;
	setAttr ".s" -type "double3" 1.1708837439578181 1.1708837439578128 -1.1708837439578124 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B35";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B3E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "spine_C0_blade" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001610";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999967 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001611";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.30713489785446296 0 0
		0 0.10237829928482099 0
		0 0 0
		;
createNode aimConstraint -n "spine_C0_blade_aimConstraint12" -p "spine_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001612";
	addAttr -dcb 0 -ci true -sn "w0" -ln "spine_C0_effW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".wut" 2;
	setAttr -k on ".w0";
createNode pointConstraint -n "spine_C0_blade_pointConstraint12" -p "spine_C0_blade";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001613";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine_C0_rootW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 2.7755575615628914e-17 -6.1629758220391547e-33 ;
	setAttr -k on ".w0";
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001614";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690751 0.19144303592045878 -4.2508893276606341e-17 ;
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.04950822673774 1.0495082267377389 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001615";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001616";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "leg_L0_root" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001617";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraTweak" -ln "extraTweak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.5454197224031614 -0.0021808421464679295 -0.99940162423937329 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.2218283623593464 0.29314386227018263 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999833 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_2jnt_01";
	setAttr ".comp_name" -type "string" "leg";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "legUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "leg_L0_rootShape" -p "leg_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001618";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_root34Shape" -p "leg_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001619";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_root35Shape" -p "leg_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000161A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_root36Shape" -p "leg_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000161B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "leg_L0_knee" -p "leg_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000161C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303978 0.38838644346805856 -2.55351295663786e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000009 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000161D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_knee34Shape" -p "leg_L0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000161E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_knee35Shape" -p "leg_L0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000161F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_knee36Shape" -p "leg_L0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001620";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_knee36_0crvShape" -p "leg_L0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001621";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_knee36_1crvShape" -p "leg_L0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001622";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "leg_L0_ankle" -p "leg_L0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001623";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3115525930770258e-15 -4.0510958150502328 -0.74630601922779827 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999878 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001624";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle34Shape" -p "leg_L0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001625";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_ankle35Shape" -p "leg_L0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001626";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_ankle36Shape" -p "leg_L0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001627";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle36_0crvShape" -p "leg_L0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001628";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_ankle36_1crvShape" -p "leg_L0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001629";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "leg_L0_eff" -p "leg_L0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000162A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-16 2.2204460492503131e-15 2.1377206638691328 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000049 0.99999999999999922 1.0000000000000036 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000162B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_L0_eff34Shape" -p "leg_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000162C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_L0_eff35Shape" -p "leg_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000162D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_L0_eff36Shape" -p "leg_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000162E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_eff36_0crvShape" -p "leg_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000162F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_L0_eff36_1crvShape" -p "leg_L0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001630";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_root" -p "leg_L0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001631";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.2204460492503131e-16 8.8817841970012523e-16 -3.3306690738754696e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426136 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518529 0.9997975226851824 0.99979752268518163 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "foot";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "leg_2jnt_01";
	setAttr ".ui_host" -type "string" "legUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "foot_L0_rootShape" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001632";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_root34Shape" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001633";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_root35Shape" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001634";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_root36Shape" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001635";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "foot_L0_0_loc" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001636";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3221995382647496 -0.93887146884529493 -0.00087398468478388884 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448048 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999789 0.99999999999999922 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001637";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc34Shape" -p "foot_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001638";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_0_loc35Shape" -p "foot_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001639";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_0_loc36Shape" -p "foot_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000163A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc36_0crvShape" -p "foot_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000163B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_0_loc36_1crvShape" -p "foot_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000163C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_1_loc" -p "foot_L0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000163D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.90578850415463741 0.062001259927473913 0.00053566803260828477 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.49024465344802 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000004 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000163E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc34Shape" -p "foot_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000163F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_1_loc35Shape" -p "foot_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001640";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_1_loc36Shape" -p "foot_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001641";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc36_0crvShape" -p "foot_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001642";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_1_loc36_1crvShape" -p "foot_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001643";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_2_loc" -p "foot_L0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001644";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1638504691035185 -0.19167953227658208 -0.0018389437992661413 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000011 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001645";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc34Shape" -p "foot_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001646";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_2_loc35Shape" -p "foot_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001647";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_2_loc36Shape" -p "foot_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001648";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc36_0crvShape" -p "foot_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001649";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_2_loc36_1crvShape" -p "foot_L0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000164A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_crv" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000164B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687084 -1.2934842521415504 1.0591437062861173 ;
	setAttr ".r" -type "double3" 2.8990169397258505 84.223472754416633 2.9137877746396925 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808354 1.0497207713808345 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000164C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000164D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "foot_L0_heel" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000164E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343236 -1.2883323665462254 -0.0019628851482429432 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000164F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_heel34Shape" -p "foot_L0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001650";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_heel35Shape" -p "foot_L0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001651";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_heel36Shape" -p "foot_L0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001652";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_heel36_0crvShape" -p "foot_L0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001653";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_heel36_1crvShape" -p "foot_L0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001654";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_outpivot" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001655";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991002 -1.2852474767223827 -0.54483578923279885 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001656";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot34Shape" -p "foot_L0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001657";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_outpivot35Shape" -p "foot_L0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001658";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_outpivot36Shape" -p "foot_L0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001659";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot36_0crvShape" -p "foot_L0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000165A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_outpivot36_1crvShape" -p "foot_L0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000165B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_inpivot" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000165C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991002 -1.290593954007349 0.65234269833768388 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000165D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot34Shape" -p "foot_L0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000165E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_L0_inpivot35Shape" -p "foot_L0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000165F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_L0_inpivot36Shape" -p "foot_L0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001660";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot36_0crvShape" -p "foot_L0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001661";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_L0_inpivot36_1crvShape" -p "foot_L0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001662";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_L0_1" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001663";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248687084 -1.2934842521415504 1.0591437062861173 ;
	setAttr ".r" -type "double3" 2.8990169397258505 84.223472754416633 2.9137877746396925 ;
	setAttr ".s" -type "double3" 1.0497207713808359 1.0497207713808354 1.0497207713808345 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001664";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig1" -p "foot_L0_1";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001665";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "legUI_L0_root" -p "foot_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001666";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59908552650329328 0.51029795172993664 -1.4395512694570027 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 0.99999999999999745 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "legUI";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "legUI_L0_rootShape" -p "legUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001667";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legUI_L0_root34Shape" -p "legUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001668";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legUI_L0_root35Shape" -p "legUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001669";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legUI_L0_root36Shape" -p "legUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000166A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "legUI_L0_sizeRef" -p "legUI_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000166B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565061 -6.6613381477509392e-16 1.0444039858906486 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.029616667963981606 -5.7690337251489696 0.29463615418735939 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808354 1.0497207713808352 1.0497207713808374 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "leg_L0_crv" -p "leg_L0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000166C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.214166852209233 0.19144303592045894 0.96902196420373599 ;
	setAttr ".r" -type "double3" 89.999999999998764 89.706856137729844 0 ;
	setAttr ".s" -type "double3" 1.0495082267377405 1.049508226737738 1.0495082267377407 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000166D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000166E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "leg_R0_root" -p "spine_C0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001850";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "blend" -ln "blend" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "upvrefarray" -ln "upvrefarray" -dt "string";
	addAttr -ci true -sn "pinrefarray" -ln "pinrefarray" -dt "string";
	addAttr -ci true -sn "maxstretch" -ln "maxstretch" -dv 1.5 -min 1 -at "double";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "extraTweak" -ln "extraTweak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.5454197224031621 -0.0021808421464673267 0.99940162423937329 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -6.2218283623594015 -0.29314386227018274 -3.1060510842475186e-18 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999845 -1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_2jnt_01";
	setAttr ".comp_name" -type "string" "leg";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "legUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "leg_R0_rootShape" -p "leg_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000184F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_root1Shape" -p "leg_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001855";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_root2Shape" -p "leg_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000185B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_root3Shape" -p "leg_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001865";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "leg_R0_knee" -p "leg_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001870";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3795369772303978 0.38838644346805851 -2.6645352591003757e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000014 89.999999999999943 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000009 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000186F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_knee1Shape" -p "leg_R0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001875";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_knee2Shape" -p "leg_R0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000187B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_knee3Shape" -p "leg_R0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001885";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_knee3_0crvShape" -p "leg_R0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000188B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_knee3_1crvShape" -p "leg_R0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001891";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "leg_R0_ankle" -p "leg_R0_knee";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018A2";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.4432899320127035e-15 -4.0510958150502319 -0.74630601922779838 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999922 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018A1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle1Shape" -p "leg_R0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018A7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_ankle2Shape" -p "leg_R0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018AD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_ankle3Shape" -p "leg_R0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018B7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle3_0crvShape" -p "leg_R0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018BD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_ankle3_1crvShape" -p "leg_R0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018C3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "leg_R0_eff" -p "leg_R0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018D4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 2.4424906541753444e-15 2.1377206638691328 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000049 0.999999999999999 1.0000000000000038 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "leg_R0_eff1Shape" -p "leg_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018D9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "leg_R0_eff2Shape" -p "leg_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018DF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "leg_R0_eff3Shape" -p "leg_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018E9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_eff3_0crvShape" -p "leg_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018EF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "leg_R0_eff3_1crvShape" -p "leg_R0_eff";
	rename -uid "73006900-0000-0D3C-5BA1-F805000018F5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_root" -p "leg_R0_ankle";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001919";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "useRollCtl" -ln "useRollCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 1.1102230246251565e-15 -2.2204460492503131e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.23089051042615 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518529 0.9997975226851824 0.99979752268518196 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "foot_bk_01";
	setAttr ".comp_name" -type "string" "foot";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "leg_2jnt_01";
	setAttr ".ui_host" -type "string" "legUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
createNode nurbsCurve -n "foot_R0_rootShape" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001918";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_root1Shape" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000191E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_root2Shape" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001924";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_root3Shape" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000192E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "foot_R0_0_loc" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001937";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3221995382647496 -0.93887146884529482 -0.00087398468478272484 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448055 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999998 0.99999999999999911 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001936";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc1Shape" -p "foot_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000193C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_0_loc2Shape" -p "foot_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001942";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_0_loc3Shape" -p "foot_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000194C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc3_0crvShape" -p "foot_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001952";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_0_loc3_1crvShape" -p "foot_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001958";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_1_loc" -p "foot_R0_0_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001969";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.90578850415463708 0.062001259927473851 0.00053566803260851614 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.49024465344802 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000007 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001968";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc1Shape" -p "foot_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000196E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_1_loc2Shape" -p "foot_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001974";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_1_loc3Shape" -p "foot_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000197E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc3_0crvShape" -p "foot_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001984";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_1_loc3_1crvShape" -p "foot_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F8060000198A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_2_loc" -p "foot_R0_1_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F8060000199B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1638504691035179 -0.19167953227658202 -0.0018389437992656354 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999943 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000009 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F8060000199A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc1Shape" -p "foot_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019A0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_2_loc2Shape" -p "foot_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019A6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_2_loc3Shape" -p "foot_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019B0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc3_0crvShape" -p "foot_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019B6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_2_loc3_1crvShape" -p "foot_R0_2_loc";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019BC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_crv" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019CD";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.74253144439213847 -1.4197530331273629 1.0023462465364747 ;
	setAttr ".r" -type "double3" 178.62006607328155 -78.005531874095709 -178.58927878374561 ;
	setAttr ".s" -type "double3" 1.1711208693667712 1.1711208693667703 -1.1711208693667696 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019CC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019D5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "foot_R0_heel" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019DE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343258 -1.288332366546225 -0.0019628851482420551 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 1 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019DD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_heel1Shape" -p "foot_R0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019E3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_heel2Shape" -p "foot_R0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019E9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_heel3Shape" -p "foot_R0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019F3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_heel3_0crvShape" -p "foot_R0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019F9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_heel3_1crvShape" -p "foot_R0_heel";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019FF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_outpivot" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A10";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991002 -1.2852474767223829 -0.54483578923279752 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 1 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A0F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot1Shape" -p "foot_R0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A15";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_outpivot2Shape" -p "foot_R0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A1B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_outpivot3Shape" -p "foot_R0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A25";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot3_0crvShape" -p "foot_R0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A2B";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_outpivot3_1crvShape" -p "foot_R0_outpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A31";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_inpivot" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A42";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145990997 -1.2905939540073486 0.65234269833768521 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999833 1 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A41";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot1Shape" -p "foot_R0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A47";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "foot_R0_inpivot2Shape" -p "foot_R0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A4D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "foot_R0_inpivot3Shape" -p "foot_R0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A57";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		0.097500000000000003 0 0.097500000000000003
		0 0 0.13850000000000001
		-0.097500000000000003 0 0.097500000000000003
		-0.13850000000000001 0 0
		-0.097500000000000003 0 -0.097500000000000003
		0 0 -0.13850000000000001
		0.097500000000000003 0 -0.097500000000000003
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot3_0crvShape" -p "foot_R0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A5D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		0 -0.13849999999906565 -5.0873890682090472e-07
		-0.097500000000000003 -0.097499999999342238 -3.5813749758167868e-07
		-0.13850000000000001 0 0
		-0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0 0.13849999999906565 5.0873890682090472e-07
		0.097500000000000003 0.097499999999342238 3.5813749758167868e-07
		0.13850000000000001 0 0
		;
createNode nurbsCurve -n "foot_R0_inpivot3_1crvShape" -p "foot_R0_inpivot";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A63";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10
		 11 12
		11
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		-3.5813749748453416e-07 -0.097500000009866361 0.097499999989475894
		-2.0349556270618064e-06 -2.2424428183441165e-11 0.13849999998505041
		-2.5069624828497061e-06 0.097499999978294061 0.097499999989475894
		-1.5262167203794474e-06 0.13849999999159085 0
		3.5813749748453416e-07 0.097500000009866361 -0.097499999989475894
		2.0349556270618064e-06 2.2424428183441165e-11 -0.13849999998505041
		2.5069624828497061e-06 -0.097499999978294061 -0.097499999989475894
		1.5262167203794474e-06 -0.13849999999159085 0
		;
createNode transform -n "foot_R0_1" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A74";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.74253144439213847 -1.4197530331273629 1.0023462465364747 ;
	setAttr ".r" -type "double3" 178.62006607328155 -78.005531874095709 -178.58927878374561 ;
	setAttr ".s" -type "double3" 1.1711208693667712 1.1711208693667703 -1.1711208693667696 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A73";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig" -p "foot_R0_1";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A7C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode transform -n "legUI_R0_root" -p "foot_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A87";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59908552650329383 0.51029795172993575 -1.4395512694570025 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999943 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999745 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "legUI";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cross";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "legUI_R0_rootShape" -p "legUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A86";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "legUI_R0_root1Shape" -p "legUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A8C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "legUI_R0_root2Shape" -p "legUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A92";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "legUI_R0_root3Shape" -p "legUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A9C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "legUI_R0_sizeRef" -p "legUI_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001AA5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565017 -1.1102230246251565e-15 1.0444039858906482 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.029616667963967499 -5.7690337251489492 0.29463615418732442 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808352 1.0497207713808374 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "leg_R0_crv" -p "leg_R0_root";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001906";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.8500983576261447 0.29533614368176886 0.92244341146099607 ;
	setAttr ".r" -type "double3" 177.31308952336781 -83.771296808292504 92.702842620231181 ;
	setAttr ".s" -type "double3" 1.1708837439578168 1.1708837439578141 -1.1708837439578172 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001905";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000190E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0 0
		0 0 0
		0 0 0
		0 0 0
		;
createNode animCurveUU -n "spine_C0_root_st_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode animCurveUU -n "arm_L0_root_st_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion185";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F4";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns519";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F5";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns519Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns519GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns519GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak667";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F6";
createNode objectSet -n "tweakSet667";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016FA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8903";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016FB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1334";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016FC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion186";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016FD";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns520";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016FE";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns520Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001700";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns520GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001701";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns520GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001702";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak668";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016FF";
createNode objectSet -n "tweakSet668";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001703";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8905";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001704";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1336";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001705";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion187";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001706";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns521";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001707";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns521Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001709";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns521GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000170A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns521GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000170B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak669";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001708";
createNode objectSet -n "tweakSet669";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000170C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8907";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000170D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1338";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000170E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion184";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016EB";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns518";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016EC";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns518Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016EE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns518GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016EF";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns518GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak666";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016ED";
createNode objectSet -n "tweakSet666";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8901";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1332";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion188";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000170F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns522";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001710";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns522Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001712";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns522GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001713";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns522GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001714";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak670";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001711";
createNode objectSet -n "tweakSet670";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001715";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8909";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001716";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1340";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001717";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion189";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001718";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns523";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001719";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns523Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000171B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns523GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000171C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns523GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000171D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak671";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000171A";
createNode objectSet -n "tweakSet671";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000171E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8911";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000171F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1342";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001720";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns517";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E3";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns517Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns517GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E6";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns517GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak665";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E4";
createNode objectSet -n "tweakSet665";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8899";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1330";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016EA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion183";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D8";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns516";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D9";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns516Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016DB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns516GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016DC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns516GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016DD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak664";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016DA";
createNode objectSet -n "tweakSet664";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016DE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8897";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016DF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1328";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns527";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000173C";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns527Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000173E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns527GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000173F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns527GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001740";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak675";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000173D";
createNode objectSet -n "tweakSet675";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001741";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8919";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001742";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1350";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001743";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns528";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001744";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns528Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001746";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns528GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001747";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns528GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001748";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak676";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001745";
createNode objectSet -n "tweakSet676";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001749";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8921";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000174A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1352";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000174B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion191";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001754";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns530";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001755";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns530Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001757";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns530GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001758";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns530GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001759";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak678";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001756";
createNode objectSet -n "tweakSet678";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000175A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8925";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000175B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1356";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000175C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns526";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001734";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns526Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001736";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns526GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001737";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns526GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001738";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak674";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001735";
createNode objectSet -n "tweakSet674";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001739";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8917";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000173A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1348";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000173B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns529";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000174C";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns529Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000174E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns529GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000174F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns529GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001750";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak677";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000174D";
createNode objectSet -n "tweakSet677";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001751";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8923";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001752";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1354";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001753";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns531";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000175D";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns531Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000175F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns531GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001760";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns531GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001761";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak679";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000175E";
createNode objectSet -n "tweakSet679";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001762";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8927";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001763";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1358";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001764";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns532";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001765";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns532Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001767";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns532GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001768";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns532GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001769";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak680";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001766";
createNode objectSet -n "tweakSet680";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000176A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8929";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000176B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1360";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000176C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns525";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000172C";
	setAttr -s 3 ".inputs";
createNode objectSet -n "mgear_curveCns525Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000172E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns525GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000172F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns525GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001730";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak673";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000172D";
createNode objectSet -n "tweakSet673";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001731";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8915";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001732";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1346";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001733";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion190";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001723";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns524";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001724";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns524Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001726";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns524GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001727";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns524GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001728";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak672";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001725";
createNode objectSet -n "tweakSet672";
	rename -uid "73006900-0000-0D3C-5BA1-F7A200001729";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8913";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000172A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1344";
	rename -uid "73006900-0000-0D3C-5BA1-F7A20000172B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode unitConversion -n "unitConversion194";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DEF";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns550";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DF8";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns550Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DFB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns550GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DFC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns550GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DFD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak698";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DFA";
createNode objectSet -n "tweakSet698";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DFE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8965";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001DFF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1396";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001E00";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion195";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EBF";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns551";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001EC8";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns551Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ECB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns551GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ECC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns551GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ECD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak699";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ECA";
createNode objectSet -n "tweakSet699";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ECE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8967";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ECF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1398";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001ED0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion196";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F8F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns552";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F98";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns552Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F9B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns552GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F9C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns552GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F9D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak700";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F9A";
createNode objectSet -n "tweakSet700";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F9E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8969";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001F9F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1400";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00001FA0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion193";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D1F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns549";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D28";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns549Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D2B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns549GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D2C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns549GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D2D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak697";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D2A";
createNode objectSet -n "tweakSet697";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D2E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8963";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D2F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1394";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001D30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion197";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000205F";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns553";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002068";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns553Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000206B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns553GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000206C";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns553GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000206D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak701";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000206A";
createNode objectSet -n "tweakSet701";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000206E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8971";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000206F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1402";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002070";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion198";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002181";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns554";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000218A";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns554Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000218D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns554GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000218E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns554GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000218F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak702";
	rename -uid "73006900-0000-0D3C-5BA1-F80B0000218C";
createNode objectSet -n "tweakSet702";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002190";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8973";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002191";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1404";
	rename -uid "73006900-0000-0D3C-5BA1-F80B00002192";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns548";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C06";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns548Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C09";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns548GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C0A";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns548GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C0B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak696";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C08";
createNode objectSet -n "tweakSet696";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C0C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8961";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C0D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1392";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001C0E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion192";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B34";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns547";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B3D";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns547Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B40";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns547GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B41";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns547GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak695";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B3F";
createNode objectSet -n "tweakSet695";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B43";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8959";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B44";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1390";
	rename -uid "73006900-0000-0D3C-5BA1-F80A00001B45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion182";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016CF";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns515";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D0";
	setAttr -s 2 ".inputs";
createNode objectSet -n "mgear_curveCns515Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns515GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns515GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak663";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D1";
createNode objectSet -n "tweakSet663";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8895";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1326";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000016D7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns542";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C0";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns542Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns542GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C3";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns542GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak690";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C1";
createNode objectSet -n "tweakSet690";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8949";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1380";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns543";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C8";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns543Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017CA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns543GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017CB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns543GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017CC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak691";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017C9";
createNode objectSet -n "tweakSet691";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017CD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8951";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017CE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1382";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017CF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns541";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017B8";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns541Set";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017BA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns541GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017BB";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns541GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017BC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak689";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017B9";
createNode objectSet -n "tweakSet689";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017BD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8947";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1378";
	rename -uid "73006900-0000-0D3C-5BA1-F7A2000017BF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000186D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000186E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns545";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019D4";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns545Set";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019D7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns545GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019D8";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns545GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019D9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak693";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019D6";
createNode objectSet -n "tweakSet693";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019DA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8955";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1386";
	rename -uid "73006900-0000-0D3C-5BA1-F806000019DC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns546";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A7B";
	setAttr -s 5 ".inputs";
createNode objectSet -n "mgear_curveCns546Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A7E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns546GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A7F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns546GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A80";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak694";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A7D";
createNode objectSet -n "tweakSet694";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A81";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8957";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A82";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1388";
	rename -uid "73006900-0000-0D3C-5BA1-F80600001A83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns544";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000190D";
	setAttr -s 4 ".inputs";
createNode objectSet -n "mgear_curveCns544Set";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001910";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns544GroupId";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001911";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns544GroupParts";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001912";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode tweak -n "tweak692";
	rename -uid "73006900-0000-0D3C-5BA1-F8050000190F";
createNode objectSet -n "tweakSet692";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001913";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8953";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001914";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1384";
	rename -uid "73006900-0000-0D3C-5BA1-F80500001915";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
select -ne :time1;
	setAttr ".o" 1.0416666666666667;
	setAttr ".unw" 1.0416666666666667;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 625;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 625;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "spine_C0_root_st_profile.o" "spine_C0_root.st_profile";
connectAttr "spine_C0_root_sq_profile.o" "spine_C0_root.sq_profile";
connectAttr "arm_L0_root_st_profile.o" "arm_L0_root.st_profile";
connectAttr "arm_L0_root_sq_profile.o" "arm_L0_root.sq_profile";
connectAttr "finger_L3_blade_pointConstraint12.ctx" "finger_L3_blade.tx" -l on;
connectAttr "finger_L3_blade_pointConstraint12.cty" "finger_L3_blade.ty" -l on;
connectAttr "finger_L3_blade_pointConstraint12.ctz" "finger_L3_blade.tz" -l on;
connectAttr "finger_L3_blade_aimConstraint12.crx" "finger_L3_blade.rx" -l on;
connectAttr "finger_L3_blade_aimConstraint12.cry" "finger_L3_blade.ry" -l on;
connectAttr "finger_L3_blade_aimConstraint12.crz" "finger_L3_blade.rz" -l on;
connectAttr "finger_L3_blade.pim" "finger_L3_blade_aimConstraint12.cpim";
connectAttr "finger_L3_blade.t" "finger_L3_blade_aimConstraint12.ct";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_aimConstraint12.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_aimConstraint12.crt";
connectAttr "finger_L3_blade.ro" "finger_L3_blade_aimConstraint12.cro";
connectAttr "finger_L3_0_loc.t" "finger_L3_blade_aimConstraint12.tg[0].tt";
connectAttr "finger_L3_0_loc.rp" "finger_L3_blade_aimConstraint12.tg[0].trp";
connectAttr "finger_L3_0_loc.rpt" "finger_L3_blade_aimConstraint12.tg[0].trt";
connectAttr "finger_L3_0_loc.pm" "finger_L3_blade_aimConstraint12.tg[0].tpm";
connectAttr "finger_L3_blade_aimConstraint12.w0" "finger_L3_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "finger_L3_root.wm" "finger_L3_blade_aimConstraint12.wum";
connectAttr "unitConversion185.o" "finger_L3_blade_aimConstraint12.ox";
connectAttr "finger_L3_blade.pim" "finger_L3_blade_pointConstraint12.cpim";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_pointConstraint12.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_pointConstraint12.crt";
connectAttr "finger_L3_root.t" "finger_L3_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L3_root.rp" "finger_L3_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L3_root.rpt" "finger_L3_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L3_root.pm" "finger_L3_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L3_blade_pointConstraint12.w0" "finger_L3_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns519.og[0]" "finger_L3_crvShape.cr";
connectAttr "tweak667.pl[0].cp[0]" "finger_L3_crvShape.twl";
connectAttr "mgear_curveCns519GroupId.id" "finger_L3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns519Set.mwc" "finger_L3_crvShape.iog.og[0].gco";
connectAttr "groupId8903.id" "finger_L3_crvShape.iog.og[1].gid";
connectAttr "tweakSet667.mwc" "finger_L3_crvShape.iog.og[1].gco";
connectAttr "finger_L2_blade_pointConstraint12.ctx" "finger_L2_blade.tx" -l on;
connectAttr "finger_L2_blade_pointConstraint12.cty" "finger_L2_blade.ty" -l on;
connectAttr "finger_L2_blade_pointConstraint12.ctz" "finger_L2_blade.tz" -l on;
connectAttr "finger_L2_blade_aimConstraint12.crx" "finger_L2_blade.rx" -l on;
connectAttr "finger_L2_blade_aimConstraint12.cry" "finger_L2_blade.ry" -l on;
connectAttr "finger_L2_blade_aimConstraint12.crz" "finger_L2_blade.rz" -l on;
connectAttr "finger_L2_blade.pim" "finger_L2_blade_aimConstraint12.cpim";
connectAttr "finger_L2_blade.t" "finger_L2_blade_aimConstraint12.ct";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_aimConstraint12.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_aimConstraint12.crt";
connectAttr "finger_L2_blade.ro" "finger_L2_blade_aimConstraint12.cro";
connectAttr "finger_L2_0_loc.t" "finger_L2_blade_aimConstraint12.tg[0].tt";
connectAttr "finger_L2_0_loc.rp" "finger_L2_blade_aimConstraint12.tg[0].trp";
connectAttr "finger_L2_0_loc.rpt" "finger_L2_blade_aimConstraint12.tg[0].trt";
connectAttr "finger_L2_0_loc.pm" "finger_L2_blade_aimConstraint12.tg[0].tpm";
connectAttr "finger_L2_blade_aimConstraint12.w0" "finger_L2_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "finger_L2_root.wm" "finger_L2_blade_aimConstraint12.wum";
connectAttr "unitConversion186.o" "finger_L2_blade_aimConstraint12.ox";
connectAttr "finger_L2_blade.pim" "finger_L2_blade_pointConstraint12.cpim";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_pointConstraint12.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_pointConstraint12.crt";
connectAttr "finger_L2_root.t" "finger_L2_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L2_root.rp" "finger_L2_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L2_root.rpt" "finger_L2_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L2_root.pm" "finger_L2_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L2_blade_pointConstraint12.w0" "finger_L2_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns520.og[0]" "finger_L2_crvShape.cr";
connectAttr "tweak668.pl[0].cp[0]" "finger_L2_crvShape.twl";
connectAttr "mgear_curveCns520GroupId.id" "finger_L2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns520Set.mwc" "finger_L2_crvShape.iog.og[0].gco";
connectAttr "groupId8905.id" "finger_L2_crvShape.iog.og[1].gid";
connectAttr "tweakSet668.mwc" "finger_L2_crvShape.iog.og[1].gco";
connectAttr "finger_L1_blade_pointConstraint12.ctx" "finger_L1_blade.tx" -l on;
connectAttr "finger_L1_blade_pointConstraint12.cty" "finger_L1_blade.ty" -l on;
connectAttr "finger_L1_blade_pointConstraint12.ctz" "finger_L1_blade.tz" -l on;
connectAttr "finger_L1_blade_aimConstraint12.crx" "finger_L1_blade.rx" -l on;
connectAttr "finger_L1_blade_aimConstraint12.cry" "finger_L1_blade.ry" -l on;
connectAttr "finger_L1_blade_aimConstraint12.crz" "finger_L1_blade.rz" -l on;
connectAttr "finger_L1_blade.pim" "finger_L1_blade_aimConstraint12.cpim";
connectAttr "finger_L1_blade.t" "finger_L1_blade_aimConstraint12.ct";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_aimConstraint12.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_aimConstraint12.crt";
connectAttr "finger_L1_blade.ro" "finger_L1_blade_aimConstraint12.cro";
connectAttr "finger_L1_0_loc.t" "finger_L1_blade_aimConstraint12.tg[0].tt";
connectAttr "finger_L1_0_loc.rp" "finger_L1_blade_aimConstraint12.tg[0].trp";
connectAttr "finger_L1_0_loc.rpt" "finger_L1_blade_aimConstraint12.tg[0].trt";
connectAttr "finger_L1_0_loc.pm" "finger_L1_blade_aimConstraint12.tg[0].tpm";
connectAttr "finger_L1_blade_aimConstraint12.w0" "finger_L1_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "finger_L1_root.wm" "finger_L1_blade_aimConstraint12.wum";
connectAttr "unitConversion187.o" "finger_L1_blade_aimConstraint12.ox";
connectAttr "finger_L1_blade.pim" "finger_L1_blade_pointConstraint12.cpim";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_pointConstraint12.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_pointConstraint12.crt";
connectAttr "finger_L1_root.t" "finger_L1_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L1_root.rp" "finger_L1_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L1_root.rpt" "finger_L1_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L1_root.pm" "finger_L1_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L1_blade_pointConstraint12.w0" "finger_L1_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns521.og[0]" "finger_L1_crvShape.cr";
connectAttr "tweak669.pl[0].cp[0]" "finger_L1_crvShape.twl";
connectAttr "mgear_curveCns521GroupId.id" "finger_L1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns521Set.mwc" "finger_L1_crvShape.iog.og[0].gco";
connectAttr "groupId8907.id" "finger_L1_crvShape.iog.og[1].gid";
connectAttr "tweakSet669.mwc" "finger_L1_crvShape.iog.og[1].gco";
connectAttr "meta_L0_blade_pointConstraint12.ctx" "meta_L0_blade.tx" -l on;
connectAttr "meta_L0_blade_pointConstraint12.cty" "meta_L0_blade.ty" -l on;
connectAttr "meta_L0_blade_pointConstraint12.ctz" "meta_L0_blade.tz" -l on;
connectAttr "meta_L0_blade_aimConstraint12.crx" "meta_L0_blade.rx" -l on;
connectAttr "meta_L0_blade_aimConstraint12.cry" "meta_L0_blade.ry" -l on;
connectAttr "meta_L0_blade_aimConstraint12.crz" "meta_L0_blade.rz" -l on;
connectAttr "meta_L0_blade.pim" "meta_L0_blade_aimConstraint12.cpim";
connectAttr "meta_L0_blade.t" "meta_L0_blade_aimConstraint12.ct";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_aimConstraint12.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_aimConstraint12.crt";
connectAttr "meta_L0_blade.ro" "meta_L0_blade_aimConstraint12.cro";
connectAttr "meta_L0_0_loc.t" "meta_L0_blade_aimConstraint12.tg[0].tt";
connectAttr "meta_L0_0_loc.rp" "meta_L0_blade_aimConstraint12.tg[0].trp";
connectAttr "meta_L0_0_loc.rpt" "meta_L0_blade_aimConstraint12.tg[0].trt";
connectAttr "meta_L0_0_loc.pm" "meta_L0_blade_aimConstraint12.tg[0].tpm";
connectAttr "meta_L0_blade_aimConstraint12.w0" "meta_L0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "meta_L0_root.wm" "meta_L0_blade_aimConstraint12.wum";
connectAttr "unitConversion184.o" "meta_L0_blade_aimConstraint12.ox";
connectAttr "meta_L0_blade.pim" "meta_L0_blade_pointConstraint12.cpim";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_pointConstraint12.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_pointConstraint12.crt";
connectAttr "meta_L0_root.t" "meta_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "meta_L0_root.rp" "meta_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "meta_L0_root.rpt" "meta_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "meta_L0_root.pm" "meta_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "meta_L0_blade_pointConstraint12.w0" "meta_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns518.og[0]" "meta_L0_crvShape.cr";
connectAttr "tweak666.pl[0].cp[0]" "meta_L0_crvShape.twl";
connectAttr "mgear_curveCns518GroupId.id" "meta_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns518Set.mwc" "meta_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8901.id" "meta_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet666.mwc" "meta_L0_crvShape.iog.og[1].gco";
connectAttr "finger_L0_blade_pointConstraint12.ctx" "finger_L0_blade.tx" -l on;
connectAttr "finger_L0_blade_pointConstraint12.cty" "finger_L0_blade.ty" -l on;
connectAttr "finger_L0_blade_pointConstraint12.ctz" "finger_L0_blade.tz" -l on;
connectAttr "finger_L0_blade_aimConstraint12.crx" "finger_L0_blade.rx" -l on;
connectAttr "finger_L0_blade_aimConstraint12.cry" "finger_L0_blade.ry" -l on;
connectAttr "finger_L0_blade_aimConstraint12.crz" "finger_L0_blade.rz" -l on;
connectAttr "finger_L0_blade.pim" "finger_L0_blade_aimConstraint12.cpim";
connectAttr "finger_L0_blade.t" "finger_L0_blade_aimConstraint12.ct";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_aimConstraint12.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_aimConstraint12.crt";
connectAttr "finger_L0_blade.ro" "finger_L0_blade_aimConstraint12.cro";
connectAttr "finger_L0_0_loc.t" "finger_L0_blade_aimConstraint12.tg[0].tt";
connectAttr "finger_L0_0_loc.rp" "finger_L0_blade_aimConstraint12.tg[0].trp";
connectAttr "finger_L0_0_loc.rpt" "finger_L0_blade_aimConstraint12.tg[0].trt";
connectAttr "finger_L0_0_loc.pm" "finger_L0_blade_aimConstraint12.tg[0].tpm";
connectAttr "finger_L0_blade_aimConstraint12.w0" "finger_L0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "finger_L0_root.wm" "finger_L0_blade_aimConstraint12.wum";
connectAttr "unitConversion188.o" "finger_L0_blade_aimConstraint12.ox";
connectAttr "finger_L0_blade.pim" "finger_L0_blade_pointConstraint12.cpim";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_pointConstraint12.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_pointConstraint12.crt";
connectAttr "finger_L0_root.t" "finger_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L0_root.rp" "finger_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L0_root.rpt" "finger_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L0_root.pm" "finger_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L0_blade_pointConstraint12.w0" "finger_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns522.og[0]" "finger_L0_crvShape.cr";
connectAttr "tweak670.pl[0].cp[0]" "finger_L0_crvShape.twl";
connectAttr "mgear_curveCns522GroupId.id" "finger_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns522Set.mwc" "finger_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8909.id" "finger_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet670.mwc" "finger_L0_crvShape.iog.og[1].gco";
connectAttr "thumb_L0_blade_pointConstraint12.ctx" "thumb_L0_blade.tx" -l on;
connectAttr "thumb_L0_blade_pointConstraint12.cty" "thumb_L0_blade.ty" -l on;
connectAttr "thumb_L0_blade_pointConstraint12.ctz" "thumb_L0_blade.tz" -l on;
connectAttr "thumb_L0_blade_aimConstraint12.crx" "thumb_L0_blade.rx" -l on;
connectAttr "thumb_L0_blade_aimConstraint12.cry" "thumb_L0_blade.ry" -l on;
connectAttr "thumb_L0_blade_aimConstraint12.crz" "thumb_L0_blade.rz" -l on;
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_aimConstraint12.cpim";
connectAttr "thumb_L0_blade.t" "thumb_L0_blade_aimConstraint12.ct";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_aimConstraint12.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_aimConstraint12.crt";
connectAttr "thumb_L0_blade.ro" "thumb_L0_blade_aimConstraint12.cro";
connectAttr "thumb_L0_0_loc.t" "thumb_L0_blade_aimConstraint12.tg[0].tt";
connectAttr "thumb_L0_0_loc.rp" "thumb_L0_blade_aimConstraint12.tg[0].trp";
connectAttr "thumb_L0_0_loc.rpt" "thumb_L0_blade_aimConstraint12.tg[0].trt";
connectAttr "thumb_L0_0_loc.pm" "thumb_L0_blade_aimConstraint12.tg[0].tpm";
connectAttr "thumb_L0_blade_aimConstraint12.w0" "thumb_L0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "thumb_L0_root.wm" "thumb_L0_blade_aimConstraint12.wum";
connectAttr "unitConversion189.o" "thumb_L0_blade_aimConstraint12.ox";
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_pointConstraint12.cpim";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_pointConstraint12.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_pointConstraint12.crt";
connectAttr "thumb_L0_root.t" "thumb_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "thumb_L0_root.rp" "thumb_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "thumb_L0_root.rpt" "thumb_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "thumb_L0_root.pm" "thumb_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "thumb_L0_blade_pointConstraint12.w0" "thumb_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns523.og[0]" "thumb_L0_crvShape.cr";
connectAttr "tweak671.pl[0].cp[0]" "thumb_L0_crvShape.twl";
connectAttr "mgear_curveCns523GroupId.id" "thumb_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns523Set.mwc" "thumb_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8911.id" "thumb_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet671.mwc" "thumb_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns517.og[0]" "arm_L0_crvShape.cr";
connectAttr "tweak665.pl[0].cp[0]" "arm_L0_crvShape.twl";
connectAttr "mgear_curveCns517GroupId.id" "arm_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns517Set.mwc" "arm_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8899.id" "arm_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet665.mwc" "arm_L0_crvShape.iog.og[1].gco";
connectAttr "shoulder_L0_blade_pointConstraint12.ctx" "shoulder_L0_blade.tx" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint12.cty" "shoulder_L0_blade.ty" -l on
		;
connectAttr "shoulder_L0_blade_pointConstraint12.ctz" "shoulder_L0_blade.tz" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint12.crx" "shoulder_L0_blade.rx" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint12.cry" "shoulder_L0_blade.ry" -l on
		;
connectAttr "shoulder_L0_blade_aimConstraint12.crz" "shoulder_L0_blade.rz" -l on
		;
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_aimConstraint12.cpim";
connectAttr "shoulder_L0_blade.t" "shoulder_L0_blade_aimConstraint12.ct";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_aimConstraint12.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_aimConstraint12.crt";
connectAttr "shoulder_L0_blade.ro" "shoulder_L0_blade_aimConstraint12.cro";
connectAttr "shoulder_L0_tip.t" "shoulder_L0_blade_aimConstraint12.tg[0].tt";
connectAttr "shoulder_L0_tip.rp" "shoulder_L0_blade_aimConstraint12.tg[0].trp";
connectAttr "shoulder_L0_tip.rpt" "shoulder_L0_blade_aimConstraint12.tg[0].trt";
connectAttr "shoulder_L0_tip.pm" "shoulder_L0_blade_aimConstraint12.tg[0].tpm";
connectAttr "shoulder_L0_blade_aimConstraint12.w0" "shoulder_L0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "shoulder_L0_root.wm" "shoulder_L0_blade_aimConstraint12.wum";
connectAttr "unitConversion183.o" "shoulder_L0_blade_aimConstraint12.ox";
connectAttr "shoulder_L0_blade.pim" "shoulder_L0_blade_pointConstraint12.cpim";
connectAttr "shoulder_L0_blade.rp" "shoulder_L0_blade_pointConstraint12.crp";
connectAttr "shoulder_L0_blade.rpt" "shoulder_L0_blade_pointConstraint12.crt";
connectAttr "shoulder_L0_root.t" "shoulder_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "shoulder_L0_root.rp" "shoulder_L0_blade_pointConstraint12.tg[0].trp"
		;
connectAttr "shoulder_L0_root.rpt" "shoulder_L0_blade_pointConstraint12.tg[0].trt"
		;
connectAttr "shoulder_L0_root.pm" "shoulder_L0_blade_pointConstraint12.tg[0].tpm"
		;
connectAttr "shoulder_L0_blade_pointConstraint12.w0" "shoulder_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns516.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak664.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns516GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns516Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8897.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet664.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "neck_C0_root_st_profile.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns527.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak675.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns527GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns527Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8919.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet675.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns528.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak676.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns528GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns528Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8921.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet676.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "tongue_C0_blade_pointConstraint12.ctx" "tongue_C0_blade.tx" -l on;
connectAttr "tongue_C0_blade_pointConstraint12.cty" "tongue_C0_blade.ty" -l on;
connectAttr "tongue_C0_blade_pointConstraint12.ctz" "tongue_C0_blade.tz" -l on;
connectAttr "tongue_C0_blade_aimConstraint12.crx" "tongue_C0_blade.rx" -l on;
connectAttr "tongue_C0_blade_aimConstraint12.cry" "tongue_C0_blade.ry" -l on;
connectAttr "tongue_C0_blade_aimConstraint12.crz" "tongue_C0_blade.rz" -l on;
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_aimConstraint12.cpim";
connectAttr "tongue_C0_blade.t" "tongue_C0_blade_aimConstraint12.ct";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_aimConstraint12.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_aimConstraint12.crt";
connectAttr "tongue_C0_blade.ro" "tongue_C0_blade_aimConstraint12.cro";
connectAttr "tongue_C0_0_loc.t" "tongue_C0_blade_aimConstraint12.tg[0].tt";
connectAttr "tongue_C0_0_loc.rp" "tongue_C0_blade_aimConstraint12.tg[0].trp";
connectAttr "tongue_C0_0_loc.rpt" "tongue_C0_blade_aimConstraint12.tg[0].trt";
connectAttr "tongue_C0_0_loc.pm" "tongue_C0_blade_aimConstraint12.tg[0].tpm";
connectAttr "tongue_C0_blade_aimConstraint12.w0" "tongue_C0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "tongue_C0_root.wm" "tongue_C0_blade_aimConstraint12.wum";
connectAttr "unitConversion191.o" "tongue_C0_blade_aimConstraint12.ox";
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_pointConstraint12.cpim";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_pointConstraint12.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_pointConstraint12.crt";
connectAttr "tongue_C0_root.t" "tongue_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "tongue_C0_root.rp" "tongue_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "tongue_C0_root.rpt" "tongue_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "tongue_C0_root.pm" "tongue_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "tongue_C0_blade_pointConstraint12.w0" "tongue_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns530.og[0]" "tongue_C0_crvShape.cr";
connectAttr "tweak678.pl[0].cp[0]" "tongue_C0_crvShape.twl";
connectAttr "mgear_curveCns530GroupId.id" "tongue_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns530Set.mwc" "tongue_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8925.id" "tongue_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet678.mwc" "tongue_C0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns526.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak674.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns526GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns526Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId8917.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet674.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns529.og[0]" "mouth_C0_crv12Shape.cr";
connectAttr "tweak677.pl[0].cp[0]" "mouth_C0_crv12Shape.twl";
connectAttr "mgear_curveCns529GroupId.id" "mouth_C0_crv12Shape.iog.og[0].gid";
connectAttr "mgear_curveCns529Set.mwc" "mouth_C0_crv12Shape.iog.og[0].gco";
connectAttr "groupId8923.id" "mouth_C0_crv12Shape.iog.og[1].gid";
connectAttr "tweakSet677.mwc" "mouth_C0_crv12Shape.iog.og[1].gco";
connectAttr "mgear_curveCns531.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak679.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns531GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns531Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8927.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet679.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns532.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak680.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns532GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns532Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8929.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet680.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns525.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak673.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns525GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns525Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId8915.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet673.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
connectAttr "neck_C0_blade_pointConstraint12.ctx" "neck_C0_blade.tx" -l on;
connectAttr "neck_C0_blade_pointConstraint12.cty" "neck_C0_blade.ty" -l on;
connectAttr "neck_C0_blade_pointConstraint12.ctz" "neck_C0_blade.tz" -l on;
connectAttr "neck_C0_blade_aimConstraint12.crx" "neck_C0_blade.rx" -l on;
connectAttr "neck_C0_blade_aimConstraint12.cry" "neck_C0_blade.ry" -l on;
connectAttr "neck_C0_blade_aimConstraint12.crz" "neck_C0_blade.rz" -l on;
connectAttr "neck_C0_blade.pim" "neck_C0_blade_aimConstraint12.cpim";
connectAttr "neck_C0_blade.t" "neck_C0_blade_aimConstraint12.ct";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_aimConstraint12.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_aimConstraint12.crt";
connectAttr "neck_C0_blade.ro" "neck_C0_blade_aimConstraint12.cro";
connectAttr "neck_C0_tan0.t" "neck_C0_blade_aimConstraint12.tg[0].tt";
connectAttr "neck_C0_tan0.rp" "neck_C0_blade_aimConstraint12.tg[0].trp";
connectAttr "neck_C0_tan0.rpt" "neck_C0_blade_aimConstraint12.tg[0].trt";
connectAttr "neck_C0_tan0.pm" "neck_C0_blade_aimConstraint12.tg[0].tpm";
connectAttr "neck_C0_blade_aimConstraint12.w0" "neck_C0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "neck_C0_root.wm" "neck_C0_blade_aimConstraint12.wum";
connectAttr "unitConversion190.o" "neck_C0_blade_aimConstraint12.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint12.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint12.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint12.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint12.w0" "neck_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns524.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak672.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns524GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns524Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId8913.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet672.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "arm_R0_root_st_profile.o" "arm_R0_root.st_profile";
connectAttr "arm_R0_root_sq_profile.o" "arm_R0_root.sq_profile";
connectAttr "finger_R3_blade_pointConstraint1.ctx" "finger_R3_blade.tx" -l on;
connectAttr "finger_R3_blade_pointConstraint1.cty" "finger_R3_blade.ty" -l on;
connectAttr "finger_R3_blade_pointConstraint1.ctz" "finger_R3_blade.tz" -l on;
connectAttr "finger_R3_blade_aimConstraint1.crx" "finger_R3_blade.rx" -l on;
connectAttr "finger_R3_blade_aimConstraint1.cry" "finger_R3_blade.ry" -l on;
connectAttr "finger_R3_blade_aimConstraint1.crz" "finger_R3_blade.rz" -l on;
connectAttr "finger_R3_blade.pim" "finger_R3_blade_aimConstraint1.cpim";
connectAttr "finger_R3_blade.t" "finger_R3_blade_aimConstraint1.ct";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_aimConstraint1.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_aimConstraint1.crt";
connectAttr "finger_R3_blade.ro" "finger_R3_blade_aimConstraint1.cro";
connectAttr "finger_R3_0_loc.t" "finger_R3_blade_aimConstraint1.tg[0].tt";
connectAttr "finger_R3_0_loc.rp" "finger_R3_blade_aimConstraint1.tg[0].trp";
connectAttr "finger_R3_0_loc.rpt" "finger_R3_blade_aimConstraint1.tg[0].trt";
connectAttr "finger_R3_0_loc.pm" "finger_R3_blade_aimConstraint1.tg[0].tpm";
connectAttr "finger_R3_blade_aimConstraint1.w0" "finger_R3_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "finger_R3_root.wm" "finger_R3_blade_aimConstraint1.wum";
connectAttr "unitConversion194.o" "finger_R3_blade_aimConstraint1.ox";
connectAttr "finger_R3_blade.pim" "finger_R3_blade_pointConstraint1.cpim";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_pointConstraint1.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_pointConstraint1.crt";
connectAttr "finger_R3_root.t" "finger_R3_blade_pointConstraint1.tg[0].tt";
connectAttr "finger_R3_root.rp" "finger_R3_blade_pointConstraint1.tg[0].trp";
connectAttr "finger_R3_root.rpt" "finger_R3_blade_pointConstraint1.tg[0].trt";
connectAttr "finger_R3_root.pm" "finger_R3_blade_pointConstraint1.tg[0].tpm";
connectAttr "finger_R3_blade_pointConstraint1.w0" "finger_R3_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns550.og[0]" "finger_R3_crvShape.cr";
connectAttr "tweak698.pl[0].cp[0]" "finger_R3_crvShape.twl";
connectAttr "mgear_curveCns550GroupId.id" "finger_R3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns550Set.mwc" "finger_R3_crvShape.iog.og[0].gco";
connectAttr "groupId8965.id" "finger_R3_crvShape.iog.og[1].gid";
connectAttr "tweakSet698.mwc" "finger_R3_crvShape.iog.og[1].gco";
connectAttr "finger_R2_blade_pointConstraint1.ctx" "finger_R2_blade.tx" -l on;
connectAttr "finger_R2_blade_pointConstraint1.cty" "finger_R2_blade.ty" -l on;
connectAttr "finger_R2_blade_pointConstraint1.ctz" "finger_R2_blade.tz" -l on;
connectAttr "finger_R2_blade_aimConstraint1.crx" "finger_R2_blade.rx" -l on;
connectAttr "finger_R2_blade_aimConstraint1.cry" "finger_R2_blade.ry" -l on;
connectAttr "finger_R2_blade_aimConstraint1.crz" "finger_R2_blade.rz" -l on;
connectAttr "finger_R2_blade.pim" "finger_R2_blade_aimConstraint1.cpim";
connectAttr "finger_R2_blade.t" "finger_R2_blade_aimConstraint1.ct";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_aimConstraint1.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_aimConstraint1.crt";
connectAttr "finger_R2_blade.ro" "finger_R2_blade_aimConstraint1.cro";
connectAttr "finger_R2_0_loc.t" "finger_R2_blade_aimConstraint1.tg[0].tt";
connectAttr "finger_R2_0_loc.rp" "finger_R2_blade_aimConstraint1.tg[0].trp";
connectAttr "finger_R2_0_loc.rpt" "finger_R2_blade_aimConstraint1.tg[0].trt";
connectAttr "finger_R2_0_loc.pm" "finger_R2_blade_aimConstraint1.tg[0].tpm";
connectAttr "finger_R2_blade_aimConstraint1.w0" "finger_R2_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "finger_R2_root.wm" "finger_R2_blade_aimConstraint1.wum";
connectAttr "unitConversion195.o" "finger_R2_blade_aimConstraint1.ox";
connectAttr "finger_R2_blade.pim" "finger_R2_blade_pointConstraint1.cpim";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_pointConstraint1.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_pointConstraint1.crt";
connectAttr "finger_R2_root.t" "finger_R2_blade_pointConstraint1.tg[0].tt";
connectAttr "finger_R2_root.rp" "finger_R2_blade_pointConstraint1.tg[0].trp";
connectAttr "finger_R2_root.rpt" "finger_R2_blade_pointConstraint1.tg[0].trt";
connectAttr "finger_R2_root.pm" "finger_R2_blade_pointConstraint1.tg[0].tpm";
connectAttr "finger_R2_blade_pointConstraint1.w0" "finger_R2_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns551.og[0]" "finger_R2_crvShape.cr";
connectAttr "tweak699.pl[0].cp[0]" "finger_R2_crvShape.twl";
connectAttr "mgear_curveCns551GroupId.id" "finger_R2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns551Set.mwc" "finger_R2_crvShape.iog.og[0].gco";
connectAttr "groupId8967.id" "finger_R2_crvShape.iog.og[1].gid";
connectAttr "tweakSet699.mwc" "finger_R2_crvShape.iog.og[1].gco";
connectAttr "finger_R1_blade_pointConstraint1.ctx" "finger_R1_blade.tx" -l on;
connectAttr "finger_R1_blade_pointConstraint1.cty" "finger_R1_blade.ty" -l on;
connectAttr "finger_R1_blade_pointConstraint1.ctz" "finger_R1_blade.tz" -l on;
connectAttr "finger_R1_blade_aimConstraint1.crx" "finger_R1_blade.rx" -l on;
connectAttr "finger_R1_blade_aimConstraint1.cry" "finger_R1_blade.ry" -l on;
connectAttr "finger_R1_blade_aimConstraint1.crz" "finger_R1_blade.rz" -l on;
connectAttr "finger_R1_blade.pim" "finger_R1_blade_aimConstraint1.cpim";
connectAttr "finger_R1_blade.t" "finger_R1_blade_aimConstraint1.ct";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_aimConstraint1.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_aimConstraint1.crt";
connectAttr "finger_R1_blade.ro" "finger_R1_blade_aimConstraint1.cro";
connectAttr "finger_R1_0_loc.t" "finger_R1_blade_aimConstraint1.tg[0].tt";
connectAttr "finger_R1_0_loc.rp" "finger_R1_blade_aimConstraint1.tg[0].trp";
connectAttr "finger_R1_0_loc.rpt" "finger_R1_blade_aimConstraint1.tg[0].trt";
connectAttr "finger_R1_0_loc.pm" "finger_R1_blade_aimConstraint1.tg[0].tpm";
connectAttr "finger_R1_blade_aimConstraint1.w0" "finger_R1_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "finger_R1_root.wm" "finger_R1_blade_aimConstraint1.wum";
connectAttr "unitConversion196.o" "finger_R1_blade_aimConstraint1.ox";
connectAttr "finger_R1_blade.pim" "finger_R1_blade_pointConstraint1.cpim";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_pointConstraint1.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_pointConstraint1.crt";
connectAttr "finger_R1_root.t" "finger_R1_blade_pointConstraint1.tg[0].tt";
connectAttr "finger_R1_root.rp" "finger_R1_blade_pointConstraint1.tg[0].trp";
connectAttr "finger_R1_root.rpt" "finger_R1_blade_pointConstraint1.tg[0].trt";
connectAttr "finger_R1_root.pm" "finger_R1_blade_pointConstraint1.tg[0].tpm";
connectAttr "finger_R1_blade_pointConstraint1.w0" "finger_R1_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns552.og[0]" "finger_R1_crvShape.cr";
connectAttr "tweak700.pl[0].cp[0]" "finger_R1_crvShape.twl";
connectAttr "mgear_curveCns552GroupId.id" "finger_R1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns552Set.mwc" "finger_R1_crvShape.iog.og[0].gco";
connectAttr "groupId8969.id" "finger_R1_crvShape.iog.og[1].gid";
connectAttr "tweakSet700.mwc" "finger_R1_crvShape.iog.og[1].gco";
connectAttr "meta_R0_blade_pointConstraint1.ctx" "meta_R0_blade.tx" -l on;
connectAttr "meta_R0_blade_pointConstraint1.cty" "meta_R0_blade.ty" -l on;
connectAttr "meta_R0_blade_pointConstraint1.ctz" "meta_R0_blade.tz" -l on;
connectAttr "meta_R0_blade_aimConstraint1.crx" "meta_R0_blade.rx" -l on;
connectAttr "meta_R0_blade_aimConstraint1.cry" "meta_R0_blade.ry" -l on;
connectAttr "meta_R0_blade_aimConstraint1.crz" "meta_R0_blade.rz" -l on;
connectAttr "meta_R0_blade.pim" "meta_R0_blade_aimConstraint1.cpim";
connectAttr "meta_R0_blade.t" "meta_R0_blade_aimConstraint1.ct";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_aimConstraint1.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_aimConstraint1.crt";
connectAttr "meta_R0_blade.ro" "meta_R0_blade_aimConstraint1.cro";
connectAttr "meta_R0_0_loc.t" "meta_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "meta_R0_0_loc.rp" "meta_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "meta_R0_0_loc.rpt" "meta_R0_blade_aimConstraint1.tg[0].trt";
connectAttr "meta_R0_0_loc.pm" "meta_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "meta_R0_blade_aimConstraint1.w0" "meta_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "meta_R0_root.wm" "meta_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion193.o" "meta_R0_blade_aimConstraint1.ox";
connectAttr "meta_R0_blade.pim" "meta_R0_blade_pointConstraint1.cpim";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_pointConstraint1.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_pointConstraint1.crt";
connectAttr "meta_R0_root.t" "meta_R0_blade_pointConstraint1.tg[0].tt";
connectAttr "meta_R0_root.rp" "meta_R0_blade_pointConstraint1.tg[0].trp";
connectAttr "meta_R0_root.rpt" "meta_R0_blade_pointConstraint1.tg[0].trt";
connectAttr "meta_R0_root.pm" "meta_R0_blade_pointConstraint1.tg[0].tpm";
connectAttr "meta_R0_blade_pointConstraint1.w0" "meta_R0_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns549.og[0]" "meta_R0_crvShape.cr";
connectAttr "tweak697.pl[0].cp[0]" "meta_R0_crvShape.twl";
connectAttr "mgear_curveCns549GroupId.id" "meta_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns549Set.mwc" "meta_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8963.id" "meta_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet697.mwc" "meta_R0_crvShape.iog.og[1].gco";
connectAttr "finger_R0_blade_pointConstraint1.ctx" "finger_R0_blade.tx" -l on;
connectAttr "finger_R0_blade_pointConstraint1.cty" "finger_R0_blade.ty" -l on;
connectAttr "finger_R0_blade_pointConstraint1.ctz" "finger_R0_blade.tz" -l on;
connectAttr "finger_R0_blade_aimConstraint1.crx" "finger_R0_blade.rx" -l on;
connectAttr "finger_R0_blade_aimConstraint1.cry" "finger_R0_blade.ry" -l on;
connectAttr "finger_R0_blade_aimConstraint1.crz" "finger_R0_blade.rz" -l on;
connectAttr "finger_R0_blade.pim" "finger_R0_blade_aimConstraint1.cpim";
connectAttr "finger_R0_blade.t" "finger_R0_blade_aimConstraint1.ct";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_aimConstraint1.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_aimConstraint1.crt";
connectAttr "finger_R0_blade.ro" "finger_R0_blade_aimConstraint1.cro";
connectAttr "finger_R0_0_loc.t" "finger_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "finger_R0_0_loc.rp" "finger_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "finger_R0_0_loc.rpt" "finger_R0_blade_aimConstraint1.tg[0].trt";
connectAttr "finger_R0_0_loc.pm" "finger_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "finger_R0_blade_aimConstraint1.w0" "finger_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "finger_R0_root.wm" "finger_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion197.o" "finger_R0_blade_aimConstraint1.ox";
connectAttr "finger_R0_blade.pim" "finger_R0_blade_pointConstraint1.cpim";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_pointConstraint1.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_pointConstraint1.crt";
connectAttr "finger_R0_root.t" "finger_R0_blade_pointConstraint1.tg[0].tt";
connectAttr "finger_R0_root.rp" "finger_R0_blade_pointConstraint1.tg[0].trp";
connectAttr "finger_R0_root.rpt" "finger_R0_blade_pointConstraint1.tg[0].trt";
connectAttr "finger_R0_root.pm" "finger_R0_blade_pointConstraint1.tg[0].tpm";
connectAttr "finger_R0_blade_pointConstraint1.w0" "finger_R0_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns553.og[0]" "finger_R0_crvShape.cr";
connectAttr "tweak701.pl[0].cp[0]" "finger_R0_crvShape.twl";
connectAttr "mgear_curveCns553GroupId.id" "finger_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns553Set.mwc" "finger_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8971.id" "finger_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet701.mwc" "finger_R0_crvShape.iog.og[1].gco";
connectAttr "thumb_R0_blade_pointConstraint1.ctx" "thumb_R0_blade.tx" -l on;
connectAttr "thumb_R0_blade_pointConstraint1.cty" "thumb_R0_blade.ty" -l on;
connectAttr "thumb_R0_blade_pointConstraint1.ctz" "thumb_R0_blade.tz" -l on;
connectAttr "thumb_R0_blade_aimConstraint1.crx" "thumb_R0_blade.rx" -l on;
connectAttr "thumb_R0_blade_aimConstraint1.cry" "thumb_R0_blade.ry" -l on;
connectAttr "thumb_R0_blade_aimConstraint1.crz" "thumb_R0_blade.rz" -l on;
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_aimConstraint1.cpim";
connectAttr "thumb_R0_blade.t" "thumb_R0_blade_aimConstraint1.ct";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_aimConstraint1.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_aimConstraint1.crt";
connectAttr "thumb_R0_blade.ro" "thumb_R0_blade_aimConstraint1.cro";
connectAttr "thumb_R0_0_loc.t" "thumb_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "thumb_R0_0_loc.rp" "thumb_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "thumb_R0_0_loc.rpt" "thumb_R0_blade_aimConstraint1.tg[0].trt";
connectAttr "thumb_R0_0_loc.pm" "thumb_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "thumb_R0_blade_aimConstraint1.w0" "thumb_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "thumb_R0_root.wm" "thumb_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion198.o" "thumb_R0_blade_aimConstraint1.ox";
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_pointConstraint1.cpim";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_pointConstraint1.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_pointConstraint1.crt";
connectAttr "thumb_R0_root.t" "thumb_R0_blade_pointConstraint1.tg[0].tt";
connectAttr "thumb_R0_root.rp" "thumb_R0_blade_pointConstraint1.tg[0].trp";
connectAttr "thumb_R0_root.rpt" "thumb_R0_blade_pointConstraint1.tg[0].trt";
connectAttr "thumb_R0_root.pm" "thumb_R0_blade_pointConstraint1.tg[0].tpm";
connectAttr "thumb_R0_blade_pointConstraint1.w0" "thumb_R0_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns554.og[0]" "thumb_R0_crvShape.cr";
connectAttr "tweak702.pl[0].cp[0]" "thumb_R0_crvShape.twl";
connectAttr "mgear_curveCns554GroupId.id" "thumb_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns554Set.mwc" "thumb_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8973.id" "thumb_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet702.mwc" "thumb_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns548.og[0]" "arm_R0_crvShape.cr";
connectAttr "tweak696.pl[0].cp[0]" "arm_R0_crvShape.twl";
connectAttr "mgear_curveCns548GroupId.id" "arm_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns548Set.mwc" "arm_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8961.id" "arm_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet696.mwc" "arm_R0_crvShape.iog.og[1].gco";
connectAttr "shoulder_R0_blade_pointConstraint1.ctx" "shoulder_R0_blade.tx" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint1.cty" "shoulder_R0_blade.ty" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint1.ctz" "shoulder_R0_blade.tz" -l on
		;
connectAttr "shoulder_R0_blade_aimConstraint1.crx" "shoulder_R0_blade.rx" -l on;
connectAttr "shoulder_R0_blade_aimConstraint1.cry" "shoulder_R0_blade.ry" -l on;
connectAttr "shoulder_R0_blade_aimConstraint1.crz" "shoulder_R0_blade.rz" -l on;
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_aimConstraint1.cpim";
connectAttr "shoulder_R0_blade.t" "shoulder_R0_blade_aimConstraint1.ct";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_aimConstraint1.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_aimConstraint1.crt";
connectAttr "shoulder_R0_blade.ro" "shoulder_R0_blade_aimConstraint1.cro";
connectAttr "shoulder_R0_tip.t" "shoulder_R0_blade_aimConstraint1.tg[0].tt";
connectAttr "shoulder_R0_tip.rp" "shoulder_R0_blade_aimConstraint1.tg[0].trp";
connectAttr "shoulder_R0_tip.rpt" "shoulder_R0_blade_aimConstraint1.tg[0].trt";
connectAttr "shoulder_R0_tip.pm" "shoulder_R0_blade_aimConstraint1.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint1.w0" "shoulder_R0_blade_aimConstraint1.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint1.wum";
connectAttr "unitConversion192.o" "shoulder_R0_blade_aimConstraint1.ox";
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_pointConstraint1.cpim";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_pointConstraint1.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_pointConstraint1.crt";
connectAttr "shoulder_R0_root.t" "shoulder_R0_blade_pointConstraint1.tg[0].tt";
connectAttr "shoulder_R0_root.rp" "shoulder_R0_blade_pointConstraint1.tg[0].trp"
		;
connectAttr "shoulder_R0_root.rpt" "shoulder_R0_blade_pointConstraint1.tg[0].trt"
		;
connectAttr "shoulder_R0_root.pm" "shoulder_R0_blade_pointConstraint1.tg[0].tpm"
		;
connectAttr "shoulder_R0_blade_pointConstraint1.w0" "shoulder_R0_blade_pointConstraint1.tg[0].tw"
		;
connectAttr "mgear_curveCns547.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak695.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns547GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns547Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8959.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet695.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
connectAttr "spine_C0_blade_pointConstraint12.ctx" "spine_C0_blade.tx" -l on;
connectAttr "spine_C0_blade_pointConstraint12.cty" "spine_C0_blade.ty" -l on;
connectAttr "spine_C0_blade_pointConstraint12.ctz" "spine_C0_blade.tz" -l on;
connectAttr "spine_C0_blade_aimConstraint12.crx" "spine_C0_blade.rx" -l on;
connectAttr "spine_C0_blade_aimConstraint12.cry" "spine_C0_blade.ry" -l on;
connectAttr "spine_C0_blade_aimConstraint12.crz" "spine_C0_blade.rz" -l on;
connectAttr "spine_C0_blade.pim" "spine_C0_blade_aimConstraint12.cpim";
connectAttr "spine_C0_blade.t" "spine_C0_blade_aimConstraint12.ct";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_aimConstraint12.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_aimConstraint12.crt";
connectAttr "spine_C0_blade.ro" "spine_C0_blade_aimConstraint12.cro";
connectAttr "spine_C0_eff.t" "spine_C0_blade_aimConstraint12.tg[0].tt";
connectAttr "spine_C0_eff.rp" "spine_C0_blade_aimConstraint12.tg[0].trp";
connectAttr "spine_C0_eff.rpt" "spine_C0_blade_aimConstraint12.tg[0].trt";
connectAttr "spine_C0_eff.pm" "spine_C0_blade_aimConstraint12.tg[0].tpm";
connectAttr "spine_C0_blade_aimConstraint12.w0" "spine_C0_blade_aimConstraint12.tg[0].tw"
		;
connectAttr "spine_C0_root.wm" "spine_C0_blade_aimConstraint12.wum";
connectAttr "unitConversion182.o" "spine_C0_blade_aimConstraint12.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint12.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint12.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint12.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint12.w0" "spine_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns515.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak663.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns515GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns515Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId8895.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet663.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "leg_L0_root_st_profile.o" "leg_L0_root.st_profile";
connectAttr "leg_L0_root_sq_profile.o" "leg_L0_root.sq_profile";
connectAttr "mgear_curveCns542.og[0]" "foot_L0_crvShape.cr";
connectAttr "tweak690.pl[0].cp[0]" "foot_L0_crvShape.twl";
connectAttr "mgear_curveCns542GroupId.id" "foot_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns542Set.mwc" "foot_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8949.id" "foot_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet690.mwc" "foot_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns543.og[0]" "foot_L0_Shape1.cr";
connectAttr "tweak691.pl[0].cp[0]" "foot_L0_Shape1.twl";
connectAttr "mgear_curveCns543GroupId.id" "foot_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns543Set.mwc" "foot_L0_Shape1.iog.og[0].gco";
connectAttr "groupId8951.id" "foot_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet691.mwc" "foot_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns541.og[0]" "leg_L0_crvShape.cr";
connectAttr "tweak689.pl[0].cp[0]" "leg_L0_crvShape.twl";
connectAttr "mgear_curveCns541GroupId.id" "leg_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns541Set.mwc" "leg_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8947.id" "leg_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet689.mwc" "leg_L0_crvShape.iog.og[1].gco";
connectAttr "leg_R0_root_st_profile.o" "leg_R0_root.st_profile";
connectAttr "leg_R0_root_sq_profile.o" "leg_R0_root.sq_profile";
connectAttr "mgear_curveCns545.og[0]" "foot_R0_crvShape.cr";
connectAttr "tweak693.pl[0].cp[0]" "foot_R0_crvShape.twl";
connectAttr "mgear_curveCns545GroupId.id" "foot_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns545Set.mwc" "foot_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8955.id" "foot_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet693.mwc" "foot_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns546.og[0]" "foot_R0_Shape1.cr";
connectAttr "tweak694.pl[0].cp[0]" "foot_R0_Shape1.twl";
connectAttr "mgear_curveCns546GroupId.id" "foot_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns546Set.mwc" "foot_R0_Shape1.iog.og[0].gco";
connectAttr "groupId8957.id" "foot_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet694.mwc" "foot_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns544.og[0]" "leg_R0_crvShape.cr";
connectAttr "tweak692.pl[0].cp[0]" "leg_R0_crvShape.twl";
connectAttr "mgear_curveCns544GroupId.id" "leg_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns544Set.mwc" "leg_R0_crvShape.iog.og[0].gco";
connectAttr "groupId8953.id" "leg_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet692.mwc" "leg_R0_crvShape.iog.og[1].gco";
connectAttr "finger_L3_blade.bladeRollOffset" "unitConversion185.i";
connectAttr "mgear_curveCns519GroupParts.og" "mgear_curveCns519.ip[0].ig";
connectAttr "mgear_curveCns519GroupId.id" "mgear_curveCns519.ip[0].gi";
connectAttr "finger_L3_root.wm" "mgear_curveCns519.inputs[0]";
connectAttr "finger_L3_0_loc.wm" "mgear_curveCns519.inputs[1]";
connectAttr "finger_L3_1_loc.wm" "mgear_curveCns519.inputs[2]";
connectAttr "finger_L3_2_loc.wm" "mgear_curveCns519.inputs[3]";
connectAttr "mgear_curveCns519GroupId.msg" "mgear_curveCns519Set.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[0]" "mgear_curveCns519Set.dsm" -na;
connectAttr "mgear_curveCns519.msg" "mgear_curveCns519Set.ub[0]";
connectAttr "tweak667.og[0]" "mgear_curveCns519GroupParts.ig";
connectAttr "mgear_curveCns519GroupId.id" "mgear_curveCns519GroupParts.gi";
connectAttr "groupParts1334.og" "tweak667.ip[0].ig";
connectAttr "groupId8903.id" "tweak667.ip[0].gi";
connectAttr "groupId8903.msg" "tweakSet667.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[1]" "tweakSet667.dsm" -na;
connectAttr "tweak667.msg" "tweakSet667.ub[0]";
connectAttr "finger_L3_crvShapeOrig.ws" "groupParts1334.ig";
connectAttr "groupId8903.id" "groupParts1334.gi";
connectAttr "finger_L2_blade.bladeRollOffset" "unitConversion186.i";
connectAttr "mgear_curveCns520GroupParts.og" "mgear_curveCns520.ip[0].ig";
connectAttr "mgear_curveCns520GroupId.id" "mgear_curveCns520.ip[0].gi";
connectAttr "finger_L2_root.wm" "mgear_curveCns520.inputs[0]";
connectAttr "finger_L2_0_loc.wm" "mgear_curveCns520.inputs[1]";
connectAttr "finger_L2_1_loc.wm" "mgear_curveCns520.inputs[2]";
connectAttr "finger_L2_2_loc.wm" "mgear_curveCns520.inputs[3]";
connectAttr "mgear_curveCns520GroupId.msg" "mgear_curveCns520Set.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[0]" "mgear_curveCns520Set.dsm" -na;
connectAttr "mgear_curveCns520.msg" "mgear_curveCns520Set.ub[0]";
connectAttr "tweak668.og[0]" "mgear_curveCns520GroupParts.ig";
connectAttr "mgear_curveCns520GroupId.id" "mgear_curveCns520GroupParts.gi";
connectAttr "groupParts1336.og" "tweak668.ip[0].ig";
connectAttr "groupId8905.id" "tweak668.ip[0].gi";
connectAttr "groupId8905.msg" "tweakSet668.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[1]" "tweakSet668.dsm" -na;
connectAttr "tweak668.msg" "tweakSet668.ub[0]";
connectAttr "finger_L2_crvShapeOrig.ws" "groupParts1336.ig";
connectAttr "groupId8905.id" "groupParts1336.gi";
connectAttr "finger_L1_blade.bladeRollOffset" "unitConversion187.i";
connectAttr "mgear_curveCns521GroupParts.og" "mgear_curveCns521.ip[0].ig";
connectAttr "mgear_curveCns521GroupId.id" "mgear_curveCns521.ip[0].gi";
connectAttr "finger_L1_root.wm" "mgear_curveCns521.inputs[0]";
connectAttr "finger_L1_0_loc.wm" "mgear_curveCns521.inputs[1]";
connectAttr "finger_L1_1_loc.wm" "mgear_curveCns521.inputs[2]";
connectAttr "finger_L1_2_loc.wm" "mgear_curveCns521.inputs[3]";
connectAttr "mgear_curveCns521GroupId.msg" "mgear_curveCns521Set.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[0]" "mgear_curveCns521Set.dsm" -na;
connectAttr "mgear_curveCns521.msg" "mgear_curveCns521Set.ub[0]";
connectAttr "tweak669.og[0]" "mgear_curveCns521GroupParts.ig";
connectAttr "mgear_curveCns521GroupId.id" "mgear_curveCns521GroupParts.gi";
connectAttr "groupParts1338.og" "tweak669.ip[0].ig";
connectAttr "groupId8907.id" "tweak669.ip[0].gi";
connectAttr "groupId8907.msg" "tweakSet669.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[1]" "tweakSet669.dsm" -na;
connectAttr "tweak669.msg" "tweakSet669.ub[0]";
connectAttr "finger_L1_crvShapeOrig.ws" "groupParts1338.ig";
connectAttr "groupId8907.id" "groupParts1338.gi";
connectAttr "meta_L0_blade.bladeRollOffset" "unitConversion184.i";
connectAttr "mgear_curveCns518GroupParts.og" "mgear_curveCns518.ip[0].ig";
connectAttr "mgear_curveCns518GroupId.id" "mgear_curveCns518.ip[0].gi";
connectAttr "meta_L0_root.wm" "mgear_curveCns518.inputs[0]";
connectAttr "meta_L0_0_loc.wm" "mgear_curveCns518.inputs[1]";
connectAttr "meta_L0_1_loc.wm" "mgear_curveCns518.inputs[2]";
connectAttr "meta_L0_2_loc.wm" "mgear_curveCns518.inputs[3]";
connectAttr "mgear_curveCns518GroupId.msg" "mgear_curveCns518Set.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[0]" "mgear_curveCns518Set.dsm" -na;
connectAttr "mgear_curveCns518.msg" "mgear_curveCns518Set.ub[0]";
connectAttr "tweak666.og[0]" "mgear_curveCns518GroupParts.ig";
connectAttr "mgear_curveCns518GroupId.id" "mgear_curveCns518GroupParts.gi";
connectAttr "groupParts1332.og" "tweak666.ip[0].ig";
connectAttr "groupId8901.id" "tweak666.ip[0].gi";
connectAttr "groupId8901.msg" "tweakSet666.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[1]" "tweakSet666.dsm" -na;
connectAttr "tweak666.msg" "tweakSet666.ub[0]";
connectAttr "meta_L0_crvShapeOrig.ws" "groupParts1332.ig";
connectAttr "groupId8901.id" "groupParts1332.gi";
connectAttr "finger_L0_blade.bladeRollOffset" "unitConversion188.i";
connectAttr "mgear_curveCns522GroupParts.og" "mgear_curveCns522.ip[0].ig";
connectAttr "mgear_curveCns522GroupId.id" "mgear_curveCns522.ip[0].gi";
connectAttr "finger_L0_root.wm" "mgear_curveCns522.inputs[0]";
connectAttr "finger_L0_0_loc.wm" "mgear_curveCns522.inputs[1]";
connectAttr "finger_L0_1_loc.wm" "mgear_curveCns522.inputs[2]";
connectAttr "finger_L0_2_loc.wm" "mgear_curveCns522.inputs[3]";
connectAttr "mgear_curveCns522GroupId.msg" "mgear_curveCns522Set.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[0]" "mgear_curveCns522Set.dsm" -na;
connectAttr "mgear_curveCns522.msg" "mgear_curveCns522Set.ub[0]";
connectAttr "tweak670.og[0]" "mgear_curveCns522GroupParts.ig";
connectAttr "mgear_curveCns522GroupId.id" "mgear_curveCns522GroupParts.gi";
connectAttr "groupParts1340.og" "tweak670.ip[0].ig";
connectAttr "groupId8909.id" "tweak670.ip[0].gi";
connectAttr "groupId8909.msg" "tweakSet670.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[1]" "tweakSet670.dsm" -na;
connectAttr "tweak670.msg" "tweakSet670.ub[0]";
connectAttr "finger_L0_crvShapeOrig.ws" "groupParts1340.ig";
connectAttr "groupId8909.id" "groupParts1340.gi";
connectAttr "thumb_L0_blade.bladeRollOffset" "unitConversion189.i";
connectAttr "mgear_curveCns523GroupParts.og" "mgear_curveCns523.ip[0].ig";
connectAttr "mgear_curveCns523GroupId.id" "mgear_curveCns523.ip[0].gi";
connectAttr "thumb_L0_root.wm" "mgear_curveCns523.inputs[0]";
connectAttr "thumb_L0_0_loc.wm" "mgear_curveCns523.inputs[1]";
connectAttr "thumb_L0_1_loc.wm" "mgear_curveCns523.inputs[2]";
connectAttr "thumb_L0_2_loc.wm" "mgear_curveCns523.inputs[3]";
connectAttr "mgear_curveCns523GroupId.msg" "mgear_curveCns523Set.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[0]" "mgear_curveCns523Set.dsm" -na;
connectAttr "mgear_curveCns523.msg" "mgear_curveCns523Set.ub[0]";
connectAttr "tweak671.og[0]" "mgear_curveCns523GroupParts.ig";
connectAttr "mgear_curveCns523GroupId.id" "mgear_curveCns523GroupParts.gi";
connectAttr "groupParts1342.og" "tweak671.ip[0].ig";
connectAttr "groupId8911.id" "tweak671.ip[0].gi";
connectAttr "groupId8911.msg" "tweakSet671.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[1]" "tweakSet671.dsm" -na;
connectAttr "tweak671.msg" "tweakSet671.ub[0]";
connectAttr "thumb_L0_crvShapeOrig.ws" "groupParts1342.ig";
connectAttr "groupId8911.id" "groupParts1342.gi";
connectAttr "mgear_curveCns517GroupParts.og" "mgear_curveCns517.ip[0].ig";
connectAttr "mgear_curveCns517GroupId.id" "mgear_curveCns517.ip[0].gi";
connectAttr "arm_L0_root.wm" "mgear_curveCns517.inputs[0]";
connectAttr "arm_L0_elbow.wm" "mgear_curveCns517.inputs[1]";
connectAttr "arm_L0_wrist.wm" "mgear_curveCns517.inputs[2]";
connectAttr "arm_L0_eff.wm" "mgear_curveCns517.inputs[3]";
connectAttr "mgear_curveCns517GroupId.msg" "mgear_curveCns517Set.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[0]" "mgear_curveCns517Set.dsm" -na;
connectAttr "mgear_curveCns517.msg" "mgear_curveCns517Set.ub[0]";
connectAttr "tweak665.og[0]" "mgear_curveCns517GroupParts.ig";
connectAttr "mgear_curveCns517GroupId.id" "mgear_curveCns517GroupParts.gi";
connectAttr "groupParts1330.og" "tweak665.ip[0].ig";
connectAttr "groupId8899.id" "tweak665.ip[0].gi";
connectAttr "groupId8899.msg" "tweakSet665.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[1]" "tweakSet665.dsm" -na;
connectAttr "tweak665.msg" "tweakSet665.ub[0]";
connectAttr "arm_L0_crvShapeOrig.ws" "groupParts1330.ig";
connectAttr "groupId8899.id" "groupParts1330.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion183.i";
connectAttr "mgear_curveCns516GroupParts.og" "mgear_curveCns516.ip[0].ig";
connectAttr "mgear_curveCns516GroupId.id" "mgear_curveCns516.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns516.inputs[0]";
connectAttr "shoulder_L0_tip.wm" "mgear_curveCns516.inputs[1]";
connectAttr "mgear_curveCns516GroupId.msg" "mgear_curveCns516Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns516Set.dsm" -na;
connectAttr "mgear_curveCns516.msg" "mgear_curveCns516Set.ub[0]";
connectAttr "tweak664.og[0]" "mgear_curveCns516GroupParts.ig";
connectAttr "mgear_curveCns516GroupId.id" "mgear_curveCns516GroupParts.gi";
connectAttr "groupParts1328.og" "tweak664.ip[0].ig";
connectAttr "groupId8897.id" "tweak664.ip[0].gi";
connectAttr "groupId8897.msg" "tweakSet664.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet664.dsm" -na;
connectAttr "tweak664.msg" "tweakSet664.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts1328.ig";
connectAttr "groupId8897.id" "groupParts1328.gi";
connectAttr "mgear_curveCns527GroupParts.og" "mgear_curveCns527.ip[0].ig";
connectAttr "mgear_curveCns527GroupId.id" "mgear_curveCns527.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns527.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns527.inputs[1]";
connectAttr "mgear_curveCns527GroupId.msg" "mgear_curveCns527Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns527Set.dsm"
		 -na;
connectAttr "mgear_curveCns527.msg" "mgear_curveCns527Set.ub[0]";
connectAttr "tweak675.og[0]" "mgear_curveCns527GroupParts.ig";
connectAttr "mgear_curveCns527GroupId.id" "mgear_curveCns527GroupParts.gi";
connectAttr "groupParts1350.og" "tweak675.ip[0].ig";
connectAttr "groupId8919.id" "tweak675.ip[0].gi";
connectAttr "groupId8919.msg" "tweakSet675.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet675.dsm"
		 -na;
connectAttr "tweak675.msg" "tweakSet675.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1350.ig"
		;
connectAttr "groupId8919.id" "groupParts1350.gi";
connectAttr "mgear_curveCns528GroupParts.og" "mgear_curveCns528.ip[0].ig";
connectAttr "mgear_curveCns528GroupId.id" "mgear_curveCns528.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns528.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns528.inputs[1]";
connectAttr "mgear_curveCns528GroupId.msg" "mgear_curveCns528Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns528Set.dsm"
		 -na;
connectAttr "mgear_curveCns528.msg" "mgear_curveCns528Set.ub[0]";
connectAttr "tweak676.og[0]" "mgear_curveCns528GroupParts.ig";
connectAttr "mgear_curveCns528GroupId.id" "mgear_curveCns528GroupParts.gi";
connectAttr "groupParts1352.og" "tweak676.ip[0].ig";
connectAttr "groupId8921.id" "tweak676.ip[0].gi";
connectAttr "groupId8921.msg" "tweakSet676.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet676.dsm"
		 -na;
connectAttr "tweak676.msg" "tweakSet676.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1352.ig"
		;
connectAttr "groupId8921.id" "groupParts1352.gi";
connectAttr "tongue_C0_blade.bladeRollOffset" "unitConversion191.i";
connectAttr "mgear_curveCns530GroupParts.og" "mgear_curveCns530.ip[0].ig";
connectAttr "mgear_curveCns530GroupId.id" "mgear_curveCns530.ip[0].gi";
connectAttr "tongue_C0_root.wm" "mgear_curveCns530.inputs[0]";
connectAttr "tongue_C0_0_loc.wm" "mgear_curveCns530.inputs[1]";
connectAttr "tongue_C0_1_loc.wm" "mgear_curveCns530.inputs[2]";
connectAttr "tongue_C0_2_loc.wm" "mgear_curveCns530.inputs[3]";
connectAttr "tongue_C0_3_loc.wm" "mgear_curveCns530.inputs[4]";
connectAttr "mgear_curveCns530GroupId.msg" "mgear_curveCns530Set.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[0]" "mgear_curveCns530Set.dsm" -na;
connectAttr "mgear_curveCns530.msg" "mgear_curveCns530Set.ub[0]";
connectAttr "tweak678.og[0]" "mgear_curveCns530GroupParts.ig";
connectAttr "mgear_curveCns530GroupId.id" "mgear_curveCns530GroupParts.gi";
connectAttr "groupParts1356.og" "tweak678.ip[0].ig";
connectAttr "groupId8925.id" "tweak678.ip[0].gi";
connectAttr "groupId8925.msg" "tweakSet678.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[1]" "tweakSet678.dsm" -na;
connectAttr "tweak678.msg" "tweakSet678.ub[0]";
connectAttr "tongue_C0_crvShapeOrig.ws" "groupParts1356.ig";
connectAttr "groupId8925.id" "groupParts1356.gi";
connectAttr "mgear_curveCns526GroupParts.og" "mgear_curveCns526.ip[0].ig";
connectAttr "mgear_curveCns526GroupId.id" "mgear_curveCns526.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns526.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns526.inputs[1]";
connectAttr "mgear_curveCns526GroupId.msg" "mgear_curveCns526Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns526Set.dsm"
		 -na;
connectAttr "mgear_curveCns526.msg" "mgear_curveCns526Set.ub[0]";
connectAttr "tweak674.og[0]" "mgear_curveCns526GroupParts.ig";
connectAttr "mgear_curveCns526GroupId.id" "mgear_curveCns526GroupParts.gi";
connectAttr "groupParts1348.og" "tweak674.ip[0].ig";
connectAttr "groupId8917.id" "tweak674.ip[0].gi";
connectAttr "groupId8917.msg" "tweakSet674.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet674.dsm"
		 -na;
connectAttr "tweak674.msg" "tweakSet674.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts1348.ig"
		;
connectAttr "groupId8917.id" "groupParts1348.gi";
connectAttr "mgear_curveCns529GroupParts.og" "mgear_curveCns529.ip[0].ig";
connectAttr "mgear_curveCns529GroupId.id" "mgear_curveCns529.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns529.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns529.inputs[1]";
connectAttr "mgear_curveCns529GroupId.msg" "mgear_curveCns529Set.gn" -na;
connectAttr "mouth_C0_crv12Shape.iog.og[0]" "mgear_curveCns529Set.dsm" -na;
connectAttr "mgear_curveCns529.msg" "mgear_curveCns529Set.ub[0]";
connectAttr "tweak677.og[0]" "mgear_curveCns529GroupParts.ig";
connectAttr "mgear_curveCns529GroupId.id" "mgear_curveCns529GroupParts.gi";
connectAttr "groupParts1354.og" "tweak677.ip[0].ig";
connectAttr "groupId8923.id" "tweak677.ip[0].gi";
connectAttr "groupId8923.msg" "tweakSet677.gn" -na;
connectAttr "mouth_C0_crv12Shape.iog.og[1]" "tweakSet677.dsm" -na;
connectAttr "tweak677.msg" "tweakSet677.ub[0]";
connectAttr "mouth_C0_crv12ShapeOrig.ws" "groupParts1354.ig";
connectAttr "groupId8923.id" "groupParts1354.gi";
connectAttr "mgear_curveCns531GroupParts.og" "mgear_curveCns531.ip[0].ig";
connectAttr "mgear_curveCns531GroupId.id" "mgear_curveCns531.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns531.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns531.inputs[1]";
connectAttr "mgear_curveCns531GroupId.msg" "mgear_curveCns531Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns531Set.dsm" -na;
connectAttr "mgear_curveCns531.msg" "mgear_curveCns531Set.ub[0]";
connectAttr "tweak679.og[0]" "mgear_curveCns531GroupParts.ig";
connectAttr "mgear_curveCns531GroupId.id" "mgear_curveCns531GroupParts.gi";
connectAttr "groupParts1358.og" "tweak679.ip[0].ig";
connectAttr "groupId8927.id" "tweak679.ip[0].gi";
connectAttr "groupId8927.msg" "tweakSet679.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet679.dsm" -na;
connectAttr "tweak679.msg" "tweakSet679.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts1358.ig";
connectAttr "groupId8927.id" "groupParts1358.gi";
connectAttr "mgear_curveCns532GroupParts.og" "mgear_curveCns532.ip[0].ig";
connectAttr "mgear_curveCns532GroupId.id" "mgear_curveCns532.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns532.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns532.inputs[1]";
connectAttr "mgear_curveCns532GroupId.msg" "mgear_curveCns532Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns532Set.dsm" -na;
connectAttr "mgear_curveCns532.msg" "mgear_curveCns532Set.ub[0]";
connectAttr "tweak680.og[0]" "mgear_curveCns532GroupParts.ig";
connectAttr "mgear_curveCns532GroupId.id" "mgear_curveCns532GroupParts.gi";
connectAttr "groupParts1360.og" "tweak680.ip[0].ig";
connectAttr "groupId8929.id" "tweak680.ip[0].gi";
connectAttr "groupId8929.msg" "tweakSet680.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet680.dsm" -na;
connectAttr "tweak680.msg" "tweakSet680.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts1360.ig";
connectAttr "groupId8929.id" "groupParts1360.gi";
connectAttr "mgear_curveCns525GroupParts.og" "mgear_curveCns525.ip[0].ig";
connectAttr "mgear_curveCns525GroupId.id" "mgear_curveCns525.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns525.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns525.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns525.inputs[2]";
connectAttr "mgear_curveCns525GroupId.msg" "mgear_curveCns525Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns525Set.dsm" -na;
connectAttr "mgear_curveCns525.msg" "mgear_curveCns525Set.ub[0]";
connectAttr "tweak673.og[0]" "mgear_curveCns525GroupParts.ig";
connectAttr "mgear_curveCns525GroupId.id" "mgear_curveCns525GroupParts.gi";
connectAttr "groupParts1346.og" "tweak673.ip[0].ig";
connectAttr "groupId8915.id" "tweak673.ip[0].gi";
connectAttr "groupId8915.msg" "tweakSet673.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet673.dsm" -na;
connectAttr "tweak673.msg" "tweakSet673.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts1346.ig";
connectAttr "groupId8915.id" "groupParts1346.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion190.i";
connectAttr "mgear_curveCns524GroupParts.og" "mgear_curveCns524.ip[0].ig";
connectAttr "mgear_curveCns524GroupId.id" "mgear_curveCns524.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns524.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns524.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns524.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns524.inputs[3]";
connectAttr "mgear_curveCns524GroupId.msg" "mgear_curveCns524Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns524Set.dsm" -na;
connectAttr "mgear_curveCns524.msg" "mgear_curveCns524Set.ub[0]";
connectAttr "tweak672.og[0]" "mgear_curveCns524GroupParts.ig";
connectAttr "mgear_curveCns524GroupId.id" "mgear_curveCns524GroupParts.gi";
connectAttr "groupParts1344.og" "tweak672.ip[0].ig";
connectAttr "groupId8913.id" "tweak672.ip[0].gi";
connectAttr "groupId8913.msg" "tweakSet672.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet672.dsm" -na;
connectAttr "tweak672.msg" "tweakSet672.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts1344.ig";
connectAttr "groupId8913.id" "groupParts1344.gi";
connectAttr "finger_R3_blade.bladeRollOffset" "unitConversion194.i";
connectAttr "mgear_curveCns550GroupParts.og" "mgear_curveCns550.ip[0].ig";
connectAttr "mgear_curveCns550GroupId.id" "mgear_curveCns550.ip[0].gi";
connectAttr "finger_R3_root.wm" "mgear_curveCns550.inputs[0]";
connectAttr "finger_R3_0_loc.wm" "mgear_curveCns550.inputs[1]";
connectAttr "finger_R3_1_loc.wm" "mgear_curveCns550.inputs[2]";
connectAttr "finger_R3_2_loc.wm" "mgear_curveCns550.inputs[3]";
connectAttr "mgear_curveCns550GroupId.msg" "mgear_curveCns550Set.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[0]" "mgear_curveCns550Set.dsm" -na;
connectAttr "mgear_curveCns550.msg" "mgear_curveCns550Set.ub[0]";
connectAttr "tweak698.og[0]" "mgear_curveCns550GroupParts.ig";
connectAttr "mgear_curveCns550GroupId.id" "mgear_curveCns550GroupParts.gi";
connectAttr "groupParts1396.og" "tweak698.ip[0].ig";
connectAttr "groupId8965.id" "tweak698.ip[0].gi";
connectAttr "groupId8965.msg" "tweakSet698.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[1]" "tweakSet698.dsm" -na;
connectAttr "tweak698.msg" "tweakSet698.ub[0]";
connectAttr "finger_R3_crvShapeOrig.ws" "groupParts1396.ig";
connectAttr "groupId8965.id" "groupParts1396.gi";
connectAttr "finger_R2_blade.bladeRollOffset" "unitConversion195.i";
connectAttr "mgear_curveCns551GroupParts.og" "mgear_curveCns551.ip[0].ig";
connectAttr "mgear_curveCns551GroupId.id" "mgear_curveCns551.ip[0].gi";
connectAttr "finger_R2_root.wm" "mgear_curveCns551.inputs[0]";
connectAttr "finger_R2_0_loc.wm" "mgear_curveCns551.inputs[1]";
connectAttr "finger_R2_1_loc.wm" "mgear_curveCns551.inputs[2]";
connectAttr "finger_R2_2_loc.wm" "mgear_curveCns551.inputs[3]";
connectAttr "mgear_curveCns551GroupId.msg" "mgear_curveCns551Set.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[0]" "mgear_curveCns551Set.dsm" -na;
connectAttr "mgear_curveCns551.msg" "mgear_curveCns551Set.ub[0]";
connectAttr "tweak699.og[0]" "mgear_curveCns551GroupParts.ig";
connectAttr "mgear_curveCns551GroupId.id" "mgear_curveCns551GroupParts.gi";
connectAttr "groupParts1398.og" "tweak699.ip[0].ig";
connectAttr "groupId8967.id" "tweak699.ip[0].gi";
connectAttr "groupId8967.msg" "tweakSet699.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[1]" "tweakSet699.dsm" -na;
connectAttr "tweak699.msg" "tweakSet699.ub[0]";
connectAttr "finger_R2_crvShapeOrig.ws" "groupParts1398.ig";
connectAttr "groupId8967.id" "groupParts1398.gi";
connectAttr "finger_R1_blade.bladeRollOffset" "unitConversion196.i";
connectAttr "mgear_curveCns552GroupParts.og" "mgear_curveCns552.ip[0].ig";
connectAttr "mgear_curveCns552GroupId.id" "mgear_curveCns552.ip[0].gi";
connectAttr "finger_R1_root.wm" "mgear_curveCns552.inputs[0]";
connectAttr "finger_R1_0_loc.wm" "mgear_curveCns552.inputs[1]";
connectAttr "finger_R1_1_loc.wm" "mgear_curveCns552.inputs[2]";
connectAttr "finger_R1_2_loc.wm" "mgear_curveCns552.inputs[3]";
connectAttr "mgear_curveCns552GroupId.msg" "mgear_curveCns552Set.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[0]" "mgear_curveCns552Set.dsm" -na;
connectAttr "mgear_curveCns552.msg" "mgear_curveCns552Set.ub[0]";
connectAttr "tweak700.og[0]" "mgear_curveCns552GroupParts.ig";
connectAttr "mgear_curveCns552GroupId.id" "mgear_curveCns552GroupParts.gi";
connectAttr "groupParts1400.og" "tweak700.ip[0].ig";
connectAttr "groupId8969.id" "tweak700.ip[0].gi";
connectAttr "groupId8969.msg" "tweakSet700.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[1]" "tweakSet700.dsm" -na;
connectAttr "tweak700.msg" "tweakSet700.ub[0]";
connectAttr "finger_R1_crvShapeOrig.ws" "groupParts1400.ig";
connectAttr "groupId8969.id" "groupParts1400.gi";
connectAttr "meta_R0_blade.bladeRollOffset" "unitConversion193.i";
connectAttr "mgear_curveCns549GroupParts.og" "mgear_curveCns549.ip[0].ig";
connectAttr "mgear_curveCns549GroupId.id" "mgear_curveCns549.ip[0].gi";
connectAttr "meta_R0_root.wm" "mgear_curveCns549.inputs[0]";
connectAttr "meta_R0_0_loc.wm" "mgear_curveCns549.inputs[1]";
connectAttr "meta_R0_1_loc.wm" "mgear_curveCns549.inputs[2]";
connectAttr "meta_R0_2_loc.wm" "mgear_curveCns549.inputs[3]";
connectAttr "mgear_curveCns549GroupId.msg" "mgear_curveCns549Set.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[0]" "mgear_curveCns549Set.dsm" -na;
connectAttr "mgear_curveCns549.msg" "mgear_curveCns549Set.ub[0]";
connectAttr "tweak697.og[0]" "mgear_curveCns549GroupParts.ig";
connectAttr "mgear_curveCns549GroupId.id" "mgear_curveCns549GroupParts.gi";
connectAttr "groupParts1394.og" "tweak697.ip[0].ig";
connectAttr "groupId8963.id" "tweak697.ip[0].gi";
connectAttr "groupId8963.msg" "tweakSet697.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[1]" "tweakSet697.dsm" -na;
connectAttr "tweak697.msg" "tweakSet697.ub[0]";
connectAttr "meta_R0_crvShapeOrig.ws" "groupParts1394.ig";
connectAttr "groupId8963.id" "groupParts1394.gi";
connectAttr "finger_R0_blade.bladeRollOffset" "unitConversion197.i";
connectAttr "mgear_curveCns553GroupParts.og" "mgear_curveCns553.ip[0].ig";
connectAttr "mgear_curveCns553GroupId.id" "mgear_curveCns553.ip[0].gi";
connectAttr "finger_R0_root.wm" "mgear_curveCns553.inputs[0]";
connectAttr "finger_R0_0_loc.wm" "mgear_curveCns553.inputs[1]";
connectAttr "finger_R0_1_loc.wm" "mgear_curveCns553.inputs[2]";
connectAttr "finger_R0_2_loc.wm" "mgear_curveCns553.inputs[3]";
connectAttr "mgear_curveCns553GroupId.msg" "mgear_curveCns553Set.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[0]" "mgear_curveCns553Set.dsm" -na;
connectAttr "mgear_curveCns553.msg" "mgear_curveCns553Set.ub[0]";
connectAttr "tweak701.og[0]" "mgear_curveCns553GroupParts.ig";
connectAttr "mgear_curveCns553GroupId.id" "mgear_curveCns553GroupParts.gi";
connectAttr "groupParts1402.og" "tweak701.ip[0].ig";
connectAttr "groupId8971.id" "tweak701.ip[0].gi";
connectAttr "groupId8971.msg" "tweakSet701.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[1]" "tweakSet701.dsm" -na;
connectAttr "tweak701.msg" "tweakSet701.ub[0]";
connectAttr "finger_R0_crvShapeOrig.ws" "groupParts1402.ig";
connectAttr "groupId8971.id" "groupParts1402.gi";
connectAttr "thumb_R0_blade.bladeRollOffset" "unitConversion198.i";
connectAttr "mgear_curveCns554GroupParts.og" "mgear_curveCns554.ip[0].ig";
connectAttr "mgear_curveCns554GroupId.id" "mgear_curveCns554.ip[0].gi";
connectAttr "thumb_R0_root.wm" "mgear_curveCns554.inputs[0]";
connectAttr "thumb_R0_0_loc.wm" "mgear_curveCns554.inputs[1]";
connectAttr "thumb_R0_1_loc.wm" "mgear_curveCns554.inputs[2]";
connectAttr "thumb_R0_2_loc.wm" "mgear_curveCns554.inputs[3]";
connectAttr "mgear_curveCns554GroupId.msg" "mgear_curveCns554Set.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[0]" "mgear_curveCns554Set.dsm" -na;
connectAttr "mgear_curveCns554.msg" "mgear_curveCns554Set.ub[0]";
connectAttr "tweak702.og[0]" "mgear_curveCns554GroupParts.ig";
connectAttr "mgear_curveCns554GroupId.id" "mgear_curveCns554GroupParts.gi";
connectAttr "groupParts1404.og" "tweak702.ip[0].ig";
connectAttr "groupId8973.id" "tweak702.ip[0].gi";
connectAttr "groupId8973.msg" "tweakSet702.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[1]" "tweakSet702.dsm" -na;
connectAttr "tweak702.msg" "tweakSet702.ub[0]";
connectAttr "thumb_R0_crvShapeOrig.ws" "groupParts1404.ig";
connectAttr "groupId8973.id" "groupParts1404.gi";
connectAttr "mgear_curveCns548GroupParts.og" "mgear_curveCns548.ip[0].ig";
connectAttr "mgear_curveCns548GroupId.id" "mgear_curveCns548.ip[0].gi";
connectAttr "arm_R0_root.wm" "mgear_curveCns548.inputs[0]";
connectAttr "arm_R0_elbow.wm" "mgear_curveCns548.inputs[1]";
connectAttr "arm_R0_wrist.wm" "mgear_curveCns548.inputs[2]";
connectAttr "arm_R0_eff.wm" "mgear_curveCns548.inputs[3]";
connectAttr "mgear_curveCns548GroupId.msg" "mgear_curveCns548Set.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[0]" "mgear_curveCns548Set.dsm" -na;
connectAttr "mgear_curveCns548.msg" "mgear_curveCns548Set.ub[0]";
connectAttr "tweak696.og[0]" "mgear_curveCns548GroupParts.ig";
connectAttr "mgear_curveCns548GroupId.id" "mgear_curveCns548GroupParts.gi";
connectAttr "groupParts1392.og" "tweak696.ip[0].ig";
connectAttr "groupId8961.id" "tweak696.ip[0].gi";
connectAttr "groupId8961.msg" "tweakSet696.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[1]" "tweakSet696.dsm" -na;
connectAttr "tweak696.msg" "tweakSet696.ub[0]";
connectAttr "arm_R0_crvShapeOrig.ws" "groupParts1392.ig";
connectAttr "groupId8961.id" "groupParts1392.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion192.i";
connectAttr "mgear_curveCns547GroupParts.og" "mgear_curveCns547.ip[0].ig";
connectAttr "mgear_curveCns547GroupId.id" "mgear_curveCns547.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns547.inputs[0]";
connectAttr "shoulder_R0_tip.wm" "mgear_curveCns547.inputs[1]";
connectAttr "mgear_curveCns547GroupId.msg" "mgear_curveCns547Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns547Set.dsm" -na;
connectAttr "mgear_curveCns547.msg" "mgear_curveCns547Set.ub[0]";
connectAttr "tweak695.og[0]" "mgear_curveCns547GroupParts.ig";
connectAttr "mgear_curveCns547GroupId.id" "mgear_curveCns547GroupParts.gi";
connectAttr "groupParts1390.og" "tweak695.ip[0].ig";
connectAttr "groupId8959.id" "tweak695.ip[0].gi";
connectAttr "groupId8959.msg" "tweakSet695.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet695.dsm" -na;
connectAttr "tweak695.msg" "tweakSet695.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts1390.ig";
connectAttr "groupId8959.id" "groupParts1390.gi";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion182.i";
connectAttr "mgear_curveCns515GroupParts.og" "mgear_curveCns515.ip[0].ig";
connectAttr "mgear_curveCns515GroupId.id" "mgear_curveCns515.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns515.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns515.inputs[1]";
connectAttr "mgear_curveCns515GroupId.msg" "mgear_curveCns515Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns515Set.dsm" -na;
connectAttr "mgear_curveCns515.msg" "mgear_curveCns515Set.ub[0]";
connectAttr "tweak663.og[0]" "mgear_curveCns515GroupParts.ig";
connectAttr "mgear_curveCns515GroupId.id" "mgear_curveCns515GroupParts.gi";
connectAttr "groupParts1326.og" "tweak663.ip[0].ig";
connectAttr "groupId8895.id" "tweak663.ip[0].gi";
connectAttr "groupId8895.msg" "tweakSet663.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet663.dsm" -na;
connectAttr "tweak663.msg" "tweakSet663.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts1326.ig";
connectAttr "groupId8895.id" "groupParts1326.gi";
connectAttr "mgear_curveCns542GroupParts.og" "mgear_curveCns542.ip[0].ig";
connectAttr "mgear_curveCns542GroupId.id" "mgear_curveCns542.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns542.inputs[0]";
connectAttr "foot_L0_0_loc.wm" "mgear_curveCns542.inputs[1]";
connectAttr "foot_L0_1_loc.wm" "mgear_curveCns542.inputs[2]";
connectAttr "foot_L0_2_loc.wm" "mgear_curveCns542.inputs[3]";
connectAttr "mgear_curveCns542GroupId.msg" "mgear_curveCns542Set.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[0]" "mgear_curveCns542Set.dsm" -na;
connectAttr "mgear_curveCns542.msg" "mgear_curveCns542Set.ub[0]";
connectAttr "tweak690.og[0]" "mgear_curveCns542GroupParts.ig";
connectAttr "mgear_curveCns542GroupId.id" "mgear_curveCns542GroupParts.gi";
connectAttr "groupParts1380.og" "tweak690.ip[0].ig";
connectAttr "groupId8949.id" "tweak690.ip[0].gi";
connectAttr "groupId8949.msg" "tweakSet690.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[1]" "tweakSet690.dsm" -na;
connectAttr "tweak690.msg" "tweakSet690.ub[0]";
connectAttr "foot_L0_crvShapeOrig.ws" "groupParts1380.ig";
connectAttr "groupId8949.id" "groupParts1380.gi";
connectAttr "mgear_curveCns543GroupParts.og" "mgear_curveCns543.ip[0].ig";
connectAttr "mgear_curveCns543GroupId.id" "mgear_curveCns543.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns543.inputs[0]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns543.inputs[1]";
connectAttr "foot_L0_outpivot.wm" "mgear_curveCns543.inputs[2]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns543.inputs[3]";
connectAttr "foot_L0_inpivot.wm" "mgear_curveCns543.inputs[4]";
connectAttr "mgear_curveCns543GroupId.msg" "mgear_curveCns543Set.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[0]" "mgear_curveCns543Set.dsm" -na;
connectAttr "mgear_curveCns543.msg" "mgear_curveCns543Set.ub[0]";
connectAttr "tweak691.og[0]" "mgear_curveCns543GroupParts.ig";
connectAttr "mgear_curveCns543GroupId.id" "mgear_curveCns543GroupParts.gi";
connectAttr "groupParts1382.og" "tweak691.ip[0].ig";
connectAttr "groupId8951.id" "tweak691.ip[0].gi";
connectAttr "groupId8951.msg" "tweakSet691.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[1]" "tweakSet691.dsm" -na;
connectAttr "tweak691.msg" "tweakSet691.ub[0]";
connectAttr "foot_L0_Shape1Orig1.ws" "groupParts1382.ig";
connectAttr "groupId8951.id" "groupParts1382.gi";
connectAttr "mgear_curveCns541GroupParts.og" "mgear_curveCns541.ip[0].ig";
connectAttr "mgear_curveCns541GroupId.id" "mgear_curveCns541.ip[0].gi";
connectAttr "leg_L0_root.wm" "mgear_curveCns541.inputs[0]";
connectAttr "leg_L0_knee.wm" "mgear_curveCns541.inputs[1]";
connectAttr "leg_L0_ankle.wm" "mgear_curveCns541.inputs[2]";
connectAttr "leg_L0_eff.wm" "mgear_curveCns541.inputs[3]";
connectAttr "mgear_curveCns541GroupId.msg" "mgear_curveCns541Set.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[0]" "mgear_curveCns541Set.dsm" -na;
connectAttr "mgear_curveCns541.msg" "mgear_curveCns541Set.ub[0]";
connectAttr "tweak689.og[0]" "mgear_curveCns541GroupParts.ig";
connectAttr "mgear_curveCns541GroupId.id" "mgear_curveCns541GroupParts.gi";
connectAttr "groupParts1378.og" "tweak689.ip[0].ig";
connectAttr "groupId8947.id" "tweak689.ip[0].gi";
connectAttr "groupId8947.msg" "tweakSet689.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[1]" "tweakSet689.dsm" -na;
connectAttr "tweak689.msg" "tweakSet689.ub[0]";
connectAttr "leg_L0_crvShapeOrig.ws" "groupParts1378.ig";
connectAttr "groupId8947.id" "groupParts1378.gi";
connectAttr "mgear_curveCns545GroupParts.og" "mgear_curveCns545.ip[0].ig";
connectAttr "mgear_curveCns545GroupId.id" "mgear_curveCns545.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns545.inputs[0]";
connectAttr "foot_R0_0_loc.wm" "mgear_curveCns545.inputs[1]";
connectAttr "foot_R0_1_loc.wm" "mgear_curveCns545.inputs[2]";
connectAttr "foot_R0_2_loc.wm" "mgear_curveCns545.inputs[3]";
connectAttr "mgear_curveCns545GroupId.msg" "mgear_curveCns545Set.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[0]" "mgear_curveCns545Set.dsm" -na;
connectAttr "mgear_curveCns545.msg" "mgear_curveCns545Set.ub[0]";
connectAttr "tweak693.og[0]" "mgear_curveCns545GroupParts.ig";
connectAttr "mgear_curveCns545GroupId.id" "mgear_curveCns545GroupParts.gi";
connectAttr "groupParts1386.og" "tweak693.ip[0].ig";
connectAttr "groupId8955.id" "tweak693.ip[0].gi";
connectAttr "groupId8955.msg" "tweakSet693.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[1]" "tweakSet693.dsm" -na;
connectAttr "tweak693.msg" "tweakSet693.ub[0]";
connectAttr "foot_R0_crvShapeOrig.ws" "groupParts1386.ig";
connectAttr "groupId8955.id" "groupParts1386.gi";
connectAttr "mgear_curveCns546GroupParts.og" "mgear_curveCns546.ip[0].ig";
connectAttr "mgear_curveCns546GroupId.id" "mgear_curveCns546.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns546.inputs[0]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns546.inputs[1]";
connectAttr "foot_R0_outpivot.wm" "mgear_curveCns546.inputs[2]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns546.inputs[3]";
connectAttr "foot_R0_inpivot.wm" "mgear_curveCns546.inputs[4]";
connectAttr "mgear_curveCns546GroupId.msg" "mgear_curveCns546Set.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[0]" "mgear_curveCns546Set.dsm" -na;
connectAttr "mgear_curveCns546.msg" "mgear_curveCns546Set.ub[0]";
connectAttr "tweak694.og[0]" "mgear_curveCns546GroupParts.ig";
connectAttr "mgear_curveCns546GroupId.id" "mgear_curveCns546GroupParts.gi";
connectAttr "groupParts1388.og" "tweak694.ip[0].ig";
connectAttr "groupId8957.id" "tweak694.ip[0].gi";
connectAttr "groupId8957.msg" "tweakSet694.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[1]" "tweakSet694.dsm" -na;
connectAttr "tweak694.msg" "tweakSet694.ub[0]";
connectAttr "foot_R0_Shape1Orig.ws" "groupParts1388.ig";
connectAttr "groupId8957.id" "groupParts1388.gi";
connectAttr "mgear_curveCns544GroupParts.og" "mgear_curveCns544.ip[0].ig";
connectAttr "mgear_curveCns544GroupId.id" "mgear_curveCns544.ip[0].gi";
connectAttr "leg_R0_root.wm" "mgear_curveCns544.inputs[0]";
connectAttr "leg_R0_knee.wm" "mgear_curveCns544.inputs[1]";
connectAttr "leg_R0_ankle.wm" "mgear_curveCns544.inputs[2]";
connectAttr "leg_R0_eff.wm" "mgear_curveCns544.inputs[3]";
connectAttr "mgear_curveCns544GroupId.msg" "mgear_curveCns544Set.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[0]" "mgear_curveCns544Set.dsm" -na;
connectAttr "mgear_curveCns544.msg" "mgear_curveCns544Set.ub[0]";
connectAttr "tweak692.og[0]" "mgear_curveCns544GroupParts.ig";
connectAttr "mgear_curveCns544GroupId.id" "mgear_curveCns544GroupParts.gi";
connectAttr "groupParts1384.og" "tweak692.ip[0].ig";
connectAttr "groupId8953.id" "tweak692.ip[0].gi";
connectAttr "groupId8953.msg" "tweakSet692.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[1]" "tweakSet692.dsm" -na;
connectAttr "tweak692.msg" "tweakSet692.ub[0]";
connectAttr "leg_R0_crvShapeOrig.ws" "groupParts1384.ig";
connectAttr "groupId8953.id" "groupParts1384.gi";
// End of chr.ma
