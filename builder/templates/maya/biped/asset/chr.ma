//Maya ASCII 2018ff07 scene
//Name: chr.ma
//Last modified: Mon, Sep 17, 2018 03:22:45 PM
//Codeset: ANSI_X3.4-1968
requires maya "2018ff07";
requires -nodeType "mgear_curveCns" "mgear_solvers" "2.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201711281015-8e846c9074";
fileInfo "osv" "Linux 3.10.0-693.17.1.el7.x86_64 #1 SMP Thu Jan 25 20:13:58 UTC 2018 x86_64";
createNode transform -s -n "persp";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005563";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.50761635035748 22.356854369510565 25.175987119112744 ;
	setAttr ".r" -type "double3" -23.738352729602507 27.000000000000021 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005564";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 35.43260776007493;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005565";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005566";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005567";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005568";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005569";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA540000556A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "guide";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E5C";
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
	addAttr -ci true -sn "L_color_fk" -ln "L_color_fk" -dv 15 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "L_color_ik" -ln "L_color_ik" -dv 15 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_fk" -ln "R_color_fk" -dv 4 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_ik" -ln "R_color_ik" -dv 4 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_fk" -ln "C_color_fk" -dv 17 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_ik" -ln "C_color_ik" -dv 17 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "joint_rig" -ln "joint_rig" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "synoptic" -ln "synoptic" -dt "string";
	addAttr -ci true -sn "doPreCustomStep" -ln "doPreCustomStep" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "doPostCustomStep" -ln "doPostCustomStep" -dv 1 -min 0 -max 
		1 -at "bool";
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
	setAttr ".postCustomStep" -type "string" "mf_default_mgeartmp | /jack/jobs/479_veryAstronaut/tools/maya/python/mgear_templates/mf_default_mgeartmp.py";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2017-08-29 18:34:07.211000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.2.4";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA6B00005AC9";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "global_C0_root" -p "guide";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E5F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E5E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E61";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E63";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E65";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E68";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E74";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E73";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E75";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E77";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E79";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E7C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E88";
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
	setAttr ".s" -type "double3" 1.8613851194869451 1.8613851194869344 1.8613851194869451 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E87";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E89";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E8B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E8D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E90";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5372343366941873 0 1.1928998604342202e-16 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E9C";
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
	setAttr ".t" -type "double3" -8.3266726846886741e-17 1.7763568394002505e-15 -2.4651903288156619e-32 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.51189149642410492 0.51189149642410248 0.5118914964241017 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E9B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E9D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005E9F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EA1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EA6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.3760066881565312 -6.6613381477509392e-16 1.2325951644078309e-31 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999933 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "spine_C0_effShape" -p "spine_C0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EA5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EA7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EA9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EAB";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EAD";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EAF";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EC2";
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
	setAttr ".t" -type "double3" 3.2578484988603371 0.60394549966678646 -1.9764781265571731 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 89.999999999999986 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.88775990675476291 0.88775990675476024 0.88775990675475946 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EC1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EC3";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EC5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EC7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005ECA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -7.1054273576010019e-15 1.1821982708976551 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.1821982708976519 1.1821982708976526 1.1821982708976544 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "shoulder_L0_root" -p "spine_C0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005ED6";
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
	setAttr ".t" -type "double3" 1.7395848890977383 -0.016853043661002681 -0.1167332775326502 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184624 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 1.0000000000000033 1 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005ED5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005ED7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005ED9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EDB";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EDE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.33303929285645317 -0.91350954729966838 -1.5239746815175859 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999534 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EDD";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EDF";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EE1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EE3";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EE5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EE7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EFA";
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
	addAttr -ci true -sn "ikTR" -ln "ikTR" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorIK" -ln "mirrorIK" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.9539925233402755e-14 9.9920072216264089e-16 6.6613381477509392e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386876 44.41121298317983 -5.4710434405384296 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "arm_2jnt_freeTangents_01";
	setAttr ".comp_name" -type "string" "arm";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_L0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "shoulder_L0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "arm_L0_rootShape" -p "arm_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF9";
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
createNode nurbsCurve -n "arm_L0_root4Shape" -p "arm_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EFB";
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
createNode nurbsCurve -n "arm_L0_root5Shape" -p "arm_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EFD";
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
createNode nurbsCurve -n "arm_L0_root6Shape" -p "arm_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EFF";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F04";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.828333598232331 5.3290705182007514e-15 0.07897679025290949 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784265 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F03";
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
createNode nurbsCurve -n "arm_L0_elbow4Shape" -p "arm_L0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F05";
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
createNode nurbsCurve -n "arm_L0_elbow5Shape" -p "arm_L0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F07";
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
createNode nurbsCurve -n "arm_L0_elbow6Shape" -p "arm_L0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F09";
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
createNode nurbsCurve -n "arm_L0_elbow6_0crvShape" -p "arm_L0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F0B";
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
createNode nurbsCurve -n "arm_L0_elbow6_1crvShape" -p "arm_L0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F0D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F10";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891496983 5.3290705182007514e-15 -0.11960611218230457 ;
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
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F0F";
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
createNode nurbsCurve -n "arm_L0_wrist4Shape" -p "arm_L0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F11";
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
createNode nurbsCurve -n "arm_L0_wrist5Shape" -p "arm_L0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F13";
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
createNode nurbsCurve -n "arm_L0_wrist6Shape" -p "arm_L0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F15";
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
createNode nurbsCurve -n "arm_L0_wrist6_0crvShape" -p "arm_L0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F17";
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
createNode nurbsCurve -n "arm_L0_wrist6_1crvShape" -p "arm_L0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F19";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F1C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.5126353293614798 -1.7763568394002505e-15 -9.7144514654701197e-17 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_effShape" -p "arm_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F1B";
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
createNode nurbsCurve -n "arm_L0_eff4Shape" -p "arm_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F1D";
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
createNode nurbsCurve -n "arm_L0_eff5Shape" -p "arm_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F1F";
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
createNode nurbsCurve -n "arm_L0_eff6Shape" -p "arm_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F21";
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
createNode nurbsCurve -n "arm_L0_eff6_0crvShape" -p "arm_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F23";
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
createNode nurbsCurve -n "arm_L0_eff6_1crvShape" -p "arm_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F25";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F33";
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
	setAttr ".t" -type "double3" -1.4043678102314745 0.56073114764519083 -0.29276117198398871 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999922 1.000000000000002 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F32";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F34";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F36";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F38";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F3B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.11347623085809078 -0.027001577630493045 1.0430060296210661 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145881845 3.3190804973695842 45.379324150247783 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377431 1.0495082267377382 1.0495082267377402 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "meta_L0_root" -p "arm_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F47";
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
	setAttr ".t" -type "double3" -1.247535625575233 -0.075350553640967988 0.35296225288850308 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008867482 93.717381466937169 86.467960127477852 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716952 0.30838721081716902 0.30838721081716974 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F46";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F48";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F4A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F4C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F4F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617074 1.4210854715202004e-14 -3.1974423109204508e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F4E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F50";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F52";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F54";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F56";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F58";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F5B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618362 2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000016 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F5A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F5C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F5E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F60";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F62";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F64";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F67";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618673 -1.4210854715202004e-14 -1.7763568394002505e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999867 0.99999999999999822 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_2_locShape" -p "meta_L0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F66";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F68";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F6A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F6C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F6E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F70";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F83";
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
	setAttr ".t" -type "double3" 0.27518484001103305 -0.17360051577774271 2.4946799341790502 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878577688 -68.587073855452616 -5.8163374181175636 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661812 1.2929668245661783 1.2929668245661803 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F82";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F84";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F86";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F88";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F8B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84766209830561579 1.7763568394002505e-14 -5.1070259132757201e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F8A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F8C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F8E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F90";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F92";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F94";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F97";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070876839 -2.4868995751603507e-14 3.1086244689504383e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.999999999999999 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F96";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F98";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F9A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F9C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F9E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FA0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FA3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259193368 1.4210854715202004e-14 -3.7747582837255322e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000013 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FA2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FA4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FA6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FA8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FAA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FAC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FAF";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FAE";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970866 0 0
		0 0.2585933649132362 0
		0 0 0
		;
createNode aimConstraint -n "finger_L3_blade_aimConstraint12" -p "finger_L3_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB1";
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
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-15 2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB4";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646755456 -29.032786855763408 1.4804327725055939 ;
	setAttr ".r" -type "double3" -7.5791665394154952 -14.304244378899739 49.348303523762333 ;
	setAttr ".s" -type "double3" 2.6320983106786149 2.6320983106786029 2.6320983106786087 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FBF";
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
	setAttr ".t" -type "double3" 0.2140420123212281 -0.17620518664703866 2.841484575664742 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121372485 -82.086889237978951 -14.829711404949929 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661783 1.2929668245661767 1.2929668245661796 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FBE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FC0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FC2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FC4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FC7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217406307 3.5527136788005009e-15 3.1086244689504383e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000022 1.0000000000000009 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FC6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FC8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FCA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FCC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FCE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FD0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FD3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587175644 7.1054273576010019e-15 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FD2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FD4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FD6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FD8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FDA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FDC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FDF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.6745702667491571 -1.0658141036401503e-14 -8.8817841970012523e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FDE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FE0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FE2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FE4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FE6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FE8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FEB";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000022 1.0000000000000009 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FEA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970699 0 0
		0 0.25859336491323565 0
		0 0 0
		;
createNode aimConstraint -n "finger_L2_blade_aimConstraint12" -p "finger_L2_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FEC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FED";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 3.5527136788005009e-15 -2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L2_crv" -p "finger_L2_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931310556 -29.023661369441456 1.4173349723097166 ;
	setAttr ".r" -type "double3" -0.54140613099233947 -1.590480499648401 47.737641631364269 ;
	setAttr ".s" -type "double3" 2.6320983106786149 2.6320983106786029 2.6320983106786091 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FEF";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FFB";
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
	setAttr ".t" -type "double3" -0.0077643969605976082 -0.12358406696706226 2.9483952421545769 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870208 -79.977014017423897 -112.77222628638708 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661794 1.2929668245661807 1.2929668245661796 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FFA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FFC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FFE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006000";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006003";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999998046 7.1054273576010019e-15 6.6613381477509392e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006002";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006004";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006006";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006008";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000600A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000600C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000600F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414019505 1.4210854715202004e-14 -8.8817841970012523e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000600E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006010";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006012";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006014";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006016";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006018";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000601B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549589761 -7.1054273576010019e-15 -1.9984014443252818e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_2_locShape" -p "finger_L1_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000601A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000601C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000601E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006020";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006022";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006024";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006027";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006026";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970766 0 0
		0 0.25859336491323587 0
		0 0 0
		;
createNode aimConstraint -n "finger_L1_blade_aimConstraint12" -p "finger_L1_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006028";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006029";
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
	setAttr ".rst" -type "double3" 0 -3.5527136788005009e-15 1.1102230246251565e-15 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000602C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153305 -28.040620010901343 1.1418187531083996 ;
	setAttr ".r" -type "double3" 5.8484943948556163 9.9768879508730368 54.11134735287866 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.6320983106786016 2.63209831067861 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000602B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000602E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F73";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F72";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030171 0 0
		0 0.061677442163433904 0
		0 0 0
		;
createNode aimConstraint -n "meta_L0_blade_aimConstraint12" -p "meta_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F74";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F75";
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
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F78";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058399608 -38.076493243284709 11.714163621937313 ;
	setAttr ".r" -type "double3" -81.595645682431609 -44.654258545701332 89.275820115296327 ;
	setAttr ".s" -type "double3" 3.403215794704129 3.4032157947041144 3.4032157947041259 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F77";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F7A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006037";
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
	setAttr ".t" -type "double3" -0.18403723679763306 -0.30586006047041536 2.7614233959505619 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808565 -71.606679450098284 -133.79382708613559 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661783 1.2929668245661798 1.2929668245661812 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006036";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006038";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000603A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000603C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000603F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0000000000000018 -3.5527136788005009e-15 4.8849813083506888e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999933 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000603E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006040";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006042";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006044";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006046";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006048";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000604B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080927607 -2.8421709430404007e-14 3.9968028886505635e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000604A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000604C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000604E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006050";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006052";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006054";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006057";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.5843137039236872 3.5527136788005009e-14 -6.6613381477509392e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006056";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006058";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000605A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000605C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000605E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006060";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006063";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006062";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970699 0 0
		0 0.25859336491323565 0
		0 0 0
		;
createNode aimConstraint -n "finger_L0_blade_aimConstraint12" -p "finger_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006064";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006065";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 3.5527136788005009e-15 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006068";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713247 -27.336008057181147 2.4648652761296752 ;
	setAttr ".r" -type "double3" 9.1654334880191488 22.111176212555261 57.120615095545553 ;
	setAttr ".s" -type "double3" 2.6320983106786109 2.6320983106786007 2.6320983106786056 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006067";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000606A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006073";
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
	setAttr ".t" -type "double3" 0.21303623709073616 -0.22489125789798692 0.13070337452153424 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.773522784840476 -84.001563523230857 11.009204406919109 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041286 3.4032157947041153 3.4032157947041224 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006072";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006074";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006076";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006078";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000607B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 3.730349362740526e-14 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205936 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999767 1.0000000000000007 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "thumb_L0_root" -p "thumbRoll_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006087";
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
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 7.2164496600635175e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913076 -43.900240512232401 -37.623269198287865 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511111 0.48936434703511034 0.48936434703511184 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006086";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006088";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000608A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000608C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000608F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470028 0.0024095775966967992 -7.1054273576010019e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060451 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999856 1 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000608E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006090";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006092";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006094";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006096";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006098";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000609B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522321 -7.1054273576010019e-15 2.1316282072803006e-14 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000609A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000609C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000609E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060A0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060A2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060A4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060A7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510742 1.0658141036401503e-14 1.4210854715202004e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000011 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060A6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060A8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060AA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060AC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060AE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B3";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999822 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.29361860822106667 0 0
		0 0.097872869407022223 0
		0 0 0
		;
createNode aimConstraint -n "thumb_L0_blade_aimConstraint12" -p "thumb_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B4";
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
	setAttr ".o" -type "double3" 0 0 -0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_L0_blade_pointConstraint12" -p "thumb_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B5";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 0 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042954 -7.0737929587543622 17.725867635512767 ;
	setAttr ".r" -type "double3" -124.44302205362722 63.100734454449814 -77.2813541627022 ;
	setAttr ".s" -type "double3" 2.0434672163157259 2.0434672163157197 2.0434672163157273 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060BA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F28";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200543 -11.862061807473003 1.1564412205648633 ;
	setAttr ".r" -type "double3" -2.1534408611045892 -4.1959370793366828 45.43774004929827 ;
	setAttr ".s" -type "double3" 1.0495082267377431 1.0495082267377385 1.0495082267377422 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F27";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F2A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EEA";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999634 0.99999999999999756 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EE9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.6000000000000012 0 0
		0 0.2000000000000004 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_L0_blade_aimConstraint12" -p "shoulder_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EEB";
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
	setAttr ".o" -type "double3" 0 -77.672759511533968 30.353471066068828 ;
	setAttr ".rsrr" -type "double3" -1.7493050748049341e-14 -1.8288189418415221e-14 6.3611093629270367e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint12" -p "shoulder_L0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EEC";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -8.6736173798840355e-18 -1.3877787807814457e-17 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EEF";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509836 0.0092761897382756166 0.11673327753265016 ;
	setAttr ".r" -type "double3" -90.803889228153778 90 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377369 1.0495082267377362 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EEE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060C3";
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
	setAttr ".t" -type "double3" 2.2667429610648462 0.5374818108556636 -4.2147015411630282e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 180 0 90.000000000000014 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.59839228104243691 0.59839228104243269 0.59839228104243281 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060C2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060C4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060C6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060C8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060CD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.66811733981641019 2.4674946259577801 1.5382908879615304e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999556 0.99999999999999623 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_neckShape" -p "neck_C0_neck";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060CC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060CE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060D0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060D2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060D4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060D6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060D9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.2490009027033011e-16 0.10000000000006182 1.2246467991476512e-17 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060D8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060DA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060DC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060DE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060E0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060E2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060E5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1934897514720433e-15 3.074620997828152 2.3592239273284182e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999933 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_effShape" -p "neck_C0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060E4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060E6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060E8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060EA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060EC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060EE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006124";
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
	setAttr ".t" -type "double3" 1.9567680809018384e-15 1.3604681763870019 7.2046004192796251e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000004 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006123";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006125";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006127";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006129";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000612C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7538799546502086 0 -3.8943958161623671e-16 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.7538799546502162 1.7538799546502193 1.7538799546502095 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "mouth_C0_root" -p "neck_C0_head";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006138";
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
	setAttr ".t" -type "double3" 9.0205620750793969e-16 -3.907985046680551e-14 1.7723706024531467e-17 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95913545105009479 0.95913545105009301 0.95913545105009024 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006137";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006139";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000613B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000613D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006140";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.7644326417193537e-16 -0.62123610319592615 1.8022590188867555 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999623 0.99999999999999967 0.99999999999999678 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_rotcenterShape" -p "mouth_C0_rotcenter";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000613F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006141";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006143";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006145";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006147";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006149";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000614C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.976153631341655e-17 0.12388352783447942 0.23628786867351548 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_lipupShape" -p "mouth_C0_lipup";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000614B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000614D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000614F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006151";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006153";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006155";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000617B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2860216724904459e-15 -30.115037669761499 -2.1322109539326539 ;
	setAttr ".s" -type "double3" 1.8286050763007586 1.8286050763007602 1.8286050763007613 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000617A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000617D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006158";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.8775621283846668e-17 -0.14678247393470301 0.18194531820222415 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_liplowShape" -p "mouth_C0_liplow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006157";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006159";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000615B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000615D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000615F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006161";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006186";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2770075875200162e-15 -29.844371667992313 -2.077868403461363 ;
	setAttr ".s" -type "double3" 1.8286050763007586 1.8286050763007602 1.8286050763007613 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006185";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006188";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006164";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.0917243463457505e-15 -1.4111110000775007 2.069208323497326 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999623 0.99999999999999967 0.99999999999999678 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "mouth_C0_jawShape" -p "mouth_C0_jaw";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006163";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006165";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006167";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006169";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000616B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000616D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000619C";
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
	setAttr ".t" -type "double3" 8.2909663197643915e-16 0.86108709817294127 -1.6295011454214565 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.17172273903700605 0.17172273903700594 0.17172273903700605 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000619B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000619D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000619F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061A1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061A4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0143079180641485e-16 -2.8421709430404007e-14 1.5794817263027467 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000016 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_0_locShape" -p "tongue_C0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061A3";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061A5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061A7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061A9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061AB";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061AD";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061B0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.21706804414413e-16 -0.16556620751521223 1.5794817263027454 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999922 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061AF";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061B1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061B3";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061B5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061B7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061B9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061BC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.3944831544644254e-16 -0.31043663909056818 1.5794817263027392 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061BB";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061BD";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061BF";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061C1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061C3";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061C5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061C8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0903429653442165e-16 -0.062087327818233007 1.5794817263027543 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999944 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061C7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061C9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061CB";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061CD";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061CF";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061D1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061D4";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000024 1.0000000000000016 1.0000000000000011 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "tongue_C0_bladeShape" -p "tongue_C0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.10303364342220363 0 0
		0 0.034344547807401211 0
		0 0 0
		;
