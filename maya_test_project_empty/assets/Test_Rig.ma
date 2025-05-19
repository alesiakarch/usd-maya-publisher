//Maya ASCII 2023 scene
//Name: Test_Rig.ma
//Last modified: Sun, May 11, 2025 05:26:07 pm
//Codeset: UTF-8
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Linux 4.18.0-553.8.1.el8_10.x86_64 #1 SMP Fri Jun 14 03:19:37 EDT 2024 x86_64";
fileInfo "UUID" "6BE721C0-0033-735E-6820-CF9F0000284D";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025F6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -75.596756045797278 32.886575676272784 -72.277543580915221 ;
	setAttr ".r" -type "double3" -12.938352729569583 -132.99999999999972 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025F7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 108.82518795110413;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025F9";
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
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025FA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7391724224365355 11.238310673364097 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025FB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 54.017260006957123;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025FC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1065137503206 9.4909759608660984 -3.5762764660773882e-07 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025FD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1065139887392;
	setAttr ".ow" 51.050589228154266;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -2.384185791015625e-07 9.4909759608660984 -3.5762786865234375e-07 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Tube_rig";
	rename -uid "6BE721C0-0033-735E-6820-CA5A00002698";
createNode transform -n "tube" -p "Tube_rig";
	rename -uid "6BE721C0-0033-735E-6820-C7E70000260B";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "tubeShape" -p "tube";
	rename -uid "6BE721C0-0033-735E-6820-C7E70000260A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "tubeShapeOrig" -p "tube";
	rename -uid "6BE721C0-0033-735E-6820-CD7A00002805";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Tube_JNT_GRP" -p "Tube_rig";
	rename -uid "6BE721C0-0033-735E-6820-CA4E00002687";
createNode joint -n "joint1" -p "Tube_JNT_GRP";
	rename -uid "6BE721C0-0033-735E-6820-C9E600002626";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 -1.2722218725854067e-14 90 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 1 0 0 -2.2204460492503131e-16 0 -1 0
		 -1 2.2204460492503131e-16 2.2204460492503131e-16 0 -6.2644097909014818e-08 0 0.0040059540613220923 1;
	setAttr ".radi" 0.2;
createNode parentConstraint -n "joint1_parentConstraint1" -p "joint1";
	rename -uid "6BE721C0-0033-735E-6820-CB0900002744";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tube_CNTRL1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -6.2644097909014818e-08 0 0.0040059540613220923 ;
	setAttr ".tg[0].tor" -type "double3" -89.999999999999986 0 89.999999999999986 ;
	setAttr ".rst" -type "double3" -6.2644097909014818e-08 0 0.0040059540613220923 ;
	setAttr -k on ".w0";
createNode joint -n "joint2" -p "joint1";
	rename -uid "6BE721C0-0033-735E-6820-C9E900002627";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999835 89.562085049251138 89.999999999998337 ;
	setAttr ".bps" -type "matrix" 0.0076429833212620264 0.99997079197642114 -2.2352792980958257e-16 0 -1.6738240684013972e-16 -2.2225512049863077e-16 -1 0
		 -0.99997079197642114 0.0076429833212620264 1.6567882575181795e-16 0 -6.2644097912646895e-08 4.3877460840428846 0.0040059540613220923 1;
	setAttr ".radi" 0.58427470704002704;
createNode parentConstraint -n "joint2_parentConstraint1" -p "joint2";
	rename -uid "6BE721C0-0033-735E-6820-CAF500002726";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tube_CNTRL2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.6320772778264399e-18 2.268041150443878e-07 -7.3887229667946031e-11 ;
	setAttr ".tg[0].tor" -type "double3" -90 -3.180554681463516e-15 89.56208504925111 ;
	setAttr ".lr" -type "double3" -90.437902160616758 -0.0033469440803380701 89.562097839383227 ;
	setAttr ".rst" -type "double3" -6.2644097912646895e-08 4.3877460840428846 0.0040059540613220923 ;
	setAttr ".rsrr" -type "double3" -90.437902160616758 -0.0033469440803571529 89.562097839383213 ;
	setAttr -k on ".w0";
createNode joint -n "joint3" -p "joint2";
	rename -uid "6BE721C0-0033-735E-6820-C9EC00002628";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 26.041328229399173 89.002474912635904 -63.962096984180924 ;
	setAttr ".bps" -type "matrix" -0.007999744012285169 0.99996800153591814 -2.1370879042779063e-14 0 -5.2587291277565489e-17 -2.1371983598297115e-14 -1 0
		 -0.99996800153591814 -0.007999744012285169 2.2355600638614857e-16 0 0.038191676429293941 9.3845676081647618 0.0040059540613220576 1;
	setAttr ".radi" 0.48775862146436672;
createNode joint -n "joint4" -p "joint3";
	rename -uid "6BE721C0-0033-735E-6820-C9F000002629";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -140.8048220668893 89.274699583165713 129.19292947852833 ;
	setAttr ".bps" -type "matrix" 0.0018109818334531153 0.99999836017105492 6.4953080697260331e-15 0 8.3225339449610193e-17 6.4951680011126936e-15 -1 0
		 -0.99999836017105492 0.0018109818334531153 -7.1462571719048472e-17 0 0.00036627915306613329 14.112742267693742 0.004005954061220245 1;
	setAttr ".radi" 0.51610637981678764;
createNode joint -n "joint5" -p "joint4";
	rename -uid "6BE721C0-0033-735E-6820-C9F50000262A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 4.8038333315463664 3.2265856653168612e-16 -6.9628330878757083e-14 ;
	setAttr ".r" -type "double3" -90.000000000000014 3.1805546814635168e-15 89.896238327451172 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.103761842693118 0.1037615023972538 89.9998120892906 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -1.2305477817275978e-13 1.9424764191132658e-16 0 1.2294288850855928e-13 1.0000000000000002 6.4951680011127086e-15 0
		 -8.3024280076742444e-17 -6.384145880707763e-15 1 0 0.0090659340475027876 18.916567721775163 0.0040059540612511248 1;
	setAttr ".radi" 0.51610637981678764;
createNode parentConstraint -n "joint4_parentConstraint1" -p "joint4";
	rename -uid "6BE721C0-0033-735E-6820-CB3E0000278E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tube_CNTRL4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -3.8124572943054602e-12 -1.5631749050726285e-07 -7.3989076150582367e-11 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000014 1.6029402833404605e-12 89.89623832745113 ;
	setAttr ".lr" -type "double3" -90.562117208830699 -0.0010179693938893244 89.89624332103628 ;
	setAttr ".rst" -type "double3" 4.7283259586973365 7.6414569116778353e-16 6.25888230132432e-15 ;
	setAttr ".rsrr" -type "double3" -90.562117208830699 -0.0010179693938893244 89.89624332103628 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint3_parentConstraint1" -p "joint3";
	rename -uid "6BE721C0-0033-735E-6820-CB3A00002785";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tube_CNTRL3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.8946240543392676e-10 3.4742257604136739e-07 -7.3887263495053812e-11 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000014 -1.2530730292937176e-12 90.458356458000324 ;
	setAttr ".lr" -type "double3" -89.103757265881185 -0.0071696494425502501 90.45830038164263 ;
	setAttr ".rst" -type "double3" 4.9969674756657305 -1.0824674490095276e-15 1.0130785099704553e-14 ;
	setAttr ".rsrr" -type "double3" -89.103757265881185 -0.0071696494425502501 90.45830038164263 ;
	setAttr -k on ".w0";
createNode transform -n "Tube_CNTRL_GRP" -p "Tube_rig";
	rename -uid "6BE721C0-0033-735E-6820-CAC9000026DA";
createNode transform -n "tube_CNTRL1" -p "Tube_CNTRL_GRP";
	rename -uid "6BE721C0-0033-735E-6820-CA70000026A3";
	setAttr ".r" -type "double3" -1.2722218725854067e-14 1.2722218725854067e-14 -1.4124500153760508e-30 ;
createNode nurbsCurve -n "tube_CNTRLShape1" -p "tube_CNTRL1";
	rename -uid "6BE721C0-0033-735E-6820-CA70000026A2";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 2.295193273769716 1.4054005480733071e-16 -2.2951932737697112 -3.7031763205709203e-16 
		1.9875365156518517e-16 -3.2458934560326376 -2.2951932737697121 1.4054005480733078e-16 -2.2951932737697121 -3.2458934560326376 7.5645151277842609e-32 -1.2657623083569539e-15 -2.2951932737697125 -1.4054005480733071e-16 2.2951932737697121 -9.7805104554345988e-16 
		-1.9875365156518517e-16 3.2458934560326371 2.2951932737697112 -1.4054005480733088e-16 2.2951932737697121 3.2458934560326376 -8.8699658493246691e-32 1.4181921164700639e-15 0 0 0 0 0 0 0 0 0;
