//Maya ASCII 2018ff07 scene
//Name: chr.ma
//Last modified: Tue, Sep 18, 2018 05:51:17 PM
//Codeset: ANSI_X3.4-1968
requires maya "2018ff07";
requires "stereoCamera" "10.0";
requires "3delight_for_maya2012" "6.0.51";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201711281015-8e846c9074";
fileInfo "osv" "Linux 3.10.0-693.17.1.el7.x86_64 #1 SMP Thu Jan 25 20:13:58 UTC 2018 x86_64";
createNode transform -n "guide";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051CC";
	addAttr -ci true -sn "rig_name" -ln "rig_name" -dt "string";
	addAttr -ci true -k true -sn "mode" -ln "mode" -min 0 -max 1 -en "Final:WIP" -at "enum";
	addAttr -ci true -k true -sn "step" -ln "step" -min 0 -max 6 -en "All Steps:Objects:Properties:Operators:Connect:Joints:Finalize" 
		-at "enum";
	addAttr -ci true -sn "ismodel" -ln "ismodel" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "classicChannelNames" -ln "classicChannelNames" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "proxyChannels" -ln "proxyChannels" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "worldCtl" -ln "worldCtl" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "importSkin" -ln "importSkin" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".skin" -type "string" "/jack/jobs/751_pitch2018/000_dev/000_820_rigging/maya/data/baker_skinweights/bakerSkin_v001.gSkin";
	setAttr ".synoptic" -type "string" "biped";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "baker_post | /jack/shared/PERSONAL/astattin/projects/baker/baker_post.py";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2017-08-29 18:34:07.211000";
	setAttr ".maya_version" -type "string" "2016.0";
	setAttr ".gear_version" -type "string" "2.2.4";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051CD";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1.5545667115145092 1.5545667115145092 1.5545667115145092 ;
createNode transform -n "eye_R0_fk_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051CE";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.29895567130187689 11.425914459724629 0.50300518926324267 ;
	setAttr ".s" -type "double3" 0.64326605773371259 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "eye_R0_fk_ctlShape" -p "eye_R0_fk_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051CF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 2 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.060062914927775789 -0.53530478107947599
		0 0.060062914927775789 0.16059143432384257
		0 0.12012582985555158 0.16059143432384257
		0 0 0.53530478107947599
		0 -0.12012582985555158 0.16059143432384257
		0 -0.060062914927775789 0.16059143432384257
		0 -0.060062914927775789 -0.53530478107947599
		0 0.060062914927775789 -0.53530478107947599
		;
createNode transform -n "eye_L0_fk_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D0";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.29895567130187684 11.425914459724629 0.50300518926324289 ;
	setAttr ".s" -type "double3" 0.64326605773371259 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "eye_L0_fk_ctlShape" -p "eye_L0_fk_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 2 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.060062914927775747 -0.53530478107947521
		0 0.060062914927775747 0.16059143432384251
		0 0.12012582985555149 0.16059143432384251
		0 0 0.53530478107947521
		0 -0.12012582985555149 0.16059143432384251
		0 -0.060062914927775747 0.16059143432384251
		0 -0.060062914927775747 -0.53530478107947521
		0 0.060062914927775747 -0.53530478107947521
		;
createNode transform -n "eye_L0_Over_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D2";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.29895567130187684 11.425914459724629 0.50300518926324289 ;
	setAttr ".s" -type "double3" 0.64326605773371259 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "eye_L0_Over_ctlShape" -p "eye_L0_Over_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -0.35711977361548791
		0.25140200669682339 0 -0.25140200669682339
		0.35711977361548791 0 0
		0.25140200669682339 0 0.25140200669682339
		0 0 0.35711977361548791
		-0.25140200669682339 0 0.25140200669682339
		-0.35711977361548791 0 0
		-0.25140200669682339 0 -0.25140200669682339
		0 0 -0.35711977361548791
		;
createNode nurbsCurve -n "eye_L0_Over_ctlShape11" -p "eye_L0_Over_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0.35711977361307845 1.3117741749618885e-06
		0.25140200669682328 0.25140200669512741 9.2345113399471484e-07
		0.35711977361548769 0 0
		0.25140200669682328 -0.25140200669512741 -9.2345113399471484e-07
		0 -0.35711977361307845 -1.3117741749618885e-06
		-0.25140200669682328 -0.25140200669512741 -9.2345113399471484e-07
		-0.35711977361548769 0 0
		-0.25140200669682328 0.25140200669512741 9.2345113399471484e-07
		0 0.35711977361307845 1.3117741749618885e-06
		;
createNode nurbsCurve -n "eye_L0_Over_ctlShape12" -p "eye_L0_Over_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		5.2470966993059552e-06 5.7820987121828552e-11 -0.35711977357694058
		6.4641579374635583e-06 -0.25140200664085521 -0.25140200666968715
		3.9353225246858851e-06 -0.35711977359380476 0
		-9.2345113374499164e-07 -0.25140200672226359 0.25140200666968715
		-5.2470966993059552e-06 -5.7820987121828552e-11 0.35711977357694058
		-6.4641579374635583e-06 0.25140200664085521 0.25140200666968715
		-3.9353225246858851e-06 0.35711977359380476 0
		9.2345113374499164e-07 0.25140200672226359 -0.25140200666968715
		5.2470966993059552e-06 5.7820987121828552e-11 -0.35711977357694058
		;
createNode transform -n "eye_R0_Over_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D6";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.29895567130187689 11.425914459724629 0.50300518926324267 ;
	setAttr ".s" -type "double3" 0.64326605773371259 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "eye_R0_Over_ctlShape" -p "eye_R0_Over_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 -0.35711977361548791
		0.2514020066968235 0 -0.2514020066968235
		0.35711977361548791 0 0
		0.2514020066968235 0 0.2514020066968235
		0 0 0.35711977361548791
		-0.2514020066968235 0 0.2514020066968235
		-0.35711977361548791 0 0
		-0.2514020066968235 0 -0.2514020066968235
		0 0 -0.35711977361548791
		;
createNode nurbsCurve -n "eye_R0_Over_ctlShape11" -p "eye_R0_Over_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0.35711977361307851 1.3117741749618885e-06
		0.2514020066968235 0.25140200669512741 9.2345113399471484e-07
		0.35711977361548791 0 0
		0.2514020066968235 -0.25140200669512741 -9.2345113399471484e-07
		0 -0.35711977361307851 -1.3117741749618885e-06
		-0.2514020066968235 -0.25140200669512741 -9.2345113399471484e-07
		-0.35711977361548791 0 0
		-0.2514020066968235 0.25140200669512741 9.2345113399471484e-07
		0 0.35711977361307851 1.3117741749618885e-06
		;
createNode nurbsCurve -n "eye_R0_Over_ctlShape12" -p "eye_R0_Over_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051D9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		5.2470966993059586e-06 5.7820987121828552e-11 -0.35711977357694075
		6.4641579374635583e-06 -0.25140200664085527 -0.25140200666968732
		3.9353225246858851e-06 -0.35711977359380492 0
		-9.2345113376163986e-07 -0.25140200672226376 0.25140200666968732
		-5.2470966993059586e-06 -5.7820987121828552e-11 0.35711977357694075
		-6.4641579374635583e-06 0.25140200664085527 0.25140200666968732
		-3.9353225246858851e-06 0.35711977359380492 0
		9.2345113376163986e-07 0.25140200672226376 -0.25140200666968732
		5.2470966993059586e-06 5.7820987121828552e-11 -0.35711977357694075
		;
createNode transform -n "mouth_C0_jaw_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051DA";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.119288447068875e-16 10.272736425578188 0.57144849802123732 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "mouth_C0_jaw_ctlShape" -p "mouth_C0_jaw_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051DB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0.18626497208084042 0.19303519150179033
		0.13112516085201711 0.13112516085113338 0.1930349889619542
		0.18626497208209589 9.2530324866053496e-16 0.19303450731234426
		0.13112516085201711 -0.13112516085113157 0.19303402566273434
		0 -0.18626497208083861 0.19303382312289818
		-0.13112516085201711 -0.13112516085113157 0.19303402566273434
		-0.18626497208209589 9.2530324866053496e-16 0.19303450731234426
		-0.13112516085201711 0.13112516085113338 0.1930349889619542
		0 0.18626497208084042 0.19303519150179033
		;
createNode transform -n "eye_L0_ik_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051DC";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0.29895567130187745 11.425914459724623 1.8856392919877547 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "eye_L0_ik_ctlShape" -p "eye_L0_ik_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051DD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0.29064153793894593 1.0675859804183986e-06
		0.20460324873096317 0.2046032487295828 7.5154969740342135e-07
		0.29064153794090669 0 0
		0.20460324873096317 -0.2046032487295828 -7.5154969740342135e-07
		0 -0.29064153793894593 -1.0675859804183986e-06
		-0.20460324873096317 -0.2046032487295828 -7.5154969740342135e-07
		-0.29064153794090669 0 0
		-0.20460324873096317 0.2046032487295828 7.5154969740342135e-07
		0 0.29064153793894593 1.0675859804183986e-06
		;
createNode transform -n "eye_R0_ik_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051DE";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -0.29895567130187772 11.425914459724623 1.8856392919877549 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "eye_R0_ik_ctlShape" -p "eye_R0_ik_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051DF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 23;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 2 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0.29064153793894604 1.0675859804183986e-06
		0.20460324873096322 0.20460324872958285 7.5154969740342135e-07
		0.29064153794090675 0 0
		0.20460324873096322 -0.20460324872958285 -7.5154969740342135e-07
		0 -0.29064153793894604 -1.0675859804183986e-06
		-0.20460324873096322 -0.20460324872958285 -7.5154969740342135e-07
		-0.29064153794090675 0 0
		-0.20460324873096322 0.20460324872958285 7.5154969740342135e-07
		0 0.29064153793894604 1.0675859804183986e-06
		;
createNode transform -n "eyeslook_C0_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E0";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.131236599798215e-16 11.037801094524244 1.8024395853121196 ;
	setAttr -k on ".ro";
	setAttr ".s" -type "double3" 0.64326605773371259 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "eyeslook_C0_ctlShape" -p "eyeslook_C0_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 1 2 3 4
		5
		0.88494054721224236 1.0778612085656389 0.13113121785901707
		0.88494054721224236 0.077887983736720012 0.12381345691356391
		-0.88494054721224236 0.077887983736720012 0.12381345691356391
		-0.88494054721224236 1.0778612085656389 0.13113121785901707
		0.88494054721224236 1.0778612085656389 0.13113121785901707
		;
createNode transform -n "mouth_C0_teethup_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E2";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.1192884470688654e-16 10.673392340157314 0.70223866475397945 ;
	setAttr ".s" -type "double3" 0.64326605773371259 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "mouth_C0_teethup_ctlShape" -p "mouth_C0_teethup_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 1 2 3 4
		5
		0.66630184398935222 -0.043271893061538169 -2.3634976836078847e-07
		0.66630184398935222 0.043271893061538169 2.3634976836078847e-07
		0.47108473627370417 0.043271893061538169 2.3634976836078847e-07
		0.47108473627370417 -0.043271893061538169 -2.3634976836078847e-07
		0.66630184398935222 -0.043271893061538169 -2.3634976836078847e-07
		;
createNode transform -n "mouth_C0_teethlow_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E4";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.1192884470688696e-16 10.518507271713071 0.65719176016285519 ;
	setAttr ".s" -type "double3" 0.64326605773371259 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "mouth_C0_teethlow_ctlShape" -p "mouth_C0_teethlow_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 1 2 3 4
		5
		0.66630184398935222 -0.043271893061538169 -2.3634976836078847e-07
		0.66630184398935222 0.043271893061538169 2.3634976836078847e-07
		0.47108473627370417 0.043271893061538169 2.3634976836078847e-07
		0.47108473627370417 -0.043271893061538169 -2.3634976836078847e-07
		0.66630184398935222 -0.043271893061538169 -2.3634976836078847e-07
		;
createNode transform -n "neck_C0_ik_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E6";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.0542836645431275e-16 10.740552458788743 -0.12727034462572967 ;
	setAttr ".r" -type "double3" 15.915582881811162 0 0 ;
	setAttr -k on ".ro" 2;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".invTx" yes;
	setAttr ".invRy" yes;
	setAttr ".invRz" yes;
createNode nurbsCurve -n "neck_C0_ik_ctlShape" -p "neck_C0_ik_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 2 no 3
		25 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15 16 17 18 19 20 21 22
		 23 24
		25
		-1.3785027009186899e-32 -0.21901007479922935 1.6876110035943956
		0.43678586845480849 -0.21901007479922935 1.6301070531014406
		0.84380550179719793 -0.21901007479922935 1.4615140008188976
		1.1933211846466325 -0.21901007479922935 1.1933211846466321
		1.461514000818898 -0.21901007479922935 0.84380550179719738
		1.6301070531014399 -0.21901007479922935 0.43678586845480799
		1.6876110035943952 -0.21901007479922935 -2.2442298300928077e-16
		1.6301070531014397 -0.21901007479922935 -0.43678586845480816
		1.4615140008188974 -0.21901007479922935 -0.84380550179719771
		1.1933211846466318 -0.21901007479922935 -1.1933211846466318
		0.84380550179719727 -0.21901007479922935 -1.4615140008188974
		0.43678586845480805 -0.21901007479922935 -1.6301070531014392
		3.0293295368766849e-16 -0.21901007479922935 -2.3626554050321533
		-0.43678586845480744 -0.21901007479922935 -1.6301070531014392
		-0.8438055017971966 -0.21901007479922935 -1.4615140008188976
		-1.1933211846466312 -0.21901007479922935 -1.1933211846466321
		-1.4615140008188963 -0.21901007479922935 -0.84380550179719782
		-1.6301070531014383 -0.21901007479922935 -0.43678586845480888
		-1.6876110035943941 -0.21901007479922935 -1.0899457078311909e-15
		-1.6301070531014388 -0.21901007479922935 0.43678586845480671
		-1.4615140008188972 -0.21901007479922935 0.84380550179719582
		-1.1933211846466318 -0.21901007479922935 1.1933211846466303
		-0.8438055017971976 -0.21901007479922935 1.4615140008188956
		-0.43678586845480866 -0.21901007479922935 1.6301070531014374
		-1.3785027009186899e-32 -0.21901007479922935 1.6876110035943956
		;
createNode transform -n "body_C0_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E8";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.9750646750043073e-17 6.101920115679472 -0.24182544827852442 ;
	setAttr -k on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "body_C0_ctlShape" -p "body_C0_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051E9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 2 no 3
		5 0 1 2 3 4
		5
		3.7156099260886024 0 3.7156099260886024
		3.7156099260886024 0 -3.7156099260886024
		-3.7156099260886024 0 -3.7156099260886024
		-3.7156099260886024 0 3.7156099260886024
		3.7156099260886024 0 3.7156099260886024
		;
createNode transform -n "spine_C0_ik0_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051EA";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.9750646750043073e-17 6.1019201156794738 -0.24182544827852448 ;
	setAttr -k on ".ro" 2;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".invTx" yes;
	setAttr ".invRy" yes;
	setAttr ".invRz" yes;