createNode aimConstraint -n "tongue_C0_blade_aimConstraint12" -p "tongue_C0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061D5";
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
	setAttr ".o" -type "double3" 0 89.999999999998963 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "tongue_C0_blade_pointConstraint12" -p "tongue_C0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061D6";
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
	setAttr ".rst" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode transform -n "tongue_C0_crv" -p "tongue_C0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061D9";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3232792471046777e-14 -175.06339877760735 -3.1060024283290262 ;
	setAttr ".s" -type "double3" 10.648590201596399 10.648590201596415 10.648590201596411 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061D8";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061DB";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006170";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757836e-15 -30.612390245122914 -0.093664066372375773 ;
	setAttr ".s" -type "double3" 1.8286050763007509 1.8286050763007586 1.8286050763007542 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000616F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006172";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006191";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2522264729757836e-15 -30.612390245122914 -0.093664066372375773 ;
	setAttr ".s" -type "double3" 1.8286050763007509 1.8286050763007586 1.8286050763007542 ;
createNode nurbsCurve -n "mouth_C0_crv12Shape" -p "mouth_C0_crv12";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006190";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "mouth_C0_crv12ShapeOrig" -p "mouth_C0_crv12";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006193";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061E4";
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
	setAttr ".t" -type "double3" -5.2613992666289517 0.71045535901631141 -3.3130608822386169e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932595 1.6711445512932535 1.6711445512932517 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061E3";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061E5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061E7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061E9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.6607527914310155e-16 3.5527136788005009e-15 1.0495082267377369 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377329 1.0495082267377391 1.0495082267377349 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "eye_R0_root" -p "neck_C0_head";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061F8";
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
	setAttr ".t" -type "double3" -1.4961368484464233 0.70921581084612839 -0.51425464314724312 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999767 0.99999999999999933 -0.99999999999999811 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061F7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061F9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061FB";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061FD";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006200";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 -3.5527136788005009e-15 3.7697842257179244 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 0.99999999999999989 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000061FF";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006201";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006203";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006205";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006207";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006209";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000620C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314723912 -30.070644536323627 -1.585973374993682 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.753879954650218 1.7538799546502195 -1.7538799546502122 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000620B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000620E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006217";
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
	setAttr ".t" -type "double3" -1.4961368484464219 0.70921581084612839 0.51425464314724101 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999933 0.99999999999999989 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006216";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006218";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000621A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000621C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000621F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-16 -1.4210854715202004e-14 3.769784225717915 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999623 0.99999999999999944 0.99999999999999734 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_L0_lookShape" -p "eye_L0_look";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000621E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006220";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006222";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006224";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006226";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006228";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000622B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.51425464314724512 -30.070644536323627 -1.5859733749936777 ;
	setAttr ".s" -type "double3" 1.7538799546502151 1.7538799546502193 1.7538799546502091 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000622A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000622D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060FD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.097870096211562785 -0.34322132772766167 -2.03009631928149e-17 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060FC";
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
createNode nurbsCurve -n "neck_C0_tanShape24" -p "neck_C0_tan1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060FE";
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
createNode nurbsCurve -n "neck_C0_tanShape25" -p "neck_C0_tan1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006100";
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
createNode nurbsCurve -n "neck_C0_tanShape26" -p "neck_C0_tan1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006102";
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
createNode nurbsCurve -n "neck_C0_tan24_0crvShape" -p "neck_C0_tan1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006104";
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
createNode nurbsCurve -n "neck_C0_tan24_1crvShape" -p "neck_C0_tan1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006106";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006119";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.089836526547255047 -29.261428725477415 -4.0684386981538033e-15 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502168 1.7538799546502186 1.7538799546502093 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006118";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000611B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060F1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.076579783198171603 0.45329667709498622 3.8508704761368141e-17 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999556 0.99999999999999623 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_tanShape0" -p "neck_C0_tan0";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060F0";
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
createNode nurbsCurve -n "neck_C0_tanShape23" -p "neck_C0_tan0";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060F2";
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
createNode nurbsCurve -n "neck_C0_tanShape24" -p "neck_C0_tan0";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060F4";
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
createNode nurbsCurve -n "neck_C0_tanShape25" -p "neck_C0_tan0";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060F6";
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
createNode nurbsCurve -n "neck_C0_tan23_0crvShape" -p "neck_C0_tan0";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060F8";
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
createNode nurbsCurve -n "neck_C0_tan23_1crvShape" -p "neck_C0_tan0";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060FA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006109";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 180 -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932495 1.6711445512932441 1.6711445512932424 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006108";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.35903536862546215 0 0
		0 0.11967845620848738 0
		0 0 0
		;
createNode aimConstraint -n "neck_C0_blade_aimConstraint12" -p "neck_C0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000610A";
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
	setAttr ".o" -type "double3" 180 0 99.588988022635164 ;
	setAttr ".rsrr" -type "double3" 360 -6.9186723345595754e-15 360 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint12" -p "neck_C0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000610B";
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
	setAttr ".rst" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000610E";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.57828081326915548 -26.793934099519529 -3.9146096093576487e-15 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502162 1.753879954650212 1.7538799546502015 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000610D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006110";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006236";
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
	setAttr ".t" -type "double3" 1.7395848890977383 -0.016853043661002681 0.11673327753265023 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 179.19611077184624 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 1.0000000000000033 -1 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006235";
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
createNode nurbsCurve -n "shoulder_R0_root4Shape" -p "shoulder_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006237";
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
createNode nurbsCurve -n "shoulder_R0_root5Shape" -p "shoulder_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006239";
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
createNode nurbsCurve -n "shoulder_R0_root6Shape" -p "shoulder_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000623B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000623E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.3330392928564514 -0.91350954729966927 -1.5239746815175854 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999523 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000623D";
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
createNode nurbsCurve -n "shoulder_R0_tip4Shape" -p "shoulder_R0_tip";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000623F";
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
createNode nurbsCurve -n "shoulder_R0_tip5Shape" -p "shoulder_R0_tip";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006241";
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
createNode nurbsCurve -n "shoulder_R0_tip6Shape" -p "shoulder_R0_tip";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006243";
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
createNode nurbsCurve -n "shoulder_R0_tip6_0crvShape" -p "shoulder_R0_tip";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006245";
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
createNode nurbsCurve -n "shoulder_R0_tip6_1crvShape" -p "shoulder_R0_tip";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006247";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000625A";
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
	addAttr -ci true -sn "ikTR" -ln "ikTR" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorMid" -ln "mirrorMid" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirrorIK" -ln "mirrorIK" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.9539925233402755e-14 7.7715611723760958e-16 -2.2204460492503131e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386904 44.411212983179823 -5.4710434405384714 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999933 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "arm_2jnt_freeTangents_01";
	setAttr ".comp_name" -type "string" "arm";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "armUI_R0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "shoulder_R0_tip,local_C0_root,body_C0_root,spine_C0_eff,spine_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "arm_R0_rootShape" -p "arm_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006259";
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
createNode nurbsCurve -n "arm_R0_root4Shape" -p "arm_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000625B";
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
createNode nurbsCurve -n "arm_R0_root5Shape" -p "arm_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000625D";
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
createNode nurbsCurve -n "arm_R0_root6Shape" -p "arm_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000625F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006264";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8283335982323239 7.1054273576010019e-15 0.078976790252909712 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784276 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999778 1.0000000000000009 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006263";
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
createNode nurbsCurve -n "arm_R0_elbow4Shape" -p "arm_R0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006265";
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
createNode nurbsCurve -n "arm_R0_elbow5Shape" -p "arm_R0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006267";
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
createNode nurbsCurve -n "arm_R0_elbow6Shape" -p "arm_R0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006269";
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
createNode nurbsCurve -n "arm_R0_elbow6_0crvShape" -p "arm_R0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000626B";
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
createNode nurbsCurve -n "arm_R0_elbow6_1crvShape" -p "arm_R0_elbow";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000626D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006270";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.9351547891497058 0 -0.11960611218230488 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999956 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000626F";
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
createNode nurbsCurve -n "arm_R0_wrist4Shape" -p "arm_R0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006271";
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
createNode nurbsCurve -n "arm_R0_wrist5Shape" -p "arm_R0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006273";
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
createNode nurbsCurve -n "arm_R0_wrist6Shape" -p "arm_R0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006275";
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
createNode nurbsCurve -n "arm_R0_wrist6_0crvShape" -p "arm_R0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006277";
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
createNode nurbsCurve -n "arm_R0_wrist6_1crvShape" -p "arm_R0_wrist";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006279";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000627C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.5126353293614754 0 6.6613381477509392e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000627B";
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
createNode nurbsCurve -n "arm_R0_eff4Shape" -p "arm_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000627D";
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
createNode nurbsCurve -n "arm_R0_eff5Shape" -p "arm_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000627F";
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
createNode nurbsCurve -n "arm_R0_eff6Shape" -p "arm_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006281";
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
createNode nurbsCurve -n "arm_R0_eff6_0crvShape" -p "arm_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006283";
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
createNode nurbsCurve -n "arm_R0_eff6_1crvShape" -p "arm_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006285";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006293";
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
	setAttr ".t" -type "double3" -1.4043678102314749 0.56073114764518905 -0.29276117198398882 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999889 1.0000000000000018 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006292";
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
createNode nurbsCurve -n "armUI_R0_root4Shape" -p "armUI_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006294";
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
createNode nurbsCurve -n "armUI_R0_root5Shape" -p "armUI_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006296";
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
createNode nurbsCurve -n "armUI_R0_root6Shape" -p "armUI_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006298";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000629B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.11347623085809255 -0.027001577630491269 1.0430060296210653 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145881543 3.3190804973696304 45.37932415024779 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377427 1.0495082267377385 1.0495082267377398 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "meta_R0_root" -p "arm_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062A7";
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
	setAttr ".t" -type "double3" -1.2475356255752339 -0.075350553640967988 0.35296225288850269 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008867894 93.717381466937198 86.467960127477483 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716947 0.30838721081716902 0.30838721081716991 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062A6";
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
createNode nurbsCurve -n "meta_R0_root4Shape" -p "meta_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062A8";
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
createNode nurbsCurve -n "meta_R0_root5Shape" -p "meta_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062AA";
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
createNode nurbsCurve -n "meta_R0_root6Shape" -p "meta_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062AC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062AF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617118 1.4210854715202004e-14 -2.1316282072803006e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999933 0.99999999999999767 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062AE";
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
createNode nurbsCurve -n "meta_R0_0_loc4Shape" -p "meta_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062B0";
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
createNode nurbsCurve -n "meta_R0_0_loc5Shape" -p "meta_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062B2";
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
createNode nurbsCurve -n "meta_R0_0_loc6Shape" -p "meta_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062B4";
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
createNode nurbsCurve -n "meta_R0_0_loc6_0crvShape" -p "meta_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062B6";
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
createNode nurbsCurve -n "meta_R0_0_loc6_1crvShape" -p "meta_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062B8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062BB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618539 2.8421709430404007e-14 2.1316282072803006e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000013 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062BA";
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
createNode nurbsCurve -n "meta_R0_1_loc4Shape" -p "meta_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062BC";
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
createNode nurbsCurve -n "meta_R0_1_loc5Shape" -p "meta_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062BE";
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
createNode nurbsCurve -n "meta_R0_1_loc6Shape" -p "meta_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062C0";
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
createNode nurbsCurve -n "meta_R0_1_loc6_0crvShape" -p "meta_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062C2";
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
createNode nurbsCurve -n "meta_R0_1_loc6_1crvShape" -p "meta_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062C4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062C7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618584 -1.4210854715202004e-14 -3.1974423109204508e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999867 0.99999999999999845 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062C6";
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
createNode nurbsCurve -n "meta_R0_2_loc4Shape" -p "meta_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062C8";
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
createNode nurbsCurve -n "meta_R0_2_loc5Shape" -p "meta_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062CA";
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
createNode nurbsCurve -n "meta_R0_2_loc6Shape" -p "meta_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062CC";
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
createNode nurbsCurve -n "meta_R0_2_loc6_0crvShape" -p "meta_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062CE";
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
createNode nurbsCurve -n "meta_R0_2_loc6_1crvShape" -p "meta_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062E3";
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
	setAttr ".t" -type "double3" 0.27518484001103127 -0.17360051577770008 2.4946799341790467 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4173319878562864 -68.587073855452772 -5.8163374181155065 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661821 1.2929668245661783 1.2929668245661812 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062E2";
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
createNode nurbsCurve -n "finger_R3_root4Shape" -p "finger_R3_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062E4";
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
createNode nurbsCurve -n "finger_R3_root5Shape" -p "finger_R3_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062E6";
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
createNode nurbsCurve -n "finger_R3_root6Shape" -p "finger_R3_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062E8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062EB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.8476620983056149 1.4210854715202004e-14 -6.2172489379008766e-15 ;
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
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062EA";
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
createNode nurbsCurve -n "finger_R3_0_loc4Shape" -p "finger_R3_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062EC";
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
createNode nurbsCurve -n "finger_R3_0_loc5Shape" -p "finger_R3_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062EE";
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
createNode nurbsCurve -n "finger_R3_0_loc6Shape" -p "finger_R3_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062F0";
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
createNode nurbsCurve -n "finger_R3_0_loc6_0crvShape" -p "finger_R3_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062F2";
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
createNode nurbsCurve -n "finger_R3_0_loc6_1crvShape" -p "finger_R3_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062F4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062F7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57524361070876306 -2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999933 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062F6";
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
createNode nurbsCurve -n "finger_R3_1_loc4Shape" -p "finger_R3_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062F8";
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
createNode nurbsCurve -n "finger_R3_1_loc5Shape" -p "finger_R3_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062FA";
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
createNode nurbsCurve -n "finger_R3_1_loc6Shape" -p "finger_R3_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062FC";
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
createNode nurbsCurve -n "finger_R3_1_loc6_0crvShape" -p "finger_R3_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062FE";
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
createNode nurbsCurve -n "finger_R3_1_loc6_1crvShape" -p "finger_R3_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006300";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006303";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.31616177259194966 2.1316282072803006e-14 -1.9984014443252818e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 1.0000000000000011 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006302";
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
createNode nurbsCurve -n "finger_R3_2_loc4Shape" -p "finger_R3_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006304";
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
createNode nurbsCurve -n "finger_R3_2_loc5Shape" -p "finger_R3_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006306";
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
createNode nurbsCurve -n "finger_R3_2_loc6Shape" -p "finger_R3_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006308";
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
createNode nurbsCurve -n "finger_R3_2_loc6_0crvShape" -p "finger_R3_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000630A";
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
createNode nurbsCurve -n "finger_R3_2_loc6_1crvShape" -p "finger_R3_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000630C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000630F";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000630E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970921 0 0
		0 0.25859336491323642 0
		0 0 0
		;
createNode aimConstraint -n "finger_R3_blade_aimConstraint2" -p "finger_R3_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006310";
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
createNode pointConstraint -n "finger_R3_blade_pointConstraint2" -p "finger_R3_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006311";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006314";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1560938646755297 -29.032786855763401 1.4804327725059441 ;
	setAttr ".r" -type "double3" 7.5791665394159127 165.69575562110083 49.348303523762439 ;
	setAttr ".s" -type "double3" 2.6320983106786136 2.6320983106786016 -2.6320983106786064 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006313";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006316";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000631F";
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
	setAttr ".t" -type "double3" 0.21404201232122499 -0.17620518664700313 2.8414845756647296 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 19.114415121368744 -82.086889237979179 -14.829711404944442 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661794 1.2929668245661772 1.2929668245661803 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000631E";
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
createNode nurbsCurve -n "finger_R2_root4Shape" -p "finger_R2_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006320";
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
createNode nurbsCurve -n "finger_R2_root5Shape" -p "finger_R2_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006322";
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
createNode nurbsCurve -n "finger_R2_root6Shape" -p "finger_R2_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006324";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006327";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.94501387217405952 0 3.3306690738754696e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006326";
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
createNode nurbsCurve -n "finger_R2_0_loc4Shape" -p "finger_R2_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006328";
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
createNode nurbsCurve -n "finger_R2_0_loc5Shape" -p "finger_R2_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000632A";
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
createNode nurbsCurve -n "finger_R2_0_loc6Shape" -p "finger_R2_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000632C";
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
createNode nurbsCurve -n "finger_R2_0_loc6_0crvShape" -p "finger_R2_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000632E";
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
createNode nurbsCurve -n "finger_R2_0_loc6_1crvShape" -p "finger_R2_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006330";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006333";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76775488587176088 1.4210854715202004e-14 -2.2204460492503131e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999944 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006332";
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
createNode nurbsCurve -n "finger_R2_1_loc4Shape" -p "finger_R2_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006334";
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
createNode nurbsCurve -n "finger_R2_1_loc5Shape" -p "finger_R2_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006336";
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
createNode nurbsCurve -n "finger_R2_1_loc6Shape" -p "finger_R2_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006338";
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
createNode nurbsCurve -n "finger_R2_1_loc6_0crvShape" -p "finger_R2_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000633A";
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
createNode nurbsCurve -n "finger_R2_1_loc6_1crvShape" -p "finger_R2_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000633C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000633F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674915621 -1.4210854715202004e-14 -1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_2_locShape" -p "finger_R2_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000633E";
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
createNode nurbsCurve -n "finger_R2_2_loc4Shape" -p "finger_R2_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006340";
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
createNode nurbsCurve -n "finger_R2_2_loc5Shape" -p "finger_R2_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006342";
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
createNode nurbsCurve -n "finger_R2_2_loc6Shape" -p "finger_R2_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006344";
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
createNode nurbsCurve -n "finger_R2_2_loc6_0crvShape" -p "finger_R2_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006346";
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
createNode nurbsCurve -n "finger_R2_2_loc6_1crvShape" -p "finger_R2_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006348";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000634B";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.000000000000002 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000634A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970766 0 0
		0 0.25859336491323587 0
		0 0 0
		;