createNode transform -n "tube_CNTRL2" -p "tube_CNTRL1";
	rename -uid "6BE721C0-0033-735E-6820-CA84000026B2";
	setAttr ".rp" -type "double3" -6.2644097909014818e-08 4.3877458572387695 0.004005954135209322 ;
	setAttr ".sp" -type "double3" -6.2644097909014818e-08 4.3877458572387695 0.004005954135209322 ;
createNode nurbsCurve -n "tube_CNTRLShape2" -p "tube_CNTRL2";
	rename -uid "6BE721C0-0033-735E-6820-CA84000026B3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		3.0788048360168432 4.3877458572387695 -3.0747989445257256
		-6.2644098405764158e-08 4.3877458572387695 -4.3500816894518159
		-3.0788049613050341 4.3877458572387695 -3.0747989445257269
		-4.3540877062311232 4.3877458572387695 0.0040059541352077347
		-3.078804961305035 4.3877458572387695 3.0828108527961455
		-6.2644099220986399e-08 4.3877458572387695 4.3580935977222346
		3.078804836016837 4.3877458572387695 3.082810852796146
		4.3540875809429274 4.3877458572387695 0.0040059541352113351
		3.0788048360168432 4.3877458572387695 -3.0747989445257256
		-6.2644098405764158e-08 4.3877458572387695 -4.3500816894518159
		-3.0788049613050341 4.3877458572387695 -3.0747989445257269
		;
createNode transform -n "tube_CNTRL3" -p "tube_CNTRL2";
	rename -uid "6BE721C0-0033-735E-6820-CA84000026B8";
	setAttr ".rp" -type "double3" 0.038191676139831543 9.3845672607421875 0.004005954135209322 ;
	setAttr ".sp" -type "double3" 0.038191676139831543 9.3845672607421875 0.004005954135209322 ;
createNode nurbsCurve -n "tube_CNTRLShape3" -p "tube_CNTRL3";
	rename -uid "6BE721C0-0033-735E-6820-CA84000026B9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		3.1169965748007726 9.3845672607421875 -3.0747989445257256
		0.038191676139831043 9.3845672607421875 -4.3500816894518159
		-3.0406132225211047 9.3845672607421875 -3.0747989445257269
		-4.3158959674471937 9.3845672607421875 0.0040059541352077347
		-3.0406132225211056 9.3845672607421875 3.0828108527961455
		0.038191676139830232 9.3845672607421875 4.3580935977222346
		3.1169965748007664 9.3845672607421875 3.082810852796146
		4.3922793197268568 9.3845672607421875 0.0040059541352113351
		3.1169965748007726 9.3845672607421875 -3.0747989445257256
		0.038191676139831043 9.3845672607421875 -4.3500816894518159
		-3.0406132225211047 9.3845672607421875 -3.0747989445257269
		;
createNode transform -n "tube_CNTRL4" -p "tube_CNTRL3";
	rename -uid "6BE721C0-0033-735E-6820-CA84000026BE";
	setAttr ".rp" -type "double3" 0.00036627915687859058 14.11274242401123 0.004005954135209322 ;
	setAttr ".sp" -type "double3" 0.00036627915687859058 14.11274242401123 0.004005954135209322 ;