createNode nurbsCurve -n "spine_C0_ik0_ctlShape" -p "spine_C0_ik0_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051EB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 2 no 3
		25 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15 16 17 18 19 20 21 22
		 23 24
		25
		0 0 2.2219225576044561
		0.57507587465093601 0 2.1462123824044026
		1.1109612788022276 0 1.9242413801271516
		1.5711365077534676 0 1.571136507753468
		1.9242413801271507 0 1.1109612788022276
		2.1462123824044022 0 0.57507587465093613
		2.2219225576044548 0 3.8806623909638286e-16
		2.1462123824044017 0 -0.57507587465093501
		1.9242413801271498 0 -1.1109612788022267
		1.5711365077534674 0 -1.571136507753466
		1.1109612788022274 0 -1.9242413801271494
		0.57507587465093601 0 -2.1462123824044013
		6.2090598255421239e-16 0 -3.1106915806462374
		-0.57507587465093446 0 -2.1462123824044008
		-1.1109612788022256 0 -1.9242413801271476
		-1.5711365077534647 0 -1.5711365077534651
		-1.9242413801271472 0 -1.1109612788022267
		-2.146212382404399 0 -0.5750758746509359
		-2.2219225576044512 0 -1.0089722216505959e-15
		-2.1462123824043999 0 0.57507587465093379
		-1.9242413801271472 0 1.1109612788022247
		-1.5711365077534651 0 1.5711365077534629
		-1.1109612788022272 0 1.9242413801271465
		-0.57507587465093624 0 2.1462123824043982
		0 0 2.2219225576044561
		;
createNode transform -n "tongue_C0_fk3_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051EC";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.010338807846130407 10.494251998601243 0.28120155854718643 ;
	setAttr ".r" -type "double3" -94.938927406334159 -63.279739102906255 -85.586280818985415 ;
	setAttr ".s" -type "double3" 0.6432660577337127 0.64326605773371281 0.64326605773371259 ;
createNode nurbsCurve -n "tongue_C0_fk3_ctlShape" -p "tongue_C0_fk3_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051ED";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.13853678438939185 0.19850485965950118 0.0086274711909421053
		0.13853678438939185 0.19850485965950118 -0.0086274711909421591
		0 0.19850485965950118 -0.0086274711909421591
		0 -0.19850485965953663 -0.0086274711909421591
		0 -0.19850485965953663 0.0086274711909421053
		0 0.19850485965950118 0.0086274711909421053
		0 0.19850485965950118 -0.0086274711909421591
		0 0.19850485965950118 0.0086274711909421053
		0.13853678438939185 0.19850485965950118 0.0086274711909421053
		0.13853678438939185 -0.19850485965953663 0.0086274711909421053
		0 -0.19850485965953663 0.0086274711909421053
		0.13853678438939185 -0.19850485965953663 0.0086274711909421053
		0.13853678438939185 -0.19850485965953663 -0.0086274711909421591
		0.13853678438939185 0.19850485965950118 -0.0086274711909421591
		0.13853678438939185 -0.19850485965953663 -0.0086274711909421591
		0 -0.19850485965953663 -0.0086274711909421591
		;
createNode transform -n "tongue_C0_fk2_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051EE";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.0062447100870333767 10.541396443542595 0.17551967888470152 ;
	setAttr ".r" -type "double3" -95.435338393361846 -65.878278340048098 -85.036795985222 ;
	setAttr ".s" -type "double3" 0.64326605773371259 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "tongue_C0_fk2_ctlShape" -p "tongue_C0_fk2_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051EF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.12413786397071704 0.19850485965951895 0.0086274711909421313
		0.12413786397071704 0.19850485965951895 -0.0086274711909421313
		0 0.19850485965951895 -0.0086274711909421313
		0 -0.19850485965951895 -0.0086274711909421313
		0 -0.19850485965951895 0.0086274711909421313
		0 0.19850485965951895 0.0086274711909421313
		0 0.19850485965951895 -0.0086274711909421313
		0 0.19850485965951895 0.0086274711909421313
		0.12413786397071704 0.19850485965951895 0.0086274711909421313
		0.12413786397071704 -0.19850485965951895 0.0086274711909421313
		0 -0.19850485965951895 0.0086274711909421313
		0.12413786397071704 -0.19850485965951895 0.0086274711909421313
		0.12413786397071704 -0.19850485965951895 -0.0086274711909421313
		0.12413786397071704 0.19850485965951895 -0.0086274711909421313
		0.12413786397071704 -0.19850485965951895 -0.0086274711909421313
		0 -0.19850485965951895 -0.0086274711909421313
		;
createNode transform -n "tongue_C0_fk1_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F0";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.001804156623477691 10.545756867118195 0.060894659067371869 ;
	setAttr ".r" -type "double3" -135.56379957772847 -86.892215516091852 -44.478355923551106 ;
	setAttr ".s" -type "double3" 0.64326605773371281 0.6432660577337127 0.64326605773371259 ;
createNode nurbsCurve -n "tongue_C0_fk1_ctlShape" -p "tongue_C0_fk1_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.12306669802790099 0.19850485965948364 0.0086274711909421313
		0.12306669802790099 0.19850485965948364 -0.0086274711909421313
		0 0.19850485965948364 -0.0086274711909421313
		0 -0.19850485965955422 -0.0086274711909421313
		0 -0.19850485965955422 0.0086274711909421313
		0 0.19850485965948364 0.0086274711909421313
		0 0.19850485965948364 -0.0086274711909421313
		0 0.19850485965948364 0.0086274711909421313
		0.12306669802790099 0.19850485965948364 0.0086274711909421313
		0.12306669802790099 -0.19850485965955422 0.0086274711909421313
		0 -0.19850485965955422 0.0086274711909421313
		0.12306669802790099 -0.19850485965955422 0.0086274711909421313
		0.12306669802790099 -0.19850485965955422 -0.0086274711909421313
		0.12306669802790099 0.19850485965948364 -0.0086274711909421313
		0.12306669802790099 -0.19850485965955422 -0.0086274711909421313
		0 -0.19850485965955422 -0.0086274711909421313
		;
createNode transform -n "tongue_C0_fk0_ctl_controlBuffer" -p "controllers_org";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F2";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.0015658877579981184 10.506706169082126 -0.026097065541350894 ;
	setAttr ".r" -type "double3" 95.407202390548605 -65.745110859424045 85.067639953138269 ;
	setAttr ".s" -type "double3" 0.6432660577337127 0.64326605773371259 0.64326605773371259 ;
createNode nurbsCurve -n "tongue_C0_fk0_ctlShape" -p "tongue_C0_fk0_ctl_controlBuffer";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10
		 11 12 13 14 15
		16
		0.10229044580868091 0.1985048596595102 0.0086274711909421313
		0.10229044580868091 0.1985048596595102 -0.0086274711909421313
		0 0.1985048596595102 -0.0086274711909421313
		0 -0.19850485965952769 -0.0086274711909421313
		0 -0.19850485965952769 0.0086274711909421313
		0 0.1985048596595102 0.0086274711909421313
		0 0.1985048596595102 -0.0086274711909421313
		0 0.1985048596595102 0.0086274711909421313
		0.10229044580868091 0.1985048596595102 0.0086274711909421313
		0.10229044580868091 -0.19850485965952769 0.0086274711909421313
		0 -0.19850485965952769 0.0086274711909421313
		0.10229044580868091 -0.19850485965952769 0.0086274711909421313
		0.10229044580868091 -0.19850485965952769 -0.0086274711909421313
		0.10229044580868091 0.1985048596595102 -0.0086274711909421313
		0.10229044580868091 -0.19850485965952769 -0.0086274711909421313
		0 -0.19850485965952769 -0.0086274711909421313
		;
createNode transform -n "global_C0_root" -p "guide";
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051F9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051FA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051FB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051FC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051FD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051FE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000051FF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005200";
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
	setAttr ".t" -type "double3" -1.2397770065936975e-16 7.9658417701721191 -0.37593379189086773 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005201";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005202";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005203";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005204";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005205";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005206";
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
	addAttr -ci true -sn "autoBend" -ln "autoBend" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "centralTangent" -ln "centralTangent" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "st_profile" -ln "st_profile" -at "double";
	addAttr -ci true -k true -sn "sq_profile" -ln "sq_profile" -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.5511151231257827e-17 1.7763568394002505e-15 -1.2325951644078309e-32 ;
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
createNode nurbsCurve -n "spine_C0_rootShape" -p "spine_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005207";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005208";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005209";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000520A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000520B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.3357165347635735 -3.3306690738754696e-16 1.3558546808486143e-31 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000520C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000520D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000520E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000520F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005210";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005211";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005212";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005213";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005214";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005215";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005216";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005217";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -7.1054273576010019e-15 1.1821982708976548 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005218";
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
	setAttr ".t" -type "double3" 1.7395848890977401 -0.62383494498544967 -0.37566362322487973 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005219";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000521A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000521B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000521C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000521D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21164081267113133 -1.0533963205922359 -1.6988630247336522 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.5245807017019728 -2.5028210152280619 -0.051360878458702831 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999878 0.99999999999999567 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_tipShape" -p "shoulder_L0_tip";
	rename -uid "76522900-0000-533B-5BA1-1DB30000521E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000521F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005220";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005221";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005222";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005223";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005224";
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
	addAttr -ci true -sn "ikTR" -ln "ikTR" -min 0 -max 1 -at "bool";
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
	setAttr ".t" -type "double3" 1.2434497875801753e-14 9.9920072216264089e-16 4.4408920985006262e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386862 44.41121298317988 -5.4710434405383905 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.999999999999998 0.99999999999999978 ;
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
createNode nurbsCurve -n "arm_L0_rootShape" -p "arm_L0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005225";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005226";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005227";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005228";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005229";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8398290554749241 3.5527136788005009e-15 0.08114653146604045 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784263 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999944 0.99999999999999911 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_elbowShape" -p "arm_L0_elbow";
	rename -uid "76522900-0000-533B-5BA1-1DB30000522A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000522B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000522C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000522D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000522E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000522F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005230";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2195127339870417 0 -0.11960611218230621 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000013 1.0000000000000016 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_L0_wristShape" -p "arm_L0_wrist";
	rename -uid "76522900-0000-533B-5BA1-1DB300005231";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005232";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005233";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005234";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005235";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005236";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005237";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308135 1.4210854715202004e-14 9.7144514654701197e-16 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005238";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005239";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000523A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000523B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000523C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000523D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000523E";
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
	setAttr ".t" -type "double3" -1.2124561875008062 0.5607311476451784 -0.29276117198398849 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999989 1.0000000000000009 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000523F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005240";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005241";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005242";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005243";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.11347623085808989 -0.027001577630496598 1.0430060296210659 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145882298 3.3190804973695647 45.379324150247726 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377431 1.049508226737738 1.0495082267377402 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "meta_L0_root" -p "arm_L0_eff";
	rename -uid "76522900-0000-533B-5BA1-1DB300005244";
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
	setAttr ".t" -type "double3" -1.1599430133892115 -0.037710415169762257 0.35093891002574101 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008867298 93.717381466937198 86.467960127478065 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716924 0.30838721081716919 0.30838721081716947 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005245";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005246";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005247";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005248";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005249";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617163 1.4210854715202004e-14 -3.6415315207705135e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999833 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_0_locShape" -p "meta_L0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000524A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000524B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000524C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000524D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000524E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000524F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005250";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618451 2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000013 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_1_locShape" -p "meta_L0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005251";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005252";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005253";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005254";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005255";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005256";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005257";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618451 -7.1054273576010019e-15 -9.7699626167013776e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.999999999999999 0.99999999999999811 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_2_locShape" -p "meta_L0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005258";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005259";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000525A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000525B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000525C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000525D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000525E";
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
	setAttr ".t" -type "double3" 0.16401146275139766 -0.18068216197505649 2.5219485147666143 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.0192929676280604 -75.581993430700166 -0.51179657716063121 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661814 1.2929668245661785 1.2929668245661801 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000525F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005260";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005261";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005262";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005263";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0109993042181999 7.1054273576010019e-15 -5.773159728050814e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_0_locShape" -p "finger_L3_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005264";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005265";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005266";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005267";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005268";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005269";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000526A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.68149998347619922 -1.7763568394002505e-14 2.6645352591003757e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_1_locShape" -p "finger_L3_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000526B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000526C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000526D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000526E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000526F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005270";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005271";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67644085825498457 1.4210854715202004e-14 -4.4408920985006262e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000016 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_2_locShape" -p "finger_L3_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005272";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005273";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005274";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005275";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005276";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005277";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005278";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.3322676295501878e-15 0 0 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999989 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L3_bladeShape" -p "finger_L3_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005279";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970877 0 0
		0 0.25859336491323626 0
		0 0 0
		;
createNode aimConstraint -n "finger_L3_blade_aimConstraint12" -p "finger_L3_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000527A";
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
	setAttr ".tg[0].tt" -type "double3" 1.0109993042181999 7.1054273576010019e-15 -5.773159728050814e-15 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.24302657066493777 -0.2831201022120497 -0.071582913715179053 0 0.28616053053543111 0.24945382705308686 -0.015098304339378121 0
		 0.058251665866270105 -0.04425851052265134 0.37281489714306815 0 6.357602251424515 7.5787318079555064 -1.1893623690085675 1;
	setAttr ".cpim" -type "matrix" 1.6836738686625179 1.9825034200452614 0.40356413439384342 0 -1.9614395104339806 1.7282015250348686 -0.30662037253387225 0
		 -0.4959222398407408 -0.10460016947024393 2.5828398041023219 0 3.5712639790122185 -25.825951580435355 2.8300257890499023 0.99999999999999989;
	setAttr ".wum" -type "matrix" 0.24302657066493777 -0.2831201022120497 -0.071582913715179053 0 0.28616053053543111 0.24945382705308686 -0.015098304339378121 0
		 0.058251665866270105 -0.04425851052265134 0.37281489714306815 0 6.357602251424515 7.5787318079555064 -1.1893623690085675 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" -1.3322676295501878e-15 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L3_blade_pointConstraint12" -p "finger_L3_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000527B";
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
	setAttr ".tg[0].tt" -type "double3" 0.16401146275139766 -0.18068216197505649 2.5219485147666143 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.017145045905379307 -0.03939946613987879 -0.29068112189420969 0 0.21553800695317452 0.19581688159932997 -0.039254319459756076 0
		 0.19897537565346296 -0.21551152197849732 0.017474808581395981 0 5.8975524554621099 8.1640833523160765 -1.1928504558670117 1;
	setAttr ".cpim" -type "matrix" 1.6836738686625179 1.9825034200452614 0.40356413439384342 0 -1.9614395104339806 1.7282015250348686 -0.30662037253387225 0
		 -0.4959222398407408 -0.10460016947024393 2.5828398041023219 0 3.5712639790122185 -25.825951580435355 2.8300257890499023 0.99999999999999989;
	setAttr ".rst" -type "double3" -6.6613381477509392e-15 0 0 ;