createNode aimConstraint -n "finger_R2_blade_aimConstraint2" -p "finger_R2_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000634C";
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
createNode pointConstraint -n "finger_R2_blade_pointConstraint2" -p "finger_R2_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000634D";
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
	setAttr ".rst" -type "double3" -5.3290705182007514e-15 0 4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R2_crv" -p "finger_R2_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006350";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0630938931310432 -29.02366136944142 1.4173349723106257 ;
	setAttr ".r" -type "double3" 0.54140613099354062 178.4095195003529 47.737641631364319 ;
	setAttr ".s" -type "double3" 2.6320983106786131 2.632098310678602 -2.6320983106786078 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000634F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006352";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000635B";
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
	setAttr ".t" -type "double3" -0.0077643969605976082 -0.12358406696701962 2.9483952421545823 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 121.34021398870304 -79.97701401742458 -112.77222628638876 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661792 1.292966824566181 1.2929668245661785 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000635A";
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
createNode nurbsCurve -n "finger_R1_root4Shape" -p "finger_R1_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000635C";
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
createNode nurbsCurve -n "finger_R1_root5Shape" -p "finger_R1_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000635E";
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
createNode nurbsCurve -n "finger_R1_root6Shape" -p "finger_R1_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006360";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006363";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.99999999999998046 0 3.1086244689504383e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006362";
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
createNode nurbsCurve -n "finger_R1_0_loc4Shape" -p "finger_R1_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006364";
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
createNode nurbsCurve -n "finger_R1_0_loc5Shape" -p "finger_R1_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006366";
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
createNode nurbsCurve -n "finger_R1_0_loc6Shape" -p "finger_R1_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006368";
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
createNode nurbsCurve -n "finger_R1_0_loc6_0crvShape" -p "finger_R1_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000636A";
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
createNode nurbsCurve -n "finger_R1_0_loc6_1crvShape" -p "finger_R1_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000636C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000636F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414018794 2.4868995751603507e-14 -2.2204460492503131e-16 ;
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
createNode nurbsCurve -n "finger_R1_1_locShape" -p "finger_R1_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000636E";
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
createNode nurbsCurve -n "finger_R1_1_loc4Shape" -p "finger_R1_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006370";
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
createNode nurbsCurve -n "finger_R1_1_loc5Shape" -p "finger_R1_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006372";
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
createNode nurbsCurve -n "finger_R1_1_loc6Shape" -p "finger_R1_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006374";
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
createNode nurbsCurve -n "finger_R1_1_loc6_0crvShape" -p "finger_R1_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006376";
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
createNode nurbsCurve -n "finger_R1_1_loc6_1crvShape" -p "finger_R1_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006378";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000637B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58017281549590294 -2.4868995751603507e-14 -1.1102230246251565e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000637A";
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
createNode nurbsCurve -n "finger_R1_2_loc4Shape" -p "finger_R1_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000637C";
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
createNode nurbsCurve -n "finger_R1_2_loc5Shape" -p "finger_R1_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000637E";
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
createNode nurbsCurve -n "finger_R1_2_loc6Shape" -p "finger_R1_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006380";
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
createNode nurbsCurve -n "finger_R1_2_loc6_0crvShape" -p "finger_R1_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006382";
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
createNode nurbsCurve -n "finger_R1_2_loc6_1crvShape" -p "finger_R1_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006384";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006387";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999944 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006386";
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
createNode aimConstraint -n "finger_R1_blade_aimConstraint2" -p "finger_R1_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006388";
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
createNode pointConstraint -n "finger_R1_blade_pointConstraint2" -p "finger_R1_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006389";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000638C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.222433225153345 -28.040620010901346 1.141818753108037 ;
	setAttr ".r" -type "double3" 174.15150560514397 -9.9768879508724222 -125.88865264712119 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106786029 -2.6320983106786118 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000638B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000638E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D3";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999933 0.99999999999999767 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D2";
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
createNode aimConstraint -n "meta_R0_blade_aimConstraint2" -p "meta_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D4";
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
createNode pointConstraint -n "meta_R0_blade_pointConstraint2" -p "meta_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D5";
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
	setAttr ".rst" -type "double3" -4.4408920985006262e-16 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.8070066058399608 -38.076493243284553 11.714163621937848 ;
	setAttr ".r" -type "double3" -98.404354317568362 44.654258545700536 -90.724179884703645 ;
	setAttr ".s" -type "double3" 3.4032157947041282 3.403215794704114 -3.4032157947041242 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062DA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006397";
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
	setAttr ".t" -type "double3" -0.18403723679763306 -0.30586006047037984 2.7614233959505796 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 150.01356893808688 -71.60667945009881 -133.79382708613727 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661781 1.2929668245661798 1.2929668245661807 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006396";
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
createNode nurbsCurve -n "finger_R0_root4Shape" -p "finger_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006398";
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
createNode nurbsCurve -n "finger_R0_root5Shape" -p "finger_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000639A";
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
createNode nurbsCurve -n "finger_R0_root6Shape" -p "finger_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000639C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000639F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1 -3.5527136788005009e-15 6.2172489379008766e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000639E";
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
createNode nurbsCurve -n "finger_R0_0_loc4Shape" -p "finger_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063A0";
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
createNode nurbsCurve -n "finger_R0_0_loc5Shape" -p "finger_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063A2";
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
createNode nurbsCurve -n "finger_R0_0_loc6Shape" -p "finger_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063A4";
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
createNode nurbsCurve -n "finger_R0_0_loc6_0crvShape" -p "finger_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063A6";
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
createNode nurbsCurve -n "finger_R0_0_loc6_1crvShape" -p "finger_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063A8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063AB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.80442008080927607 -2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063AA";
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
createNode nurbsCurve -n "finger_R0_1_loc4Shape" -p "finger_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063AC";
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
createNode nurbsCurve -n "finger_R0_1_loc5Shape" -p "finger_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063AE";
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
createNode nurbsCurve -n "finger_R0_1_loc6Shape" -p "finger_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063B0";
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
createNode nurbsCurve -n "finger_R0_1_loc6_0crvShape" -p "finger_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063B2";
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
createNode nurbsCurve -n "finger_R0_1_loc6_1crvShape" -p "finger_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063B4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063B7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.58431370392367832 3.5527136788005009e-14 -8.8817841970012523e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_2_locShape" -p "finger_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063B6";
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
createNode nurbsCurve -n "finger_R0_2_loc4Shape" -p "finger_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063B8";
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
createNode nurbsCurve -n "finger_R0_2_loc5Shape" -p "finger_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063BA";
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
createNode nurbsCurve -n "finger_R0_2_loc6Shape" -p "finger_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063BC";
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
createNode nurbsCurve -n "finger_R0_2_loc6_0crvShape" -p "finger_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063BE";
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
createNode nurbsCurve -n "finger_R0_2_loc6_1crvShape" -p "finger_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C3";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970677 0 0
		0 0.25859336491323559 0
		0 0 0
		;
createNode aimConstraint -n "finger_R0_blade_aimConstraint2" -p "finger_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C4";
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
createNode pointConstraint -n "finger_R0_blade_pointConstraint2" -p "finger_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C5";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -3.5527136788005009e-15 4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode transform -n "finger_R0_crv" -p "finger_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 12.549990763713261 -27.336008057181171 2.4648652761294043 ;
	setAttr ".r" -type "double3" 170.83456651198054 -22.111176212554785 -122.87938490445428 ;
	setAttr ".s" -type "double3" 2.6320983106786096 2.6320983106786007 -2.6320983106786051 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C7";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063CA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063D3";
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
	setAttr ".t" -type "double3" 0.21303623709073793 -0.22489125789798692 0.13070337452155378 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848479553 -84.001563523230729 11.009204406926511 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041268 3.4032157947041153 3.4032157947041206 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063D2";
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
createNode nurbsCurve -n "thumbRoll_R0_root4Shape" -p "thumbRoll_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063D4";
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
createNode nurbsCurve -n "thumbRoll_R0_root5Shape" -p "thumbRoll_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063D6";
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
createNode nurbsCurve -n "thumbRoll_R0_root6Shape" -p "thumbRoll_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063D8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063DB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.9968028886505635e-15 3.5527136788005009e-14 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205921 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 0.99999999999999778 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "thumb_R0_root" -p "thumbRoll_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063E7";
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
	setAttr ".t" -type "double3" -2.6645352591003757e-15 0 7.7715611723760958e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 110.80108631913073 -43.900240512232358 -37.623269198287851 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511106 0.48936434703511006 0.4893643470351115 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063E6";
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
createNode nurbsCurve -n "thumb_R0_root4Shape" -p "thumb_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063E8";
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
createNode nurbsCurve -n "thumb_R0_root5Shape" -p "thumb_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063EA";
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
createNode nurbsCurve -n "thumb_R0_root6Shape" -p "thumb_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063EC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063EF";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.86054350703470206 0.0024095775966994637 -7.1054273576010019e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060567 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 1.0000000000000004 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063EE";
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
createNode nurbsCurve -n "thumb_R0_0_loc4Shape" -p "thumb_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063F0";
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
createNode nurbsCurve -n "thumb_R0_0_loc5Shape" -p "thumb_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063F2";
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
createNode nurbsCurve -n "thumb_R0_0_loc6Shape" -p "thumb_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063F4";
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
createNode nurbsCurve -n "thumb_R0_0_loc6_0crvShape" -p "thumb_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063F6";
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
createNode nurbsCurve -n "thumb_R0_0_loc6_1crvShape" -p "thumb_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063F8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063FB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.76442580145522676 -8.8817841970012523e-15 1.7763568394002505e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999867 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063FA";
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
createNode nurbsCurve -n "thumb_R0_1_loc4Shape" -p "thumb_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063FC";
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
createNode nurbsCurve -n "thumb_R0_1_loc5Shape" -p "thumb_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063FE";
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
createNode nurbsCurve -n "thumb_R0_1_loc6Shape" -p "thumb_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006400";
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
createNode nurbsCurve -n "thumb_R0_1_loc6_0crvShape" -p "thumb_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006402";
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
createNode nurbsCurve -n "thumb_R0_1_loc6_1crvShape" -p "thumb_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006404";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006407";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.59482114915510209 9.7699626167013776e-15 1.7763568394002505e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000009 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006406";
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
createNode nurbsCurve -n "thumb_R0_2_loc4Shape" -p "thumb_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006408";
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
createNode nurbsCurve -n "thumb_R0_2_loc5Shape" -p "thumb_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000640A";
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
createNode nurbsCurve -n "thumb_R0_2_loc6Shape" -p "thumb_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000640C";
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
createNode nurbsCurve -n "thumb_R0_2_loc6_0crvShape" -p "thumb_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000640E";
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
createNode nurbsCurve -n "thumb_R0_2_loc6_1crvShape" -p "thumb_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006410";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006413";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999867 0.99999999999999867 1 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006412";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.29361860822106661 0 0
		0 0.097872869407022209 0
		0 0 0
		;
createNode aimConstraint -n "thumb_R0_blade_aimConstraint2" -p "thumb_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006414";
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
	setAttr ".o" -type "double3" 0 0 -0.16043147704029556 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint2" -p "thumb_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006415";
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
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 8.8817841970012523e-16 3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode transform -n "thumb_R0_crv" -p "thumb_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006418";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 14.330153889042951 -7.0737929587543702 17.725867635512774 ;
	setAttr ".r" -type "double3" -55.556977946372804 -63.100734454449814 102.71864583729787 ;
	setAttr ".s" -type "double3" 2.0434672163157268 2.0434672163157206 -2.0434672163157273 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006417";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000641A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006288";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5792744434200419 -11.862061807473006 1.1564412205648711 ;
	setAttr ".r" -type "double3" 2.1534408611046039 175.80406292066334 45.437740049298441 ;
	setAttr ".s" -type "double3" 1.0495082267377425 1.0495082267377378 -1.0495082267377416 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006287";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000628A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000624A";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999656 0.99999999999999767 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006249";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.60000000000000109 0 0
		0 0.20000000000000037 0
		0 0 0
		;
createNode aimConstraint -n "shoulder_R0_blade_aimConstraint2" -p "shoulder_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000624B";
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
	setAttr ".o" -type "double3" 0 -77.672759511533997 30.353471066068796 ;
	setAttr ".rsrr" -type "double3" -8.746525374024671e-14 3.1805546814635132e-15 -4.7708320221952775e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint2" -p "shoulder_R0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000624C";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -2.9490299091605721e-17 -2.7755575615628914e-17 ;
	setAttr -k on ".w0";
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000624F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.507521470509836 0.0092761897382755681 0.11673327753265028 ;
	setAttr ".r" -type "double3" 90.803889228153778 -90 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377369 -1.0495082267377362 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000624E";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006251";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB2";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999956 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
	setAttr -k on ".bladeRollOffset";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB3";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB4";
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
	setAttr ".rst" -type "double3" 0 -2.7755575615628914e-17 0 ;
	setAttr -k on ".w0";
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.390533694690751 0.19144303592045375 -4.2508893276606347e-17 ;
	setAttr ".r" -type "double3" 89.999999999999986 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.04950822673774 1.0495082267377391 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006423";
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
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1814583394588016 -4.163336342344337e-16 -1.0212680564255745 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0.29314386227019562 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377405 1.04950822673774 1.0495082267377389 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_2jnt_freeTangents_01";
	setAttr ".comp_name" -type "string" "leg";
	setAttr ".comp_side" -type "string" "L";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "leg_L0_rootShape" -p "leg_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006422";
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
createNode nurbsCurve -n "leg_L0_root4Shape" -p "leg_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006424";
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
createNode nurbsCurve -n "leg_L0_root5Shape" -p "leg_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006426";
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
createNode nurbsCurve -n "leg_L0_root6Shape" -p "leg_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006428";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000642D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.1729420176568128 0.37006517297659008 -2.9976021664879227e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000642C";
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
createNode nurbsCurve -n "leg_L0_knee4Shape" -p "leg_L0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000642E";
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
createNode nurbsCurve -n "leg_L0_knee5Shape" -p "leg_L0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006430";
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
createNode nurbsCurve -n "leg_L0_knee6Shape" -p "leg_L0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006432";
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
createNode nurbsCurve -n "leg_L0_knee6_0crvShape" -p "leg_L0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006434";
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
createNode nurbsCurve -n "leg_L0_knee6_1crvShape" -p "leg_L0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006436";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006439";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1102230246251565e-15 -4.3271766798549081 -0.71110068526817827 ;
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
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006438";
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
createNode nurbsCurve -n "leg_L0_ankle4Shape" -p "leg_L0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000643A";
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
createNode nurbsCurve -n "leg_L0_ankle5Shape" -p "leg_L0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000643C";
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
createNode nurbsCurve -n "leg_L0_ankle6Shape" -p "leg_L0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000643E";
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
createNode nurbsCurve -n "leg_L0_ankle6_0crvShape" -p "leg_L0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006440";
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
createNode nurbsCurve -n "leg_L0_ankle6_1crvShape" -p "leg_L0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006442";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006445";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.4408920985006262e-16 4.4408920985006262e-15 2.0368784249685756 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006444";
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
createNode nurbsCurve -n "leg_L0_eff4Shape" -p "leg_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006446";
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
createNode nurbsCurve -n "leg_L0_eff5Shape" -p "leg_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006448";
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
createNode nurbsCurve -n "leg_L0_eff6Shape" -p "leg_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000644A";
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
createNode nurbsCurve -n "leg_L0_eff6_0crvShape" -p "leg_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000644C";
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
createNode nurbsCurve -n "leg_L0_eff6_1crvShape" -p "leg_L0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000644E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000645C";
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
	setAttr ".t" -type "double3" 0 2.6645352591003757e-15 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426107 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95263428833990649 0.95263428833990593 0.95263428833990749 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000645B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000645D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000645F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006461";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006464";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763223 -0.77423199221117289 -0.00087398468478361302 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448041 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999767 0.99999999999999978 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006463";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006465";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006467";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006469";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000646B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000646D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006470";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444471 0.052400542543840301 0.00053566803260807205 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448006 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000646F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006471";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006473";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006475";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006477";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006479";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000647C";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518466 -0.34355031336095387 -0.0018389437992671898 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000011 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000647B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000647D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000647F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006481";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006483";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006485";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006488";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248686973 -1.2934842521415506 1.0591437062861164 ;
	setAttr ".r" -type "double3" 2.8990169397258798 84.223472754416576 2.9137877746396037 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808359 1.0497207713808345 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006487";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000648A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006493";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343213 -1.2883323665462261 -0.0019628851482429432 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1.0000000000000002 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006492";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006494";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006496";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006498";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000649A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000649C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000649F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145991002 -1.2852474767223829 -0.54483578923279863 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1.0000000000000002 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000649E";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064A0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064A2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064A4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064A6";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064A8";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064AB";
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
	setAttr ".s" -type "double3" 0.99999999999999845 1.0000000000000002 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064AA";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064AC";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064AE";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064B0";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064B2";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064B4";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064B7";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.84123625248686973 -1.2934842521415506 1.0591437062861164 ;
	setAttr ".r" -type "double3" 2.8990169397258798 84.223472754416576 2.9137877746396037 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808359 1.0497207713808345 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064B6";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_L0_Shape1Orig" -p "foot_L0_1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064B9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064C2";
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
	setAttr ".t" -type "double3" 0.59908552650329328 0.51029795172993686 -1.4395512694570027 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 0.99999999999999734 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064C1";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064C3";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064C5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064C7";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064CA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565061 -2.2204460492503131e-16 1.0444039858906489 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.029616667963988583 -5.7690337251490211 0.29463615418735317 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808354 1.0497207713808376 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "leg_L0_crv" -p "leg_L0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006451";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.7323361475294625 0.18241213460091685 0.92331049868547854 ;
	setAttr ".r" -type "double3" 89.999999999998764 89.706856137729801 6.2165093068144653e-13 ;
	setAttr ".s" -type "double3" 1.0000000000000018 0.99999999999999967 0.99999999999999911 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006450";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006453";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064D6";
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
	addAttr -ci true -sn "div0" -ln "div0" -dv 2 -min 1 -at "long";
	addAttr -ci true -sn "div1" -ln "div1" -dv 2 -min 1 -at "long";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.1814583394588016 1.6653345369377348e-16 1.0212680564255745 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -0.2931438622701828 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377402 1.04950822673774 -1.0495082267377387 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "leg_2jnt_freeTangents_01";
	setAttr ".comp_name" -type "string" "leg";
	setAttr ".comp_side" -type "string" "R";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".ikrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".upvrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr ".pinrefarray" -type "string" "local_C0_root,global_C0_root";
	setAttr -k on ".st_profile";
	setAttr -k on ".sq_profile";