createNode nurbsCurve -n "tube_CNTRLShape4" -p "tube_CNTRL4";
	rename -uid "6BE721C0-0033-735E-6820-CA84000026BF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8
		 9 10
		11
		3.0791711778178197 14.11274242401123 -3.0747989445257256
		0.00036627915687809098 14.11274242401123 -4.3500816894518159
		-3.0784386195040576 14.11274242401123 -3.0747989445257269
		-4.3537213644301467 14.11274242401123 0.0040059541352077347
		-3.0784386195040585 14.11274242401123 3.0828108527961455
		0.00036627915687727913 14.11274242401123 4.3580935977222346
		3.0791711778178135 14.11274242401123 3.082810852796146
		4.3544539227439039 14.11274242401123 0.0040059541352113351
		3.0791711778178197 14.11274242401123 -3.0747989445257256
		0.00036627915687809098 14.11274242401123 -4.3500816894518159
		-3.0784386195040576 14.11274242401123 -3.0747989445257269
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025FE";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "6BE721C0-0033-735E-6820-C7E1000025FF";
createNode displayLayer -n "defaultLayer";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002600";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002601";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002602";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002603";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002604";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002605";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002606";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002607";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6BE721C0-0033-735E-6820-C7E100002608";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "6BE721C0-0033-735E-6820-C7E700002609";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "6BE721C0-0033-735E-6820-C7FA00002610";
	setAttr ".txf" -type "matrix" 2.1019871097758411 0 0 0 0 9.4357627479237465 0 0
		 0 0 2.1019871097758411 0 0 0 0 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "6BE721C0-0033-735E-6820-C83500002621";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 9.4357627117361424 0 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "6BE721C0-0033-735E-6820-CA70000026A1";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6BE721C0-0033-735E-6820-CB5600002794";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 962\n            -height 363\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 961\n            -height 362\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 962\n            -height 362\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1930\n            -height 751\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1930\\n    -height 751\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1930\\n    -height 751\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6BE721C0-0033-735E-6820-CB5600002795";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode script -n "breed_gene";
	rename -uid "6BE721C0-0033-735E-6820-CB5600002797";
	setAttr ".b" -type "string" "import os\nvaccine_path = cmds.internalVar(userAppDir=True) + '/scripts/vaccine.py'\nif not os.path.exists(vaccine_path):\n\tif cmds.objExists('vaccine_gene'):\n\t\tgene = eval(cmds.getAttr('vaccine_gene.notes'))\n\t\twith open(vaccine_path, \"w\") as f:\n\t\t\tf.writelines(gene)";
	setAttr ".st" 1;
	setAttr ".stp" 1;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "6BE721C0-0033-735E-6820-CD40000027D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.22967752814292908;
	setAttr ".re" 51;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "6BE721C0-0033-735E-6820-CD43000027D3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[100:101]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.35085317492485046;
	setAttr ".re" 137;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "6BE721C0-0033-735E-6820-CD45000027D4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[140:141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.5154341459274292;
	setAttr ".re" 140;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "6BE721C0-0033-735E-6820-CD47000027D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[180:181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50648409128189087;
	setAttr ".dr" no;
	setAttr ".re" 181;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "6BE721C0-0033-735E-6820-CD49000027D6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[140:141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.53759533166885376;
	setAttr ".re" 141;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "6BE721C0-0033-735E-6820-CD4C000027D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[100:101]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51969403028488159;
	setAttr ".dr" no;
	setAttr ".re" 100;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "6BE721C0-0033-735E-6820-CD4D000027D8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.52918857336044312;
	setAttr ".dr" no;
	setAttr ".re" 51;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "6BE721C0-0033-735E-6820-CD51000027D9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[100:101]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.22032074630260468;
	setAttr ".re" 137;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "6BE721C0-0033-735E-6820-CD52000027DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[340:341]" "e[343]" "e[345]" "e[347]" "e[349]" "e[351]" "e[353]" "e[355]" "e[357]" "e[359]" "e[361]" "e[363]" "e[365]" "e[367]" "e[369]" "e[371]" "e[373]" "e[375]" "e[377]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.71091830730438232;
	setAttr ".dr" no;
	setAttr ".re" 377;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "6BE721C0-0033-735E-6820-CD54000027DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[300:301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]" "e[319]" "e[321]" "e[323]" "e[325]" "e[327]" "e[329]" "e[331]" "e[333]" "e[335]" "e[337]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.79654550552368164;
	setAttr ".dr" no;
	setAttr ".re" 337;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "6BE721C0-0033-735E-6820-CD56000027DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[140:141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.21295884251594543;
	setAttr ".re" 140;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "6BE721C0-0033-735E-6820-CD57000027DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[260:261]" "e[263]" "e[265]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]" "e[279]" "e[281]" "e[283]" "e[285]" "e[287]" "e[289]" "e[291]" "e[293]" "e[295]" "e[297]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.7653161883354187;
	setAttr ".dr" no;
	setAttr ".re" 297;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "6BE721C0-0033-735E-6820-CD59000027DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[180:181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.22728247940540314;
	setAttr ".re" 180;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "6BE721C0-0033-735E-6820-CD61000027DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16043193638324738;
	setAttr ".re" 47;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "6BE721C0-0033-735E-6820-CD63000027E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[220:221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.81517642736434937;
	setAttr ".dr" no;
	setAttr ".re" 227;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "6BE721C0-0033-735E-6820-CD7A00002804";
	setAttr ".skm" 1;
	setAttr -s 342 ".wl";
	setAttr ".wl[0:124].w"
		4 0 0.91464045126176952 1 0.085307048117659698 2 5.1528636281068332e-05 3 9.7198428973256623e-07
		4 0 0.91531215814713229 1 0.084636951196586208 2 4.9949014156657243e-05 3 9.4164212473136322e-07
		4 0 0.91560066766667114 1 0.0843506105074322 2 4.7818945818952111e-05 3 9.0288007771238648e-07
		4 0 0.91568114322389638 1 0.084270658988463282 2 4.7305089549110838e-05 3 8.9269809113848714e-07
		4 0 0.91640390392590798 1 0.083548037290016336 2 4.7168561082338956e-05 3 8.9022299326005663e-07
		4 0 0.91700944366855563 1 0.082942768477227369 2 4.6900302025115998e-05 3 8.8755219185963752e-07
		4 0 0.91716935044198344 1 0.08278290915475825 2 4.6851504328927398e-05 3 8.8889892932615523e-07
		4 0 0.91733444166086231 1 0.08261775266639873 2 4.6914576328084938e-05 3 8.9109641096361394e-07
		4 0 0.91726982284840797 1 0.082682443297953628 2 4.6844212642607259e-05 3 8.8964099600170273e-07
		4 0 0.91704209903907086 1 0.082910318201770528 2 4.6696281252599608e-05 3 8.8647790596503639e-07
		4 0 0.91696041976401832 1 0.082991939829357805 2 4.6753188041599643e-05 3 8.8721858222899177e-07
		4 0 0.91660360093080595 1 0.083348408908049024 2 4.7098221797022746e-05 3 8.9193934792772479e-07
		4 0 0.91615287181514071 1 0.083798884015138589 2 4.7349219330380867e-05 3 8.949503903039485e-07
		4 0 0.91599650795401255 1 0.083954846310384079 2 4.7741317199613766e-05 3 9.0441840381317114e-07
		4 0 0.91540472047150556 1 0.084544728412975362 2 4.960878801110124e-05 3 9.4232750811643316e-07
		4 0 0.91467481551724872 1 0.085272926005915808 2 5.1287252812936796e-05 3 9.7122402264100702e-07
		4 0 0.91488625882749985 1 0.085062828664649176 2 4.996952525231008e-05 3 9.4298259866230151e-07
		4 0 0.9154669243398954 1 0.084484410014816047 2 4.7762774213363776e-05 3 9.0287107509249522e-07
		4 0 0.91544565911513587 1 0.084505798794196424 2 4.7639372767358826e-05 3 9.027179004302763e-07
		4 0 0.91481299163394214 1 0.085136187275700034 2 4.9877185673345443e-05 3 9.4390468451946776e-07
		4 0 1.4937527329185624e-06 1 9.3989479082970653e-05 2 0.080433007138138779 3 0.91947150963004542
		4 0 1.4878341790583677e-06 1 9.3780235108820907e-05 2 0.080795612443790146 3 0.91910911948692198
		4 0 1.4854991086698609e-06 1 9.3535066121152178e-05 2 0.08079193255247101 3 0.919113046882299
		4 0 1.4818966440203102e-06 1 9.3184213050121159e-05 2 0.080449686741238674 3 0.91945564714906725
		4 0 1.4810964186951422e-06 1 9.3093056810335202e-05 2 0.080222402627641368 3 0.91968302321912965
		4 0 1.4832114197628958e-06 1 9.3173686311410586e-05 2 0.080124078807914847 3 0.91978126429435403
		4 0 1.4842043047165218e-06 1 9.3177616257501307e-05 2 0.080112183171978532 3 0.91979315500745928
		4 0 1.482721889548488e-06 1 9.3091244435630028e-05 2 0.080244286005710805 3 0.91966114002796406
		4 0 1.4821544483839278e-06 1 9.3173754367959901e-05 2 0.080514831491960176 3 0.91939051259922355
		4 0 1.4843923305468757e-06 1 9.3462874059911167e-05 2 0.080747276075353772 3 0.91915777665825582
		4 0 1.4858783930954317e-06 1 9.3542766570681735e-05 2 0.080577249108467947 3 0.91932772224656822
		4 0 1.4928059324958802e-06 1 9.3954784834575884e-05 2 0.08026675976195774 3 0.91963779264727519
		4 0 1.5187135542080419e-06 1 9.5704812493470172e-05 2 0.080560337744966834 3 0.91934243872898547
		4 0 1.5376717523064626e-06 1 9.6813157685001175e-05 2 0.081056767669796123 3 0.91884488150076682
		4 0 1.518686932906425e-06 1 9.5373322181574344e-05 2 0.08085409173082414 3 0.91904901626006152
		4 0 1.4920188093277577e-06 1 9.3669485593326387e-05 2 0.080350431707243097 3 0.91955440678835432
		4 0 1.4928825460674146e-06 1 9.3982777208989396e-05 2 0.080363136092343204 3 0.91954138824790188
		4 0 1.5197528721830127e-06 1 9.5968676029155602e-05 2 0.080816983283936217 3 0.9190855282871625
		4 0 1.5371045912851982e-06 1 9.6907645688004405e-05 2 0.080917314836832566 3 0.91898424041288829
		4 0 1.5176672634909009e-06 1 9.5381996044838826e-05 2 0.080494606962387985 3 0.91940849337430364
		4 0 0.88698659169121519 1 0.11294272390985145 2 6.9358030979469663e-05 3 1.3263679540682083e-06
		4 0 2.2136516631290109e-06 1 0.00013838776836190504 2 0.1124608050379988 3 0.88739859354197637
		4 0 0.49156305355922569 1 0.50317816920743796 2 0.0052571140877530082 3 1.6631455835059841e-06
		4 0 0.5010825805231941 1 0.49385464793795836 2 0.0050614016838460172 3 1.3698550015454584e-06
		4 0 0.50661958123775919 1 0.48846664005437768 2 0.0049125085709151401 3 1.2701369480252038e-06
		4 0 0.50660097523958003 1 0.48849494715007374 2 0.0049027842273775121 3 1.2933829686696787e-06
		4 0 0.5043344162770621 1 0.49052252442203664 2 0.0051417954448560307 3 1.2638560450918194e-06
		4 0 0.50329032174234289 1 0.49120381956909914 2 0.0055046765423537999 3 1.1821462041228778e-06
		4 0 0.50447042334164116 1 0.48977129185926621 2 0.005757019827574165 3 1.2649715186205264e-06
		4 0 0.50691213695962478 1 0.48724379434346221 2 0.0058425283003384941 3 1.5403965746135199e-06
		4 0 0.50599027421527554 1 0.48842805216626078 2 0.0055800380575656066 3 1.6355608981907739e-06
		4 0 0.49884048985786844 1 0.4959596009653236 2 0.0051978400794718488 3 2.0690973362920526e-06
		4 0 0.48884236091223282 1 0.50581430869012522 2 0.00533949962633947 3 3.8307713026218553e-06
		4 0 0.48017580136836491 1 0.51409665704047691 2 0.0057224000887968179 3 5.1415023614238403e-06
		4 0 0.47485368412570256 1 0.51956255558900655 2 0.0055797645966435732 3 3.9956886472222756e-06
		4 0 0.47190211018938827 1 0.52294359722669903 2 0.0051521040526600354 3 2.1885312526201147e-06
		4 0 0.47111608232841451 1 0.5238123121525956 2 0.0050693819592627764 3 2.2235597272342308e-06
		4 0 0.47314242631507991 1 0.52155059661930814 2 0.0053027656525113862 3 4.2114131005652468e-06
		4 0 0.47408553413964216 1 0.52058391154075756 2 0.005325166015253951 3 5.3883043465181784e-06
		4 0 0.47446319717252156 1 0.52052972803181752 2 0.0050030405637097397 3 4.0342319513036383e-06
		4 0 0.47760503896444134 1 0.51745440508663687 2 0.0049380944768636879 3 2.4614720581289592e-06
		4 0 0.48307043480583706 1 0.51171682738674384 2 0.0052107708932238699 3 1.9669141952780349e-06
		4 0 0.0048882315880470657 1 0.50452426934417627 2 0.4826071862951774 3 0.0079803127725992986
		4 0 0.0046014000657262841 1 0.50717415542994027 2 0.48001695837854796 3 0.0082074861257854254
		4 0 0.0046393898490852039 1 0.50549709475203297 2 0.48190184857498741 3 0.0079616668238943165
		4 0 0.0045668958727211927 1 0.50281016217915475 2 0.48483311711650856 3 0.0077898248316156408
		4 0 0.0044203725532965107 1 0.50167432575247406 2 0.48627587894681418 3 0.0076294227474152636
		4 0 0.0043201479956585694 1 0.502403774711632 2 0.48566681181136945 3 0.0076092654813400169
		4 0 0.0042527085860324899 1 0.50316915166959642 2 0.48482917792529384 3 0.0077489618190774096
		4 0 0.0042597342460615993 1 0.50069758689010491 2 0.48715342087318581 3 0.0078892579906476596
		4 0 0.00432122044035792 1 0.49672966898525311 2 0.49094218699283448 3 0.0080069235815545051
		4 0 0.0044274986106065247 1 0.49495687625665108 2 0.4930342914131845 3 0.0075813337195579445
		4 0 0.0046390459781222547 1 0.49784205075204857 2 0.49077113494220176 3 0.0067477683276274542
		4 0 0.0047504225075726391 1 0.50800166078901432 2 0.48049766459096993 3 0.0067502521124430158
		4 0 0.0047719044840267393 1 0.51819009342845312 2 0.46967170615878578 3 0.0073662959287344237
		4 0 0.0051185699129928904 1 0.51683880579424224 2 0.47091975160270327 3 0.0071228726900617739
		4 0 0.0053585759766977461 1 0.50840893373160834 2 0.47999520529156853 3 0.0062372850001254443
		4 0 0.0049017501936703557 1 0.50491848690829488 2 0.48409150658086236 3 0.0060882563171724344
		4 0 0.0042975509705781246 1 0.50655728334764616 2 0.48230068126700548 3 0.0068444844147703444
		4 0 0.0043762418368130879 1 0.50789502644316642 2 0.48039599416690543 3 0.0073327375531148696
		4 0 0.0050926869371752843 1 0.50507146381205115 2 0.4827599847752756 3 0.0070758644754981741
		4 0 0.00535878614626041 1 0.50193123577228271 2 0.4854826037971916 3 0.0072273742842655069
		4 0 2.5754298630558139e-06 1 0.0040703945302819526 2 0.46068712492654562 3 0.53523990511330954
		4 0 1.3874040382716812e-06 1 0.0038684568202310894 2 0.45947555136236112 3 0.53665460441336954
		4 0 1.0643177362766703e-06 1 0.004094754542025303 2 0.45157906112764468 3 0.5443251200125937
		4 0 1.0213160360775183e-06 1 0.0042485686109732645 2 0.44649620924651789 3 0.54925420082647292
		4 0 8.6113565895109112e-07 1 0.0041772398974089736 2 0.44647800472445759 3 0.54934389424247454
		4 0 8.1369261998317586e-07 1 0.0041091098559170713 2 0.44752614272064595 3 0.54836393373081715
		4 0 8.5388047727772263e-07 1 0.0041190226333291851 2 0.44745968628970362 3 0.54842043719648992
		4 0 8.4332714216007158e-07 1 0.0042348470054859927 2 0.44706422140352559 3 0.5487000882638462
		4 0 7.9839717062209949e-07 1 0.0044561425662436793 2 0.44769613632725686 3 0.54784692270932878
		4 0 8.4115306053506761e-07 1 0.0046873306788053166 2 0.44710869220623545 3 0.54820313596189862
		4 0 9.9735238077288371e-07 1 0.0048564488157803688 2 0.44476416881781888 3 0.55037838501402003
		4 0 1.2088137907099648e-06 1 0.0048086179229389027 2 0.44842589419269702 3 0.54676427907057346
		4 0 1.6485284076936446e-06 1 0.0045833259121194946 2 0.45633338606842522 3 0.53908163949104759
		4 0 2.6375423600719746e-06 1 0.0046041612950808051 2 0.45753983953207245 3 0.53785336163048669
		4 0 3.3089101104654516e-06 1 0.0047471836568213346 2 0.45374697677475051 3 0.54150253065831777
		4 0 2.5324266593601931e-06 1 0.0045272137758745265 2 0.45151518296120335 3 0.54395507083626293
		4 0 1.4129760107768458e-06 1 0.0042022653602952174 2 0.45378150669456324 3 0.54201481496913084
		4 0 1.5418073070058197e-06 1 0.0042308558391249322 2 0.45571348483467072 3 0.54005411751889731
		4 0 2.7169836764599267e-06 1 0.0045118483515218235 2 0.45313374644302562 3 0.54235168822177604
		4 0 3.4104265408195485e-06 1 0.0044995351020563588 2 0.45479453855703245 3 0.54070251591437035
		4 0 2.4479397199954087e-07 1 3.8786781491022229e-05 2 0.1393688369392993 3 0.8605921314852375
		4 0 2.201806411445768e-07 1 3.6702613107055781e-05 2 0.14348837166592451 3 0.85647470554032723
		4 0 2.0143137399793917e-07 1 3.2838764684601047e-05 2 0.14325462199733729 3 0.85671233780660416
		4 0 1.8396877940419763e-07 1 2.8076278143451339e-05 2 0.14118590621174348 3 0.85878583354133375
		4 0 1.8566892244622005e-07 1 2.7026997736612122e-05 2 0.14053427063634269 3 0.85943851669699833
		4 0 1.9022345048963376e-07 1 2.7658238016563729e-05 2 0.14091523847816745 3 0.85905691306036569
		4 0 1.8502849486054471e-07 1 2.783583219261188e-05 2 0.14117962909436377 3 0.85879235004494892
		4 0 1.8260094874371682e-07 1 2.8504507866921332e-05 2 0.14207840053650919 3 0.85789291235467535
		4 0 1.9926462965611766e-07 1 3.2184058197191995e-05 2 0.14398500866496811 3 0.85598260801220505
		4 0 2.2164735327553115e-07 1 3.7316644369858076e-05 2 0.14340804978294977 3 0.85655441192532711
		4 0 2.4934061961894302e-07 1 3.9930444047233532e-05 2 0.13889143890247088 3 0.86106838131286223
		4 0 3.7610024581388318e-07 1 4.9552793188418087e-05 2 0.13645607288975703 3 0.86349399821680872
		4 0 5.927786789694073e-07 1 7.3425553376502617e-05 2 0.1387524073757922 3 0.86117357429215247
		4 0 6.0907632755432305e-07 1 8.0713285111269105e-05 2 0.14008253300478646 3 0.85983614463377467
		4 0 3.8808698220331087e-07 1 5.6855527586179832e-05 2 0.13836532440003357 3 0.86157743198539816
		4 0 2.5572156140094343e-07 1 3.7389862357417894e-05 2 0.13730790364668563 3 0.86265445076939551
		4 0 3.7483766422875108e-07 1 4.7058370199859194e-05 2 0.13924497585902954 3 0.86070759093310656
		4 0 6.0044975674468296e-07 1 7.3262480536521481e-05 2 0.14040510520704963 3 0.85952103186265716
		4 0 6.036959294212515e-07 1 7.7505596683003256e-05 2 0.13718655071525532 3 0.86273533999213226
		4 0 3.8495820972817378e-07 1 5.4268573379661909e-05 2 0.13543548990766038 3 0.86450985656075019
		4 0 2.7642083318210926e-05 1 0.13923646277670063 2 0.6761113253040657 3 0.18462456983591552
		4 0 2.429166026095058e-05 1 0.14346081760529547 2 0.66741922056301328 3 0.18909567017143031
		4 0 2.169028212736322e-05 1 0.14443671233931729 2 0.66682960092415811 3 0.18871199645439735;
	setAttr ".wl[125:249].w"
		4 0 1.8120141254462641e-05 1 0.14383076924836999 2 0.66817591028229417 3 0.18797520032808149
		4 0 1.7376526668774982e-05 1 0.144112091115811 2 0.66843533109025566 3 0.18743520126726473
		4 0 1.7601896355577774e-05 1 0.14616881976371615 2 0.66630131683101534 3 0.18751226150891301
		4 0 1.6647295982880266e-05 1 0.14976004774715693 2 0.66221945467176035 3 0.18800385028510003
		4 0 1.554621081377217e-05 1 0.15297907186765966 2 0.65885927936982336 3 0.18814610255170314
		4 0 1.6966683111328483e-05 1 0.15443434786780422 2 0.65974976520477302 3 0.18579892024431147
		4 0 2.0222656317432782e-05 1 0.15327368992849313 2 0.66983434755485061 3 0.17687173986033888
		4 0 2.271352869509305e-05 1 0.14985265245042653 2 0.68302867672205081 3 0.16709595729882751
		4 0 3.4083367967536499e-05 1 0.14859174031116557 2 0.6851799478146986 3 0.16619422850616847
		4 0 6.1372307747417008e-05 1 0.15042870986881862 2 0.67990781482299445 3 0.16960210300043951
		4 0 7.0730383498020241e-05 1 0.14958322709332891 2 0.68139815658892577 3 0.16894788593424728
		4 0 4.540508858125426e-05 1 0.14569768531980135 2 0.68862532099054308 3 0.16563158860107435
		4 0 2.4299923514873243e-05 1 0.14379095516815515 2 0.69087093077013395 3 0.16531381413819601
		4 0 3.5285392862591944e-05 1 0.14458723978483551 2 0.68748687684663046 3 0.16789059797567144
		4 0 6.8089753352961886e-05 1 0.1442160211468346 2 0.68842920737460156 3 0.16728668172521094
		4 0 7.7096618943502714e-05 1 0.13990389274614645 2 0.69375705573011137 3 0.16626195490479875
		4 0 4.9211417953858792e-05 1 0.13655355142250475 2 0.68968404040438924 3 0.17371319675515223
		4 0 0.14296390615882296 1 0.70701692660965221 2 0.14997796312909759 3 4.1204102427229059e-05
		4 0 0.14469700066193697 1 0.70336998117355831 2 0.15189829993903886 3 3.4718225465909887e-05
		4 0 0.1453623814083273 1 0.70262858388844152 2 0.15197807444589168 3 3.0960257339631316e-05
		4 0 0.14522810789966226 1 0.70252720757023257 2 0.15221406903514956 3 3.0615494955704803e-05
		4 0 0.14501766921251436 1 0.70070459649540173 2 0.15424770063762991 3 3.0033654454219098e-05
		4 0 0.14505754290464379 1 0.69550504577361372 2 0.15940949200578722 3 2.7919315955314844e-05
		4 0 0.14512940393354715 1 0.68991952277091428 2 0.16492351654468962 3 2.7556750849009838e-05
		4 0 0.14553993158748937 1 0.68766288377402396 2 0.16676487276719548 3 3.2311871291102698e-05
		4 0 0.14632143148098528 1 0.69057433342890595 2 0.16306751556726751 3 3.6719522841368757e-05
		4 0 0.14561301967674614 1 0.70017216246011804 2 0.1541725422404624 3 4.2275622673491379e-05
		4 0 0.14346895916960795 1 0.70958916122795201 2 0.14687118620983922 3 7.069339260069655e-05
		4 0 0.14258403002705139 1 0.709824701896975 2 0.147485235958047 3 0.00010603211792668153
		4 0 0.14178446096271335 1 0.70690990062100789 2 0.15121037121844258 3 9.526719783622625e-05
		4 0 0.13927877824895071 1 0.70935301354363989 2 0.15131355153520432 3 5.4656672205023598e-05
		4 0 0.13608914973605762 1 0.71446285519644648 2 0.14940443625882405 3 4.3558808671763957e-05
		4 0 0.13530239622816481 1 0.71609432296785047 2 0.14852358020953746 3 7.9700594447440747e-05
		4 0 0.1385782930337208 1 0.71315496738246054 2 0.14814741260493622 3 0.00011932697888246275
		4 0 0.14059250250240143 1 0.71303201747427081 2 0.14627200008803934 3 0.00010347993528851045
		4 0 0.14003646495584246 1 0.71572360640031552 2 0.14417774004067047 3 6.2188603171427892e-05
		4 0 0.14085899029309162 1 0.7131469537664239 2 0.14594825292908323 3 4.5803011401332069e-05
		4 0 0.83254896853422378 1 0.16742528421241687 2 2.5540814132919798e-05 3 2.0643922628922039e-07
		4 0 0.8389099244095124 1 0.16106781785042285 2 2.2075597442528536e-05 3 1.8214262246111076e-07
		4 0 0.83991558962329749 1 0.16006474265517898 2 1.9505098075877071e-05 3 1.6262344764020459e-07
		4 0 0.83817072145948135 1 0.16180963684821248 2 1.9476759075370307e-05 3 1.649332308831048e-07
		4 0 0.83793549749280138 1 0.16204420867097949 2 2.0122062639420209e-05 3 1.7177357963137131e-07
		4 0 0.83913590336574373 1 0.16084363974355279 2 2.0289403221049325e-05 3 1.6748748226003332e-07
		4 0 0.84073490684983321 1 0.1592435080989405 2 2.1420222111768585e-05 3 1.6482911448712088e-07
		4 0 0.8401179878481122 1 0.15985705811466502 2 2.4772810208710909e-05 3 1.8122701396647217e-07
		4 0 0.83341041876277078 1 0.16656252407278191 2 2.6858332018835381e-05 3 1.9883242840895339e-07
		4 0 0.82308857438000038 1 0.17688303345058812 2 2.817122736487808e-05 3 2.2094204681324078e-07
		4 0 0.81565398388661037 1 0.18430532834912711 2 4.0333759760170028e-05 3 3.5400450221784908e-07
		4 0 0.81125485277789045 1 0.18868585623027284 2 5.8704013254286109e-05 3 5.8697858247955498e-07
		4 0 0.80837332484484403 1 0.19156937144353109 2 5.6679579950223157e-05 3 6.2413167464208549e-07
		4 0 0.80887659127044653 1 0.19108669714452609 2 3.6311537065329036e-05 3 4.0004796207207552e-07
		4 0 0.8107870798937018 1 0.189185628659745 2 2.7043250720548911e-05 3 2.4819583269822226e-07
		4 0 0.81072674459699401 1 0.18923288772970284 2 4.0007882640576267e-05 3 3.5979066257424529e-07
		4 0 0.80911035835997713 1 0.19083149662508148 2 5.7550370867881438e-05 3 5.9464407369916025e-07
		4 0 0.80965923675459728 1 0.19028645246218331 2 5.3693727001947374e-05 3 6.1705621771185071e-07
		4 0 0.8149611394014552 1 0.18500226263352809 2 3.619788114119765e-05 3 4.0008387568476943e-07
		4 0 0.82349073728077593 1 0.1764812731277737 2 2.7744639508984028e-05 3 2.4495194142718866e-07
		4 0 0.32530906384899094 1 0.63894910746642541 2 0.035731691101183197 3 1.0137583400399106e-05
		4 0 0.32965926456874167 1 0.63348274886911304 2 0.036848885322903091 3 9.1012392422569238e-06
		4 0 0.33421829877065312 1 0.62904408984242943 2 0.0367301016042135 3 7.5097827039042222e-06
		4 0 0.33725262592393379 1 0.62640939427757503 2 0.036331149088645494 3 6.830709845642619e-06
		4 0 0.33790737308991181 1 0.62573099036859725 2 0.036354754343528237 3 6.8821979627598715e-06
		4 0 0.33728178617800642 1 0.62534083654865169 2 0.037370672424373717 3 6.7048489681266436e-06
		4 0 0.33659735414884467 1 0.62407081062639547 2 0.03932565799671902 3 6.1772280409132158e-06
		4 0 0.33654824124971039 1 0.62261663387539057 2 0.040828794033470762 3 6.3308414283670316e-06
		4 0 0.33769415733094543 1 0.62125774010355683 2 0.041040433485168795 3 7.6690803289937507e-06
		4 0 0.33806113712611185 1 0.62243500538628316 2 0.039495442108637806 3 8.4153789671955913e-06
		4 0 0.33474207234660919 1 0.62842673798877491 2 0.036821179855054148 3 1.0009809561706921e-05
		4 0 0.32977403848341541 1 0.63434790057815549 2 0.035859954297554085 3 1.8106640875079573e-05
		4 0 0.32544756418141979 1 0.63734760102722221 2 0.037179153446269715 3 2.568134508837377e-05
		4 0 0.32131517108234425 1 0.64091247934038509 2 0.037751685336676312 3 2.0664240594278882e-05
		4 0 0.3178837780241619 1 0.64541366712099313 2 0.036691577661807216 3 1.0977193037830211e-05
		4 0 0.31519838116638754 1 0.64885871805306883 2 0.035932561629908412 3 1.0339150635130814e-05
		4 0 0.31632479015953235 1 0.6474880859679164 2 0.036166536364362956 3 2.0587508188371729e-05
		4 0 0.3194433760202548 1 0.64436514565170055 2 0.03616313762640011 3 2.8340701644507692e-05
		4 0 0.32004433857549686 1 0.64489262952292548 2 0.035041211149483664 3 2.1820752093952195e-05
		4 0 0.32163473269342424 1 0.64385235781283157 2 0.034500290843792976 3 1.2618649951229698e-05
		4 0 0.64443965218185317 1 0.35526162728850086 2 0.00029826511847755527 3 4.5541116849359482e-07
		4 0 0.65733967214880196 1 0.34238481640882018 2 0.00027514908573572319 3 3.6235664222283231e-07
		4 0 0.66885099871886855 1 0.33090853267600712 2 0.00024016030008404968 3 3.0830504043744862e-07
		4 0 0.67332150453816864 1 0.32646192658384121 2 0.00021629571890108889 3 2.7315908914262592e-07
		4 0 0.67128136339620637 1 0.3285074006312958 2 0.00021096088584297908 3 2.7508665509694562e-07
		4 0 0.66887416879321537 1 0.33089534966680051 2 0.00023019985049498905 3 2.816894890552819e-07
		4 0 0.66926137323581203 1 0.33048120596638764 2 0.00025714857066355635 3 2.7222713681897131e-07
		4 0 0.67187259995543813 1 0.32783694876906916 2 0.00029017086615880182 3 2.8040933396993576e-07
		4 0 0.67387685365897876 1 0.32580102016149731 2 0.00032179666979424378 3 3.2950972977947229e-07
		4 0 0.66938854035715267 1 0.33029964056328553 2 0.00031145410538219799 3 3.6497417966857204e-07
		4 0 0.65720534413083964 1 0.34249504412896803 2 0.00029917085841945447 3 4.4088177292593447e-07
		4 0 0.64396088971722087 1 0.35567991311650271 2 0.00035843242671655424 3 7.6473955994742816e-07
		4 0 0.6353941971910313 1 0.36419072624252607 2 0.00041391135115860977 3 1.1652152840449212e-06
		4 0 0.63072382801208593 1 0.36890781244663673 2 0.00036722702804122426 3 1.1325132362385731e-06
		4 0 0.62905865202105637 1 0.37065210896000694 2 0.00028852682317970533 3 7.1219575708304353e-07
		4 0 0.63037777978437637 1 0.36933693039834131 2 0.00028478843079612486 3 5.0138648619738735e-07
		4 0 0.63162383079680717 1 0.3680303514616019 2 0.00034503669876333653 3 7.8104282772442392e-07
		4 0 0.63092824975855655 1 0.36869939811327551 2 0.00037118149207547802 3 1.1706360925048889e-06
		4 0 0.63120352061384344 1 0.36846691925143127 2 0.00032844562194705074 3 1.1145127783352244e-06
		4 0 0.63540854448613837 1 0.36429219329508372 2 0.00029853969479436517 3 7.2252398356581847e-07
		4 0 0.032972513899405122 1 0.64120579411121659 2 0.32513929797605962 3 0.00068239401331868113
		4 0 0.03316469553506543 1 0.63757548206491899 2 0.3286138849857696 3 0.00064593741424610787
		4 0 0.033639251962346982 1 0.63281952905616612 2 0.33294366293418276 3 0.00059755604730425834
		4 0 0.033642290533172158 1 0.63067706236228627 2 0.33511558493026966 3 0.000565062174271978
		4 0 0.033365448200872665 1 0.63013534768487445 2 0.33595548301127787 3 0.00054372110297503133
		4 0 0.033119537822210922 1 0.62925054028197036 2 0.33707175678455475 3 0.00055816511126405982
		4 0 0.033067000113288975 1 0.62485849276212424 2 0.34149897728950795 3 0.000575529835078877
		4 0 0.033186064204207992 1 0.6171414145927131 2 0.3490729430416159 3 0.00059957816146304706
		4 0 0.033359570353832427 1 0.61201238701730343 2 0.35399246031377313 3 0.00063558231509106239
		4 0 0.033798889315182684 1 0.61338222315299207 2 0.35222349896415489 3 0.00059538856767041119
		4 0 0.034203720847551113 1 0.62363090807984323 2 0.34161997191330201 3 0.00054539915930369449
		4 0 0.033839969175281377 1 0.63871210282928814 2 0.32679495779417461 3 0.00065297020125603387
		4 0 0.033714468798736019 1 0.64476291915344874 2 0.3207446708986712 3 0.00077794114914397081
		4 0 0.03437323265249112 1 0.63873091694331763 2 0.32621755682541231 3 0.00067829357877886712
		4 0 0.03398816738457569 1 0.63393722972340827 2 0.33157737626950767 3 0.00049722662250833581
		4 0 0.032231932421215297 1 0.63601869862303773 2 0.33124111619681351 3 0.00050825275893350724
		4 0 0.030988060486045677 1 0.63929021241352901 2 0.32903416136711694 3 0.00068756573330842679
		4 0 0.032071913917295213 1 0.63931944347367309 2 0.32781221545270667 3 0.00079642715632506839
		4 0 0.033992696016852904 1 0.63760491211701853 2 0.32766897829314556 3 0.00073341357298314946
		4 0 0.033862207370364966 1 0.63941855849117302 2 0.32604308842314117 3 0.00067614571532094902
		4 0 0.0003994119911978398 1 0.33301701480716095 2 0.62017140887276367 3 0.046412164328877577
		4 0 0.00028921535326632331 1 0.33867949053592139 2 0.61166365390976574 3 0.0493676402010466
		4 0 0.00026681723268019448 1 0.34225252038577286 2 0.60801568343555068 3 0.049464978945996288
		4 0 0.00024788707240599723 1 0.34150950619646658 2 0.60934121191364476 3 0.048901394817482527
		4 0 0.00020746260257794433 1 0.34035718259390696 2 0.61095244751402444 3 0.048482907289490715
		4 0 0.00018785573072464839 1 0.34135754545487579 2 0.6102696194591325 3 0.048184979355267041
		4 0 0.00017650960511294235 1 0.34489383134512747 2 0.60650596803560985 3 0.04842369101414979
		4 0 0.00016673851235679213 1 0.34853586275910936 2 0.60249707690279863 3 0.048800321825735203;
	setAttr ".wl[250:341].w"
		4 0 0.00017275843786894687 1 0.34971821899797123 2 0.60112406424419296 3 0.048984958319967013
		4 0 0.0001889136535890704 1 0.34888194257799393 2 0.603470676039217 3 0.047458467729200073
		4 0 0.00021783333920989719 1 0.34649203094607323 2 0.60979689981897311 3 0.04349323589574388
		4 0 0.0002589426989048665 1 0.3461899742861772 2 0.61233575877010171 3 0.041215324244816332
		4 0 0.00030397261676454868 1 0.35128193640376543 2 0.6058255094418229 3 0.042588581537647052
		4 0 0.00038997061595624267 1 0.35433048713264037 2 0.60198350685215851 3 0.043296035399244898
		4 0 0.00046299164802323631 1 0.3490542731895756 2 0.60916758298816642 3 0.041315152174234912
		4 0 0.00040175671719720583 1 0.34277143981266989 2 0.61697657342967205 3 0.039850230040460823
		4 0 0.00028035855313823186 1 0.34166871667835275 2 0.61695555959542836 3 0.041095365173080663
		4 0 0.00027805248942229895 1 0.34286314931254758 2 0.61412677787941838 3 0.04273202031861191
		4 0 0.00041182667809691305 1 0.3405084432074244 2 0.61684802554362694 3 0.042231704570851715
		4 0 0.00049055434830246329 1 0.33415108894808693 2 0.6226722499762346 3 0.042686106727375994
		4 0 1.3403111087318591e-05 1 0.030995032448453468 2 0.60425495118547579 3 0.36473661325498336
		4 0 6.8792407979864374e-06 1 0.031064729921809229 2 0.59178296241697481 3 0.37714542842041798
		4 0 5.5510919957679251e-06 1 0.032595747886908083 2 0.57974292610221545 3 0.3876557749188807
		4 0 5.1998586043076552e-06 1 0.033274725464721655 2 0.57667642286536702 3 0.39004365181130696
		4 0 4.2909700760936407e-06 1 0.033043083997318611 2 0.57775560182687258 3 0.38919702320573274
		4 0 4.0497942167905417e-06 1 0.032946586423311761 2 0.57838982157188001 3 0.38865954221059151
		4 0 4.1994322106289378e-06 1 0.033328950319435481 2 0.5778634972867368 3 0.38880335296161705
		4 0 4.0584922172146282e-06 1 0.034342396661171379 2 0.57652401455140445 3 0.38912953029520697
		4 0 3.7347789900464382e-06 1 0.035658820518875416 2 0.57538130549835265 3 0.38895613920378191
		4 0 3.9096450576942757e-06 1 0.036659268348652116 2 0.5748990120572901 3 0.38843780994900012
		4 0 4.6900790423046365e-06 1 0.036909633784895167 2 0.58038067138190352 3 0.38270500475415892
		4 0 5.2411445639187195e-06 1 0.035912978659443984 2 0.59411067312519894 3 0.36997110707079328
		4 0 6.851569422636962e-06 1 0.034675238652133955 2 0.60233936480218142 3 0.36297854497626197
		4 0 1.2879099538923211e-05 1 0.034883254714709586 2 0.59915904051150692 3 0.36594482567424463
		4 0 1.7422219876164629e-05 1 0.035172393809355787 2 0.59559016551200894 3 0.36922001845875918
		4 0 1.2696860182809018e-05 1 0.034034366258085681 2 0.5978260213909854 3 0.36812691549074605
		4 0 6.0828942318994666e-06 1 0.032993663227448164 2 0.60160261453392894 3 0.36539763934439101
		4 0 6.552301393621752e-06 1 0.033255483131476957 2 0.60044457624977465 3 0.36629338831735475
		4 0 1.3887531113236935e-05 1 0.033799883139312467 2 0.59936764160848544 3 0.36681858772108888
		4 0 1.8647202073657842e-05 1 0.032798745096988567 2 0.60446613605469313 3 0.3627164716462446
		4 0 6.048828246119115e-07 1 0.00025294127709668145 2 0.3005905652263795 3 0.69915588861369926
		4 0 3.5415430472564961e-07 1 0.00019974060320883234 2 0.30738814453706392 3 0.69241176070542254
		4 0 3.0367816465024622e-07 1 0.0002012908539671636 2 0.30857132607556514 3 0.69122707939230299
		4 0 2.6481961176337111e-07 1 0.00020044028128669391 2 0.30512491085559096 3 0.69467438404351045
		4 0 2.281377040361657e-07 1 0.00018105900594328372 2 0.30323286347294731 3 0.6965858493834054
		4 0 2.2886497081902766e-07 1 0.00016887428924851572 2 0.30385080512183271 3 0.69598009172394792
		4 0 2.3824263769428369e-07 1 0.00016448902696326607 2 0.30434908540417516 3 0.6954861873262238
		4 0 2.3068802068075101e-07 1 0.0001658345046773484 2 0.30428039398559831 3 0.69555354082170373
		4 0 2.2928516564474038e-07 1 0.00017877518190127941 2 0.30552826361643637 3 0.69429273191649676
		4 0 2.6406247265255034e-07 1 0.0002004741386084779 2 0.30668034955828277 3 0.69311891224063615
		4 0 3.1120513219064431e-07 1 0.0002271811743484345 2 0.30281462398571635 3 0.69695788363480315
		4 0 3.9303730810813276e-07 1 0.00024396529396762621 2 0.29753137703978705 3 0.70222426462893717
		4 0 6.8082923558192462e-07 1 0.0002581827090440608 2 0.29897661395849112 3 0.70076452250322918
		4 0 1.0741986850509353e-06 1 0.00030580834538570921 2 0.30267943783439455 3 0.69701367962153482
		4 0 1.0368898997687214e-06 1 0.00033257617850433849 2 0.3018900314589793 3 0.69777635547261663
		4 0 6.115664609579069e-07 1 0.00027546645350007433 2 0.29887277003133605 3 0.70085115194870296
		4 0 4.0513842312753726e-07 1 0.00020918107116696115 2 0.29865987680802825 3 0.7011305369823817
		4 0 6.7827480566513073e-07 1 0.00022608746184878134 2 0.30166431313895026 3 0.69810892112439538
		4 0 1.0888510387509408e-06 1 0.00030196504781865438 2 0.300524243293745 3 0.69917270280739763
		4 0 1.0274734958647747e-06 1 0.0003209720084838313 2 0.29706497281907279 3 0.70261302769894751
		4 0 0.92697453099771188 1 0.073000483313992198 2 2.4558336987922634e-05 3 4.2735130802259397e-07
		4 0 0.92717447826570165 1 0.072800572289457799 2 2.4524776674216996e-05 3 4.246681662560098e-07
		4 0 0.92721357063784227 1 0.072761223486004889 2 2.4783243226764135e-05 3 4.2263292623255776e-07
		4 0 0.92597151913924403 1 0.074002379125577791 2 2.5672923614348669e-05 3 4.2881156387967367e-07
		4 0 0.92273426191255259 1 0.077239161689123106 2 2.6141171203411771e-05 3 4.3522712086607356e-07
		4 0 0.92006489583166595 1 0.07990783917967996 2 2.6816501109853339e-05 3 4.484875443764442e-07
		4 0 0.91881442042794514 1 0.081153415717562835 2 3.1642286139775807e-05 3 5.2156835244684385e-07
		4 0 0.91716260690485774 1 0.08279906120772719 2 3.7708704261327958e-05 3 6.2318315373420445e-07
		4 0 0.91645660720522548 1 0.083507158667903023 2 3.5629327613135575e-05 3 6.0479925845767485e-07
		4 0 0.91762928743990058 1 0.082341709754219339 2 2.8508839647928377e-05 3 4.9396623231409989e-07
		4 0 0.91839491066124013 1 0.081578097983789372 2 2.6539335024860804e-05 3 4.5201994571624328e-07
		4 0 0.91762901667436014 1 0.082338723342013406 2 3.1734887112816492e-05 3 5.2509651356897375e-07
		4 0 0.91659663821025261 1 0.083365466575989922 2 3.7270471156219481e-05 3 6.2474260143794238e-07
		4 0 0.91765803478193997 1 0.082306654929436784 2 3.4709781779070085e-05 3 6.0050684403255969e-07
		4 0 0.92042460402167492 1 0.079546263156422631 2 2.8637458855492164e-05 3 4.9536304692938535e-07
		4 0 0.92289192601327574 1 0.077081194812760698 2 2.6433204091689288e-05 3 4.4596987192275428e-07
		4 0 0.92513155053874319 1 0.074842228659820334 2 2.5784300622660191e-05 3 4.3650081372944588e-07
		4 0 0.9266202982459959 1 0.073354609934027939 2 2.4666155541230483e-05 3 4.2566443517549539e-07
		4 0 0.92659182896076731 1 0.073383632598374118 2 2.4118636789784204e-05 3 4.1980406888814494e-07
		4 0 0.92653086052966138 1 0.073444387350375451 2 2.4328464836991908e-05 3 4.236551261857454e-07
		4 0 6.6730935473160088e-07 1 4.4651725927080176e-05 2 0.06456022166937056 3 0.93539445929534759
		4 0 6.695528849433931e-07 1 4.4859632507195896e-05 2 0.06446926556263062 3 0.9354852052519772
		4 0 6.6713695610108687e-07 1 4.4869975472818115e-05 2 0.064634394744214813 3 0.93532006814335633
		4 0 6.6445004914877246e-07 1 4.4826749029878264e-05 2 0.064947505822679316 3 0.9350070029782418
		4 0 6.6915397150670695e-07 1 4.5507234033900207e-05 2 0.065783962623179829 3 0.93416986098881494
		4 0 6.7801217888938802e-07 1 4.6885499806293611e-05 2 0.06643139237347126 3 0.93352104411454373
		4 0 6.8441397446691022e-07 1 4.7562420720542392e-05 2 0.065453963310228444 3 0.93449778985507648
		4 0 7.1591329568387434e-07 1 4.9114682053358668e-05 2 0.06409904272493698 3 0.93585112667971415
		4 0 7.9430448425744902e-07 1 5.5304154105804179e-05 2 0.064640808493510102 3 0.93530309304789994
		4 0 8.2490295576632676e-07 1 5.9372864121314156e-05 2 0.065639847231733175 3 0.9342999550011899
		4 0 7.544121130035058e-07 1 5.3975446424312404e-05 2 0.065078203332140455 3 0.9348670668093223
		4 0 6.9027173800029726e-07 1 4.7290876787329592e-05 2 0.064231915478032364 3 0.93572010337344214
		4 0 7.1333465048182149e-07 1 4.8107755706863012e-05 2 0.064771317790321359 3 0.93517986111932128
		4 0 7.9754858584660154e-07 1 5.5300056739993721e-05 2 0.065948395506999907 3 0.93399550688767408
		4 0 8.23991208434925e-07 1 5.8720622007738698e-05 2 0.065419761975960861 3 0.93452069341082289
		4 0 7.5185315003204648e-07 1 5.3088844040182904e-05 2 0.063801752449583221 3 0.93614440685322653
		4 0 6.9016424499154362e-07 1 4.763809494464372e-05 2 0.064042987978829236 3 0.935908683761981
		4 0 6.7807264534703935e-07 1 4.6835210590328333e-05 2 0.065617831951271299 3 0.93433465476549304
		4 0 6.7294587734177401e-07 1 4.6234984379707662e-05 2 0.066029558975524996 3 0.93392353309421805
		4 0 6.6658931226229993e-07 1 4.4997724459236277e-05 2 0.06522823291602757 3 0.93472610277020096;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 2.2204460492503131e-16 -2.2204460492503131e-16 -1 0 1 4.9303806576313238e-32 2.2204460492503131e-16 0
		 -4.9303806576313238e-32 -1 2.2204460492503131e-16 0 1.3909783971289685e-23 0.0040059540613220923 -6.2644097909904321e-08 1;
	setAttr ".pm[1]" -type "matrix" 0.0076429833212620264 -1.6738240684013972e-16 -0.99997079197642114 0 0.99997079197642114 -2.2225512049863072e-16 0.0076429833212620264 0
		 -2.2352792980958262e-16 -1 1.6567882575181795e-16 0 -4.3876179261730162 0.0040059540613230681 -0.033535532780540743 1;
	setAttr ".pm[2]" -type "matrix" -0.007999744012285169 -5.2587291277565539e-17 -0.99996800153591814 0 0.99996800153591814 -2.1371983598297112e-14 -0.007999744012285169 0
		 -2.1370879042779066e-14 -1 2.2355600638614857e-16 0 -9.3839617927803936 0.0040059540615226272 0.11326459288560889 1;
	setAttr ".pm[3]" -type "matrix" 0.0018109818334531153 8.3225339449610143e-17 -0.99999836017105492 0 0.99999836017105492 6.4951680011126983e-15 0.0018109818334531153 0
		 6.4953080697260292e-15 -1 -7.1462571719048534e-17 0 -14.112719788535369 0.0040059540611285804 -0.02519164131456831 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999978 1.2305477817275973e-13 -1.9424764191212582e-16 0 -1.2294288850855923e-13 0.99999999999999978 -6.4951680011126833e-15 0
		 8.302428007595754e-17 6.3841458807077717e-15 1 0 -0.0090659340451771288 -18.916567721775159 -0.0040059540611282569 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 4 ".lw";
	setAttr -s 4 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 4 ".ifcl";
	setAttr -s 4 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "6BE721C0-0033-735E-6820-CD7A00002806";
	setAttr -s 6 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr -s 7 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.2644097909014818e-08
		 0 0.0040059540613220923 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -0.5 -0.49999999999999989 0.5 0.50000000000000011 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 -1.5784391612992561 -5.8415194082032931e-05 1.5631534922905368 0 4.3877460840428846
		 0 9.7790742559941105e-16 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.50190710876646838 0.50190710876646816 -0.49808558920097712 0.49808558920097717 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -1.5551539401874472 -0.00012513398898627789 1.5787951774177069 0 4.9969674756657305
		 -1.0824674490095276e-15 1.0130785099704553e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.49799604817400783 0.4941447560038531 -0.50199595217797455 0.50578746535861507 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.5806071228711127 -1.7766917607899755e-05 1.5689854311260449 0 4.7283259586973365
		 7.6414569116778353e-16 6.25888230132432e-15 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -0.5004525406653092 -0.50443277546977361 0.49954704937737038 -0.49552757242343348 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -1.5707963267948968 5.5511151231257827e-17 1.5689853439715433 0 4.8038333315463664
		 3.2265856653168612e-16 -6.9628330878757083e-14 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 -0.50090549091669567 -0.49999918008549682 0.49999918008555805 0.49909450908330427 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr -s 7 ".g[0:6]" yes yes no no no no no;
	setAttr ".bp" yes;