createNode transform -n "finger_L3_crv" -p "finger_L3_root";
	rename -uid "76522900-0000-533B-5BA1-1DB30000527C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.5712639790122132 -25.825951580435355 2.8300257890499081 ;
	setAttr ".r" -type "double3" -6.7701506671843097 -8.8196131240774545 49.659868634757139 ;
	setAttr ".s" -type "double3" 2.6320983106786153 2.6320983106786016 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L3_crvShape" -p "finger_L3_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000527D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		6.3576022514245327 7.5787318079555064 -1.1893623690085711
		6.603301945273321 7.2924975816089406 -1.2617326449685309
		6.7689245491657486 7.0995512366296438 -1.3105163994826021
		6.9333176512051082 6.9080372317000895 -1.3589380070724908
		;
createNode nurbsCurve -n "finger_L3_crvShapeOrig" -p "finger_L3_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000527E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000527F";
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
	setAttr ".t" -type "double3" -0.037462482334232661 -0.33628796715672138 2.8142690595735509 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -8.8926342160920964 -78.992618998314683 17.731131904944476 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566179 1.2929668245661776 1.2929668245661798 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005280";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005281";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005282";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005283";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005284";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0922549684338285 -1.0658141036401503e-14 3.5527136788005009e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000018 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_0_locShape" -p "finger_L2_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005285";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005286";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005287";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005288";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005289";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000528A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000528B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96169554516149103 1.4210854715202004e-14 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_1_locShape" -p "finger_L2_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000528C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000528D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000528E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000528F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005290";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005291";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005292";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674915954 -2.4868995751603507e-14 -1.3322676295501878e-15 ;
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
createNode nurbsCurve -n "finger_L2_2_locShape" -p "finger_L2_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005293";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005294";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005295";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005296";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005297";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005298";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005299";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000018 1.0000000000000004 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L2_bladeShape" -p "finger_L2_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000529A";
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
createNode aimConstraint -n "finger_L2_blade_aimConstraint12" -p "finger_L2_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000529B";
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
	setAttr ".tg[0].tt" -type "double3" 1.0922549684338285 -1.0658141036401503e-14 3.5527136788005009e-15 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.26470921055120705 -0.26806487363849613 -0.049125118139400001 0 0.27100561210498075 0.26614867706241541 0.0079912306440362811 0
		 0.028775196239756811 -0.040609421084025418 0.37665087662483887 0 6.3970528962803499 7.5193311445833899 -0.92679906793007549 1;
	setAttr ".cpim" -type "matrix" 1.8338899297304367 1.877511031463025 0.19935287669145563 0 -1.8571377673501723 1.8438624695358719 -0.28133969431248657 0
		 -0.34033594548927054 0.055362778551359654 2.6094152456127371 0 1.9175199303141972 -25.823839703568954 3.2586190459069684 1;
	setAttr ".wum" -type "matrix" 0.26470921055120705 -0.26806487363849613 -0.049125118139400001 0 0.27100561210498075 0.26614867706241541 0.0079912306440362811 0
		 0.028775196239756811 -0.040609421084025418 0.37665087662483887 0 6.3970528962803499 7.5193311445833899 -0.92679906793007549 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L2_blade_pointConstraint12" -p "finger_L2_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000529C";
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
	setAttr ".tg[0].tt" -type "double3" -0.037462482334232661 -0.33628796715672138 2.8142690595735509 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.017145045905379311 -0.039399466139878797 -0.29068112189420975 0 0.21553800695317474 0.19581688159933017 -0.039254319459756118 0
		 0.19897537565346335 -0.21551152197849774 0.017474808581396016 0 5.9089231951857277 8.1902134121128451 -1.0000682727297674 1;
	setAttr ".cpim" -type "matrix" 1.8338899297304367 1.877511031463025 0.19935287669145563 0 -1.8571377673501723 1.8438624695358719 -0.28133969431248657 0
		 -0.34033594548927054 0.055362778551359654 2.6094152456127371 0 1.9175199303141972 -25.823839703568954 3.2586190459069684 1;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 -4.4408920985006262e-16 ;
createNode transform -n "finger_L2_crv" -p "finger_L2_root";
	rename -uid "76522900-0000-533B-5BA1-1DB30000529D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.9175199303141963 -25.823839703568954 3.2586190459069742 ;
	setAttr ".r" -type "double3" -6.1536960489997607 -4.3436930190013285 45.67338182495147 ;
	setAttr ".s" -type "double3" 2.6320983106786144 2.632098310678602 2.6320983106786082 ;
createNode nurbsCurve -n "finger_L2_crvShape" -p "finger_L2_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000529E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		6.3970528962803694 7.5193311445833899 -0.92679906793007716
		6.6861828466951181 7.2265359544891528 -0.98045622229273421
		6.9407525152454319 6.968739159696737 -1.0276996295629268
		7.1193174780179111 6.7879105663803303 -1.0608379736103069
		;
createNode nurbsCurve -n "finger_L2_crvShapeOrig" -p "finger_L2_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000529F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A0";
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
	setAttr ".t" -type "double3" -0.31226618513921167 -0.41881087969848352 2.9843932979732841 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -21.360082869095351 -85.803626447477157 33.398314655900379 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.292966824566179 1.2929668245661805 1.2929668245661794 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.1667314564457858 0 3.1086244689504383e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999922 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_0_locShape" -p "finger_L1_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052A9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052AA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052AB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052AC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414019827 1.7763568394002505e-14 -1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999944 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_1_locShape" -p "finger_L1_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052AD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052AE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052AF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0183238617040076 -2.1316282072803006e-14 -8.8817841970012523e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_2_locShape" -p "finger_L1_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052B9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052BA";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999922 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L1_bladeShape" -p "finger_L1_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052BB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052BC";
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
	setAttr ".tg[0].tt" -type "double3" 1.1667314564457858 0 3.1086244689504383e-15 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.2664498615881844 -0.27081614484870586 -0.0024711961876782672 0 0.27018976734726535 0.26557370181320916 0.028480140233765733 0
		 -0.018573657209689863 -0.021731186258230211 0.37884798358093796 0 6.4291988682496397 7.5034652106265529 -0.64792436688804111 1;
	setAttr ".cpim" -type "matrix" 1.8459490583162597 1.8718589066945546 -0.12867721090697062 0 -1.8761984133921272 1.8398790746355997 -0.15055238749373004 0
		 -0.017120302665458512 0.1973087459376861 2.6246366741113576 0 2.1989232652817292 -25.71218064843849 3.6575220360533227 1;
	setAttr ".wum" -type "matrix" 0.2664498615881844 -0.27081614484870586 -0.0024711961876782672 0 0.27018976734726535 0.26557370181320916 0.028480140233765733 0
		 -0.018573657209689863 -0.021731186258230211 0.37884798358093796 0 6.4291988682496397 7.5034652106265529 -0.64792436688804111 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 8.8817841970012523e-16 -7.1054273576010019e-15 4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L1_blade_pointConstraint12" -p "finger_L1_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052BD";
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
	setAttr ".tg[0].tt" -type "double3" -0.31226618513921167 -0.41881087969848352 2.9843932979732841 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.017145045905379304 -0.039399466139878776 -0.29068112189420964 0 0.21553800695317446 0.19581688159932992 -0.039254319459756062 0
		 0.19897537565346313 -0.21551152197849749 0.017474808581395995 0 5.9202939349093349 8.2163434719096102 -0.80728608959252213 1;
	setAttr ".cpim" -type "matrix" 1.8459490583162597 1.8718589066945546 -0.12867721090697062 0 -1.8761984133921272 1.8398790746355997 -0.15055238749373004 0
		 -0.017120302665458512 0.1973087459376861 2.6246366741113576 0 2.1989232652817292 -25.71218064843849 3.6575220360533227 1;
	setAttr ".rst" -type "double3" -3.9968028886505635e-15 0 4.4408920985006262e-16 ;
createNode transform -n "finger_L1_crv" -p "finger_L1_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052BE";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.1989232652817341 -25.71218064843849 3.6575220360533343 ;
	setAttr ".r" -type "double3" -3.2829588794259235 2.802175367890599 45.399294676000302 ;
	setAttr ".s" -type "double3" 2.6320983106786149 2.6320983106786024 2.63209831067861 ;
createNode nurbsCurve -n "finger_L1_crvShape" -p "finger_L1_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052BF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		6.4291988682496424 7.5034652106265556 -0.647924366888041
		6.7400743033302026 7.187495495518192 -0.65080758921525317
		6.9969653518430315 6.9263948029161853 -0.65319013194186482
		7.2682976038460039 6.650616260482054 -0.65570660998673058
		;
createNode nurbsCurve -n "finger_L1_crvShapeOrig" -p "finger_L1_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C1";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.3322676295501878e-15 7.1054273576010019e-15 -2.6645352591003757e-15 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999833 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "meta_L0_bladeShape" -p "meta_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030155 0 0
		0 0.061677442163433849 0
		0 0 0
		;
createNode aimConstraint -n "meta_L0_blade_aimConstraint12" -p "meta_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C3";
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
	setAttr ".tg[0].tt" -type "double3" 0.66320847353617163 1.4210854715202004e-14 -3.6415315207705135e-14 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.017145045905379314 -0.039399466139878804 -0.2906811218942098 0 0.21553800695317454 0.19581688159932997 -0.039254319459756076 0
		 0.19897537565346346 -0.21551152197849785 0.017474808581396023 0 5.9316646746329535 8.2424735317063682 -0.61450390645528019 1;
	setAttr ".cpim" -type "matrix" -0.19857182561406728 2.496334846002398 2.3045084751482587 0 -0.45631980006309197 2.2679271831539451 -2.4960281002635667 0
		 -3.3666332166522546 -0.454638728958773 0.20239109661266139 0 2.8702560941509985 -33.780128276042518 7.0282441558888431 1;
	setAttr ".wum" -type "matrix" -0.017145045905379314 -0.039399466139878804 -0.2906811218942098 0 0.21553800695317454 0.19581688159932997 -0.039254319459756076 0
		 0.19897537565346346 -0.21551152197849785 0.017474808581396023 0 5.9316646746329535 8.2424735317063682 -0.61450390645528019 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" -1.3322676295501878e-15 7.1054273576010019e-15 -2.6645352591003757e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "meta_L0_blade_pointConstraint12" -p "meta_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C4";
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
	setAttr ".tg[0].tt" -type "double3" -1.1599430133892115 -0.037710415169762257 0.35093891002574101 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.64390309761082876 -0.69970217221997533 0.060707258759117907 0 0.70228971323448364 0.64056524124123004 -0.065916846001659396 0
		 0.0075934024270345379 0.089290212747165823 0.94860386797406815 0 6.7023743902907009 7.423679456839622 -0.87947470489805557 1;
	setAttr ".cpim" -type "matrix" -0.19857182561406728 2.496334846002398 2.3045084751482587 0 -0.45631980006309197 2.2679271831539451 -2.4960281002635667 0
		 -3.3666332166522546 -0.454638728958773 0.20239109661266139 0 2.8702560941509985 -33.780128276042518 7.0282441558888431 1;
	setAttr ".rst" -type "double3" -4.4408920985006262e-16 0 -2.6645352591003757e-15 ;
createNode transform -n "meta_L0_crv" -p "meta_L0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C5";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.8702560941509909 -33.780128276042518 7.0282441558888449 ;
	setAttr ".r" -type "double3" -85.364298494222353 -42.621811599623676 94.548036378581898 ;
	setAttr ".s" -type "double3" 3.4032157947041308 3.4032157947041144 3.4032157947041259 ;
createNode nurbsCurve -n "meta_L0_crvShape" -p "meta_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		5.9316646746329784 8.2424735317063664 -0.61450390645528163
		5.9202939349093597 8.2163434719096085 -0.80728608959252346
		5.9089231951857526 8.1902134121128434 -1.0000682727297687
		5.8975524554621348 8.1640833523160747 -1.192850455867013
		;
createNode nurbsCurve -n "meta_L0_crvShapeOrig" -p "meta_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C8";
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
	setAttr ".t" -type "double3" -0.53026303642286798 -0.7844981902409458 2.938492768439124 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -105.88673169036674 -86.219921770712347 122.93617088030329 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661787 1.2929668245661798 1.2929668245661814 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052C9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052CA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052CB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052CC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052CD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3436041523118589 -7.1054273576010019e-15 2.6645352591003757e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_0_locShape" -p "finger_L0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052CE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052CF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.82316977971104255 -1.4210854715202004e-14 2.6645352591003757e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 0.99999999999999989 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_1_locShape" -p "finger_L0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052D9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052DA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052DB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.021042138061067 2.1316282072803006e-14 -9.7699626167013776e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999989 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_2_locShape" -p "finger_L0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052DC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052DD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052DE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052DF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E2";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 -3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "finger_L0_bladeShape" -p "finger_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E4";
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
	setAttr ".tg[0].tt" -type "double3" 1.3436041523118589 -7.1054273576010019e-15 2.6645352591003757e-15 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.27292329286232575 -0.26220806510914435 0.033208834164723533 0 0.25610778655239574 0.27416013479702711 0.059900267253027321 0
		 -0.065304653295863102 -0.020643908095884487 0.37370061704272306 0 6.3563545848066045 7.4764685741727153 -0.37822191090724194 1;
	setAttr ".cpim" -type "matrix" 1.890796611598325 1.7742997673030951 -0.45242681882674146 0 -1.8165621403821026 1.8993653801877928 -0.14301978797220427 0
		 0.2300688609435203 0.41498554838626683 2.5889760197676348 0 1.6499131287552204 -25.321667409454424 4.924275691887396 1;
	setAttr ".wum" -type "matrix" 0.27292329286232575 -0.26220806510914435 0.033208834164723533 0 0.25610778655239574 0.27416013479702711 0.059900267253027321 0
		 -0.065304653295863102 -0.020643908095884487 0.37370061704272306 0 6.3563545848066045 7.4764685741727153 -0.37822191090724194 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 8.8817841970012523e-16 -3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_L0_blade_pointConstraint12" -p "finger_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E5";
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
	setAttr ".tg[0].tt" -type "double3" -0.53026303642286798 -0.7844981902409458 2.938492768439124 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.017145045905379314 -0.039399466139878804 -0.2906811218942098 0 0.21553800695317454 0.19581688159932997 -0.039254319459756076 0
		 0.19897537565346346 -0.21551152197849785 0.017474808581396023 0 5.9316646746329535 8.2424735317063682 -0.61450390645528019 1;
	setAttr ".cpim" -type "matrix" 1.890796611598325 1.7742997673030951 -0.45242681882674146 0 -1.8165621403821026 1.8993653801877928 -0.14301978797220427 0
		 0.2300688609435203 0.41498554838626683 2.5889760197676348 0 1.6499131287552204 -25.321667409454424 4.924275691887396 1;
	setAttr ".rst" -type "double3" -2.2204460492503131e-16 0 0 ;
createNode transform -n "finger_L0_crv" -p "finger_L0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E6";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.6499131287552229 -25.32166740945442 4.9242756918874067 ;
	setAttr ".r" -type "double3" -3.1619102938207235 9.8976251056042273 43.179439147877254 ;
	setAttr ".s" -type "double3" 2.6320983106786127 2.6320983106785998 2.6320983106786047 ;