createNode nurbsCurve -n "leg_R0_rootShape" -p "leg_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064D5";
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
createNode nurbsCurve -n "leg_R0_root4Shape" -p "leg_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064D7";
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
createNode nurbsCurve -n "leg_R0_root5Shape" -p "leg_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064D9";
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
createNode nurbsCurve -n "leg_R0_root6Shape" -p "leg_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064DB";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064E0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.1729420176568128 0.37006517297659003 -2.4424906541753444e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 89.999999999999986 89.999999999999929 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064DF";
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
createNode nurbsCurve -n "leg_R0_knee4Shape" -p "leg_R0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064E1";
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
createNode nurbsCurve -n "leg_R0_knee5Shape" -p "leg_R0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064E3";
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
createNode nurbsCurve -n "leg_R0_knee6Shape" -p "leg_R0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064E5";
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
createNode nurbsCurve -n "leg_R0_knee6_0crvShape" -p "leg_R0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064E7";
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
createNode nurbsCurve -n "leg_R0_knee6_1crvShape" -p "leg_R0_knee";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064E9";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064EC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.4416913763379853e-15 -4.3271766798549125 -0.71110068526817871 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064EB";
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
createNode nurbsCurve -n "leg_R0_ankle4Shape" -p "leg_R0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064ED";
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
createNode nurbsCurve -n "leg_R0_ankle5Shape" -p "leg_R0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064EF";
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
createNode nurbsCurve -n "leg_R0_ankle6Shape" -p "leg_R0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064F1";
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
createNode nurbsCurve -n "leg_R0_ankle6_0crvShape" -p "leg_R0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064F3";
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
createNode nurbsCurve -n "leg_R0_ankle6_1crvShape" -p "leg_R0_ankle";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064F5";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064F8";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.5511151231257827e-16 5.5511151231257827e-15 2.0368784249685756 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064F7";
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
createNode nurbsCurve -n "leg_R0_eff4Shape" -p "leg_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064F9";
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
createNode nurbsCurve -n "leg_R0_eff5Shape" -p "leg_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064FB";
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
createNode nurbsCurve -n "leg_R0_eff6Shape" -p "leg_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064FD";
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
createNode nurbsCurve -n "leg_R0_eff6_0crvShape" -p "leg_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064FF";
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
createNode nurbsCurve -n "leg_R0_eff6_1crvShape" -p "leg_R0_eff";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006501";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000650F";
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
	setAttr ".t" -type "double3" -1.1102230246251565e-16 4.2188474935755949e-15 -2.2204460492503131e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -84.230890510426065 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.95263428833990682 0.95263428833990615 0.95263428833990749 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000650E";
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
createNode nurbsCurve -n "foot_R0_root4Shape" -p "foot_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006510";
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
createNode nurbsCurve -n "foot_R0_root5Shape" -p "foot_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006512";
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
createNode nurbsCurve -n "foot_R0_root6Shape" -p "foot_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006514";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006517";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3903626031763219 -0.77423199221117267 -0.00087398468478272484 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -22.490244653448041 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999767 0.999999999999999 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006516";
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
createNode nurbsCurve -n "foot_R0_0_loc4Shape" -p "foot_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006518";
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
createNode nurbsCurve -n "foot_R0_0_loc5Shape" -p "foot_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000651A";
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
createNode nurbsCurve -n "foot_R0_0_loc6Shape" -p "foot_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000651C";
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
createNode nurbsCurve -n "foot_R0_0_loc6_0crvShape" -p "foot_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000651E";
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
createNode nurbsCurve -n "foot_R0_0_loc6_1crvShape" -p "foot_R0_0_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006520";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006523";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.57241624162444527 0.052400542543840523 0.00053566803260807205 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448016 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006522";
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
createNode nurbsCurve -n "foot_R0_1_loc4Shape" -p "foot_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006524";
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
createNode nurbsCurve -n "foot_R0_1_loc5Shape" -p "foot_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006526";
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
createNode nurbsCurve -n "foot_R0_1_loc6Shape" -p "foot_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006528";
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
createNode nurbsCurve -n "foot_R0_1_loc6_0crvShape" -p "foot_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000652A";
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
createNode nurbsCurve -n "foot_R0_1_loc6_1crvShape" -p "foot_R0_1_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000652C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000652F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.34999482654518421 -0.34355031336095415 -0.0018389437992665236 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000011 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000652E";
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
createNode nurbsCurve -n "foot_R0_2_loc4Shape" -p "foot_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006530";
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
createNode nurbsCurve -n "foot_R0_2_loc5Shape" -p "foot_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006532";
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
createNode nurbsCurve -n "foot_R0_2_loc6Shape" -p "foot_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006534";
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
createNode nurbsCurve -n "foot_R0_2_loc6_0crvShape" -p "foot_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006536";
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
createNode nurbsCurve -n "foot_R0_2_loc6_1crvShape" -p "foot_R0_2_loc";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006538";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000653B";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.8412362524868694 -1.2934842521415493 1.0591437062861171 ;
	setAttr ".r" -type "double3" 177.10098306027456 -84.223472754416534 -177.08621222536087 ;
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808354 -1.0497207713808343 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000653A";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000653D";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006546";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.51442201408343202 -1.288332366546225 -0.0019628851482424992 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999967 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006545";
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
createNode nurbsCurve -n "foot_R0_heel4Shape" -p "foot_R0_heel";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006547";
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
createNode nurbsCurve -n "foot_R0_heel5Shape" -p "foot_R0_heel";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006549";
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
createNode nurbsCurve -n "foot_R0_heel6Shape" -p "foot_R0_heel";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000654B";
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
createNode nurbsCurve -n "foot_R0_heel6_0crvShape" -p "foot_R0_heel";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000654D";
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
createNode nurbsCurve -n "foot_R0_heel6_1crvShape" -p "foot_R0_heel";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000654F";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006552";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145990997 -1.2852474767223827 -0.54483578923279752 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999967 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006551";
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
createNode nurbsCurve -n "foot_R0_outpivot4Shape" -p "foot_R0_outpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006553";
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
createNode nurbsCurve -n "foot_R0_outpivot5Shape" -p "foot_R0_outpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006555";
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
createNode nurbsCurve -n "foot_R0_outpivot6Shape" -p "foot_R0_outpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006557";
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
createNode nurbsCurve -n "foot_R0_outpivot6_0crvShape" -p "foot_R0_outpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006559";
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
createNode nurbsCurve -n "foot_R0_outpivot6_1crvShape" -p "foot_R0_outpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000655B";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000655E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3551807145990993 -1.2905939540073479 0.65234269833768455 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 0.99999999999999967 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000655D";
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
createNode nurbsCurve -n "foot_R0_inpivot4Shape" -p "foot_R0_inpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000655F";
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
createNode nurbsCurve -n "foot_R0_inpivot5Shape" -p "foot_R0_inpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006561";
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
createNode nurbsCurve -n "foot_R0_inpivot6Shape" -p "foot_R0_inpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006563";
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
createNode nurbsCurve -n "foot_R0_inpivot6_0crvShape" -p "foot_R0_inpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006565";
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
createNode nurbsCurve -n "foot_R0_inpivot6_1crvShape" -p "foot_R0_inpivot";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006567";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000656A";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.8412362524868694 -1.2934842521415493 1.0591437062861171 ;
	setAttr ".r" -type "double3" 177.10098306027456 -84.223472754416534 -177.08621222536087 ;
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808354 -1.0497207713808343 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006569";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "foot_R0_Shape1Orig" -p "foot_R0_1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000656C";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006575";
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
	setAttr ".t" -type "double3" 0.59908552650329394 0.51029795172993531 -1.4395512694570025 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999689 ;
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006574";
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
createNode nurbsCurve -n "legUI_R0_root4Shape" -p "legUI_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006576";
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
createNode nurbsCurve -n "legUI_R0_root5Shape" -p "legUI_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006578";
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
createNode nurbsCurve -n "legUI_R0_root6Shape" -p "legUI_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000657A";
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
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000657D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846564972 0 1.0444039858906489 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.02961666796397748 -5.7690337251489563 0.2946361541873081 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808356 1.0497207713808356 1.0497207713808374 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "leg_R0_crv" -p "leg_R0_root";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006504";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.7323361475294625 0.18241213460091626 0.92331049868548054 ;
	setAttr ".r" -type "double3" 89.999999999997513 -89.706856137729801 -179.9999999999969 ;
	setAttr ".s" -type "double3" 1.0000000000000018 0.99999999999999978 -0.99999999999999911 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006503";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006506";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA540000556B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA540000556C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA540000556D";
createNode displayLayerManager -n "layerManager";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA540000556E";
	setAttr -s 2 ".dli[1]"  4;
createNode displayLayer -n "defaultLayer";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA540000556F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005570";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA5400005571";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA7A00005E5A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1021\n            -height 852\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1021\\n    -height 852\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1021\\n    -height 852\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA7A00005E5B";
	setAttr ".b" -type "string" "playbackOptions -min 101 -max 130 -ast 95 -aet 136 ";
	setAttr ".st" 6;
createNode animCurveUU -n "spine_C0_root_st_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "spine_C0_root_sq_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB5";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EB8";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EBA";
createNode objectSet -n "mgear_curveCns1Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EBB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns1GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EBC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns1GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EBD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EBE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EBF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8D00005EC0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion2";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EED";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns2";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF0";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak2";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF2";
createNode objectSet -n "mgear_curveCns2Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns2GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF4";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns2GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005EF8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_L0_root_st_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_L0_root_sq_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode mgear_curveCns -n "mgear_curveCns3";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F29";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak3";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F2B";
createNode objectSet -n "mgear_curveCns3Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F2C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns3GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F2D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns3GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F2E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F2F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion3";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F76";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns4";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F79";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak4";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F7B";
createNode objectSet -n "mgear_curveCns4Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F7C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns4GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F7D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns4GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F7E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F7F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005F81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion4";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB2";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns5";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB5";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak5";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB7";
createNode objectSet -n "mgear_curveCns5Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns5GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FB9";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns5GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FBA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FBB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FBC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FBD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion5";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FEE";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns6";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF1";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak6";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF3";
createNode objectSet -n "mgear_curveCns6Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns6GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF5";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns6GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet6";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00005FF9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion6";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000602A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns7";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000602D";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak7";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000602F";
createNode objectSet -n "mgear_curveCns7Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006030";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns7GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006031";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns7GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006032";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet7";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006033";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006034";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006035";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion7";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006066";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns8";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006069";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak8";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000606B";
createNode objectSet -n "mgear_curveCns8Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000606C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns8GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000606D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns8GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000606E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet8";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E0000606F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006070";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8E00006071";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion8";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B6";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns9";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060B9";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak9";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060BB";
createNode objectSet -n "mgear_curveCns9Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060BC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns9GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060BD";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns9GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060BE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet9";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060BF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060C0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "neck_C0_root_st_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "neck_C0_root_sq_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000060CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode unitConversion -n "unitConversion9";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000610C";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns10";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000610F";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak10";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006111";
createNode objectSet -n "mgear_curveCns10Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006112";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns10GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006113";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns10GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006114";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet10";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006115";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006116";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006117";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns11";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000611A";
	setAttr -s 3 ".inputs";
createNode tweak -n "tweak11";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000611C";
createNode objectSet -n "mgear_curveCns11Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000611D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns11GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000611E";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns11GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000611F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet11";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006120";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006121";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006122";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns12";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006171";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak12";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006173";
createNode objectSet -n "mgear_curveCns12Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006174";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns12GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006175";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns12GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006176";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet12";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006177";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId24";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006178";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006179";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns13";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000617C";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak13";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000617E";
createNode objectSet -n "mgear_curveCns13Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000617F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns13GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006180";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns13GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006181";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet13";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006182";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId26";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006183";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006184";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns14";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006187";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak14";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006189";
createNode objectSet -n "mgear_curveCns14Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000618A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns14GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000618B";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns14GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000618C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet14";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000618D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId28";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000618E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000618F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns15";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006192";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak15";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006194";
createNode objectSet -n "mgear_curveCns15Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006195";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns15GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006196";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns15GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006197";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet15";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006198";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F00006199";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F0000619A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion10";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061D7";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns16";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061DA";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak16";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061DC";
createNode objectSet -n "mgear_curveCns16Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061DD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns16GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061DE";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns16GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061DF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet16";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061E0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061E1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA8F000061E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns17";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000620D";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak17";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000620F";
createNode objectSet -n "mgear_curveCns17Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006210";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns17GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006211";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns17GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006212";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet17";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006213";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId34";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006214";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006215";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns18";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000622C";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak18";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000622E";
createNode objectSet -n "mgear_curveCns18Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000622F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns18GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006230";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns18GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006231";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet18";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006232";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId36";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006233";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006234";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion11";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000624D";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns19";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006250";
	setAttr -s 2 ".inputs";
createNode tweak -n "tweak19";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006252";
createNode objectSet -n "mgear_curveCns19Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006253";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns19GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006254";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns19GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006255";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet19";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006256";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006257";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006258";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "arm_R0_root_st_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006261";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -0.5 1 0;
createNode animCurveUU -n "arm_R0_root_sq_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006262";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 0.5 1 0;
createNode mgear_curveCns -n "mgear_curveCns20";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006289";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak20";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000628B";
createNode objectSet -n "mgear_curveCns20Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000628C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns20GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000628D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns20GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000628E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet20";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000628F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId40";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006290";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006291";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion12";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D6";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns21";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062D9";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak21";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062DB";
createNode objectSet -n "mgear_curveCns21Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062DC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns21GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062DD";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns21GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062DE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet21";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062DF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId42";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062E0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA90000062E1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion13";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006312";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns22";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006315";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak22";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006317";
createNode objectSet -n "mgear_curveCns22Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006318";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns22GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006319";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns22GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000631A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet22";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000631B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId44";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000631C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000631D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion14";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA900000634E";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns23";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006351";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak23";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006353";
createNode objectSet -n "mgear_curveCns23Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006354";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns23GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006355";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns23GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006356";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet23";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006357";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId46";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006358";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9000006359";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion15";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000638A";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns24";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000638D";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak24";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000638F";
createNode objectSet -n "mgear_curveCns24Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006390";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns24GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006391";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns24GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006392";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet24";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006393";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId48";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006394";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006395";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion16";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C6";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns25";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063C9";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak25";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063CB";
createNode objectSet -n "mgear_curveCns25Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063CC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns25GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063CD";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns25GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063CE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet25";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063CF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId50";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000063D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode unitConversion -n "unitConversion17";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006416";
	setAttr ".cf" 0.017453292519943295;
createNode mgear_curveCns -n "mgear_curveCns26";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006419";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak26";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000641B";
createNode objectSet -n "mgear_curveCns26Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000641C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns26GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000641D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns26GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000641E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet26";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000641F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId52";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006420";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006421";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_L0_root_st_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000642A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_L0_root_sq_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000642B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns27";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006452";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak27";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006454";
createNode objectSet -n "mgear_curveCns27Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006455";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns27GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006456";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns27GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006457";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet27";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006458";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId54";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006459";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000645A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns28";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006489";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak28";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000648B";
createNode objectSet -n "mgear_curveCns28Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000648C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns28GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000648D";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns28GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000648E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet28";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA910000648F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId56";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006490";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9100006491";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns29";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064B8";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak29";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064BA";
createNode objectSet -n "mgear_curveCns29Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064BB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns29GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064BC";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns29GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet29";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064BE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId58";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064BF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA91000064C0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode animCurveUU -n "leg_R0_root_st_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 -1 1 0;
createNode animCurveUU -n "leg_R0_root_sq_profile";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA92000064DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.5 1 1 0;
createNode mgear_curveCns -n "mgear_curveCns30";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006505";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak30";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006507";
createNode objectSet -n "mgear_curveCns30Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006508";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns30GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006509";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns30GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000650A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet30";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000650B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId60";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000650C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000650D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns31";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000653C";
	setAttr -s 4 ".inputs";
createNode tweak -n "tweak31";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000653E";
createNode objectSet -n "mgear_curveCns31Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000653F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns31GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006540";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns31GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006541";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet31";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006542";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId62";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006543";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006544";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode mgear_curveCns -n "mgear_curveCns32";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000656B";
	setAttr -s 5 ".inputs";
createNode tweak -n "tweak32";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000656D";
createNode objectSet -n "mgear_curveCns32Set";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000656E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "mgear_curveCns32GroupId";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA920000656F";
	setAttr ".ihi" 0;