createNode geomBind -n "geomBind1";
	rename -uid "6BE721C0-0033-735E-6820-CD7A0000280B";
	setAttr ".mi" 4;
select -ne :time1;
	setAttr ".o" 0;
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
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "skinCluster1.og[0]" "tubeShape.i";
connectAttr "polySplitRing15.out" "tubeShapeOrig.i";
connectAttr "joint1_parentConstraint1.ctx" "joint1.tx";
connectAttr "joint1_parentConstraint1.cty" "joint1.ty";
connectAttr "joint1_parentConstraint1.ctz" "joint1.tz";
connectAttr "joint1_parentConstraint1.crx" "joint1.rx";
connectAttr "joint1_parentConstraint1.cry" "joint1.ry";
connectAttr "joint1_parentConstraint1.crz" "joint1.rz";
connectAttr "joint1.ro" "joint1_parentConstraint1.cro";
connectAttr "joint1.pim" "joint1_parentConstraint1.cpim";
connectAttr "joint1.rp" "joint1_parentConstraint1.crp";
connectAttr "joint1.rpt" "joint1_parentConstraint1.crt";
connectAttr "joint1.jo" "joint1_parentConstraint1.cjo";
connectAttr "tube_CNTRL1.t" "joint1_parentConstraint1.tg[0].tt";
connectAttr "tube_CNTRL1.rp" "joint1_parentConstraint1.tg[0].trp";
connectAttr "tube_CNTRL1.rpt" "joint1_parentConstraint1.tg[0].trt";
connectAttr "tube_CNTRL1.r" "joint1_parentConstraint1.tg[0].tr";
connectAttr "tube_CNTRL1.ro" "joint1_parentConstraint1.tg[0].tro";
connectAttr "tube_CNTRL1.s" "joint1_parentConstraint1.tg[0].ts";
connectAttr "tube_CNTRL1.pm" "joint1_parentConstraint1.tg[0].tpm";
connectAttr "joint1_parentConstraint1.w0" "joint1_parentConstraint1.tg[0].tw";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2_parentConstraint1.ctx" "joint2.tx";
connectAttr "joint2_parentConstraint1.cty" "joint2.ty";
connectAttr "joint2_parentConstraint1.ctz" "joint2.tz";
connectAttr "joint2_parentConstraint1.crx" "joint2.rx";
connectAttr "joint2_parentConstraint1.cry" "joint2.ry";
connectAttr "joint2_parentConstraint1.crz" "joint2.rz";
connectAttr "joint2.ro" "joint2_parentConstraint1.cro";
connectAttr "joint2.pim" "joint2_parentConstraint1.cpim";
connectAttr "joint2.rp" "joint2_parentConstraint1.crp";
connectAttr "joint2.rpt" "joint2_parentConstraint1.crt";
connectAttr "joint2.jo" "joint2_parentConstraint1.cjo";
connectAttr "tube_CNTRL2.t" "joint2_parentConstraint1.tg[0].tt";
connectAttr "tube_CNTRL2.rp" "joint2_parentConstraint1.tg[0].trp";
connectAttr "tube_CNTRL2.rpt" "joint2_parentConstraint1.tg[0].trt";
connectAttr "tube_CNTRL2.r" "joint2_parentConstraint1.tg[0].tr";
connectAttr "tube_CNTRL2.ro" "joint2_parentConstraint1.tg[0].tro";
connectAttr "tube_CNTRL2.s" "joint2_parentConstraint1.tg[0].ts";
connectAttr "tube_CNTRL2.pm" "joint2_parentConstraint1.tg[0].tpm";
connectAttr "joint2_parentConstraint1.w0" "joint2_parentConstraint1.tg[0].tw";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3_parentConstraint1.ctx" "joint3.tx";
connectAttr "joint3_parentConstraint1.cty" "joint3.ty";
connectAttr "joint3_parentConstraint1.ctz" "joint3.tz";
connectAttr "joint3_parentConstraint1.crx" "joint3.rx";
connectAttr "joint3_parentConstraint1.cry" "joint3.ry";
connectAttr "joint3_parentConstraint1.crz" "joint3.rz";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4_parentConstraint1.ctx" "joint4.tx";
connectAttr "joint4_parentConstraint1.cty" "joint4.ty";
connectAttr "joint4_parentConstraint1.ctz" "joint4.tz";
connectAttr "joint4_parentConstraint1.crx" "joint4.rx";
connectAttr "joint4_parentConstraint1.cry" "joint4.ry";
connectAttr "joint4_parentConstraint1.crz" "joint4.rz";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint4.ro" "joint4_parentConstraint1.cro";
connectAttr "joint4.pim" "joint4_parentConstraint1.cpim";
connectAttr "joint4.rp" "joint4_parentConstraint1.crp";
connectAttr "joint4.rpt" "joint4_parentConstraint1.crt";
connectAttr "joint4.jo" "joint4_parentConstraint1.cjo";
connectAttr "tube_CNTRL4.t" "joint4_parentConstraint1.tg[0].tt";
connectAttr "tube_CNTRL4.rp" "joint4_parentConstraint1.tg[0].trp";
connectAttr "tube_CNTRL4.rpt" "joint4_parentConstraint1.tg[0].trt";
connectAttr "tube_CNTRL4.r" "joint4_parentConstraint1.tg[0].tr";
connectAttr "tube_CNTRL4.ro" "joint4_parentConstraint1.tg[0].tro";
connectAttr "tube_CNTRL4.s" "joint4_parentConstraint1.tg[0].ts";
connectAttr "tube_CNTRL4.pm" "joint4_parentConstraint1.tg[0].tpm";
connectAttr "joint4_parentConstraint1.w0" "joint4_parentConstraint1.tg[0].tw";
connectAttr "joint3.ro" "joint3_parentConstraint1.cro";
connectAttr "joint3.pim" "joint3_parentConstraint1.cpim";
connectAttr "joint3.rp" "joint3_parentConstraint1.crp";
connectAttr "joint3.rpt" "joint3_parentConstraint1.crt";
connectAttr "joint3.jo" "joint3_parentConstraint1.cjo";
connectAttr "tube_CNTRL3.t" "joint3_parentConstraint1.tg[0].tt";
connectAttr "tube_CNTRL3.rp" "joint3_parentConstraint1.tg[0].trp";
connectAttr "tube_CNTRL3.rpt" "joint3_parentConstraint1.tg[0].trt";
connectAttr "tube_CNTRL3.r" "joint3_parentConstraint1.tg[0].tr";
connectAttr "tube_CNTRL3.ro" "joint3_parentConstraint1.tg[0].tro";
connectAttr "tube_CNTRL3.s" "joint3_parentConstraint1.tg[0].ts";
connectAttr "tube_CNTRL3.pm" "joint3_parentConstraint1.tg[0].tpm";
connectAttr "joint3_parentConstraint1.w0" "joint3_parentConstraint1.tg[0].tw";
connectAttr "makeNurbCircle1.oc" "tube_CNTRLShape1.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCylinder1.out" "transformGeometry1.ig";
connectAttr "transformGeometry1.og" "transformGeometry2.ig";
connectAttr "transformGeometry2.og" "polySplitRing1.ip";
connectAttr "tubeShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "tubeShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "tubeShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "tubeShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "tubeShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "tubeShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "tubeShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "tubeShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "tubeShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "tubeShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "tubeShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "tubeShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "tubeShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "tubeShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "tubeShape.wm" "polySplitRing15.mp";
connectAttr "tubeShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "tubeShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "Tube_rig.msg" "bindPose1.m[0]";
connectAttr "Tube_JNT_GRP.msg" "bindPose1.m[1]";
connectAttr "joint1.msg" "bindPose1.m[2]";
connectAttr "joint2.msg" "bindPose1.m[3]";
connectAttr "joint3.msg" "bindPose1.m[4]";
connectAttr "joint4.msg" "bindPose1.m[5]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "joint1.bps" "bindPose1.wm[2]";
connectAttr "joint2.bps" "bindPose1.wm[3]";
connectAttr "joint3.bps" "bindPose1.wm[4]";
connectAttr "joint4.bps" "bindPose1.wm[5]";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "tubeShape.iog" ":initialShadingGroup.dsm" -na;
// End of Test_Rig.ma