createNode nurbsCurve -n "finger_L0_crvShape" -p "finger_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		6.3563545848066232 7.4764685741727144 -0.37822191090723839
		6.7230554543590664 7.1241647291224082 -0.33360238343007947
		6.9477176612225557 6.9083229739280512 -0.30626587472624339
		7.2263838436933767 6.6405974905121612 -0.27235825568818112
		;
createNode nurbsCurve -n "finger_L0_crvShapeOrig" -p "finger_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052E9";
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
	setAttr ".t" -type "double3" 0.1322771654133077 -0.54218928445069992 0.32839424507227211 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848357953 -84.001563523230899 11.00920440691708 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041286 3.4032157947041166 3.4032157947041219 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052EA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052EB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052EC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052ED";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052EE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 8.1712414612411521e-14 1.0000000000000013 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205708 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999756 1.0000000000000009 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "thumb_L0_root" -p "thumbRoll_L0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052EF";
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
	setAttr ".t" -type "double3" 0.073049912825480012 -0.12191720894007574 0.093809948833010637 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 54.062266279466002 -51.335814945903358 -22.771144303848036 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511122 0.48936434703511023 0.48936434703511184 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F4";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83273259982690906 0.0044706360160056136 0.10177483259699294 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498060931 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999822 0.99999999999999978 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_0_locShape" -p "thumb_L0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052F9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052FA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052FB";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.95596905877535132 3.5527136788005009e-15 1.5987211554602254e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999889 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_1_locShape" -p "thumb_L0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000052FC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052FD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052FE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000052FF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005300";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005301";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005302";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.92928881922217954 1.4210854715202004e-14 1.5987211554602254e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000004 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_2_locShape" -p "thumb_L0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005303";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005304";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005305";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005306";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005307";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005308";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005309";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.037316026386286734 -6.9679135159408316 0.3075970781355426 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999778 0.99999999999999822 0.99999999999999922 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_L0_bladeShape" -p "thumb_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000530A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.29361860822106672 0 0
		0 0.097872869407022237 0
		0 0 0
		;
createNode aimConstraint -n "thumb_L0_blade_aimConstraint12" -p "thumb_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000530B";
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
	setAttr ".tg[0].tt" -type "double3" 0.83273259982690906 0.0044706360160056136 0.10177483259699294 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.12976580689666173 -0.28800598452882042 0.37375239448750602 0 0.17680777374385465 0.38906637168580782 0.23841944911454299 0
		 -0.43746692521069525 0.071814869267631407 0.20722639322218034 0 5.8446911687129912 7.9233282291420117 -0.53036805718144497 1;
	setAttr ".cpim" -type "matrix" 0.54187064055374923 0.7383065223781422 -1.8267561282439724 0 -1.2026433700229235 1.6246471168726442 0.29988153383366178 0
		 1.5606996500297221 0.9955819849758486 0.86532732404899326 0 7.1896168570937871 -16.659761091521442 8.7597075593991072 1;
	setAttr ".wum" -type "matrix" 0.12976580689666173 -0.28800598452882042 0.37375239448750602 0 0.17680777374385465 0.38906637168580782 0.23841944911454299 0
		 -0.43746692521069525 0.071814869267631407 0.20722639322218034 0 5.8446911687129912 7.9233282291420117 -0.53036805718144497 1;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -0.037316026386301604 -6.9679135159407712 0.30759707813578963 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_L0_blade_pointConstraint12" -p "thumb_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000530C";
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
	setAttr ".tg[0].tt" -type "double3" 0.073049912825480012 -0.12191720894007574 0.093809948833010637 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.68210165275070422 -0.72987166520261582 -0.04499652930087944 0 0.72862217100253457 0.68357489624827783 -0.04283798714578619 0
		 0.062024730860404068 -0.0035656070341319596 0.99806824376300562 0 5.877876747073528 8.0603193235243733 -0.62593248334725204 1;
	setAttr ".cpim" -type "matrix" 0.54187064055374923 0.7383065223781422 -1.8267561282439724 0 -1.2026433700229235 1.6246471168726442 0.29988153383366178 0
		 1.5606996500297221 0.9955819849758486 0.86532732404899326 0 7.1896168570937871 -16.659761091521442 8.7597075593991072 1;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 0 ;
createNode transform -n "thumb_L0_crv" -p "thumb_L0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB30000530D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 7.1896168570937933 -16.659761091521442 8.7597075593991072 ;
	setAttr ".r" -type "double3" 19.113897649265009 63.373790556310453 53.723668436812744 ;
	setAttr ".s" -type "double3" 2.0434672163157264 2.0434672163157206 2.0434672163157255 ;
createNode nurbsCurve -n "thumb_L0_crvShape" -p "thumb_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000530E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		5.8446911687130516 7.9233282291420188 -0.53036805718133995
		5.9090187065799142 7.6925445773111853 -0.19697593597223595
		6.0202395659793213 7.3904840997141061 0.14249762237358884
		6.1283563508850571 7.0968538592966315 0.47249677799111378
		;
createNode nurbsCurve -n "thumb_L0_crvShapeOrig" -p "thumb_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000530F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005310";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.3076904427279548 -10.486336248543568 1.1265646970658691 ;
	setAttr ".r" -type "double3" -2.551209406553693 -7.6528238506771817 48.046075166247554 ;
	setAttr ".s" -type "double3" 1.049508226737744 1.0495082267377391 1.0495082267377411 ;
createNode nurbsCurve -n "arm_L0_crvShape" -p "arm_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005311";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		1.9766654468321365 12.614171840042381 -0.78796203034281476
		3.7798102996338514 10.611172411934827 -1.0416411926767475
		5.8519563045030747 8.3477927032716064 -0.95965222070579648
		6.7023743902907187 7.4236794568396185 -0.87947470489805812
		;
createNode nurbsCurve -n "arm_L0_crvShapeOrig" -p "arm_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005312";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005313";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 90.000000000000014 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 -2.0816681711721685e-17 0 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 13.372295953420551 122.31132484867943 101.36021213881865 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999967 0.999999999999997 0.99999999999999778 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_L0_bladeShape" -p "shoulder_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005314";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005315";
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
	setAttr ".tg[0].tt" -type "double3" 0.21164081267113133 -1.0533963205922359 -1.6988630247336522 ;
	setAttr ".tg[0].tpm" -type "matrix" -2.9683404218229434e-18 -0.95273343122163034 -0.013368216817630587 0 2.115493183344765e-16 -0.013368216817630616 0.95273343122163079 0
		 -0.95282721423572703 0 2.1157014234679017e-16 0 0.35794252360706191 12.801727087276525 0.21847312088251836 1;
	setAttr ".cpim" -type "matrix" -3.2695305569752724e-18 2.3301470259839191e-16 -1.0495082267377416 0 -1.0494049277939654 -0.014724656598070256 0 0
		 -0.014724656598070287 1.0494049277939648 2.3303763957155201e-16 0 13.437412431342377 -0.040765734422280424 0.37566362322487967 1;
	setAttr ".wum" -type "matrix" -2.9683404218229434e-18 -0.95273343122163034 -0.013368216817630587 0 2.115493183344765e-16 -0.013368216817630616 0.95273343122163079 0
		 -0.95282721423572703 0 2.1157014234679017e-16 0 0.35794252360706191 12.801727087276525 0.21847312088251836 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 0 -2.0816681711721685e-17 0 ;
	setAttr ".o" -type "double3" 90 179.99999999999963 180.00000000000023 ;
	setAttr ".rsrr" -type "double3" 13.372295953420627 122.31132484867943 101.36021213881871 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_L0_blade_pointConstraint12" -p "shoulder_L0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005316";
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
	setAttr ".tg[0].tt" -type "double3" 1.7395848890977401 -0.62383494498544967 -0.37566362322487973 ;
	setAttr ".tg[0].tpm" -type "matrix" 4.6978008671326044e-32 0.95282721423572936 2.115701423467919e-16 0 -2.1157014234679047e-16 2.1157014234678929e-16 -0.95282721423572847 0
		 -0.95282721423572703 0 2.1157014234679017e-16 0 -1.2397770065936965e-16 11.144203263470956 -0.37593379189086684 1;
	setAttr ".cpim" -type "matrix" -3.2695305569752724e-18 2.3301470259839191e-16 -1.0495082267377416 0 -1.0494049277939654 -0.014724656598070256 0 0
		 -0.014724656598070287 1.0494049277939648 2.3303763957155201e-16 0 13.437412431342377 -0.040765734422280424 0.37566362322487967 1;
	setAttr ".rst" -type "double3" 0 -2.0816681711721685e-17 0 ;
createNode transform -n "shoulder_L0_crv" -p "shoulder_L0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005317";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 13.437412431342377 -0.040765734422280424 0.37566362322487967 ;
	setAttr ".r" -type "double3" -90.803889228153778 90 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377369 1.0495082267377362 ;
createNode nurbsCurve -n "shoulder_L0_crvShape" -p "shoulder_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005318";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.35794252360706119 12.801727087276522 0.21847312088251625
		1.9766654468321079 12.614171840042392 -0.78796203034281331
		;
createNode nurbsCurve -n "shoulder_L0_crvShapeOrig" -p "shoulder_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005319";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000531A";
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
	setAttr ".t" -type "double3" 2.7558241182932921 0.21289610739410136 -3.4939764982686652e-16 ;
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
createNode nurbsCurve -n "neck_C0_rootShape" -p "neck_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB30000531B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000531C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000531D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000531E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000531F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.66811733981641042 2.4674946259577908 1.5382908879615343e-16 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005320";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005321";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005322";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005323";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005324";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005325";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005326";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0.10000000000005116 1.2246467991476512e-17 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005327";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005328";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005329";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000532A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000532B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000532C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000532D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0547118733938987e-15 4.9964149574012424 4.7127427485403025e-16 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000532E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000532F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005330";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005331";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005332";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005333";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005334";
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
	setAttr ".t" -type "double3" 1.9428902930940239e-15 2.4983753357487188 8.5981347797187986e-16 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005335";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005336";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005337";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005338";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005339";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7538799546502086 -7.1054273576010019e-15 -3.8943958161623592e-16 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000533A";
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
	setAttr ".t" -type "double3" -0.39786985813049625 0.30454270629175539 -3.332542438924429e-17 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000533B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000533C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000533D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000533E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000533F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.3345655277465373e-16 -0.62123610319592615 0.80474162469731392 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005340";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005341";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005342";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005343";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005344";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005345";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005346";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.0453736335798148e-16 0.0085423067079588577 1.1384728180750139 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005347";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005348";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005349";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000534A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000534B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000534C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000534D";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.8069963308641888e-15 -27.561650584820811 -1.9962458328173918 ;
	setAttr ".s" -type "double3" 1.8286050763007586 1.8286050763007602 1.8286050763007613 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000534E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1.5350478718689233e-15 15.072500312958557 1.091676851764934
		1.8109616653374686e-15 15.06782882493817 0.46908598573817728
		;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_lipup|mouth_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000534F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005350";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -5.0158979680882765e-16 -0.4317477085901551 1.0104184968239069 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005351";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005352";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005353";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005354";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005355";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005356";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005357";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.8099438974133418e-15 -27.121360569522697 -1.8681915115662848 ;
	setAttr ".s" -type "double3" 1.8286050763007586 1.8286050763007602 1.8286050763007613 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005358";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1.5366597926643718e-15 14.83172114144449 1.021648433430802
		1.8109616653374686e-15 15.06782882493817 0.46908598573817728
		;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_rotcenter|mouth_C0_liplow|mouth_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005359";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000535A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.1236337323597398e-16 -1.7516337894210281 1.5714187294086956 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000535B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000535C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000535D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000535E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000535F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005360";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005361";
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
	setAttr ".t" -type "double3" 7.4116474763396784e-16 0.79475637170058988 -1.4497879000051423 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -38.250116365071833 0 0 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005362";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005363";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005364";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005365";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005366";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -7.0143079180641485e-16 -5.6843418860808015e-14 1.5794817263027312 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 14.06203370390684 0 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.000000000000002 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_0_locShape" -p "tongue_C0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005367";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005368";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005369";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000536A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000536B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000536C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000536D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.9016832589282048e-16 -0.4039831691657696 1.8568529840132015 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 24.924264394931161 0 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999922 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_1_locShape" -p "tongue_C0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000536E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000536F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005370";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005371";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005372";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005373";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005374";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -8.7832608338852375e-16 -0.30641861106133206 1.8921808445150692 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 10.454167329916977 0 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 0.99999999999999967 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_2_locShape" -p "tongue_C0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005375";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005376";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005377";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005378";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005379";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000537A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000537B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -9.6549418433846506e-16 -0.050533324739433283 2.1385697835654724 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999911 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_3_locShape" -p "tongue_C0_3_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000537C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000537D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000537E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000537F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005380";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005381";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005382";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.1554436208840472e-30 -1.4210854715202004e-14 0 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -2.0619978943614651e-12 -89.999999999997939 0 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000027 1.000000000000002 1.0000000000000011 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "tongue_C0_bladeShape" -p "tongue_C0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005383";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005384";
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
	setAttr ".tg[0].tt" -type "double3" -7.0143079180641485e-16 -5.6843418860808015e-14 1.5794817263027312 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.093909144879111187 1.1500553368686883e-17 -4.1704037947059609e-17 0 -3.485034888496739e-17 0.073748323361179202 -0.058138733159063719 0
		 2.5630893302260006e-17 0.058138733159063781 0.073748323361179216 0 1.7400085603960196e-16 14.884278358588425 0.095516643649462885 1;
	setAttr ".cpim" -type "matrix" 10.648590201596399 -3.9517672547908608e-15 2.9063503839584045e-15 0 1.3040761905816871e-15 8.3625047862905308 6.5924947463614352 0
		 -4.7289240086440574e-15 -6.5924947463614432 8.3625047862905291 0 -2.0811405882739084e-14 -123.84015604272712 -98.923285272064433 1;
	setAttr ".wum" -type "matrix" 0.093909144879111187 1.1500553368686883e-17 -4.1704037947059609e-17 0 -3.485034888496739e-17 0.073748323361179202 -0.058138733159063719 0
		 2.5630893302260006e-17 0.058138733159063781 0.073748323361179216 0 1.7400085603960196e-16 14.884278358588425 0.095516643649462885 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 3.1554436208840472e-30 -1.4210854715202004e-14 0 ;
	setAttr ".rsrr" -type "double3" -1.0309989471807414e-12 -89.999999999998963 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "tongue_C0_blade_pointConstraint12" -p "tongue_C0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005385";
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
	setAttr ".tg[0].tt" -type "double3" 7.4116474763396784e-16 0.79475637170058988 -1.4497879000051423 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.54686493708252504 6.6971639476403454e-17 -2.4285681780368315e-16 0 -6.6971639476403072e-17 0.54686493708252459 8.1878418013271499e-31 0
		 2.4285681780368211e-16 8.1878418013270991e-31 0.54686493708252437 0 1.7400085603960447e-16 14.449653965382446 0.88835481236878022 1;
	setAttr ".cpim" -type "matrix" 10.648590201596399 -3.9517672547908608e-15 2.9063503839584045e-15 0 1.3040761905816871e-15 8.3625047862905308 6.5924947463614352 0
		 -4.7289240086440574e-15 -6.5924947463614432 8.3625047862905291 0 -2.0811405882739084e-14 -123.84015604272712 -98.923285272064433 1;
	setAttr ".rst" -type "double3" 3.1554436208840472e-30 -1.4210854715202004e-14 0 ;