createNode groupParts -n "mgear_curveCns32GroupParts";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006570";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode objectSet -n "tweakSet32";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006571";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId64";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006572";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "1C4E6900-0000-25DA-5B9F-AA9200006573";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 25;
	setAttr ".edl" no;
	setAttr ".an" yes;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr ".pff" yes;
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7777777910232544;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 25;
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
connectAttr "unitConversion4.o" "finger_L3_blade_aimConstraint12.ox";
connectAttr "finger_L3_blade.pim" "finger_L3_blade_pointConstraint12.cpim";
connectAttr "finger_L3_blade.rp" "finger_L3_blade_pointConstraint12.crp";
connectAttr "finger_L3_blade.rpt" "finger_L3_blade_pointConstraint12.crt";
connectAttr "finger_L3_root.t" "finger_L3_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L3_root.rp" "finger_L3_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L3_root.rpt" "finger_L3_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L3_root.pm" "finger_L3_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L3_blade_pointConstraint12.w0" "finger_L3_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns5.og[0]" "finger_L3_crvShape.cr";
connectAttr "tweak5.pl[0].cp[0]" "finger_L3_crvShape.twl";
connectAttr "mgear_curveCns5GroupId.id" "finger_L3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns5Set.mwc" "finger_L3_crvShape.iog.og[0].gco";
connectAttr "groupId10.id" "finger_L3_crvShape.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "finger_L3_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion5.o" "finger_L2_blade_aimConstraint12.ox";
connectAttr "finger_L2_blade.pim" "finger_L2_blade_pointConstraint12.cpim";
connectAttr "finger_L2_blade.rp" "finger_L2_blade_pointConstraint12.crp";
connectAttr "finger_L2_blade.rpt" "finger_L2_blade_pointConstraint12.crt";
connectAttr "finger_L2_root.t" "finger_L2_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L2_root.rp" "finger_L2_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L2_root.rpt" "finger_L2_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L2_root.pm" "finger_L2_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L2_blade_pointConstraint12.w0" "finger_L2_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns6.og[0]" "finger_L2_crvShape.cr";
connectAttr "tweak6.pl[0].cp[0]" "finger_L2_crvShape.twl";
connectAttr "mgear_curveCns6GroupId.id" "finger_L2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns6Set.mwc" "finger_L2_crvShape.iog.og[0].gco";
connectAttr "groupId12.id" "finger_L2_crvShape.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "finger_L2_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion6.o" "finger_L1_blade_aimConstraint12.ox";
connectAttr "finger_L1_blade.pim" "finger_L1_blade_pointConstraint12.cpim";
connectAttr "finger_L1_blade.rp" "finger_L1_blade_pointConstraint12.crp";
connectAttr "finger_L1_blade.rpt" "finger_L1_blade_pointConstraint12.crt";
connectAttr "finger_L1_root.t" "finger_L1_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L1_root.rp" "finger_L1_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L1_root.rpt" "finger_L1_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L1_root.pm" "finger_L1_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L1_blade_pointConstraint12.w0" "finger_L1_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns7.og[0]" "finger_L1_crvShape.cr";
connectAttr "tweak7.pl[0].cp[0]" "finger_L1_crvShape.twl";
connectAttr "mgear_curveCns7GroupId.id" "finger_L1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns7Set.mwc" "finger_L1_crvShape.iog.og[0].gco";
connectAttr "groupId14.id" "finger_L1_crvShape.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "finger_L1_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion3.o" "meta_L0_blade_aimConstraint12.ox";
connectAttr "meta_L0_blade.pim" "meta_L0_blade_pointConstraint12.cpim";
connectAttr "meta_L0_blade.rp" "meta_L0_blade_pointConstraint12.crp";
connectAttr "meta_L0_blade.rpt" "meta_L0_blade_pointConstraint12.crt";
connectAttr "meta_L0_root.t" "meta_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "meta_L0_root.rp" "meta_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "meta_L0_root.rpt" "meta_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "meta_L0_root.pm" "meta_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "meta_L0_blade_pointConstraint12.w0" "meta_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns4.og[0]" "meta_L0_crvShape.cr";
connectAttr "tweak4.pl[0].cp[0]" "meta_L0_crvShape.twl";
connectAttr "mgear_curveCns4GroupId.id" "meta_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns4Set.mwc" "meta_L0_crvShape.iog.og[0].gco";
connectAttr "groupId8.id" "meta_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "meta_L0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion7.o" "finger_L0_blade_aimConstraint12.ox";
connectAttr "finger_L0_blade.pim" "finger_L0_blade_pointConstraint12.cpim";
connectAttr "finger_L0_blade.rp" "finger_L0_blade_pointConstraint12.crp";
connectAttr "finger_L0_blade.rpt" "finger_L0_blade_pointConstraint12.crt";
connectAttr "finger_L0_root.t" "finger_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "finger_L0_root.rp" "finger_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "finger_L0_root.rpt" "finger_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "finger_L0_root.pm" "finger_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "finger_L0_blade_pointConstraint12.w0" "finger_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns8.og[0]" "finger_L0_crvShape.cr";
connectAttr "tweak8.pl[0].cp[0]" "finger_L0_crvShape.twl";
connectAttr "mgear_curveCns8GroupId.id" "finger_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns8Set.mwc" "finger_L0_crvShape.iog.og[0].gco";
connectAttr "groupId16.id" "finger_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "finger_L0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion8.o" "thumb_L0_blade_aimConstraint12.ox";
connectAttr "thumb_L0_blade.pim" "thumb_L0_blade_pointConstraint12.cpim";
connectAttr "thumb_L0_blade.rp" "thumb_L0_blade_pointConstraint12.crp";
connectAttr "thumb_L0_blade.rpt" "thumb_L0_blade_pointConstraint12.crt";
connectAttr "thumb_L0_root.t" "thumb_L0_blade_pointConstraint12.tg[0].tt";
connectAttr "thumb_L0_root.rp" "thumb_L0_blade_pointConstraint12.tg[0].trp";
connectAttr "thumb_L0_root.rpt" "thumb_L0_blade_pointConstraint12.tg[0].trt";
connectAttr "thumb_L0_root.pm" "thumb_L0_blade_pointConstraint12.tg[0].tpm";
connectAttr "thumb_L0_blade_pointConstraint12.w0" "thumb_L0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns9.og[0]" "thumb_L0_crvShape.cr";
connectAttr "tweak9.pl[0].cp[0]" "thumb_L0_crvShape.twl";
connectAttr "mgear_curveCns9GroupId.id" "thumb_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns9Set.mwc" "thumb_L0_crvShape.iog.og[0].gco";
connectAttr "groupId18.id" "thumb_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "thumb_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns3.og[0]" "arm_L0_crvShape.cr";
connectAttr "tweak3.pl[0].cp[0]" "arm_L0_crvShape.twl";
connectAttr "mgear_curveCns3GroupId.id" "arm_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns3Set.mwc" "arm_L0_crvShape.iog.og[0].gco";
connectAttr "groupId6.id" "arm_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "arm_L0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion2.o" "shoulder_L0_blade_aimConstraint12.ox";
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
connectAttr "mgear_curveCns2.og[0]" "shoulder_L0_crvShape.cr";
connectAttr "tweak2.pl[0].cp[0]" "shoulder_L0_crvShape.twl";
connectAttr "mgear_curveCns2GroupId.id" "shoulder_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns2Set.mwc" "shoulder_L0_crvShape.iog.og[0].gco";
connectAttr "groupId4.id" "shoulder_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "shoulder_L0_crvShape.iog.og[1].gco";
connectAttr "neck_C0_root_st_profile.o" "neck_C0_root.st_profile";
connectAttr "neck_C0_root_sq_profile.o" "neck_C0_root.sq_profile";
connectAttr "mgear_curveCns13.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak13.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns13GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns13Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId26.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet13.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns14.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak14.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns14GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns14Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId28.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet14.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
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
connectAttr "unitConversion10.o" "tongue_C0_blade_aimConstraint12.ox";
connectAttr "tongue_C0_blade.pim" "tongue_C0_blade_pointConstraint12.cpim";
connectAttr "tongue_C0_blade.rp" "tongue_C0_blade_pointConstraint12.crp";
connectAttr "tongue_C0_blade.rpt" "tongue_C0_blade_pointConstraint12.crt";
connectAttr "tongue_C0_root.t" "tongue_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "tongue_C0_root.rp" "tongue_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "tongue_C0_root.rpt" "tongue_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "tongue_C0_root.pm" "tongue_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "tongue_C0_blade_pointConstraint12.w0" "tongue_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns16.og[0]" "tongue_C0_crvShape.cr";
connectAttr "tweak16.pl[0].cp[0]" "tongue_C0_crvShape.twl";
connectAttr "mgear_curveCns16GroupId.id" "tongue_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns16Set.mwc" "tongue_C0_crvShape.iog.og[0].gco";
connectAttr "groupId32.id" "tongue_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet16.mwc" "tongue_C0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns12.og[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.cr"
		;
connectAttr "tweak12.pl[0].cp[0]" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.twl"
		;
connectAttr "mgear_curveCns12GroupId.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gid"
		;
connectAttr "mgear_curveCns12Set.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0].gco"
		;
connectAttr "groupId24.id" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gid"
		;
connectAttr "tweakSet12.mwc" "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1].gco"
		;
connectAttr "mgear_curveCns15.og[0]" "mouth_C0_crv12Shape.cr";
connectAttr "tweak15.pl[0].cp[0]" "mouth_C0_crv12Shape.twl";
connectAttr "mgear_curveCns15GroupId.id" "mouth_C0_crv12Shape.iog.og[0].gid";
connectAttr "mgear_curveCns15Set.mwc" "mouth_C0_crv12Shape.iog.og[0].gco";
connectAttr "groupId30.id" "mouth_C0_crv12Shape.iog.og[1].gid";
connectAttr "tweakSet15.mwc" "mouth_C0_crv12Shape.iog.og[1].gco";
connectAttr "mgear_curveCns17.og[0]" "eye_R0_crvShape.cr";
connectAttr "tweak17.pl[0].cp[0]" "eye_R0_crvShape.twl";
connectAttr "mgear_curveCns17GroupId.id" "eye_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns17Set.mwc" "eye_R0_crvShape.iog.og[0].gco";
connectAttr "groupId34.id" "eye_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet17.mwc" "eye_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns18.og[0]" "eye_L0_crvShape.cr";
connectAttr "tweak18.pl[0].cp[0]" "eye_L0_crvShape.twl";
connectAttr "mgear_curveCns18GroupId.id" "eye_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns18Set.mwc" "eye_L0_crvShape.iog.og[0].gco";
connectAttr "groupId36.id" "eye_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet18.mwc" "eye_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns11.og[0]" "neck_C0_head_crvShape.cr";
connectAttr "tweak11.pl[0].cp[0]" "neck_C0_head_crvShape.twl";
connectAttr "mgear_curveCns11GroupId.id" "neck_C0_head_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns11Set.mwc" "neck_C0_head_crvShape.iog.og[0].gco";
connectAttr "groupId22.id" "neck_C0_head_crvShape.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "neck_C0_head_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion9.o" "neck_C0_blade_aimConstraint12.ox";
connectAttr "neck_C0_blade.pim" "neck_C0_blade_pointConstraint12.cpim";
connectAttr "neck_C0_blade.rp" "neck_C0_blade_pointConstraint12.crp";
connectAttr "neck_C0_blade.rpt" "neck_C0_blade_pointConstraint12.crt";
connectAttr "neck_C0_root.t" "neck_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "neck_C0_root.rp" "neck_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "neck_C0_root.rpt" "neck_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "neck_C0_root.pm" "neck_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "neck_C0_blade_pointConstraint12.w0" "neck_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns10.og[0]" "neck_C0_neck_crvShape.cr";
connectAttr "tweak10.pl[0].cp[0]" "neck_C0_neck_crvShape.twl";
connectAttr "mgear_curveCns10GroupId.id" "neck_C0_neck_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns10Set.mwc" "neck_C0_neck_crvShape.iog.og[0].gco";
connectAttr "groupId20.id" "neck_C0_neck_crvShape.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "neck_C0_neck_crvShape.iog.og[1].gco";
connectAttr "arm_R0_root_st_profile.o" "arm_R0_root.st_profile";
connectAttr "arm_R0_root_sq_profile.o" "arm_R0_root.sq_profile";
connectAttr "finger_R3_blade_pointConstraint2.ctx" "finger_R3_blade.tx" -l on;
connectAttr "finger_R3_blade_pointConstraint2.cty" "finger_R3_blade.ty" -l on;
connectAttr "finger_R3_blade_pointConstraint2.ctz" "finger_R3_blade.tz" -l on;
connectAttr "finger_R3_blade_aimConstraint2.crx" "finger_R3_blade.rx" -l on;
connectAttr "finger_R3_blade_aimConstraint2.cry" "finger_R3_blade.ry" -l on;
connectAttr "finger_R3_blade_aimConstraint2.crz" "finger_R3_blade.rz" -l on;
connectAttr "finger_R3_blade.pim" "finger_R3_blade_aimConstraint2.cpim";
connectAttr "finger_R3_blade.t" "finger_R3_blade_aimConstraint2.ct";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_aimConstraint2.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_aimConstraint2.crt";
connectAttr "finger_R3_blade.ro" "finger_R3_blade_aimConstraint2.cro";
connectAttr "finger_R3_0_loc.t" "finger_R3_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_R3_0_loc.rp" "finger_R3_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_R3_0_loc.rpt" "finger_R3_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_R3_0_loc.pm" "finger_R3_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_R3_blade_aimConstraint2.w0" "finger_R3_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_R3_root.wm" "finger_R3_blade_aimConstraint2.wum";
connectAttr "unitConversion13.o" "finger_R3_blade_aimConstraint2.ox";
connectAttr "finger_R3_blade.pim" "finger_R3_blade_pointConstraint2.cpim";
connectAttr "finger_R3_blade.rp" "finger_R3_blade_pointConstraint2.crp";
connectAttr "finger_R3_blade.rpt" "finger_R3_blade_pointConstraint2.crt";
connectAttr "finger_R3_root.t" "finger_R3_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R3_root.rp" "finger_R3_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R3_root.rpt" "finger_R3_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R3_root.pm" "finger_R3_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R3_blade_pointConstraint2.w0" "finger_R3_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns22.og[0]" "finger_R3_crvShape.cr";
connectAttr "tweak22.pl[0].cp[0]" "finger_R3_crvShape.twl";
connectAttr "mgear_curveCns22GroupId.id" "finger_R3_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns22Set.mwc" "finger_R3_crvShape.iog.og[0].gco";
connectAttr "groupId44.id" "finger_R3_crvShape.iog.og[1].gid";
connectAttr "tweakSet22.mwc" "finger_R3_crvShape.iog.og[1].gco";
connectAttr "finger_R2_blade_pointConstraint2.ctx" "finger_R2_blade.tx" -l on;
connectAttr "finger_R2_blade_pointConstraint2.cty" "finger_R2_blade.ty" -l on;
connectAttr "finger_R2_blade_pointConstraint2.ctz" "finger_R2_blade.tz" -l on;
connectAttr "finger_R2_blade_aimConstraint2.crx" "finger_R2_blade.rx" -l on;
connectAttr "finger_R2_blade_aimConstraint2.cry" "finger_R2_blade.ry" -l on;
connectAttr "finger_R2_blade_aimConstraint2.crz" "finger_R2_blade.rz" -l on;
connectAttr "finger_R2_blade.pim" "finger_R2_blade_aimConstraint2.cpim";
connectAttr "finger_R2_blade.t" "finger_R2_blade_aimConstraint2.ct";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_aimConstraint2.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_aimConstraint2.crt";
connectAttr "finger_R2_blade.ro" "finger_R2_blade_aimConstraint2.cro";
connectAttr "finger_R2_0_loc.t" "finger_R2_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_R2_0_loc.rp" "finger_R2_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_R2_0_loc.rpt" "finger_R2_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_R2_0_loc.pm" "finger_R2_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_R2_blade_aimConstraint2.w0" "finger_R2_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_R2_root.wm" "finger_R2_blade_aimConstraint2.wum";
connectAttr "unitConversion14.o" "finger_R2_blade_aimConstraint2.ox";
connectAttr "finger_R2_blade.pim" "finger_R2_blade_pointConstraint2.cpim";
connectAttr "finger_R2_blade.rp" "finger_R2_blade_pointConstraint2.crp";
connectAttr "finger_R2_blade.rpt" "finger_R2_blade_pointConstraint2.crt";
connectAttr "finger_R2_root.t" "finger_R2_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R2_root.rp" "finger_R2_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R2_root.rpt" "finger_R2_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R2_root.pm" "finger_R2_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R2_blade_pointConstraint2.w0" "finger_R2_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns23.og[0]" "finger_R2_crvShape.cr";
connectAttr "tweak23.pl[0].cp[0]" "finger_R2_crvShape.twl";
connectAttr "mgear_curveCns23GroupId.id" "finger_R2_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns23Set.mwc" "finger_R2_crvShape.iog.og[0].gco";
connectAttr "groupId46.id" "finger_R2_crvShape.iog.og[1].gid";
connectAttr "tweakSet23.mwc" "finger_R2_crvShape.iog.og[1].gco";
connectAttr "finger_R1_blade_pointConstraint2.ctx" "finger_R1_blade.tx" -l on;
connectAttr "finger_R1_blade_pointConstraint2.cty" "finger_R1_blade.ty" -l on;
connectAttr "finger_R1_blade_pointConstraint2.ctz" "finger_R1_blade.tz" -l on;
connectAttr "finger_R1_blade_aimConstraint2.crx" "finger_R1_blade.rx" -l on;
connectAttr "finger_R1_blade_aimConstraint2.cry" "finger_R1_blade.ry" -l on;
connectAttr "finger_R1_blade_aimConstraint2.crz" "finger_R1_blade.rz" -l on;
connectAttr "finger_R1_blade.pim" "finger_R1_blade_aimConstraint2.cpim";
connectAttr "finger_R1_blade.t" "finger_R1_blade_aimConstraint2.ct";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_aimConstraint2.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_aimConstraint2.crt";
connectAttr "finger_R1_blade.ro" "finger_R1_blade_aimConstraint2.cro";
connectAttr "finger_R1_0_loc.t" "finger_R1_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_R1_0_loc.rp" "finger_R1_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_R1_0_loc.rpt" "finger_R1_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_R1_0_loc.pm" "finger_R1_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_R1_blade_aimConstraint2.w0" "finger_R1_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_R1_root.wm" "finger_R1_blade_aimConstraint2.wum";
connectAttr "unitConversion15.o" "finger_R1_blade_aimConstraint2.ox";
connectAttr "finger_R1_blade.pim" "finger_R1_blade_pointConstraint2.cpim";
connectAttr "finger_R1_blade.rp" "finger_R1_blade_pointConstraint2.crp";
connectAttr "finger_R1_blade.rpt" "finger_R1_blade_pointConstraint2.crt";
connectAttr "finger_R1_root.t" "finger_R1_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R1_root.rp" "finger_R1_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R1_root.rpt" "finger_R1_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R1_root.pm" "finger_R1_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R1_blade_pointConstraint2.w0" "finger_R1_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns24.og[0]" "finger_R1_crvShape.cr";
connectAttr "tweak24.pl[0].cp[0]" "finger_R1_crvShape.twl";
connectAttr "mgear_curveCns24GroupId.id" "finger_R1_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns24Set.mwc" "finger_R1_crvShape.iog.og[0].gco";
connectAttr "groupId48.id" "finger_R1_crvShape.iog.og[1].gid";
connectAttr "tweakSet24.mwc" "finger_R1_crvShape.iog.og[1].gco";
connectAttr "meta_R0_blade_pointConstraint2.ctx" "meta_R0_blade.tx" -l on;
connectAttr "meta_R0_blade_pointConstraint2.cty" "meta_R0_blade.ty" -l on;
connectAttr "meta_R0_blade_pointConstraint2.ctz" "meta_R0_blade.tz" -l on;
connectAttr "meta_R0_blade_aimConstraint2.crx" "meta_R0_blade.rx" -l on;
connectAttr "meta_R0_blade_aimConstraint2.cry" "meta_R0_blade.ry" -l on;
connectAttr "meta_R0_blade_aimConstraint2.crz" "meta_R0_blade.rz" -l on;
connectAttr "meta_R0_blade.pim" "meta_R0_blade_aimConstraint2.cpim";
connectAttr "meta_R0_blade.t" "meta_R0_blade_aimConstraint2.ct";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_aimConstraint2.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_aimConstraint2.crt";
connectAttr "meta_R0_blade.ro" "meta_R0_blade_aimConstraint2.cro";
connectAttr "meta_R0_0_loc.t" "meta_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "meta_R0_0_loc.rp" "meta_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "meta_R0_0_loc.rpt" "meta_R0_blade_aimConstraint2.tg[0].trt";
connectAttr "meta_R0_0_loc.pm" "meta_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "meta_R0_blade_aimConstraint2.w0" "meta_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "meta_R0_root.wm" "meta_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion12.o" "meta_R0_blade_aimConstraint2.ox";
connectAttr "meta_R0_blade.pim" "meta_R0_blade_pointConstraint2.cpim";
connectAttr "meta_R0_blade.rp" "meta_R0_blade_pointConstraint2.crp";
connectAttr "meta_R0_blade.rpt" "meta_R0_blade_pointConstraint2.crt";
connectAttr "meta_R0_root.t" "meta_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "meta_R0_root.rp" "meta_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "meta_R0_root.rpt" "meta_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "meta_R0_root.pm" "meta_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "meta_R0_blade_pointConstraint2.w0" "meta_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns21.og[0]" "meta_R0_crvShape.cr";
connectAttr "tweak21.pl[0].cp[0]" "meta_R0_crvShape.twl";
connectAttr "mgear_curveCns21GroupId.id" "meta_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns21Set.mwc" "meta_R0_crvShape.iog.og[0].gco";
connectAttr "groupId42.id" "meta_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet21.mwc" "meta_R0_crvShape.iog.og[1].gco";
connectAttr "finger_R0_blade_pointConstraint2.ctx" "finger_R0_blade.tx" -l on;
connectAttr "finger_R0_blade_pointConstraint2.cty" "finger_R0_blade.ty" -l on;
connectAttr "finger_R0_blade_pointConstraint2.ctz" "finger_R0_blade.tz" -l on;
connectAttr "finger_R0_blade_aimConstraint2.crx" "finger_R0_blade.rx" -l on;
connectAttr "finger_R0_blade_aimConstraint2.cry" "finger_R0_blade.ry" -l on;
connectAttr "finger_R0_blade_aimConstraint2.crz" "finger_R0_blade.rz" -l on;
connectAttr "finger_R0_blade.pim" "finger_R0_blade_aimConstraint2.cpim";
connectAttr "finger_R0_blade.t" "finger_R0_blade_aimConstraint2.ct";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_aimConstraint2.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_aimConstraint2.crt";
connectAttr "finger_R0_blade.ro" "finger_R0_blade_aimConstraint2.cro";
connectAttr "finger_R0_0_loc.t" "finger_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "finger_R0_0_loc.rp" "finger_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "finger_R0_0_loc.rpt" "finger_R0_blade_aimConstraint2.tg[0].trt";
connectAttr "finger_R0_0_loc.pm" "finger_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "finger_R0_blade_aimConstraint2.w0" "finger_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "finger_R0_root.wm" "finger_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion16.o" "finger_R0_blade_aimConstraint2.ox";
connectAttr "finger_R0_blade.pim" "finger_R0_blade_pointConstraint2.cpim";
connectAttr "finger_R0_blade.rp" "finger_R0_blade_pointConstraint2.crp";
connectAttr "finger_R0_blade.rpt" "finger_R0_blade_pointConstraint2.crt";
connectAttr "finger_R0_root.t" "finger_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "finger_R0_root.rp" "finger_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "finger_R0_root.rpt" "finger_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "finger_R0_root.pm" "finger_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "finger_R0_blade_pointConstraint2.w0" "finger_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns25.og[0]" "finger_R0_crvShape.cr";
connectAttr "tweak25.pl[0].cp[0]" "finger_R0_crvShape.twl";
connectAttr "mgear_curveCns25GroupId.id" "finger_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns25Set.mwc" "finger_R0_crvShape.iog.og[0].gco";
connectAttr "groupId50.id" "finger_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet25.mwc" "finger_R0_crvShape.iog.og[1].gco";
connectAttr "thumb_R0_blade_pointConstraint2.ctx" "thumb_R0_blade.tx" -l on;
connectAttr "thumb_R0_blade_pointConstraint2.cty" "thumb_R0_blade.ty" -l on;
connectAttr "thumb_R0_blade_pointConstraint2.ctz" "thumb_R0_blade.tz" -l on;
connectAttr "thumb_R0_blade_aimConstraint2.crx" "thumb_R0_blade.rx" -l on;
connectAttr "thumb_R0_blade_aimConstraint2.cry" "thumb_R0_blade.ry" -l on;
connectAttr "thumb_R0_blade_aimConstraint2.crz" "thumb_R0_blade.rz" -l on;
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_aimConstraint2.cpim";
connectAttr "thumb_R0_blade.t" "thumb_R0_blade_aimConstraint2.ct";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_aimConstraint2.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_aimConstraint2.crt";
connectAttr "thumb_R0_blade.ro" "thumb_R0_blade_aimConstraint2.cro";
connectAttr "thumb_R0_0_loc.t" "thumb_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "thumb_R0_0_loc.rp" "thumb_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "thumb_R0_0_loc.rpt" "thumb_R0_blade_aimConstraint2.tg[0].trt";
connectAttr "thumb_R0_0_loc.pm" "thumb_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "thumb_R0_blade_aimConstraint2.w0" "thumb_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "thumb_R0_root.wm" "thumb_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion17.o" "thumb_R0_blade_aimConstraint2.ox";
connectAttr "thumb_R0_blade.pim" "thumb_R0_blade_pointConstraint2.cpim";
connectAttr "thumb_R0_blade.rp" "thumb_R0_blade_pointConstraint2.crp";
connectAttr "thumb_R0_blade.rpt" "thumb_R0_blade_pointConstraint2.crt";
connectAttr "thumb_R0_root.t" "thumb_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "thumb_R0_root.rp" "thumb_R0_blade_pointConstraint2.tg[0].trp";
connectAttr "thumb_R0_root.rpt" "thumb_R0_blade_pointConstraint2.tg[0].trt";
connectAttr "thumb_R0_root.pm" "thumb_R0_blade_pointConstraint2.tg[0].tpm";
connectAttr "thumb_R0_blade_pointConstraint2.w0" "thumb_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns26.og[0]" "thumb_R0_crvShape.cr";
connectAttr "tweak26.pl[0].cp[0]" "thumb_R0_crvShape.twl";
connectAttr "mgear_curveCns26GroupId.id" "thumb_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns26Set.mwc" "thumb_R0_crvShape.iog.og[0].gco";
connectAttr "groupId52.id" "thumb_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet26.mwc" "thumb_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns20.og[0]" "arm_R0_crvShape.cr";
connectAttr "tweak20.pl[0].cp[0]" "arm_R0_crvShape.twl";
connectAttr "mgear_curveCns20GroupId.id" "arm_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns20Set.mwc" "arm_R0_crvShape.iog.og[0].gco";
connectAttr "groupId40.id" "arm_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet20.mwc" "arm_R0_crvShape.iog.og[1].gco";
connectAttr "shoulder_R0_blade_pointConstraint2.ctx" "shoulder_R0_blade.tx" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint2.cty" "shoulder_R0_blade.ty" -l on
		;