createNode transform -n "tongue_C0_crv" -p "tongue_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005386";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.0811405882739084e-14 -123.84015604272712 -98.923285272064433 ;
	setAttr ".r" -type "double3" 38.250116365071833 0 0 ;
	setAttr ".s" -type "double3" 10.648590201596399 10.648590201596415 10.648590201596418 ;
createNode nurbsCurve -n "tongue_C0_crvShape" -p "tongue_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005387";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.9543813301801314e-15 14.884278358588425 0.095516643649455793
		1.8885105643297135e-15 14.976107425203553 0.21200077274390641
		1.804915618046648e-15 15.012947879597075 0.38661136135270013
		1.7224327666306129e-15 14.981891665892778 0.56392005835054182
		1.631764033393633e-15 14.938261202503782 0.760012122634105
		;
createNode nurbsCurve -n "tongue_C0_crvShapeOrig" -p "tongue_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005388";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005389";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.7449902469968098e-15 -28.174344381308757 -0.053031390045060078 ;
	setAttr ".s" -type "double3" 1.8286050763007509 1.8286050763007586 1.8286050763007542 ;
createNode nurbsCurve -n "mouth_C0_crvShape" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000538A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		2.0480038557985886e-15 15.407561067425803 0.029001007780390692
		1.8109616653374682e-15 15.06782882493817 0.46908598573817728
		;
createNode nurbsCurve -n "mouth_C0_crvShapeOrig" -p "|guide|global_C0_root|local_C0_root|body_C0_root|spine_C0_root|spine_C0_eff|neck_C0_root|neck_C0_neck|neck_C0_head|mouth_C0_root|mouth_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000538B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000538C";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.7449902469968098e-15 -28.174344381308757 -0.053031390045060078 ;
	setAttr ".s" -type "double3" 1.8286050763007509 1.8286050763007586 1.8286050763007542 ;
createNode nurbsCurve -n "mouth_C0_crv12Shape" -p "mouth_C0_crv12";
	rename -uid "76522900-0000-533B-5BA1-1DB30000538D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		2.0480038557985886e-15 15.407561067425803 0.029001007780390692
		1.5490643170974953e-15 14.449653965382447 0.88835481236878044
		;
createNode nurbsCurve -n "mouth_C0_crv12ShapeOrig" -p "mouth_C0_crv12";
	rename -uid "76522900-0000-533B-5BA1-1DB30000538E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000538F";
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
	setAttr ".t" -type "double3" -5.2613992666289509 0.71045535901631851 -3.3130608822386169e-15 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005390";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005391";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005392";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005393";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005394";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -4.6607527914310106e-16 7.1054273576010019e-15 1.0495082267377382 ;
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
createNode transform -n "eye_L0_root" -p "neck_C0_head";
	rename -uid "76522900-0000-533B-5BA1-1DB300005395";
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
	setAttr ".t" -type "double3" -1.5356301636832981 1.5768176220682193 0.77019543172149685 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005396";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005397";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005398";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005399";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000539A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000539B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000539C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000539D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000539E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000539F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.77019543172150073 -28.295287421983716 -1.1886245917634843 ;
	setAttr ".s" -type "double3" 1.7538799546502151 1.7538799546502193 1.7538799546502091 ;
createNode nurbsCurve -n "eye_L0_crvShape" -p "eye_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.43913805484771878 16.132966995239258 0.67771148681640625
		0.43913805484771878 16.132966995239251 2.8271084371166646
		;
createNode nurbsCurve -n "eye_L0_crvShapeOrig" -p "eye_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "eye_R0_root" -p "neck_C0_head";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A4";
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
	setAttr ".t" -type "double3" -1.5356301636832972 1.5768176220682193 -0.77019543172149774 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999957 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.99999999999999933 -0.99999999999999967 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A5";
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
createNode nurbsCurve -n "eye_R0_root4Shape" -p "eye_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A6";
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
createNode nurbsCurve -n "eye_R0_root5Shape" -p "eye_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A7";
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
createNode nurbsCurve -n "eye_R0_root6Shape" -p "eye_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053A9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.3306690738754696e-16 -1.0658141036401503e-14 3.7697842257179159 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999634 0.99999999999999944 0.99999999999999745 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "eye_R0_lookShape" -p "eye_R0_look";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053AA";
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
createNode nurbsCurve -n "eye_R0_look4Shape" -p "eye_R0_look";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053AB";
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
createNode nurbsCurve -n "eye_R0_look5Shape" -p "eye_R0_look";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053AC";
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
createNode nurbsCurve -n "eye_R0_look6Shape" -p "eye_R0_look";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053AD";
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
createNode nurbsCurve -n "eye_R0_look6_0crvShape" -p "eye_R0_look";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053AE";
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
createNode nurbsCurve -n "eye_R0_look6_1crvShape" -p "eye_R0_look";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053AF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.77019543172149374 -28.295287421983712 -1.1886245917634837 ;
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".s" -type "double3" 1.7538799546502153 1.7538799546502193 -1.7538799546502093 ;
createNode nurbsCurve -n "eye_R0_crvShape" -p "eye_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-0.43913805484771518 16.132966995239258 0.67771148681640547
		-0.43913805484771662 16.132966995239251 2.8271084371166646
		;
createNode nurbsCurve -n "eye_R0_crvShapeOrig" -p "eye_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.097870096211562896 -0.34322132772766878 -2.03009631928149e-17 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B4";
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
createNode nurbsCurve -n "neck_C0_tanShape7" -p "neck_C0_tan1";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B5";
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
createNode nurbsCurve -n "neck_C0_tanShape8" -p "neck_C0_tan1";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B6";
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
createNode nurbsCurve -n "neck_C0_tanShape9" -p "neck_C0_tan1";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053B9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053BA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.34700557191981435 -26.618469799915431 -3.6243260064657109e-15 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502168 1.7538799546502186 1.7538799546502093 ;
createNode nurbsCurve -n "neck_C0_head_crvShape" -p "neck_C0_head_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053BB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 2 0 no 3
		3 0 1 2
		3
		2.1103934233216153e-15 15.17690519772434 -0.19785024111813884
		2.117375924010449e-15 15.233921642740951 -0.19785024111813884
		2.3860797618098946e-15 18.082699829727922 -0.19785024111813945
		;
createNode nurbsCurve -n "neck_C0_head_crvShapeOrig" -p "neck_C0_head_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053BC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053BD";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.076579783198171936 0.45329667709498978 3.8508704761368141e-17 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053BE";
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
createNode nurbsCurve -n "neck_C0_tanShape10" -p "neck_C0_tan0";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053BF";
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
createNode nurbsCurve -n "neck_C0_tanShape11" -p "neck_C0_tan0";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C0";
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
createNode nurbsCurve -n "neck_C0_tanShape12" -p "neck_C0_tan0";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C4";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 359.99999914622634 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 540 5.2260650568913874e-29 459.58898802263559 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.6711445512932492 1.6711445512932441 1.6711445512932424 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "neck_C0_bladeShape" -p "neck_C0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C6";
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
	setAttr ".tg[0].tt" -type "double3" -0.076579783198171936 0.45329667709498978 3.8508704761368141e-17 ;
	setAttr ".tg[0].tpm" -type "matrix" -1.2660194007936904e-16 -8.3816471179732504e-31 -0.57016445016582828 0 -6.9825006888318626e-17 0.57016445016582484 8.5366897786572928e-31 0
		 0.57016445016582351 6.9825006888318799e-17 -1.2660194007936798e-16 0 1.6389542893922618e-16 13.770027481027988 -0.57878699682081836 1;
	setAttr ".cpim" -type "matrix" -3.8943958161623582e-16 -2.1478834725510924e-16 1.7538799546502162 0 2.5782741914003049e-30 1.753879954650212 2.147883472551087e-16 0
		 -1.7538799546502015 -2.5305815976915434e-30 -3.8943958161623908e-16 0 -1.0151229117362233 -24.150975173957537 -3.4704969176695558e-15 1;
	setAttr ".wum" -type "matrix" -1.2660194007936904e-16 -8.3816471179732504e-31 -0.57016445016582828 0 -6.9825006888318626e-17 0.57016445016582484 8.5366897786572928e-31 0
		 0.57016445016582351 6.9825006888318799e-17 -1.2660194007936798e-16 0 1.6389542893922618e-16 13.770027481027988 -0.57878699682081836 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".o" -type "double3" 360 0 359.9999999999996 ;
	setAttr ".rsrr" -type "double3" 539.9999991462264 0 459.58898802263582 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "neck_C0_blade_pointConstraint12" -p "neck_C0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C7";
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
	setAttr ".tg[0].tt" -type "double3" 2.7558241182932921 0.21289610739410136 -3.4939764982686652e-16 ;
	setAttr ".tg[0].tpm" -type "matrix" 4.6978008671326044e-32 0.95282721423572936 2.115701423467919e-16 0 -2.1157014234679047e-16 2.1157014234678929e-16 -0.95282721423572847 0
		 -0.95282721423572703 0 2.1157014234679017e-16 0 -1.2397770065936965e-16 11.144203263470956 -0.37593379189086684 1;
	setAttr ".cpim" -type "matrix" -3.8943958161623582e-16 -2.1478834725510924e-16 1.7538799546502162 0 2.5782741914003049e-30 1.753879954650212 2.147883472551087e-16 0
		 -1.7538799546502015 -2.5305815976915434e-30 -3.8943958161623908e-16 0 -1.0151229117362233 -24.150975173957537 -3.4704969176695558e-15 1;
	setAttr ".rst" -type "double3" 0 3.5527136788005009e-15 0 ;
createNode transform -n "neck_C0_neck_crv" -p "neck_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0151229117362233 -24.150975173957537 -3.4704969176695558e-15 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.7538799546502162 1.753879954650212 1.7538799546502015 ;
createNode nurbsCurve -n "neck_C0_neck_crvShape" -p "neck_C0_neck_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053C9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		2.1072704969100708e-15 13.770027481027988 -0.57878699682081836
		2.1195316422631883e-15 14.028481131685847 -0.53512392683981436
		2.1112090798610852e-15 14.981212598115309 -0.25365229071228107
		2.1103934233216149e-15 15.17690519772434 -0.19785024111813887
		;
createNode nurbsCurve -n "neck_C0_neck_crvShapeOrig" -p "neck_C0_neck_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053CA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053CB";
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
	setAttr ".t" -type "double3" 1.7395848890977419 -0.62383494498544945 0.37566362322487973 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053CC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053CD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053CE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053CF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.21164081267113488 -1.0533963205922365 -1.6988630247336525 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -3.5245807017020461 -2.5028210152280628 -0.051360878458701756 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999889 0.99999999999999556 0.99999999999999856 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_tipShape" -p "shoulder_R0_tip";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D7";
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
	addAttr -ci true -sn "ikTR" -ln "ikTR" -min 0 -max 1 -at "bool";
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
	setAttr ".t" -type "double3" 8.8817841970012523e-15 3.3306690738754696e-16 4.4408920985006262e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -95.878962023386862 44.411212983179951 -5.4710434405383781 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999911 0.99999999999999989 ;
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
createNode nurbsCurve -n "arm_R0_rootShape" -p "arm_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053D9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053DA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053DB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053DC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 2.8398290554749233 3.5527136788005009e-15 0.081146531466041338 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -10.688700162784277 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999845 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_elbowShape" -p "arm_R0_elbow";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053DD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053DE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053DF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 3.2195127339870502 -3.5527136788005009e-15 -0.11960611218230645 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 1.0000000000000013 1.0000000000000011 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_wristShape" -p "arm_R0_wrist";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053E9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053EA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3207237066308142 8.8817841970012523e-15 5.5511151231257827e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999978 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "arm_R0_effShape" -p "arm_R0_eff";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053EB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053EC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053ED";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053EE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053EF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F1";
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
	setAttr ".t" -type "double3" -1.2124561875008049 0.56073114764517662 -0.2927611719839891 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000011 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.11347623085808989 -0.027001577630491269 1.0430060296210666 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 5.4530840145882351 3.3190804973695678 45.379324150247648 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0495082267377436 1.0495082267377382 1.0495082267377407 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "meta_R0_root" -p "arm_R0_eff";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F7";
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
	setAttr ".t" -type "double3" -1.159943013389211 -0.037710415169760481 0.35093891002574096 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 86.350349008867468 93.717381466937155 86.467960127478435 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.30838721081716941 0.30838721081716935 0.30838721081716952 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053F9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053FA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053FB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053FC";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353617163 -7.1054273576010019e-15 -3.6415315207705135e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.999999999999999 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_0_locShape" -p "meta_R0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000053FD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053FE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000053FF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005400";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005401";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005402";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005403";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618229 3.5527136788005009e-14 3.5527136788005009e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000018 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_1_locShape" -p "meta_R0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005404";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005405";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005406";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005407";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005408";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005409";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000540A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.66320847353618695 -7.1054273576010019e-15 -1.3322676295501878e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1 0.99999999999999867 0.99999999999999878 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_2_locShape" -p "meta_R0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000540B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000540C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000540D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000540E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000540F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005410";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005411";
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
	setAttr ".t" -type "double3" 0.16401146275139666 -0.18068216197505649 2.5219485147666116 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.0192929676301619 -75.581993430700152 -0.51179657716158911 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661814 1.2929668245661781 1.2929668245661801 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005412";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005413";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005414";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005415";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005416";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0109993042182035 1.4210854715202004e-14 -5.773159728050814e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_0_locShape" -p "finger_R3_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005417";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005418";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005419";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000541A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000541B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000541C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000541D";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.68149998347619878 -2.4868995751603507e-14 3.9968028886505635e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999922 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_1_locShape" -p "finger_R3_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000541E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000541F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005420";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005421";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005422";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005423";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005424";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67644085825498235 1.0658141036401503e-14 -3.5527136788005009e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000013 1.0000000000000007 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_2_locShape" -p "finger_R3_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005425";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005426";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005427";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005428";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005429";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000542A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000542B";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -4.4408920985006262e-16 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999956 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R3_bladeShape" -p "finger_R3_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000542C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970877 0 0
		0 0.25859336491323626 0
		0 0 0
		;
createNode aimConstraint -n "finger_R3_blade_aimConstraint2" -p "finger_R3_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000542D";
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
	setAttr ".tg[0].tt" -type "double3" 1.0109993042182035 1.4210854715202004e-14 -5.773159728050814e-15 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.24302657066493807 -0.28312010221204975 -0.0715829137151789 0 -0.286160530535432 0.24945382705308608 -0.015098304339370865 0
		 -0.058251665866264582 -0.044258510522656114 0.37281489714306881 0 -6.3576022514245158 7.5787318079555073 -1.1893623690085675 1;
	setAttr ".cpim" -type "matrix" -1.6836738686625188 -1.9825034200452691 -0.40356413439380379 -1.3877787807814457e-17 -1.9614395104339786 1.7282015250348637 -0.30662037253390434 1.3877787807814457e-17
		 -0.49592223984073991 -0.10460016947019389 2.5828398041023219 -8.6736173798840355e-19 3.5712639790122021 -25.825951580435312 2.830025789050397 0.99999999999999989;
	setAttr ".wum" -type "matrix" -0.24302657066493807 -0.28312010221204975 -0.0715829137151789 0 -0.286160530535432 0.24945382705308608 -0.015098304339370865 0
		 -0.058251665866264582 -0.044258510522656114 0.37281489714306881 0 -6.3576022514245158 7.5787318079555073 -1.1893623690085675 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 8.8817841970012523e-16 0 -4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R3_blade_pointConstraint2" -p "finger_R3_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000542E";
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
	setAttr ".tg[0].tt" -type "double3" 0.16401146275139666 -0.18068216197505649 2.5219485147666116 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.017145045905379259 -0.039399466139878873 -0.29068112189420986 0 -0.21553800695317357 0.19581688159933106 -0.039254319459756173 0
		 -0.19897537565346407 -0.21551152197849646 0.017474808581396016 0 -5.897552455462109 8.1640833523160747 -1.1928504558670119 1;
	setAttr ".cpim" -type "matrix" -1.6836738686625188 -1.9825034200452691 -0.40356413439380379 -1.3877787807814457e-17 -1.9614395104339786 1.7282015250348637 -0.30662037253390434 1.3877787807814457e-17
		 -0.49592223984073991 -0.10460016947019389 2.5828398041023219 -8.6736173798840355e-19 3.5712639790122021 -25.825951580435312 2.830025789050397 0.99999999999999989;
	setAttr ".rst" -type "double3" -8.8817841970012523e-16 0 -4.4408920985006262e-16 ;
createNode transform -n "finger_R3_crv" -p "finger_R3_root";
	rename -uid "76522900-0000-533B-5BA1-1DB30000542F";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.5712639790122092 -25.825951580435312 2.8300257890504175 ;
	setAttr ".r" -type "double3" 6.7701506671850256 171.18038687592349 49.659868634757267 ;
	setAttr ".s" -type "double3" 2.6320983106786158 2.6320983106786011 -2.6320983106786078 ;
createNode nurbsCurve -n "finger_R3_crvShape" -p "finger_R3_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005430";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-6.357602251424546 7.5787318079555082 -1.1893623690085662
		-6.603301945273337 7.2924975816089423 -1.2617326449685253
		-6.7689245491657619 7.0995512366296447 -1.3105163994825959
		-6.9333176512051198 6.9080372317000904 -1.358938007072485
		;
createNode nurbsCurve -n "finger_R3_crvShapeOrig" -p "finger_R3_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005431";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005432";
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
	setAttr ".t" -type "double3" -0.037462482334228442 -0.3362879671567427 2.8142690595735562 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -8.8926342160892258 -78.992618998314711 17.731131904942963 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661798 1.292966824566177 1.2929668245661805 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005433";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005434";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005435";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005436";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005437";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0922549684338332 -3.5527136788005009e-15 2.6645352591003757e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.000000000000002 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_0_locShape" -p "finger_R2_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005438";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005439";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000543A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000543B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000543C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000543D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000543E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96169554516149136 1.0658141036401503e-14 4.4408920985006262e-16 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999911 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_1_locShape" -p "finger_R2_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000543F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005440";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005441";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005442";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005443";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005444";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005445";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.67457026674914955 -1.0658141036401503e-14 -1.3322676295501878e-15 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005446";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005447";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005448";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005449";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000544A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000544B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000544C";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 3.5527136788005009e-15 0 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.000000000000002 1.0000000000000002 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R2_bladeShape" -p "finger_R2_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000544D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970788 0 0
		0 0.25859336491323598 0
		0 0 0
		;
createNode aimConstraint -n "finger_R2_blade_aimConstraint2" -p "finger_R2_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000544E";
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
	setAttr ".tg[0].tt" -type "double3" 1.0922549684338332 -3.5527136788005009e-15 2.6645352591003757e-15 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.26470921055120694 -0.26806487363849618 -0.04912511813940023 0 -0.27100561210498147 0.26614867706241441 0.0079912306440450311 0
		 -0.028775196239750705 -0.040609421084031885 0.37665087662483898 0 -6.397052896280349 7.5193311445833855 -0.92679906793007505 1;
	setAttr ".cpim" -type "matrix" -1.8338899297304363 -1.8775110314630308 -0.1993528766914128 0 -1.8571377673501723 1.8438624695358647 -0.28133969431253031 0
		 -0.34033594548927254 0.055362778551420605 2.6094152456127331 0 1.9175199303141948 -25.823839703568872 3.2586190459075652 1;
	setAttr ".wum" -type "matrix" -0.26470921055120694 -0.26806487363849618 -0.04912511813940023 0 -0.27100561210498147 0.26614867706241441 0.0079912306440450311 0
		 -0.028775196239750705 -0.040609421084031885 0.37665087662483898 0 -6.397052896280349 7.5193311445833855 -0.92679906793007505 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 8.8817841970012523e-16 3.5527136788005009e-15 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R2_blade_pointConstraint2" -p "finger_R2_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000544F";
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
	setAttr ".tg[0].tt" -type "double3" -0.037462482334228442 -0.3362879671567427 2.8142690595735562 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.017145045905379259 -0.039399466139878873 -0.29068112189420986 0 -0.21553800695317385 0.1958168815993313 -0.039254319459756229 0
		 -0.19897537565346432 -0.21551152197849671 0.017474808581396037 0 -5.9089231951857277 8.1902134121128434 -1.0000682727297667 1;
	setAttr ".cpim" -type "matrix" -1.8338899297304363 -1.8775110314630308 -0.1993528766914128 0 -1.8571377673501723 1.8438624695358647 -0.28133969431253031 0
		 -0.34033594548927254 0.055362778551420605 2.6094152456127331 0 1.9175199303141948 -25.823839703568872 3.2586190459075652 1;
	setAttr ".rst" -type "double3" -2.2204460492503131e-16 -3.5527136788005009e-15 4.4408920985006262e-16 ;
createNode transform -n "finger_R2_crv" -p "finger_R2_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005450";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.9175199303141972 -25.823839703568865 3.2586190459075826 ;
	setAttr ".r" -type "double3" 6.153696049000728 175.6563069809996 45.673381824951527 ;
	setAttr ".s" -type "double3" 2.6320983106786144 2.632098310678602 -2.6320983106786069 ;
createNode nurbsCurve -n "finger_R2_crvShape" -p "finger_R2_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005451";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-6.3970528962803641 7.5193311445833899 -0.92679906793007738
		-6.6861828466951154 7.2265359544891536 -0.98045622229273532
		-6.9407525152454292 6.9687391596967352 -1.0276996295629284
		-7.1193174780179103 6.7879105663803347 -1.0608379736103077
		;
createNode nurbsCurve -n "finger_R2_crvShapeOrig" -p "finger_R2_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005452";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005453";
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
	setAttr ".t" -type "double3" -0.31226618513921123 -0.41881087969849062 2.9843932979732761 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -21.360082869088213 -85.803626447477257 33.398314655896677 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661787 1.292966824566181 1.292966824566179 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005454";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005455";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005456";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005457";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005458";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.166731456445788 1.4210854715202004e-14 0 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999922 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_0_locShape" -p "finger_R1_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005459";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000545A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000545B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000545C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000545D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000545E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000545F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.96412528414019583 1.4210854715202004e-14 -1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_1_locShape" -p "finger_R1_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005460";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005461";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005462";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005463";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005464";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005465";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005466";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.018323861704008 -2.1316282072803006e-14 -1.3322676295501878e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_2_locShape" -p "finger_R1_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005467";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005468";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005469";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000546A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000546B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000546C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000546D";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -2.2204460492503131e-15 0 0 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999922 0.99999999999999944 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R1_bladeShape" -p "finger_R1_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000546E";
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
createNode aimConstraint -n "finger_R1_blade_aimConstraint2" -p "finger_R1_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB30000546F";
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
	setAttr ".tg[0].tt" -type "double3" 1.166731456445788 1.4210854715202004e-14 0 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.26644986158818434 -0.27081614484870603 -0.0024711961876784407 0 -0.27018976734726441 0.26557370181320789 0.028480140233788427 0
		 0.018573657209705774 -0.021731186258246347 0.37884798358093624 0 -6.4291988682496388 7.5034652106265511 -0.64792436688804034 1;
	setAttr ".cpim" -type "matrix" -1.8459490583162588 -1.871858906694547 0.1286772109070819 0 -1.8761984133921275 1.8398790746355895 -0.15055238749384101 0
		 -0.017120302665461003 0.19730874593784301 2.6246366741113465 0 2.1989232652817314 -25.712180648438256 3.6575220360548606 1;
	setAttr ".wum" -type "matrix" -0.26644986158818434 -0.27081614484870603 -0.0024711961876784407 0 -0.27018976734726441 0.26557370181320789 0.028480140233788427 0
		 0.018573657209705774 -0.021731186258246347 0.37884798358093624 0 -6.4291988682496388 7.5034652106265511 -0.64792436688804034 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" -2.2204460492503131e-15 0 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R1_blade_pointConstraint2" -p "finger_R1_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005470";
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
	setAttr ".tg[0].tt" -type "double3" -0.31226618513921123 -0.41881087969849062 2.9843932979732761 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.017145045905379252 -0.039399466139878853 -0.29068112189420975 0 -0.21553800695317346 0.19581688159933094 -0.03925431945975616 0
		 -0.19897537565346426 -0.21551152197849666 0.017474808581396033 0 -5.920293934909334 8.2163434719096067 -0.80728608959252157 1;
	setAttr ".cpim" -type "matrix" -1.8459490583162588 -1.871858906694547 0.1286772109070819 0 -1.8761984133921275 1.8398790746355895 -0.15055238749384101 0
		 -0.017120302665461003 0.19730874593784301 2.6246366741113465 0 2.1989232652817314 -25.712180648438256 3.6575220360548606 1;
	setAttr ".rst" -type "double3" -4.4408920985006262e-16 3.5527136788005009e-15 -4.4408920985006262e-16 ;
createNode transform -n "finger_R1_crv" -p "finger_R1_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005471";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.1989232652817354 -25.712180648438252 3.6575220360548792 ;
	setAttr ".r" -type "double3" 3.2829588794283482 182.80217536789306 45.399294676000217 ;
	setAttr ".s" -type "double3" 2.6320983106786149 2.6320983106786002 -2.6320983106786109 ;
createNode nurbsCurve -n "finger_R1_crvShape" -p "finger_R1_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005472";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-6.4291988682496441 7.5034652106265511 -0.64792436688804123
		-6.740074303330208 7.1874954955181902 -0.65080758921525417
		-6.9969653518430359 6.9263948029161826 -0.65319013194186593
		-7.2682976038460083 6.6506162604820505 -0.6557066099867318
		;
createNode nurbsCurve -n "finger_R1_crvShapeOrig" -p "finger_R1_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005473";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005474";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999922 0.999999999999999 0.999999999999999 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "meta_R0_bladeShape" -p "meta_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005475";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.18503232649030163 0 0
		0 0.061677442163433877 0
		0 0 0
		;
createNode aimConstraint -n "meta_R0_blade_aimConstraint2" -p "meta_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005476";
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
	setAttr ".tg[0].tt" -type "double3" 0.66320847353617163 -7.1054273576010019e-15 -3.6415315207705135e-14 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.017145045905379266 -0.03939946613987888 -0.29068112189420997 0 -0.21553800695317368 0.19581688159933114 -0.039254319459756201 0
		 -0.19897537565346446 -0.21551152197849688 0.017474808581396051 0 -5.9316646746329571 8.24247353170637 -0.61450390645528041 1;
	setAttr ".cpim" -type "matrix" 0.1985718256140655 -2.4963348460023855 -2.3045084751482721 0 -0.45631980006309369 2.2679271831539562 -2.4960281002635556 0
		 -3.3666332166522523 -0.45463872895877366 0.20239109661266011 0 2.8702560941510056 -33.780128276042554 7.0282441558886743 1;
	setAttr ".wum" -type "matrix" 0.017145045905379266 -0.03939946613987888 -0.29068112189420997 0 -0.21553800695317368 0.19581688159933114 -0.039254319459756201 0
		 -0.19897537565346446 -0.21551152197849688 0.017474808581396051 0 -5.9316646746329571 8.24247353170637 -0.61450390645528041 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "meta_R0_blade_pointConstraint2" -p "meta_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005477";
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
	setAttr ".tg[0].tt" -type "double3" -1.159943013389211 -0.037710415169760481 0.35093891002574096 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.64390309761082953 -0.69970217221997466 0.060707258759117838 0 -0.70228971323448275 0.64056524124123093 -0.065916846001660312 0
		 -0.0075934024270353827 0.089290212747165962 0.94860386797406804 0 -6.7023743902907036 7.4236794568396229 -0.87947470489805579 1;
	setAttr ".cpim" -type "matrix" 0.1985718256140655 -2.4963348460023855 -2.3045084751482721 0 -0.45631980006309369 2.2679271831539562 -2.4960281002635556 0
		 -3.3666332166522523 -0.45463872895877366 0.20239109661266011 0 2.8702560941510056 -33.780128276042554 7.0282441558886743 1;
	setAttr ".rst" -type "double3" 0 -7.1054273576010019e-15 8.8817841970012523e-16 ;
createNode transform -n "meta_R0_crv" -p "meta_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005478";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.8702560941509829 -33.780128276042554 7.0282441558886859 ;
	setAttr ".r" -type "double3" -94.635701505777647 42.621811599623967 -85.451963621418116 ;
	setAttr ".s" -type "double3" 3.4032157947041317 3.4032157947041144 -3.4032157947041246 ;
createNode nurbsCurve -n "meta_R0_crvShape" -p "meta_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005479";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-5.9316646746329749 8.24247353170637 -0.61450390645528208
		-5.9202939349093517 8.2163434719096067 -0.80728608959252313
		-5.9089231951857455 8.1902134121128434 -1.0000682727297683
		-5.8975524554621268 8.1640833523160747 -1.1928504558670134
		;
createNode nurbsCurve -n "meta_R0_crvShapeOrig" -p "meta_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000547A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000547B";
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
	setAttr ".t" -type "double3" -0.53026303642286665 -0.78449819024096712 2.9384927684391222 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -105.88673169037058 -86.219921770712645 122.93617088030483 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.2929668245661805 1.292966824566179 1.2929668245661816 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000547C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000547D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000547E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000547F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005480";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3436041523118607 0 3.5527136788005009e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 1 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_0_locShape" -p "finger_R0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005481";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005482";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005483";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005484";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005485";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005486";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005487";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.82316977971104555 -2.4868995751603507e-14 1.7763568394002505e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_1_locShape" -p "finger_R0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005488";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005489";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000548A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000548B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000548C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000548D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000548E";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.0210421380610644 2.4868995751603507e-14 -6.2172489379008766e-15 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999944 1.0000000000000002 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_2_locShape" -p "finger_R0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000548F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005490";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005491";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005492";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005493";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005494";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005495";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -8.8817841970012523e-16 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999999 1 0.99999999999999978 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "finger_R0_bladeShape" -p "finger_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005496";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 2 no 3
		4 0 1 2 3
		4
		0 0 0
		0.77578009473970833 0 0
		0 0.25859336491323609 0
		0 0 0
		;