connectAttr "shoulder_R0_blade_pointConstraint2.ctz" "shoulder_R0_blade.tz" -l on
		;
connectAttr "shoulder_R0_blade_aimConstraint2.crx" "shoulder_R0_blade.rx" -l on;
connectAttr "shoulder_R0_blade_aimConstraint2.cry" "shoulder_R0_blade.ry" -l on;
connectAttr "shoulder_R0_blade_aimConstraint2.crz" "shoulder_R0_blade.rz" -l on;
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_aimConstraint2.cpim";
connectAttr "shoulder_R0_blade.t" "shoulder_R0_blade_aimConstraint2.ct";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_aimConstraint2.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_aimConstraint2.crt";
connectAttr "shoulder_R0_blade.ro" "shoulder_R0_blade_aimConstraint2.cro";
connectAttr "shoulder_R0_tip.t" "shoulder_R0_blade_aimConstraint2.tg[0].tt";
connectAttr "shoulder_R0_tip.rp" "shoulder_R0_blade_aimConstraint2.tg[0].trp";
connectAttr "shoulder_R0_tip.rpt" "shoulder_R0_blade_aimConstraint2.tg[0].trt";
connectAttr "shoulder_R0_tip.pm" "shoulder_R0_blade_aimConstraint2.tg[0].tpm";
connectAttr "shoulder_R0_blade_aimConstraint2.w0" "shoulder_R0_blade_aimConstraint2.tg[0].tw"
		;
connectAttr "shoulder_R0_root.wm" "shoulder_R0_blade_aimConstraint2.wum";
connectAttr "unitConversion11.o" "shoulder_R0_blade_aimConstraint2.ox";
connectAttr "shoulder_R0_blade.pim" "shoulder_R0_blade_pointConstraint2.cpim";
connectAttr "shoulder_R0_blade.rp" "shoulder_R0_blade_pointConstraint2.crp";
connectAttr "shoulder_R0_blade.rpt" "shoulder_R0_blade_pointConstraint2.crt";
connectAttr "shoulder_R0_root.t" "shoulder_R0_blade_pointConstraint2.tg[0].tt";
connectAttr "shoulder_R0_root.rp" "shoulder_R0_blade_pointConstraint2.tg[0].trp"
		;
connectAttr "shoulder_R0_root.rpt" "shoulder_R0_blade_pointConstraint2.tg[0].trt"
		;
connectAttr "shoulder_R0_root.pm" "shoulder_R0_blade_pointConstraint2.tg[0].tpm"
		;
connectAttr "shoulder_R0_blade_pointConstraint2.w0" "shoulder_R0_blade_pointConstraint2.tg[0].tw"
		;
connectAttr "mgear_curveCns19.og[0]" "shoulder_R0_crvShape.cr";
connectAttr "tweak19.pl[0].cp[0]" "shoulder_R0_crvShape.twl";
connectAttr "mgear_curveCns19GroupId.id" "shoulder_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns19Set.mwc" "shoulder_R0_crvShape.iog.og[0].gco";
connectAttr "groupId38.id" "shoulder_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet19.mwc" "shoulder_R0_crvShape.iog.og[1].gco";
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
connectAttr "unitConversion1.o" "spine_C0_blade_aimConstraint12.ox";
connectAttr "spine_C0_blade.pim" "spine_C0_blade_pointConstraint12.cpim";
connectAttr "spine_C0_blade.rp" "spine_C0_blade_pointConstraint12.crp";
connectAttr "spine_C0_blade.rpt" "spine_C0_blade_pointConstraint12.crt";
connectAttr "spine_C0_root.t" "spine_C0_blade_pointConstraint12.tg[0].tt";
connectAttr "spine_C0_root.rp" "spine_C0_blade_pointConstraint12.tg[0].trp";
connectAttr "spine_C0_root.rpt" "spine_C0_blade_pointConstraint12.tg[0].trt";
connectAttr "spine_C0_root.pm" "spine_C0_blade_pointConstraint12.tg[0].tpm";
connectAttr "spine_C0_blade_pointConstraint12.w0" "spine_C0_blade_pointConstraint12.tg[0].tw"
		;
connectAttr "mgear_curveCns1.og[0]" "spine_C0_crvShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "spine_C0_crvShape.twl";
connectAttr "mgear_curveCns1GroupId.id" "spine_C0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns1Set.mwc" "spine_C0_crvShape.iog.og[0].gco";
connectAttr "groupId2.id" "spine_C0_crvShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "spine_C0_crvShape.iog.og[1].gco";
connectAttr "leg_L0_root_st_profile.o" "leg_L0_root.st_profile";
connectAttr "leg_L0_root_sq_profile.o" "leg_L0_root.sq_profile";
connectAttr "mgear_curveCns28.og[0]" "foot_L0_crvShape.cr";
connectAttr "tweak28.pl[0].cp[0]" "foot_L0_crvShape.twl";
connectAttr "mgear_curveCns28GroupId.id" "foot_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns28Set.mwc" "foot_L0_crvShape.iog.og[0].gco";
connectAttr "groupId56.id" "foot_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet28.mwc" "foot_L0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns29.og[0]" "foot_L0_Shape1.cr";
connectAttr "tweak29.pl[0].cp[0]" "foot_L0_Shape1.twl";
connectAttr "mgear_curveCns29GroupId.id" "foot_L0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns29Set.mwc" "foot_L0_Shape1.iog.og[0].gco";
connectAttr "groupId58.id" "foot_L0_Shape1.iog.og[1].gid";
connectAttr "tweakSet29.mwc" "foot_L0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns27.og[0]" "leg_L0_crvShape.cr";
connectAttr "tweak27.pl[0].cp[0]" "leg_L0_crvShape.twl";
connectAttr "mgear_curveCns27GroupId.id" "leg_L0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns27Set.mwc" "leg_L0_crvShape.iog.og[0].gco";
connectAttr "groupId54.id" "leg_L0_crvShape.iog.og[1].gid";
connectAttr "tweakSet27.mwc" "leg_L0_crvShape.iog.og[1].gco";
connectAttr "leg_R0_root_st_profile.o" "leg_R0_root.st_profile";
connectAttr "leg_R0_root_sq_profile.o" "leg_R0_root.sq_profile";
connectAttr "mgear_curveCns31.og[0]" "foot_R0_crvShape.cr";
connectAttr "tweak31.pl[0].cp[0]" "foot_R0_crvShape.twl";
connectAttr "mgear_curveCns31GroupId.id" "foot_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns31Set.mwc" "foot_R0_crvShape.iog.og[0].gco";
connectAttr "groupId62.id" "foot_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet31.mwc" "foot_R0_crvShape.iog.og[1].gco";
connectAttr "mgear_curveCns32.og[0]" "foot_R0_Shape1.cr";
connectAttr "tweak32.pl[0].cp[0]" "foot_R0_Shape1.twl";
connectAttr "mgear_curveCns32GroupId.id" "foot_R0_Shape1.iog.og[0].gid";
connectAttr "mgear_curveCns32Set.mwc" "foot_R0_Shape1.iog.og[0].gco";
connectAttr "groupId64.id" "foot_R0_Shape1.iog.og[1].gid";
connectAttr "tweakSet32.mwc" "foot_R0_Shape1.iog.og[1].gco";
connectAttr "mgear_curveCns30.og[0]" "leg_R0_crvShape.cr";
connectAttr "tweak30.pl[0].cp[0]" "leg_R0_crvShape.twl";
connectAttr "mgear_curveCns30GroupId.id" "leg_R0_crvShape.iog.og[0].gid";
connectAttr "mgear_curveCns30Set.mwc" "leg_R0_crvShape.iog.og[0].gco";
connectAttr "groupId60.id" "leg_R0_crvShape.iog.og[1].gid";
connectAttr "tweakSet30.mwc" "leg_R0_crvShape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "spine_C0_blade.bladeRollOffset" "unitConversion1.i";
connectAttr "mgear_curveCns1GroupParts.og" "mgear_curveCns1.ip[0].ig";
connectAttr "mgear_curveCns1GroupId.id" "mgear_curveCns1.ip[0].gi";
connectAttr "spine_C0_root.wm" "mgear_curveCns1.inputs[0]";
connectAttr "spine_C0_eff.wm" "mgear_curveCns1.inputs[1]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "mgear_curveCns1GroupId.msg" "mgear_curveCns1Set.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[0]" "mgear_curveCns1Set.dsm" -na;
connectAttr "mgear_curveCns1.msg" "mgear_curveCns1Set.ub[0]";
connectAttr "tweak1.og[0]" "mgear_curveCns1GroupParts.ig";
connectAttr "mgear_curveCns1GroupId.id" "mgear_curveCns1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "spine_C0_crvShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "spine_C0_crvShapeOrig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "shoulder_L0_blade.bladeRollOffset" "unitConversion2.i";
connectAttr "mgear_curveCns2GroupParts.og" "mgear_curveCns2.ip[0].ig";
connectAttr "mgear_curveCns2GroupId.id" "mgear_curveCns2.ip[0].gi";
connectAttr "shoulder_L0_root.wm" "mgear_curveCns2.inputs[0]";
connectAttr "shoulder_L0_tip.wm" "mgear_curveCns2.inputs[1]";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "mgear_curveCns2GroupId.msg" "mgear_curveCns2Set.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[0]" "mgear_curveCns2Set.dsm" -na;
connectAttr "mgear_curveCns2.msg" "mgear_curveCns2Set.ub[0]";
connectAttr "tweak2.og[0]" "mgear_curveCns2GroupParts.ig";
connectAttr "mgear_curveCns2GroupId.id" "mgear_curveCns2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "shoulder_L0_crvShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "shoulder_L0_crvShapeOrig.ws" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "mgear_curveCns3GroupParts.og" "mgear_curveCns3.ip[0].ig";
connectAttr "mgear_curveCns3GroupId.id" "mgear_curveCns3.ip[0].gi";
connectAttr "arm_L0_root.wm" "mgear_curveCns3.inputs[0]";
connectAttr "arm_L0_elbow.wm" "mgear_curveCns3.inputs[1]";
connectAttr "arm_L0_wrist.wm" "mgear_curveCns3.inputs[2]";
connectAttr "arm_L0_eff.wm" "mgear_curveCns3.inputs[3]";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "mgear_curveCns3GroupId.msg" "mgear_curveCns3Set.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[0]" "mgear_curveCns3Set.dsm" -na;
connectAttr "mgear_curveCns3.msg" "mgear_curveCns3Set.ub[0]";
connectAttr "tweak3.og[0]" "mgear_curveCns3GroupParts.ig";
connectAttr "mgear_curveCns3GroupId.id" "mgear_curveCns3GroupParts.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "arm_L0_crvShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "arm_L0_crvShapeOrig.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "meta_L0_blade.bladeRollOffset" "unitConversion3.i";
connectAttr "mgear_curveCns4GroupParts.og" "mgear_curveCns4.ip[0].ig";
connectAttr "mgear_curveCns4GroupId.id" "mgear_curveCns4.ip[0].gi";
connectAttr "meta_L0_root.wm" "mgear_curveCns4.inputs[0]";
connectAttr "meta_L0_0_loc.wm" "mgear_curveCns4.inputs[1]";
connectAttr "meta_L0_1_loc.wm" "mgear_curveCns4.inputs[2]";
connectAttr "meta_L0_2_loc.wm" "mgear_curveCns4.inputs[3]";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "mgear_curveCns4GroupId.msg" "mgear_curveCns4Set.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[0]" "mgear_curveCns4Set.dsm" -na;
connectAttr "mgear_curveCns4.msg" "mgear_curveCns4Set.ub[0]";
connectAttr "tweak4.og[0]" "mgear_curveCns4GroupParts.ig";
connectAttr "mgear_curveCns4GroupId.id" "mgear_curveCns4GroupParts.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "meta_L0_crvShape.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "meta_L0_crvShapeOrig.ws" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "finger_L3_blade.bladeRollOffset" "unitConversion4.i";
connectAttr "mgear_curveCns5GroupParts.og" "mgear_curveCns5.ip[0].ig";
connectAttr "mgear_curveCns5GroupId.id" "mgear_curveCns5.ip[0].gi";
connectAttr "finger_L3_root.wm" "mgear_curveCns5.inputs[0]";
connectAttr "finger_L3_0_loc.wm" "mgear_curveCns5.inputs[1]";
connectAttr "finger_L3_1_loc.wm" "mgear_curveCns5.inputs[2]";
connectAttr "finger_L3_2_loc.wm" "mgear_curveCns5.inputs[3]";
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "mgear_curveCns5GroupId.msg" "mgear_curveCns5Set.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[0]" "mgear_curveCns5Set.dsm" -na;
connectAttr "mgear_curveCns5.msg" "mgear_curveCns5Set.ub[0]";
connectAttr "tweak5.og[0]" "mgear_curveCns5GroupParts.ig";
connectAttr "mgear_curveCns5GroupId.id" "mgear_curveCns5GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "finger_L3_crvShape.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "finger_L3_crvShapeOrig.ws" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "finger_L2_blade.bladeRollOffset" "unitConversion5.i";
connectAttr "mgear_curveCns6GroupParts.og" "mgear_curveCns6.ip[0].ig";
connectAttr "mgear_curveCns6GroupId.id" "mgear_curveCns6.ip[0].gi";
connectAttr "finger_L2_root.wm" "mgear_curveCns6.inputs[0]";
connectAttr "finger_L2_0_loc.wm" "mgear_curveCns6.inputs[1]";
connectAttr "finger_L2_1_loc.wm" "mgear_curveCns6.inputs[2]";
connectAttr "finger_L2_2_loc.wm" "mgear_curveCns6.inputs[3]";
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "mgear_curveCns6GroupId.msg" "mgear_curveCns6Set.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[0]" "mgear_curveCns6Set.dsm" -na;
connectAttr "mgear_curveCns6.msg" "mgear_curveCns6Set.ub[0]";
connectAttr "tweak6.og[0]" "mgear_curveCns6GroupParts.ig";
connectAttr "mgear_curveCns6GroupId.id" "mgear_curveCns6GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "finger_L2_crvShape.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "finger_L2_crvShapeOrig.ws" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "finger_L1_blade.bladeRollOffset" "unitConversion6.i";
connectAttr "mgear_curveCns7GroupParts.og" "mgear_curveCns7.ip[0].ig";
connectAttr "mgear_curveCns7GroupId.id" "mgear_curveCns7.ip[0].gi";
connectAttr "finger_L1_root.wm" "mgear_curveCns7.inputs[0]";
connectAttr "finger_L1_0_loc.wm" "mgear_curveCns7.inputs[1]";
connectAttr "finger_L1_1_loc.wm" "mgear_curveCns7.inputs[2]";
connectAttr "finger_L1_2_loc.wm" "mgear_curveCns7.inputs[3]";
connectAttr "groupParts14.og" "tweak7.ip[0].ig";
connectAttr "groupId14.id" "tweak7.ip[0].gi";
connectAttr "mgear_curveCns7GroupId.msg" "mgear_curveCns7Set.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[0]" "mgear_curveCns7Set.dsm" -na;
connectAttr "mgear_curveCns7.msg" "mgear_curveCns7Set.ub[0]";
connectAttr "tweak7.og[0]" "mgear_curveCns7GroupParts.ig";
connectAttr "mgear_curveCns7GroupId.id" "mgear_curveCns7GroupParts.gi";
connectAttr "groupId14.msg" "tweakSet7.gn" -na;
connectAttr "finger_L1_crvShape.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "finger_L1_crvShapeOrig.ws" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "finger_L0_blade.bladeRollOffset" "unitConversion7.i";
connectAttr "mgear_curveCns8GroupParts.og" "mgear_curveCns8.ip[0].ig";
connectAttr "mgear_curveCns8GroupId.id" "mgear_curveCns8.ip[0].gi";
connectAttr "finger_L0_root.wm" "mgear_curveCns8.inputs[0]";
connectAttr "finger_L0_0_loc.wm" "mgear_curveCns8.inputs[1]";
connectAttr "finger_L0_1_loc.wm" "mgear_curveCns8.inputs[2]";
connectAttr "finger_L0_2_loc.wm" "mgear_curveCns8.inputs[3]";
connectAttr "groupParts16.og" "tweak8.ip[0].ig";
connectAttr "groupId16.id" "tweak8.ip[0].gi";
connectAttr "mgear_curveCns8GroupId.msg" "mgear_curveCns8Set.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[0]" "mgear_curveCns8Set.dsm" -na;
connectAttr "mgear_curveCns8.msg" "mgear_curveCns8Set.ub[0]";
connectAttr "tweak8.og[0]" "mgear_curveCns8GroupParts.ig";
connectAttr "mgear_curveCns8GroupId.id" "mgear_curveCns8GroupParts.gi";
connectAttr "groupId16.msg" "tweakSet8.gn" -na;
connectAttr "finger_L0_crvShape.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "finger_L0_crvShapeOrig.ws" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "thumb_L0_blade.bladeRollOffset" "unitConversion8.i";
connectAttr "mgear_curveCns9GroupParts.og" "mgear_curveCns9.ip[0].ig";
connectAttr "mgear_curveCns9GroupId.id" "mgear_curveCns9.ip[0].gi";
connectAttr "thumb_L0_root.wm" "mgear_curveCns9.inputs[0]";
connectAttr "thumb_L0_0_loc.wm" "mgear_curveCns9.inputs[1]";
connectAttr "thumb_L0_1_loc.wm" "mgear_curveCns9.inputs[2]";
connectAttr "thumb_L0_2_loc.wm" "mgear_curveCns9.inputs[3]";
connectAttr "groupParts18.og" "tweak9.ip[0].ig";
connectAttr "groupId18.id" "tweak9.ip[0].gi";
connectAttr "mgear_curveCns9GroupId.msg" "mgear_curveCns9Set.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[0]" "mgear_curveCns9Set.dsm" -na;
connectAttr "mgear_curveCns9.msg" "mgear_curveCns9Set.ub[0]";
connectAttr "tweak9.og[0]" "mgear_curveCns9GroupParts.ig";
connectAttr "mgear_curveCns9GroupId.id" "mgear_curveCns9GroupParts.gi";
connectAttr "groupId18.msg" "tweakSet9.gn" -na;
connectAttr "thumb_L0_crvShape.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "thumb_L0_crvShapeOrig.ws" "groupParts18.ig";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "neck_C0_blade.bladeRollOffset" "unitConversion9.i";
connectAttr "mgear_curveCns10GroupParts.og" "mgear_curveCns10.ip[0].ig";
connectAttr "mgear_curveCns10GroupId.id" "mgear_curveCns10.ip[0].gi";
connectAttr "neck_C0_root.wm" "mgear_curveCns10.inputs[0]";
connectAttr "neck_C0_tan0.wm" "mgear_curveCns10.inputs[1]";
connectAttr "neck_C0_tan1.wm" "mgear_curveCns10.inputs[2]";
connectAttr "neck_C0_neck.wm" "mgear_curveCns10.inputs[3]";
connectAttr "groupParts20.og" "tweak10.ip[0].ig";
connectAttr "groupId20.id" "tweak10.ip[0].gi";
connectAttr "mgear_curveCns10GroupId.msg" "mgear_curveCns10Set.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[0]" "mgear_curveCns10Set.dsm" -na;
connectAttr "mgear_curveCns10.msg" "mgear_curveCns10Set.ub[0]";
connectAttr "tweak10.og[0]" "mgear_curveCns10GroupParts.ig";
connectAttr "mgear_curveCns10GroupId.id" "mgear_curveCns10GroupParts.gi";
connectAttr "groupId20.msg" "tweakSet10.gn" -na;
connectAttr "neck_C0_neck_crvShape.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "neck_C0_neck_crvShapeOrig.ws" "groupParts20.ig";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "mgear_curveCns11GroupParts.og" "mgear_curveCns11.ip[0].ig";
connectAttr "mgear_curveCns11GroupId.id" "mgear_curveCns11.ip[0].gi";
connectAttr "neck_C0_neck.wm" "mgear_curveCns11.inputs[0]";
connectAttr "neck_C0_head.wm" "mgear_curveCns11.inputs[1]";
connectAttr "neck_C0_eff.wm" "mgear_curveCns11.inputs[2]";
connectAttr "groupParts22.og" "tweak11.ip[0].ig";
connectAttr "groupId22.id" "tweak11.ip[0].gi";
connectAttr "mgear_curveCns11GroupId.msg" "mgear_curveCns11Set.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[0]" "mgear_curveCns11Set.dsm" -na;
connectAttr "mgear_curveCns11.msg" "mgear_curveCns11Set.ub[0]";
connectAttr "tweak11.og[0]" "mgear_curveCns11GroupParts.ig";
connectAttr "mgear_curveCns11GroupId.id" "mgear_curveCns11GroupParts.gi";
connectAttr "groupId22.msg" "tweakSet11.gn" -na;
connectAttr "neck_C0_head_crvShape.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "neck_C0_head_crvShapeOrig.ws" "groupParts22.ig";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "mgear_curveCns12GroupParts.og" "mgear_curveCns12.ip[0].ig";
connectAttr "mgear_curveCns12GroupId.id" "mgear_curveCns12.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns12.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns12.inputs[1]";
connectAttr "groupParts24.og" "tweak12.ip[0].ig";
connectAttr "groupId24.id" "tweak12.ip[0].gi";
connectAttr "mgear_curveCns12GroupId.msg" "mgear_curveCns12Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns12Set.dsm"
		 -na;