createNode aimConstraint -n "finger_R0_blade_aimConstraint2" -p "finger_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005497";
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
	setAttr ".tg[0].tt" -type "double3" 1.3436041523118607 0 3.5527136788005009e-15 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.27292329286232603 -0.26220806510914479 0.03320883416472338 0 -0.25610778655239852 0.27416013479702778 0.059900267253012347 0
		 0.065304653295852638 -0.020643908095873825 0.37370061704272578 0 -6.3563545848066063 7.4764685741727153 -0.3782219109072415 1;
	setAttr ".cpim" -type "matrix" -1.8907966115983224 -1.774299767303114 0.45242681882666902 -1.3877787807814457e-17 -1.8165621403821015 1.8993653801877983 -0.14301978797212886 1.3877787807814457e-17
		 0.23006886094351706 0.41498554838616347 2.5889760197676495 3.4694469519536142e-18 1.6499131287552253 -25.321667409454623 4.9242756918863755 0.99999999999999989;
	setAttr ".wum" -type "matrix" -0.27292329286232603 -0.26220806510914479 0.03320883416472338 0 -0.25610778655239852 0.27416013479702778 0.059900267253012347 0
		 0.065304653295852638 -0.020643908095873825 0.37370061704272578 0 -6.3563545848066063 7.4764685741727153 -0.3782219109072415 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 1.7763568394002505e-15 0 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "finger_R0_blade_pointConstraint2" -p "finger_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB300005498";
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
	setAttr ".tg[0].tt" -type "double3" -0.53026303642286665 -0.78449819024096712 2.9384927684391222 ;
	setAttr ".tg[0].tpm" -type "matrix" 0.017145045905379266 -0.03939946613987888 -0.29068112189420997 0 -0.21553800695317368 0.19581688159933114 -0.039254319459756201 0
		 -0.19897537565346446 -0.21551152197849688 0.017474808581396051 0 -5.9316646746329571 8.24247353170637 -0.61450390645528041 1;
	setAttr ".cpim" -type "matrix" -1.8907966115983224 -1.774299767303114 0.45242681882666902 -1.3877787807814457e-17 -1.8165621403821015 1.8993653801877983 -0.14301978797212886 1.3877787807814457e-17
		 0.23006886094351706 0.41498554838616347 2.5889760197676495 3.4694469519536142e-18 1.6499131287552253 -25.321667409454623 4.9242756918863755 0.99999999999999989;
	setAttr ".rst" -type "double3" 0 0 8.8817841970012523e-16 ;
createNode transform -n "finger_R0_crv" -p "finger_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005499";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.649913128755238 -25.321667409454623 4.9242756918863941 ;
	setAttr ".r" -type "double3" 3.1619102938190329 189.89762510560266 43.179439147877616 ;
	setAttr ".s" -type "double3" 2.6320983106786118 2.6320983106785989 -2.6320983106786042 ;
createNode nurbsCurve -n "finger_R0_crvShape" -p "finger_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000549A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-6.3563545848066294 7.4764685741727153 -0.37822191090723817
		-6.7230554543590753 7.1241647291224099 -0.33360238343007864
		-6.947717661222562 6.9083229739280485 -0.30626587472624356
		-7.2263838436933829 6.6405974905121594 -0.27235825568818001
		;
createNode nurbsCurve -n "finger_R0_crvShapeOrig" -p "finger_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000549B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000549C";
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
	setAttr ".t" -type "double3" 0.13227716541330858 -0.54218928445071413 0.32839424507227566 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -5.7735227848304964 -84.001563523230899 11.00920440691425 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 3.4032157947041317 3.4032157947041148 3.4032157947041219 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000549D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000549E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000549F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A1";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.7747582837255322e-15 1.2789769243681803e-13 1.0000000000000013 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 44.430829212205772 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000018 0.999999999999997 1.0000000000000011 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "thumb_R0_root" -p "thumbRoll_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A2";
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
	setAttr ".t" -type "double3" 0.073049912825478458 -0.12191720894007219 0.093809948833016132 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 54.062266279462321 -51.335814945904389 -22.77114430384513 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.48936434703511084 0.48936434703511017 0.48936434703511167 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.83273259982691084 0.0044706360160056136 0.10177483259698761 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.2384257498061197 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999889 1.0000000000000004 1.0000000000000013 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_0_locShape" -p "thumb_R0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054A9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054AA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054AB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054AC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054AD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054AE";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.95596905877535221 3.5527136788005009e-15 1.7763568394002505e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999845 0.99999999999999978 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_1_locShape" -p "thumb_R0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054AF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B5";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.92928881922217776 1.4210854715202004e-14 1.2434497875801753e-14 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_2_locShape" -p "thumb_R0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054B9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054BA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054BB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054BC";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 1.7763568394002505e-15 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.037316026366663903 -6.9679135159403192 0.30759707813529669 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999998 0.99999999999999867 0.99999999999999933 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "thumb_R0_bladeShape" -p "thumb_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054BD";
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
createNode aimConstraint -n "thumb_R0_blade_aimConstraint2" -p "thumb_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054BE";
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
	setAttr ".tg[0].tt" -type "double3" 0.83273259982691084 0.0044706360160056136 0.10177483259698761 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.12976580689666212 -0.28800598452882004 0.37375239448750613 0 -0.17680777374385456 0.38906637168580827 0.23841944911454244 0
		 0.43746692521069513 0.071814869267631781 0.20722639322218042 0 -5.8446911687129912 7.9233282291420108 -0.53036805718144453 1;
	setAttr ".cpim" -type "matrix" -0.54187064055374967 -0.73830652237814309 1.8267561282439717 -6.9388939039072284e-18 -1.2026433700229211 1.6246471168726448 0.29988153383366145 1.3877787807814457e-17
		 1.5606996500297239 0.99558198497584616 0.86532732404899415 6.9388939039072284e-18 7.189616857093764 -16.659761091521453 8.7597075593991072 0.99999999999999989;
	setAttr ".wum" -type "matrix" -0.12976580689666212 -0.28800598452882004 0.37375239448750613 0 -0.17680777374385456 0.38906637168580827 0.23841944911454244 0
		 0.43746692521069513 0.071814869267631781 0.20722639322218042 0 -5.8446911687129912 7.9233282291420108 -0.53036805718144453 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 0 3.5527136788005009e-15 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -0.037316026386285735 -6.9679135159404657 0.30759707813554238 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "thumb_R0_blade_pointConstraint2" -p "thumb_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054BF";
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
	setAttr ".tg[0].tt" -type "double3" 0.073049912825478458 -0.12191720894007219 0.093809948833016132 ;
	setAttr ".tg[0].tpm" -type "matrix" -0.68210165275070445 -0.72987166520261659 -0.044996529300879766 0 -0.72862217100253734 0.68357489624827761 -0.04283798714574346 0
		 -0.062024730860373294 -0.0035656070341617968 0.99806824376300796 0 -5.8778767470735298 8.0603193235243715 -0.62593248334725193 1;
	setAttr ".cpim" -type "matrix" -0.54187064055374967 -0.73830652237814309 1.8267561282439717 -6.9388939039072284e-18 -1.2026433700229211 1.6246471168726448 0.29988153383366145 1.3877787807814457e-17
		 1.5606996500297239 0.99558198497584616 0.86532732404899415 6.9388939039072284e-18 7.189616857093764 -16.659761091521453 8.7597075593991072 0.99999999999999989;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 3.5527136788005009e-15 0 ;
createNode transform -n "thumb_R0_crv" -p "thumb_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C0";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 7.1896168570937817 -16.659761091521457 8.7597075593991089 ;
	setAttr ".r" -type "double3" 160.88610235073506 -63.373790556310425 -126.27633156318721 ;
	setAttr ".s" -type "double3" 2.0434672163157268 2.0434672163157206 -2.0434672163157264 ;
createNode nurbsCurve -n "thumb_R0_crvShape" -p "thumb_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-5.8446911687130587 7.9233282291420188 -0.53036805718132007
		-5.909018706579924 7.6925445773111818 -0.19697593597221699
		-6.0202395659793293 7.3904840997141026 0.14249762237360786
		-6.128356350885066 7.096853859296627 0.47249677799113082
		;
createNode nurbsCurve -n "thumb_R0_crvShapeOrig" -p "thumb_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C3";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.3076904427279441 -10.486336248543561 1.1265646970658674 ;
	setAttr ".r" -type "double3" 2.5512094065536806 172.34717614932279 48.046075166247483 ;
	setAttr ".s" -type "double3" 1.049508226737744 1.0495082267377382 -1.0495082267377414 ;
createNode nurbsCurve -n "arm_R0_crvShape" -p "arm_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-1.9766654468321192 12.614171840042381 -0.78796203034281564
		-3.7798102996338367 10.611172411934831 -1.0416411926767486
		-5.8519563045030667 8.3477927032716011 -0.95965222070579737
		-6.7023743902907098 7.4236794568396078 -0.87947470489805923
		;
createNode nurbsCurve -n "arm_R0_crvShapeOrig" -p "arm_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C6";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -dv 89.999999999999986 
		-at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 -1.3877787807814457e-17 -5.5511151231257827e-17 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" 13.372295953420601 122.31132484867949 101.36021213881868 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999711 0.99999999999999734 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "shoulder_R0_bladeShape" -p "shoulder_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C8";
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
	setAttr ".tg[0].tt" -type "double3" 0.21164081267113488 -1.0533963205922365 -1.6988630247336525 ;
	setAttr ".tg[0].tpm" -type "matrix" -2.9683404218229422e-18 -0.95273343122163023 -0.013368216817630584 0 2.115493183344765e-16 -0.013368216817630616 0.95273343122163079 0
		 0.95282721423572703 0 -2.1157014234679017e-16 0 -0.35794252360706191 12.801727087276527 0.21847312088251836 1;
	setAttr ".cpim" -type "matrix" -3.2695305569752728e-18 2.3301470259839191e-16 1.0495082267377416 0 -1.0494049277939654 -0.014724656598070256 -3.4694469519536142e-18 0
		 -0.014724656598070289 1.0494049277939648 -2.3304925697575918e-16 0 13.437412431342381 -0.040765734422280223 0.37566362322487978 1;
	setAttr ".wum" -type "matrix" -2.9683404218229422e-18 -0.95273343122163023 -0.013368216817630584 0 2.115493183344765e-16 -0.013368216817630616 0.95273343122163079 0
		 0.95282721423572703 0 -2.1157014234679017e-16 0 -0.35794252360706191 12.801727087276527 0.21847312088251836 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" 1.7763568394002505e-15 -1.3877787807814457e-17 -5.5511151231257827e-17 ;
	setAttr ".o" -type "double3" 90 179.99999999999957 180.00000000000017 ;
	setAttr ".rsrr" -type "double3" 13.372295953420704 122.31132484867949 101.36021213881874 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "shoulder_R0_blade_pointConstraint2" -p "shoulder_R0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054C9";
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
	setAttr ".tg[0].tt" -type "double3" 1.7395848890977419 -0.62383494498544945 0.37566362322487973 ;
	setAttr ".tg[0].tpm" -type "matrix" 4.6978008671326044e-32 0.95282721423572936 2.115701423467919e-16 0 -2.1157014234679047e-16 2.1157014234678929e-16 -0.95282721423572847 0
		 -0.95282721423572703 0 2.1157014234679017e-16 0 -1.2397770065936965e-16 11.144203263470956 -0.37593379189086684 1;
	setAttr ".cpim" -type "matrix" -3.2695305569752728e-18 2.3301470259839191e-16 1.0495082267377416 0 -1.0494049277939654 -0.014724656598070256 -3.4694469519536142e-18 0
		 -0.014724656598070289 1.0494049277939648 -2.3304925697575918e-16 0 13.437412431342381 -0.040765734422280223 0.37566362322487978 1;
	setAttr ".rst" -type "double3" 1.7763568394002505e-15 -1.3877787807814457e-17 -5.5511151231257827e-17 ;
createNode transform -n "shoulder_R0_crv" -p "shoulder_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054CA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 13.437412431342381 -0.040765734422280223 0.37566362322487978 ;
	setAttr ".r" -type "double3" 90.803889228153778 -90 0 ;
	setAttr ".s" -type "double3" 1.0495082267377416 1.0495082267377369 -1.0495082267377362 ;
createNode nurbsCurve -n "shoulder_R0_crvShape" -p "shoulder_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054CB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-0.35794252360706263 12.801727087276527 0.21847312088251616
		-1.9766654468321099 12.614171840042394 -0.78796203034281376
		;
createNode nurbsCurve -n "shoulder_R0_crvShapeOrig" -p "shoulder_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054CC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054CD";
	addAttr -ci true -k true -sn "bladeRollOffset" -ln "bladeRollOffset" -at "float";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -5.5511151231257827e-17 0 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999956 0.99999999999999845 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "spine_C0_bladeShape" -p "spine_C0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054CE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054CF";
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
	setAttr ".tg[0].tt" -type "double3" 3.3357165347635735 -3.3306690738754696e-16 1.3558546808486143e-31 ;
	setAttr ".tg[0].tpm" -type "matrix" 4.6978008671325989e-32 0.95282721423572825 2.1157014234679165e-16 0 -2.1157014234679064e-16 2.1157014234678944e-16 -0.95282721423572914 0
		 -0.95282721423572769 0 2.1157014234679032e-16 0 -1.2397770065936975e-16 7.9658417701721227 -0.37593379189086784 1;
	setAttr ".cpim" -type "matrix" 5.1744750611326736e-32 -2.3303763957155147e-16 -1.0495082267377407 0 1.04950822673774 2.330376395715528e-16 0 0
		 2.3303763957155033e-16 -1.0495082267377391 2.3303763957155181e-16 0 -8.3602164706867654 -0.39454560729818083 -4.2508893276606742e-17 1;
	setAttr ".wum" -type "matrix" 4.6978008671325989e-32 0.95282721423572825 2.1157014234679165e-16 0 -2.1157014234679064e-16 2.1157014234678944e-16 -0.95282721423572914 0
		 -0.95282721423572769 0 2.1157014234679032e-16 0 -1.2397770065936975e-16 7.9658417701721227 -0.37593379189086784 1;
	setAttr ".wut" 2;
	setAttr ".ct" -type "double3" -1.7763568394002505e-15 -5.5511151231257827e-17 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "spine_C0_blade_pointConstraint12" -p "spine_C0_blade";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D0";
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
	setAttr ".tg[0].tt" -type "double3" -5.5511151231257827e-17 1.7763568394002505e-15 -1.2325951644078309e-32 ;
	setAttr ".tg[0].tpm" -type "matrix" 4.1331052346981091e-16 0 1.8613851194869451 0 0 1.8613851194869344 0 0
		 -1.8613851194869451 0 4.1331052346981091e-16 0 -1.2397770065936975e-16 7.9658417701721191 -0.37593379189086773 1;
	setAttr ".cpim" -type "matrix" 5.1744750611326736e-32 -2.3303763957155147e-16 -1.0495082267377407 0 1.04950822673774 2.330376395715528e-16 0 0
		 2.3303763957155033e-16 -1.0495082267377391 2.3303763957155181e-16 0 -8.3602164706867654 -0.39454560729818083 -4.2508893276606742e-17 1;
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -5.5511151231257827e-17 0 ;
createNode transform -n "spine_C0_crv" -p "spine_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D1";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.3602164706867654 -0.39454560729818083 -4.2508893276606742e-17 ;
	setAttr ".r" -type "double3" 89.999999999999986 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.04950822673774 1.0495082267377391 ;