connectAttr "mgear_curveCns12.msg" "mgear_curveCns12Set.ub[0]";
connectAttr "tweak12.og[0]" "mgear_curveCns12GroupParts.ig";
connectAttr "mgear_curveCns12GroupId.id" "mgear_curveCns12GroupParts.gi";
connectAttr "groupId24.msg" "tweakSet12.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet12.dsm"
		 -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts24.ig"
		;
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "mgear_curveCns13GroupParts.og" "mgear_curveCns13.ip[0].ig";
connectAttr "mgear_curveCns13GroupId.id" "mgear_curveCns13.ip[0].gi";
connectAttr "mouth_C0_lipup.wm" "mgear_curveCns13.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns13.inputs[1]";
connectAttr "groupParts26.og" "tweak13.ip[0].ig";
connectAttr "groupId26.id" "tweak13.ip[0].gi";
connectAttr "mgear_curveCns13GroupId.msg" "mgear_curveCns13Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns13Set.dsm"
		 -na;
connectAttr "mgear_curveCns13.msg" "mgear_curveCns13Set.ub[0]";
connectAttr "tweak13.og[0]" "mgear_curveCns13GroupParts.ig";
connectAttr "mgear_curveCns13GroupId.id" "mgear_curveCns13GroupParts.gi";
connectAttr "groupId26.msg" "tweakSet13.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet13.dsm"
		 -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts26.ig"
		;
connectAttr "groupId26.id" "groupParts26.gi";
connectAttr "mgear_curveCns14GroupParts.og" "mgear_curveCns14.ip[0].ig";
connectAttr "mgear_curveCns14GroupId.id" "mgear_curveCns14.ip[0].gi";
connectAttr "mouth_C0_liplow.wm" "mgear_curveCns14.inputs[0]";
connectAttr "mouth_C0_rotcenter.wm" "mgear_curveCns14.inputs[1]";
connectAttr "groupParts28.og" "tweak14.ip[0].ig";
connectAttr "groupId28.id" "tweak14.ip[0].gi";
connectAttr "mgear_curveCns14GroupId.msg" "mgear_curveCns14Set.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[0]" "mgear_curveCns14Set.dsm"
		 -na;
connectAttr "mgear_curveCns14.msg" "mgear_curveCns14Set.ub[0]";
connectAttr "tweak14.og[0]" "mgear_curveCns14GroupParts.ig";
connectAttr "mgear_curveCns14GroupId.id" "mgear_curveCns14GroupParts.gi";
connectAttr "groupId28.msg" "tweakSet14.gn" -na;
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShape.iog.og[1]" "tweakSet14.dsm"
		 -na;
connectAttr "tweak14.msg" "tweakSet14.ub[0]";
connectAttr "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv|mouth_C0_crvShapeOrig.ws" "groupParts28.ig"
		;
connectAttr "groupId28.id" "groupParts28.gi";
connectAttr "mgear_curveCns15GroupParts.og" "mgear_curveCns15.ip[0].ig";
connectAttr "mgear_curveCns15GroupId.id" "mgear_curveCns15.ip[0].gi";
connectAttr "mouth_C0_root.wm" "mgear_curveCns15.inputs[0]";
connectAttr "mouth_C0_jaw.wm" "mgear_curveCns15.inputs[1]";
connectAttr "groupParts30.og" "tweak15.ip[0].ig";
connectAttr "groupId30.id" "tweak15.ip[0].gi";
connectAttr "mgear_curveCns15GroupId.msg" "mgear_curveCns15Set.gn" -na;
connectAttr "mouth_C0_crv12Shape.iog.og[0]" "mgear_curveCns15Set.dsm" -na;
connectAttr "mgear_curveCns15.msg" "mgear_curveCns15Set.ub[0]";
connectAttr "tweak15.og[0]" "mgear_curveCns15GroupParts.ig";
connectAttr "mgear_curveCns15GroupId.id" "mgear_curveCns15GroupParts.gi";
connectAttr "groupId30.msg" "tweakSet15.gn" -na;
connectAttr "mouth_C0_crv12Shape.iog.og[1]" "tweakSet15.dsm" -na;
connectAttr "tweak15.msg" "tweakSet15.ub[0]";
connectAttr "mouth_C0_crv12ShapeOrig.ws" "groupParts30.ig";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "tongue_C0_blade.bladeRollOffset" "unitConversion10.i";
connectAttr "mgear_curveCns16GroupParts.og" "mgear_curveCns16.ip[0].ig";
connectAttr "mgear_curveCns16GroupId.id" "mgear_curveCns16.ip[0].gi";
connectAttr "tongue_C0_root.wm" "mgear_curveCns16.inputs[0]";
connectAttr "tongue_C0_0_loc.wm" "mgear_curveCns16.inputs[1]";
connectAttr "tongue_C0_1_loc.wm" "mgear_curveCns16.inputs[2]";
connectAttr "tongue_C0_2_loc.wm" "mgear_curveCns16.inputs[3]";
connectAttr "tongue_C0_3_loc.wm" "mgear_curveCns16.inputs[4]";
connectAttr "groupParts32.og" "tweak16.ip[0].ig";
connectAttr "groupId32.id" "tweak16.ip[0].gi";
connectAttr "mgear_curveCns16GroupId.msg" "mgear_curveCns16Set.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[0]" "mgear_curveCns16Set.dsm" -na;
connectAttr "mgear_curveCns16.msg" "mgear_curveCns16Set.ub[0]";
connectAttr "tweak16.og[0]" "mgear_curveCns16GroupParts.ig";
connectAttr "mgear_curveCns16GroupId.id" "mgear_curveCns16GroupParts.gi";
connectAttr "groupId32.msg" "tweakSet16.gn" -na;
connectAttr "tongue_C0_crvShape.iog.og[1]" "tweakSet16.dsm" -na;
connectAttr "tweak16.msg" "tweakSet16.ub[0]";
connectAttr "tongue_C0_crvShapeOrig.ws" "groupParts32.ig";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "mgear_curveCns17GroupParts.og" "mgear_curveCns17.ip[0].ig";
connectAttr "mgear_curveCns17GroupId.id" "mgear_curveCns17.ip[0].gi";
connectAttr "eye_R0_root.wm" "mgear_curveCns17.inputs[0]";
connectAttr "eye_R0_look.wm" "mgear_curveCns17.inputs[1]";
connectAttr "groupParts34.og" "tweak17.ip[0].ig";
connectAttr "groupId34.id" "tweak17.ip[0].gi";
connectAttr "mgear_curveCns17GroupId.msg" "mgear_curveCns17Set.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[0]" "mgear_curveCns17Set.dsm" -na;
connectAttr "mgear_curveCns17.msg" "mgear_curveCns17Set.ub[0]";
connectAttr "tweak17.og[0]" "mgear_curveCns17GroupParts.ig";
connectAttr "mgear_curveCns17GroupId.id" "mgear_curveCns17GroupParts.gi";
connectAttr "groupId34.msg" "tweakSet17.gn" -na;
connectAttr "eye_R0_crvShape.iog.og[1]" "tweakSet17.dsm" -na;
connectAttr "tweak17.msg" "tweakSet17.ub[0]";
connectAttr "eye_R0_crvShapeOrig.ws" "groupParts34.ig";
connectAttr "groupId34.id" "groupParts34.gi";
connectAttr "mgear_curveCns18GroupParts.og" "mgear_curveCns18.ip[0].ig";
connectAttr "mgear_curveCns18GroupId.id" "mgear_curveCns18.ip[0].gi";
connectAttr "eye_L0_root.wm" "mgear_curveCns18.inputs[0]";
connectAttr "eye_L0_look.wm" "mgear_curveCns18.inputs[1]";
connectAttr "groupParts36.og" "tweak18.ip[0].ig";
connectAttr "groupId36.id" "tweak18.ip[0].gi";
connectAttr "mgear_curveCns18GroupId.msg" "mgear_curveCns18Set.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[0]" "mgear_curveCns18Set.dsm" -na;
connectAttr "mgear_curveCns18.msg" "mgear_curveCns18Set.ub[0]";
connectAttr "tweak18.og[0]" "mgear_curveCns18GroupParts.ig";
connectAttr "mgear_curveCns18GroupId.id" "mgear_curveCns18GroupParts.gi";
connectAttr "groupId36.msg" "tweakSet18.gn" -na;
connectAttr "eye_L0_crvShape.iog.og[1]" "tweakSet18.dsm" -na;
connectAttr "tweak18.msg" "tweakSet18.ub[0]";
connectAttr "eye_L0_crvShapeOrig.ws" "groupParts36.ig";
connectAttr "groupId36.id" "groupParts36.gi";
connectAttr "shoulder_R0_blade.bladeRollOffset" "unitConversion11.i";
connectAttr "mgear_curveCns19GroupParts.og" "mgear_curveCns19.ip[0].ig";
connectAttr "mgear_curveCns19GroupId.id" "mgear_curveCns19.ip[0].gi";
connectAttr "shoulder_R0_root.wm" "mgear_curveCns19.inputs[0]";
connectAttr "shoulder_R0_tip.wm" "mgear_curveCns19.inputs[1]";
connectAttr "groupParts38.og" "tweak19.ip[0].ig";
connectAttr "groupId38.id" "tweak19.ip[0].gi";
connectAttr "mgear_curveCns19GroupId.msg" "mgear_curveCns19Set.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[0]" "mgear_curveCns19Set.dsm" -na;
connectAttr "mgear_curveCns19.msg" "mgear_curveCns19Set.ub[0]";
connectAttr "tweak19.og[0]" "mgear_curveCns19GroupParts.ig";
connectAttr "mgear_curveCns19GroupId.id" "mgear_curveCns19GroupParts.gi";
connectAttr "groupId38.msg" "tweakSet19.gn" -na;
connectAttr "shoulder_R0_crvShape.iog.og[1]" "tweakSet19.dsm" -na;
connectAttr "tweak19.msg" "tweakSet19.ub[0]";
connectAttr "shoulder_R0_crvShapeOrig.ws" "groupParts38.ig";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "mgear_curveCns20GroupParts.og" "mgear_curveCns20.ip[0].ig";
connectAttr "mgear_curveCns20GroupId.id" "mgear_curveCns20.ip[0].gi";
connectAttr "arm_R0_root.wm" "mgear_curveCns20.inputs[0]";
connectAttr "arm_R0_elbow.wm" "mgear_curveCns20.inputs[1]";
connectAttr "arm_R0_wrist.wm" "mgear_curveCns20.inputs[2]";
connectAttr "arm_R0_eff.wm" "mgear_curveCns20.inputs[3]";
connectAttr "groupParts40.og" "tweak20.ip[0].ig";
connectAttr "groupId40.id" "tweak20.ip[0].gi";
connectAttr "mgear_curveCns20GroupId.msg" "mgear_curveCns20Set.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[0]" "mgear_curveCns20Set.dsm" -na;
connectAttr "mgear_curveCns20.msg" "mgear_curveCns20Set.ub[0]";
connectAttr "tweak20.og[0]" "mgear_curveCns20GroupParts.ig";
connectAttr "mgear_curveCns20GroupId.id" "mgear_curveCns20GroupParts.gi";
connectAttr "groupId40.msg" "tweakSet20.gn" -na;
connectAttr "arm_R0_crvShape.iog.og[1]" "tweakSet20.dsm" -na;
connectAttr "tweak20.msg" "tweakSet20.ub[0]";
connectAttr "arm_R0_crvShapeOrig.ws" "groupParts40.ig";
connectAttr "groupId40.id" "groupParts40.gi";
connectAttr "meta_R0_blade.bladeRollOffset" "unitConversion12.i";
connectAttr "mgear_curveCns21GroupParts.og" "mgear_curveCns21.ip[0].ig";
connectAttr "mgear_curveCns21GroupId.id" "mgear_curveCns21.ip[0].gi";
connectAttr "meta_R0_root.wm" "mgear_curveCns21.inputs[0]";
connectAttr "meta_R0_0_loc.wm" "mgear_curveCns21.inputs[1]";
connectAttr "meta_R0_1_loc.wm" "mgear_curveCns21.inputs[2]";
connectAttr "meta_R0_2_loc.wm" "mgear_curveCns21.inputs[3]";
connectAttr "groupParts42.og" "tweak21.ip[0].ig";
connectAttr "groupId42.id" "tweak21.ip[0].gi";
connectAttr "mgear_curveCns21GroupId.msg" "mgear_curveCns21Set.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[0]" "mgear_curveCns21Set.dsm" -na;
connectAttr "mgear_curveCns21.msg" "mgear_curveCns21Set.ub[0]";
connectAttr "tweak21.og[0]" "mgear_curveCns21GroupParts.ig";
connectAttr "mgear_curveCns21GroupId.id" "mgear_curveCns21GroupParts.gi";
connectAttr "groupId42.msg" "tweakSet21.gn" -na;
connectAttr "meta_R0_crvShape.iog.og[1]" "tweakSet21.dsm" -na;
connectAttr "tweak21.msg" "tweakSet21.ub[0]";
connectAttr "meta_R0_crvShapeOrig.ws" "groupParts42.ig";
connectAttr "groupId42.id" "groupParts42.gi";
connectAttr "finger_R3_blade.bladeRollOffset" "unitConversion13.i";
connectAttr "mgear_curveCns22GroupParts.og" "mgear_curveCns22.ip[0].ig";
connectAttr "mgear_curveCns22GroupId.id" "mgear_curveCns22.ip[0].gi";
connectAttr "finger_R3_root.wm" "mgear_curveCns22.inputs[0]";
connectAttr "finger_R3_0_loc.wm" "mgear_curveCns22.inputs[1]";
connectAttr "finger_R3_1_loc.wm" "mgear_curveCns22.inputs[2]";
connectAttr "finger_R3_2_loc.wm" "mgear_curveCns22.inputs[3]";
connectAttr "groupParts44.og" "tweak22.ip[0].ig";
connectAttr "groupId44.id" "tweak22.ip[0].gi";
connectAttr "mgear_curveCns22GroupId.msg" "mgear_curveCns22Set.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[0]" "mgear_curveCns22Set.dsm" -na;
connectAttr "mgear_curveCns22.msg" "mgear_curveCns22Set.ub[0]";
connectAttr "tweak22.og[0]" "mgear_curveCns22GroupParts.ig";
connectAttr "mgear_curveCns22GroupId.id" "mgear_curveCns22GroupParts.gi";
connectAttr "groupId44.msg" "tweakSet22.gn" -na;
connectAttr "finger_R3_crvShape.iog.og[1]" "tweakSet22.dsm" -na;
connectAttr "tweak22.msg" "tweakSet22.ub[0]";
connectAttr "finger_R3_crvShapeOrig.ws" "groupParts44.ig";
connectAttr "groupId44.id" "groupParts44.gi";
connectAttr "finger_R2_blade.bladeRollOffset" "unitConversion14.i";
connectAttr "mgear_curveCns23GroupParts.og" "mgear_curveCns23.ip[0].ig";
connectAttr "mgear_curveCns23GroupId.id" "mgear_curveCns23.ip[0].gi";
connectAttr "finger_R2_root.wm" "mgear_curveCns23.inputs[0]";
connectAttr "finger_R2_0_loc.wm" "mgear_curveCns23.inputs[1]";
connectAttr "finger_R2_1_loc.wm" "mgear_curveCns23.inputs[2]";
connectAttr "finger_R2_2_loc.wm" "mgear_curveCns23.inputs[3]";
connectAttr "groupParts46.og" "tweak23.ip[0].ig";
connectAttr "groupId46.id" "tweak23.ip[0].gi";
connectAttr "mgear_curveCns23GroupId.msg" "mgear_curveCns23Set.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[0]" "mgear_curveCns23Set.dsm" -na;
connectAttr "mgear_curveCns23.msg" "mgear_curveCns23Set.ub[0]";
connectAttr "tweak23.og[0]" "mgear_curveCns23GroupParts.ig";
connectAttr "mgear_curveCns23GroupId.id" "mgear_curveCns23GroupParts.gi";
connectAttr "groupId46.msg" "tweakSet23.gn" -na;
connectAttr "finger_R2_crvShape.iog.og[1]" "tweakSet23.dsm" -na;
connectAttr "tweak23.msg" "tweakSet23.ub[0]";
connectAttr "finger_R2_crvShapeOrig.ws" "groupParts46.ig";
connectAttr "groupId46.id" "groupParts46.gi";
connectAttr "finger_R1_blade.bladeRollOffset" "unitConversion15.i";
connectAttr "mgear_curveCns24GroupParts.og" "mgear_curveCns24.ip[0].ig";
connectAttr "mgear_curveCns24GroupId.id" "mgear_curveCns24.ip[0].gi";
connectAttr "finger_R1_root.wm" "mgear_curveCns24.inputs[0]";
connectAttr "finger_R1_0_loc.wm" "mgear_curveCns24.inputs[1]";
connectAttr "finger_R1_1_loc.wm" "mgear_curveCns24.inputs[2]";
connectAttr "finger_R1_2_loc.wm" "mgear_curveCns24.inputs[3]";
connectAttr "groupParts48.og" "tweak24.ip[0].ig";
connectAttr "groupId48.id" "tweak24.ip[0].gi";
connectAttr "mgear_curveCns24GroupId.msg" "mgear_curveCns24Set.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[0]" "mgear_curveCns24Set.dsm" -na;
connectAttr "mgear_curveCns24.msg" "mgear_curveCns24Set.ub[0]";
connectAttr "tweak24.og[0]" "mgear_curveCns24GroupParts.ig";
connectAttr "mgear_curveCns24GroupId.id" "mgear_curveCns24GroupParts.gi";
connectAttr "groupId48.msg" "tweakSet24.gn" -na;
connectAttr "finger_R1_crvShape.iog.og[1]" "tweakSet24.dsm" -na;
connectAttr "tweak24.msg" "tweakSet24.ub[0]";
connectAttr "finger_R1_crvShapeOrig.ws" "groupParts48.ig";
connectAttr "groupId48.id" "groupParts48.gi";
connectAttr "finger_R0_blade.bladeRollOffset" "unitConversion16.i";
connectAttr "mgear_curveCns25GroupParts.og" "mgear_curveCns25.ip[0].ig";
connectAttr "mgear_curveCns25GroupId.id" "mgear_curveCns25.ip[0].gi";
connectAttr "finger_R0_root.wm" "mgear_curveCns25.inputs[0]";
connectAttr "finger_R0_0_loc.wm" "mgear_curveCns25.inputs[1]";
connectAttr "finger_R0_1_loc.wm" "mgear_curveCns25.inputs[2]";
connectAttr "finger_R0_2_loc.wm" "mgear_curveCns25.inputs[3]";
connectAttr "groupParts50.og" "tweak25.ip[0].ig";
connectAttr "groupId50.id" "tweak25.ip[0].gi";
connectAttr "mgear_curveCns25GroupId.msg" "mgear_curveCns25Set.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[0]" "mgear_curveCns25Set.dsm" -na;
connectAttr "mgear_curveCns25.msg" "mgear_curveCns25Set.ub[0]";
connectAttr "tweak25.og[0]" "mgear_curveCns25GroupParts.ig";
connectAttr "mgear_curveCns25GroupId.id" "mgear_curveCns25GroupParts.gi";
connectAttr "groupId50.msg" "tweakSet25.gn" -na;
connectAttr "finger_R0_crvShape.iog.og[1]" "tweakSet25.dsm" -na;
connectAttr "tweak25.msg" "tweakSet25.ub[0]";
connectAttr "finger_R0_crvShapeOrig.ws" "groupParts50.ig";
connectAttr "groupId50.id" "groupParts50.gi";
connectAttr "thumb_R0_blade.bladeRollOffset" "unitConversion17.i";
connectAttr "mgear_curveCns26GroupParts.og" "mgear_curveCns26.ip[0].ig";
connectAttr "mgear_curveCns26GroupId.id" "mgear_curveCns26.ip[0].gi";
connectAttr "thumb_R0_root.wm" "mgear_curveCns26.inputs[0]";
connectAttr "thumb_R0_0_loc.wm" "mgear_curveCns26.inputs[1]";
connectAttr "thumb_R0_1_loc.wm" "mgear_curveCns26.inputs[2]";
connectAttr "thumb_R0_2_loc.wm" "mgear_curveCns26.inputs[3]";
connectAttr "groupParts52.og" "tweak26.ip[0].ig";
connectAttr "groupId52.id" "tweak26.ip[0].gi";
connectAttr "mgear_curveCns26GroupId.msg" "mgear_curveCns26Set.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[0]" "mgear_curveCns26Set.dsm" -na;
connectAttr "mgear_curveCns26.msg" "mgear_curveCns26Set.ub[0]";
connectAttr "tweak26.og[0]" "mgear_curveCns26GroupParts.ig";
connectAttr "mgear_curveCns26GroupId.id" "mgear_curveCns26GroupParts.gi";
connectAttr "groupId52.msg" "tweakSet26.gn" -na;
connectAttr "thumb_R0_crvShape.iog.og[1]" "tweakSet26.dsm" -na;
connectAttr "tweak26.msg" "tweakSet26.ub[0]";
connectAttr "thumb_R0_crvShapeOrig.ws" "groupParts52.ig";
connectAttr "groupId52.id" "groupParts52.gi";
connectAttr "mgear_curveCns27GroupParts.og" "mgear_curveCns27.ip[0].ig";
connectAttr "mgear_curveCns27GroupId.id" "mgear_curveCns27.ip[0].gi";
connectAttr "leg_L0_root.wm" "mgear_curveCns27.inputs[0]";
connectAttr "leg_L0_knee.wm" "mgear_curveCns27.inputs[1]";
connectAttr "leg_L0_ankle.wm" "mgear_curveCns27.inputs[2]";
connectAttr "leg_L0_eff.wm" "mgear_curveCns27.inputs[3]";
connectAttr "groupParts54.og" "tweak27.ip[0].ig";
connectAttr "groupId54.id" "tweak27.ip[0].gi";
connectAttr "mgear_curveCns27GroupId.msg" "mgear_curveCns27Set.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[0]" "mgear_curveCns27Set.dsm" -na;
connectAttr "mgear_curveCns27.msg" "mgear_curveCns27Set.ub[0]";
connectAttr "tweak27.og[0]" "mgear_curveCns27GroupParts.ig";
connectAttr "mgear_curveCns27GroupId.id" "mgear_curveCns27GroupParts.gi";
connectAttr "groupId54.msg" "tweakSet27.gn" -na;
connectAttr "leg_L0_crvShape.iog.og[1]" "tweakSet27.dsm" -na;
connectAttr "tweak27.msg" "tweakSet27.ub[0]";
connectAttr "leg_L0_crvShapeOrig.ws" "groupParts54.ig";
connectAttr "groupId54.id" "groupParts54.gi";
connectAttr "mgear_curveCns28GroupParts.og" "mgear_curveCns28.ip[0].ig";
connectAttr "mgear_curveCns28GroupId.id" "mgear_curveCns28.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns28.inputs[0]";
connectAttr "foot_L0_0_loc.wm" "mgear_curveCns28.inputs[1]";
connectAttr "foot_L0_1_loc.wm" "mgear_curveCns28.inputs[2]";
connectAttr "foot_L0_2_loc.wm" "mgear_curveCns28.inputs[3]";
connectAttr "groupParts56.og" "tweak28.ip[0].ig";
connectAttr "groupId56.id" "tweak28.ip[0].gi";
connectAttr "mgear_curveCns28GroupId.msg" "mgear_curveCns28Set.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[0]" "mgear_curveCns28Set.dsm" -na;
connectAttr "mgear_curveCns28.msg" "mgear_curveCns28Set.ub[0]";
connectAttr "tweak28.og[0]" "mgear_curveCns28GroupParts.ig";
connectAttr "mgear_curveCns28GroupId.id" "mgear_curveCns28GroupParts.gi";
connectAttr "groupId56.msg" "tweakSet28.gn" -na;
connectAttr "foot_L0_crvShape.iog.og[1]" "tweakSet28.dsm" -na;
connectAttr "tweak28.msg" "tweakSet28.ub[0]";
connectAttr "foot_L0_crvShapeOrig.ws" "groupParts56.ig";
connectAttr "groupId56.id" "groupParts56.gi";
connectAttr "mgear_curveCns29GroupParts.og" "mgear_curveCns29.ip[0].ig";
connectAttr "mgear_curveCns29GroupId.id" "mgear_curveCns29.ip[0].gi";
connectAttr "foot_L0_root.wm" "mgear_curveCns29.inputs[0]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns29.inputs[1]";
connectAttr "foot_L0_outpivot.wm" "mgear_curveCns29.inputs[2]";
connectAttr "foot_L0_heel.wm" "mgear_curveCns29.inputs[3]";
connectAttr "foot_L0_inpivot.wm" "mgear_curveCns29.inputs[4]";
connectAttr "groupParts58.og" "tweak29.ip[0].ig";
connectAttr "groupId58.id" "tweak29.ip[0].gi";
connectAttr "mgear_curveCns29GroupId.msg" "mgear_curveCns29Set.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[0]" "mgear_curveCns29Set.dsm" -na;
connectAttr "mgear_curveCns29.msg" "mgear_curveCns29Set.ub[0]";
connectAttr "tweak29.og[0]" "mgear_curveCns29GroupParts.ig";
connectAttr "mgear_curveCns29GroupId.id" "mgear_curveCns29GroupParts.gi";
connectAttr "groupId58.msg" "tweakSet29.gn" -na;
connectAttr "foot_L0_Shape1.iog.og[1]" "tweakSet29.dsm" -na;
connectAttr "tweak29.msg" "tweakSet29.ub[0]";
connectAttr "foot_L0_Shape1Orig.ws" "groupParts58.ig";
connectAttr "groupId58.id" "groupParts58.gi";
connectAttr "mgear_curveCns30GroupParts.og" "mgear_curveCns30.ip[0].ig";
connectAttr "mgear_curveCns30GroupId.id" "mgear_curveCns30.ip[0].gi";
connectAttr "leg_R0_root.wm" "mgear_curveCns30.inputs[0]";
connectAttr "leg_R0_knee.wm" "mgear_curveCns30.inputs[1]";
connectAttr "leg_R0_ankle.wm" "mgear_curveCns30.inputs[2]";
connectAttr "leg_R0_eff.wm" "mgear_curveCns30.inputs[3]";
connectAttr "groupParts60.og" "tweak30.ip[0].ig";
connectAttr "groupId60.id" "tweak30.ip[0].gi";
connectAttr "mgear_curveCns30GroupId.msg" "mgear_curveCns30Set.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[0]" "mgear_curveCns30Set.dsm" -na;
connectAttr "mgear_curveCns30.msg" "mgear_curveCns30Set.ub[0]";
connectAttr "tweak30.og[0]" "mgear_curveCns30GroupParts.ig";
connectAttr "mgear_curveCns30GroupId.id" "mgear_curveCns30GroupParts.gi";
connectAttr "groupId60.msg" "tweakSet30.gn" -na;
connectAttr "leg_R0_crvShape.iog.og[1]" "tweakSet30.dsm" -na;
connectAttr "tweak30.msg" "tweakSet30.ub[0]";
connectAttr "leg_R0_crvShapeOrig.ws" "groupParts60.ig";
connectAttr "groupId60.id" "groupParts60.gi";
connectAttr "mgear_curveCns31GroupParts.og" "mgear_curveCns31.ip[0].ig";
connectAttr "mgear_curveCns31GroupId.id" "mgear_curveCns31.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns31.inputs[0]";
connectAttr "foot_R0_0_loc.wm" "mgear_curveCns31.inputs[1]";
connectAttr "foot_R0_1_loc.wm" "mgear_curveCns31.inputs[2]";
connectAttr "foot_R0_2_loc.wm" "mgear_curveCns31.inputs[3]";
connectAttr "groupParts62.og" "tweak31.ip[0].ig";
connectAttr "groupId62.id" "tweak31.ip[0].gi";
connectAttr "mgear_curveCns31GroupId.msg" "mgear_curveCns31Set.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[0]" "mgear_curveCns31Set.dsm" -na;
connectAttr "mgear_curveCns31.msg" "mgear_curveCns31Set.ub[0]";
connectAttr "tweak31.og[0]" "mgear_curveCns31GroupParts.ig";
connectAttr "mgear_curveCns31GroupId.id" "mgear_curveCns31GroupParts.gi";
connectAttr "groupId62.msg" "tweakSet31.gn" -na;
connectAttr "foot_R0_crvShape.iog.og[1]" "tweakSet31.dsm" -na;
connectAttr "tweak31.msg" "tweakSet31.ub[0]";
connectAttr "foot_R0_crvShapeOrig.ws" "groupParts62.ig";
connectAttr "groupId62.id" "groupParts62.gi";
connectAttr "mgear_curveCns32GroupParts.og" "mgear_curveCns32.ip[0].ig";
connectAttr "mgear_curveCns32GroupId.id" "mgear_curveCns32.ip[0].gi";
connectAttr "foot_R0_root.wm" "mgear_curveCns32.inputs[0]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns32.inputs[1]";
connectAttr "foot_R0_outpivot.wm" "mgear_curveCns32.inputs[2]";
connectAttr "foot_R0_heel.wm" "mgear_curveCns32.inputs[3]";
connectAttr "foot_R0_inpivot.wm" "mgear_curveCns32.inputs[4]";
connectAttr "groupParts64.og" "tweak32.ip[0].ig";
connectAttr "groupId64.id" "tweak32.ip[0].gi";
connectAttr "mgear_curveCns32GroupId.msg" "mgear_curveCns32Set.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[0]" "mgear_curveCns32Set.dsm" -na;
connectAttr "mgear_curveCns32.msg" "mgear_curveCns32Set.ub[0]";
connectAttr "tweak32.og[0]" "mgear_curveCns32GroupParts.ig";
connectAttr "mgear_curveCns32GroupId.id" "mgear_curveCns32GroupParts.gi";
connectAttr "groupId64.msg" "tweakSet32.gn" -na;
connectAttr "foot_R0_Shape1.iog.og[1]" "tweakSet32.dsm" -na;
connectAttr "tweak32.msg" "tweakSet32.ub[0]";
connectAttr "foot_R0_Shape1Orig.ws" "groupParts64.ig";
connectAttr "groupId64.id" "groupParts64.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of chr.ma