createNode nurbsCurve -n "spine_C0_crvShape" -p "spine_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		1.7282685583921877e-15 7.9658417701721245 -0.37593379189086784
		2.4340065804806598e-15 11.144203263470958 -0.37593379189086684
		;
createNode nurbsCurve -n "spine_C0_crvShapeOrig" -p "spine_C0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D4";
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
	setAttr ".t" -type "double3" -0.25502674772485001 0.016461950860093777 -0.87280956611819061 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 7.2186602530145212 -0.38929615945845208 5.0997199260080226 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 0.99999999999999811 1 ;
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
createNode nurbsCurve -n "leg_L0_rootShape" -p "leg_L0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054D9";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.6137770863340481 0.3199342699509623 0.0034255658684998469 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000028 89.999999999999943 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.000000000000002 1.0000000000000009 1.000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_kneeShape" -p "leg_L0_knee";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054DA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054DB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054DC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054DD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054DE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054DF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E0";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.0016756241688125062 -3.6756260223006212 -0.52786850702956989 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.298824676172015 0 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999911 0.99999999999999889 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_ankleShape" -p "leg_L0_ankle";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E3";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E7";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.24244121184978951 0.0017186295745224012 2.1684251327912061 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000042 0.99999999999999889 1.0000000000000027 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_L0_effShape" -p "leg_L0_eff";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054E9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054EA";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054EB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054EC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054ED";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054EE";
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
	setAttr ".t" -type "double3" -0.00054355094951608063 0.12196495199435053 -0.0025349216378504069 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -83.340908242299435 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518518 0.9997975226851824 0.99979752268518141 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054EF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F0";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F1";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F2";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F3";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.351508126081018 -0.50206448378891433 -0.00011824982393549011 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -15.342266483950345 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.999999999999998 0.99999999999999967 1.0000000000000004 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_0_locShape" -p "foot_L0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F4";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F5";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F6";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F7";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F8";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054F9";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054FA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84589606241514326 0.13210094581910137 0.00053566803260851614 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.490244653448034 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 0.999999999999999 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_1_locShape" -p "foot_L0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB3000054FB";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054FC";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054FD";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054FE";
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
	rename -uid "76522900-0000-533B-5BA1-1DB3000054FF";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005500";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005501";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.51360068042093565 -0.30113974189881265 -0.085924637042434249 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000009 1.0000000000000013 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_2_locShape" -p "foot_L0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005502";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005503";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005504";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005505";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005506";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005507";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005508";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.40696193610560805 -0.88498466789973229 0.92944037906145982 ;
	setAttr ".r" -type "double3" 0.48140667427280848 76.117258694405493 1.6795768889710916 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808356 1.049720771380835 ;
createNode nurbsCurve -n "foot_L0_crvShape" -p "foot_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005509";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0.77250185874462562 0.849293198890538 -0.57181000686915495
		1.0780304078567622 0.34387917745925423 0.66819104047259303
		1.2712513372571002 0.23490519215850766 1.453040466665011
		1.474134366830455 2.5119012465894045e-16 1.9347507181613726
		;
createNode nurbsCurve -n "foot_L0_crvShapeOrig" -p "foot_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000550A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000550B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.70281730733480474 -0.90631489869824355 -0.13848223211933419 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1.0000000000000004 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_heelShape" -p "foot_L0_heel";
	rename -uid "76522900-0000-533B-5BA1-1DB30000550C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000550D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000550E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000550F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005510";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005511";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005512";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3477416880423647 -0.86179460902163718 -0.6985068434039714 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1.0000000000000004 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_outpivotShape" -p "foot_L0_outpivot";
	rename -uid "76522900-0000-533B-5BA1-1DB300005513";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005514";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005515";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005516";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005517";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005518";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005519";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3477920153860963 -0.86417296069103466 0.48152380453955834 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999845 1.0000000000000004 0.99999999999999944 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_L0_inpivotShape" -p "foot_L0_inpivot";
	rename -uid "76522900-0000-533B-5BA1-1DB30000551A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000551B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000551C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000551D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000551E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000551F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005520";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.40696193610560805 -0.88498466789973229 0.92944037906145982 ;
	setAttr ".r" -type "double3" 0.48140667427280848 76.117258694405493 1.6795768889710916 ;
	setAttr ".s" -type "double3" 1.0497207713808361 1.0497207713808356 1.049720771380835 ;
createNode nurbsCurve -n "foot_L0_Shape1" -p "foot_L0_1";
	rename -uid "76522900-0000-533B-5BA1-1DB300005521";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.77250185874462562 0.849293198890538 -0.57181000686915495
		0.73392481295707157 -1.1748331588591097e-16 -1.2706094049767926
		1.7206343513821347 7.914575529606724e-17 0.49821042004895144
		0.73392481295707157 -1.1748331588591097e-16 -1.2706094049767926
		0.62932967047255839 1.3251921880880384e-16 0.76792267399732905
		;
createNode nurbsCurve -n "foot_L0_Shape1Orig1" -p "foot_L0_1";
	rename -uid "76522900-0000-533B-5BA1-1DB300005522";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005523";
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
	setAttr ".t" -type "double3" 0.59908552650329272 0.51029795172993631 -1.4395512694570038 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000004 0.99999999999999734 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005524";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005525";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005526";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005527";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005528";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565061 -4.4408920985006262e-16 1.0444039858906484 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.029616667963976762 -5.7690337251489359 0.29463615418733702 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0497207713808352 1.0497207713808347 1.0497207713808374 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "leg_L0_crv" -p "leg_L0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005529";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.1035221059491143 0.42521463548432981 0.88144551104524738 ;
	setAttr ".r" -type "double3" 2.0291407120924427 82.7709056846343 -93.095135391467977 ;
	setAttr ".s" -type "double3" 1.0495082267377409 1.049508226737738 1.0495082267377411 ;
createNode nurbsCurve -n "leg_L0_crvShape" -p "leg_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000552A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0.83163670744269014 7.7228453445818586 -0.39161918666977208
		0.8134895803255815 4.2661225286644591 -0.38634791661835066
		0.77250185874462485 0.73305542209111019 -0.57181000686915484
		1.2612715318942993 0.69073046714896791 1.4484845973733211
		;
createNode nurbsCurve -n "leg_L0_crvShapeOrig" -p "leg_L0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB30000552B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000552C";
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
	setAttr ".t" -type "double3" -0.25502674772485179 0.016461950860094277 0.87280956611819027 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -7.218660253014578 0.38929615945845436 5.0997199260080084 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000022 0.99999999999999833 -1.0000000000000002 ;
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
createNode nurbsCurve -n "leg_R0_rootShape" -p "leg_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB30000552D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000552E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000552F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005530";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005531";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -3.6137770863340437 0.31993426995096114 0.0034255658684998469 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 90.000000000000057 89.999999999999943 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000016 1.0000000000000009 1.0000000000000018 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_kneeShape" -p "leg_R0_knee";
	rename -uid "76522900-0000-533B-5BA1-1DB300005532";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005533";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005534";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005535";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005536";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005537";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005538";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.0016756241688126172 -3.6756260223006212 -0.52786850702956845 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 6.2988246761719768 0 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 0.99999999999999867 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_ankleShape" -p "leg_R0_ankle";
	rename -uid "76522900-0000-533B-5BA1-1DB300005539";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000553A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000553B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000553C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000553D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000553E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000553F";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.24244121184978928 0.0017186295745202917 2.1684251327912079 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000051 0.99999999999999944 1.0000000000000029 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "leg_R0_effShape" -p "leg_R0_eff";
	rename -uid "76522900-0000-533B-5BA1-1DB300005540";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005541";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005542";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005543";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005544";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005545";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005546";
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
	setAttr ".t" -type "double3" -0.00054355094951585858 0.12196495199434898 -0.0025349216378504069 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -83.340908242299435 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99979752268518574 0.99979752268518318 0.99979752268518107 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005547";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005548";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005549";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000554A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000554B";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3515081260810171 -0.50206448378891466 -0.00011824982393537908 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 -15.34226648395035 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999689 0.99999999999999867 1.0000000000000002 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_0_locShape" -p "foot_R0_0_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000554C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000554D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000554E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000554F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005550";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005551";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005552";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.84589606241514348 0.13210094581910126 0.00053566803260896023 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 0 22.49024465344802 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000013 1.0000000000000009 0.99999999999999956 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_1_locShape" -p "foot_R0_1_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB300005553";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005554";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005555";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005556";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005557";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005558";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005559";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 0.51360068042093499 -0.30113974189881232 -0.08592463704243436 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 1.0000000000000009 0.99999999999999867 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_2_locShape" -p "foot_R0_2_loc";
	rename -uid "76522900-0000-533B-5BA1-1DB30000555A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000555B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000555C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000555D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000555E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000555F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005560";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.40696193610560771 -0.88498466789973218 0.92944037906146049 ;
	setAttr ".r" -type "double3" 179.51859332572721 -76.117258694405493 -178.32042311102893 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 -1.0497207713808343 ;
createNode nurbsCurve -n "foot_R0_crvShape" -p "foot_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005561";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.77250185874462629 0.84929319889053823 -0.57181000686915529
		-1.0780304078567624 0.34387917745925406 0.6681910404725927
		-1.2712513372570997 0.23490519215850744 1.453040466665011
		-1.4741343668304543 2.6530806907401053e-16 1.9347507181613721
		;
createNode nurbsCurve -n "foot_R0_crvShapeOrig" -p "foot_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005562";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005563";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.70281730733480396 -0.90631489869824333 -0.13848223211933375 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999745 0.99999999999999967 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_heelShape" -p "foot_R0_heel";
	rename -uid "76522900-0000-533B-5BA1-1DB300005564";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005565";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005566";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005567";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005568";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005569";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000556A";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3477416880423638 -0.8617946090216374 -0.69850684340397118 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999745 0.99999999999999967 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_outpivotShape" -p "foot_R0_outpivot";
	rename -uid "76522900-0000-533B-5BA1-1DB30000556B";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000556C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000556D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000556E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000556F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005570";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005571";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr ".t" -type "double3" 1.3477920153860952 -0.86417296069103477 0.48152380453955845 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.99999999999999745 0.99999999999999967 0.99999999999999933 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
createNode nurbsCurve -n "foot_R0_inpivotShape" -p "foot_R0_inpivot";
	rename -uid "76522900-0000-533B-5BA1-1DB300005572";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005573";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005574";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005575";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005576";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005577";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005578";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.40696193610560771 -0.88498466789973218 0.92944037906146049 ;
	setAttr ".r" -type "double3" 179.51859332572721 -76.117258694405493 -178.32042311102893 ;
	setAttr ".s" -type "double3" 1.0497207713808363 1.0497207713808352 -1.0497207713808343 ;
createNode nurbsCurve -n "foot_R0_Shape1" -p "foot_R0_1";
	rename -uid "76522900-0000-533B-5BA1-1DB300005579";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.77250185874462629 0.84929319889053823 -0.57181000686915529
		-0.73392481295707213 -2.7958205511719152e-16 -1.2706094049767922
		-1.7206343513821354 -6.4847697213620594e-17 0.49821042004895111
		-0.73392481295707213 -2.7958205511719152e-16 -1.2706094049767922
		-0.6293296704725585 1.7836882210308108e-16 0.76792267399732872
		;
createNode nurbsCurve -n "foot_R0_Shape1Orig1" -p "foot_R0_1";
	rename -uid "76522900-0000-533B-5BA1-1DB30000557A";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000557B";
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
	setAttr ".t" -type "double3" 0.59908552650329305 0.51029795172993508 -1.4395512694570041 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 0.99999999999999623 ;
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000557C";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000557D";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000557E";
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
	rename -uid "76522900-0000-533B-5BA1-1DB30000557F";
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
	rename -uid "76522900-0000-533B-5BA1-1DB300005580";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" -0.10551782846565061 0 1.0444039858906493 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr ".r" -type "double3" -0.029616667963962083 -5.7690337251489652 0.29463615418733602 ;
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 1.049720771380835 1.0497207713808352 1.0497207713808381 ;
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode transform -n "leg_R0_crv" -p "leg_R0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005581";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.1035221059491089 0.42521463548432809 0.88144551104524727 ;
	setAttr ".r" -type "double3" 177.97085928790756 -82.770905684634243 86.904864608532051 ;
	setAttr ".s" -type "double3" 1.0495082267377407 1.0495082267377378 -1.0495082267377409 ;
createNode nurbsCurve -n "leg_R0_crvShape" -p "leg_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005582";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-0.83163670744268869 7.722845344581855 -0.39161918666977358
		-0.81348958032558039 4.2661225286644591 -0.38634791661835161
		-0.77250185874462396 0.73305542209110985 -0.57181000686915762
		-1.2612715318943006 0.69073046714896502 1.4484845973733196
		;
createNode nurbsCurve -n "leg_R0_crvShapeOrig" -p "leg_R0_crv";
	rename -uid "76522900-0000-533B-5BA1-1DB300005583";
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
createNode transform -n "apronknot_C0_root" -p "body_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005584";
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
	setAttr ".t" -type "double3" -0.47400281842476477 0.78040129786913059 -0.23068371861854986 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr ".s" -type "double3" 0.53723433669418741 0.53723433669419063 0.53723433669418741 ;
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "apronknot";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "spineUI_C0_root";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".icon" -type "string" "cube";
	setAttr ".ikrefarray" -type "string" "";
createNode nurbsCurve -n "apronknot_C0_rootShape" -p "apronknot_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005585";
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
createNode nurbsCurve -n "apronknot_C0_root4Shape" -p "apronknot_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005586";
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
createNode nurbsCurve -n "apronknot_C0_root5Shape" -p "apronknot_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005587";
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
createNode nurbsCurve -n "apronknot_C0_root6Shape" -p "apronknot_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005588";
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
createNode transform -n "apronknot_C0_sizeRef" -p "apronknot_C0_root";
	rename -uid "76522900-0000-533B-5BA1-1DB300005589";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 5.5511151231257827e-17 0 1.0000000000000002 ;
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
createNode transform -s -n "persp";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DAD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.5473012360754992 16.367558801817339 30.658428751605037 ;
	setAttr ".r" -type "double3" -27.938352729602379 -6.5999999999999961 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DAE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 34.934504157174615;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DAF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB0";
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
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB2";
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
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB5";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB6";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB7";
createNode displayLayerManager -n "layerManager";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB8";
createNode displayLayer -n "defaultLayer";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DB9";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DBA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "76522900-0000-533B-5BA1-1EE600009DBB";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "76522900-0000-533B-5BA1-1EF500009DBC";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 963\n            -height 752\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 963\\n    -height 752\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 963\\n    -height 752\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "76522900-0000-533B-5BA1-1EF500009DBD";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 350 -ast -5 -aet 356 ";
	setAttr ".st" 6;
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of chr.ma
