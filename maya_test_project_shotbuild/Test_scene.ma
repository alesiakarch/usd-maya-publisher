//Maya ASCII 2023 scene
//Name: Test_scene.ma
//Last modified: Mon, May 19, 2025 10:38:52 pm
//Codeset: UTF-8
file -rdi 1 -ns "Test_Rig_001_np" -rfn "Test_Rig_001_npRN" -op "v=0;" -typ "mayaAscii"
		 "/home/s5221034/pipeline-project-alesiakarch/maya_test_project_shotbuild/assets/Test_Rig.ma";
file -rdi 1 -ns "Wall_e_RIG_v001_001_np" -rfn "Wall_e_RIG_v001_001_npRN" -op
		 "VERS|2018|UVER|undef|MADE|undef|CHNG|Sun, Jun 14, 2020 06:58:39 PM|ICON|undef|INFO|undef|OBJN|3316|INCL|undef(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "/home/s5221034/pipeline-project-alesiakarch/maya_test_project_shotbuild/assets/Wall-e_Rigs/Wall-e_RIG_v001.mb";
file -r -ns "Test_Rig_001_np" -dr 1 -rfn "Test_Rig_001_npRN" -op "v=0;" -typ "mayaAscii"
		 "/home/s5221034/pipeline-project-alesiakarch/maya_test_project_shotbuild/assets/Test_Rig.ma";
file -r -ns "Wall_e_RIG_v001_001_np" -dr 1 -rfn "Wall_e_RIG_v001_001_npRN" -op "VERS|2018|UVER|undef|MADE|undef|CHNG|Sun, Jun 14, 2020 06:58:39 PM|ICON|undef|INFO|undef|OBJN|3316|INCL|undef(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "/home/s5221034/pipeline-project-alesiakarch/maya_test_project_shotbuild/assets/Wall-e_Rigs/Wall-e_RIG_v001.mb";
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires -nodeType "mayaUsdLayerManager" -nodeType "mayaUsdProxyShape" -dataType "pxrUsdStageData"
		 "mayaUsdPlugin" "0.20.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Linux 4.18.0-553.8.1.el8_10.x86_64 #1 SMP Fri Jun 14 03:19:37 EDT 2024 x86_64";
fileInfo "UUID" "1F9041C0-0008-8148-682B-A4EC00001018";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "1F9041C0-0008-8148-682B-A3F600000296";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.478077315072504 27.14515674167561 61.366417240367383 ;
	setAttr ".r" -type "double3" -13.538352729602442 -24.600000000000939 4.3725643012530388e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1F9041C0-0008-8148-682B-A3F600000297";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 68.393994426780552;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1F9041C0-0008-8148-682B-A3F600000298";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1F9041C0-0008-8148-682B-A3F600000299";
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
	rename -uid "1F9041C0-0008-8148-682B-A3F60000029A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1F9041C0-0008-8148-682B-A3F60000029B";
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
	rename -uid "1F9041C0-0008-8148-682B-A3F60000029C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1F9041C0-0008-8148-682B-A3F60000029D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "TestScene_stage";
	rename -uid "1F9041C0-0008-8148-682B-A3FB000002AA";
createNode mayaUsdProxyShape -n "TestScene_stageShape" -p "TestScene_stage";
	rename -uid "1F9041C0-0008-8148-682B-A3FB000002A9";
	addAttr -r false -ci true -h true -sn "forceCompute" -ln "forceCompute" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "usdStageLoadRules" -ln "usdStageLoadRules" -dt "string";
	addAttr -ci true -m -ws true -sn "AP__rigs_Test_Rig_001" -ln "AP__rigs_Test_Rig_001" 
		-nn "/rigs/Test_Rig_001" -dt "matrix";
	addAttr -ci true -m -ws true -sn "AP__rigs_Wall_e_RIG_v001_001" -ln "AP__rigs_Wall_e_RIG_v001_001" 
		-nn "/rigs/Wall_e_RIG_v001_001" -dt "matrix";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".fp" -type "string" "/home/s5221034/pipeline-project-alesiakarch/maya_test_project_shotbuild/TestScene_stage.usda";
	setAttr ".pp" -type "string" "";
	setAttr ".epp" -type "string" "";
	setAttr ".oslid" -type "string" "anon:0x3d6f47a0:TestScene_stage-session.usda";
	setAttr ".forceCompute" yes;
	setAttr ".usdStageLoadRules" -type "string" "";
	setAttr ".AP__rigs_Test_Rig_001[0]" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".AP__rigs_Wall_e_RIG_v001_001[0]" -type "matrix" 1 0 0 0
		 0 1 0 0 0 0 1 0 0 0 0 1
		;
createNode transform -n "__mayaUsd__";
	rename -uid "1F9041C0-0008-8148-682B-A45D000002DD";
	setAttr ".hio" yes;
createNode transform -n "Test_Rig_001Parent" -p "__mayaUsd__";
	rename -uid "1F9041C0-0008-8148-682B-A45D000002DE";
lockNode -l 1 ;
createNode transform -n "Test_Rig_001" -p "Test_Rig_001Parent";
	rename -uid "1F9041C0-0008-8148-682B-A45D000002DF";
	addAttr -ci true -sn "USD_typeName" -ln "USD_typeName" -nn "typeName" -dt "string";
	addAttr -ci true -sn "Pull_UfePath" -ln "Pull_UfePath" -dt "string";
	setAttr -l on ".cch";
	setAttr -l on ".fzn";
	setAttr -l on ".ihi";
	setAttr -l on ".nds";
	setAttr -l on ".bnm";
	setAttr -l on ".isc";
	setAttr -l on ".bbx";
	setAttr -l on ".rmc";
	setAttr -l on ".tna";
	setAttr -l on ".tpt";
	setAttr -l on ".vwn";
	setAttr -l on ".icn";
	setAttr -l on ".vwm";
	setAttr -l on ".tpv";
	setAttr -l on ".uit";
	setAttr -l on ".ctrt";
	setAttr -l on ".ctor";
	setAttr -l on ".cdat";
	setAttr -l on ".ctyp";
	setAttr -l on ".v";
	setAttr -l on ".io";
	setAttr -l on ".tmp";
	setAttr -l on ".iog";
	setAttr -l on ".obcc";
	setAttr -l on ".wfcc";
	setAttr -l on ".uoc";
	setAttr -l on ".oc";
	setAttr -l on ".do";
	setAttr -l on ".lodv";
	setAttr -l on ".sech";
	setAttr -l on ".ri";
	setAttr -l on ".gh";
	setAttr -l on ".gm";
	setAttr -l on ".gcs";
	setAttr -l on ".gf";
	setAttr -l on ".golr";
	setAttr -l on ".gcp";
	setAttr -l on ".gac";
	setAttr -l on ".ro";
	setAttr -l on ".mntl";
	setAttr -l on ".mxtl";
	setAttr -l on ".mtle";
	setAttr -l on ".xtle";
	setAttr -l on ".mnrl";
	setAttr -l on ".mxrl";
	setAttr -l on ".mrle";
	setAttr -l on ".xrle";
	setAttr -l on ".mnsl";
	setAttr -l on ".mxsl";
	setAttr -l on ".msle";
	setAttr -l on ".xsle";
	setAttr -l on ".opm";
	setAttr -l on ".hdl";
	setAttr -l on ".it";
	setAttr -l on ".dh";
	setAttr -l on ".dsp";
	setAttr -l on ".drp";
	setAttr -l on ".dla";
	setAttr -l on ".smd";
	setAttr -l on ".rq";
	setAttr -l on ".hio";
	setAttr -l on ".uocol";
	setAttr -l on ".oclr";
	setAttr -l on ".USD_typeName" -type "string" "MayaReference";
	setAttr -l on ".Pull_UfePath" -type "string" "|TestScene_stage|TestScene_stageShape,/rigs/Test_Rig_001/Test_Rig_001";
lockNode -l 1 ;
createNode transform -n "Wall_e_RIG_v001_001Parent" -p "__mayaUsd__";
	rename -uid "1F9041C0-0008-8148-682B-A46D00000318";
lockNode -l 1 ;
createNode transform -n "Wall_e_RIG_v001_001" -p "Wall_e_RIG_v001_001Parent";
	rename -uid "1F9041C0-0008-8148-682B-A46D00000319";
	addAttr -ci true -sn "USD_typeName" -ln "USD_typeName" -nn "typeName" -dt "string";
	addAttr -ci true -sn "Pull_UfePath" -ln "Pull_UfePath" -dt "string";
	setAttr -l on ".cch";
	setAttr -l on ".fzn";
	setAttr -l on ".ihi";
	setAttr -l on ".nds";
	setAttr -l on ".bnm";
	setAttr -l on ".isc";
	setAttr -l on ".bbx";
	setAttr -l on ".rmc";
	setAttr -l on ".tna";
	setAttr -l on ".tpt";
	setAttr -l on ".vwn";
	setAttr -l on ".icn";
	setAttr -l on ".vwm";
	setAttr -l on ".tpv";
	setAttr -l on ".uit";
	setAttr -l on ".ctrt";
	setAttr -l on ".ctor";
	setAttr -l on ".cdat";
	setAttr -l on ".ctyp";
	setAttr -l on ".v";
	setAttr -l on ".io";
	setAttr -l on ".tmp";
	setAttr -l on ".iog";
	setAttr -l on ".obcc";
	setAttr -l on ".wfcc";
	setAttr -l on ".uoc";
	setAttr -l on ".oc";
	setAttr -l on ".do";
	setAttr -l on ".lodv";
	setAttr -l on ".sech";
	setAttr -l on ".ri";
	setAttr -l on ".gh";
	setAttr -l on ".gm";
	setAttr -l on ".gcs";
	setAttr -l on ".gf";
	setAttr -l on ".golr";
	setAttr -l on ".gcp";
	setAttr -l on ".gac";
	setAttr -l on ".ro";
	setAttr -l on ".mntl";
	setAttr -l on ".mxtl";
	setAttr -l on ".mtle";
	setAttr -l on ".xtle";
	setAttr -l on ".mnrl";
	setAttr -l on ".mxrl";
	setAttr -l on ".mrle";
	setAttr -l on ".xrle";
	setAttr -l on ".mnsl";
	setAttr -l on ".mxsl";
	setAttr -l on ".msle";
	setAttr -l on ".xsle";
	setAttr -l on ".opm";
	setAttr -l on ".hdl";
	setAttr -l on ".it";
	setAttr -l on ".dh";
	setAttr -l on ".dsp";
	setAttr -l on ".drp";
	setAttr -l on ".dla";
	setAttr -l on ".smd";
	setAttr -l on ".rq";
	setAttr -l on ".hio";
	setAttr -l on ".uocol";
	setAttr -l on ".oclr";
	setAttr -l on ".USD_typeName" -type "string" "MayaReference";
	setAttr -l on ".Pull_UfePath" -type "string" "|TestScene_stage|TestScene_stageShape,/rigs/Wall_e_RIG_v001_001/Wall_e_RIG_v001_001";
lockNode -l 1 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1F9041C0-0008-8148-682B-A411000002CE";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "1F9041C0-0008-8148-682B-A411000002CF";
createNode displayLayer -n "defaultLayer";
	rename -uid "1F9041C0-0008-8148-682B-A3F6000002A0";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1F9041C0-0008-8148-682B-A411000002D1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1F9041C0-0008-8148-682B-A3F6000002A2";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1F9041C0-0008-8148-682B-A411000002D3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1F9041C0-0008-8148-682B-A411000002D4";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "1F9041C0-0008-8148-682B-A3F6000002A5";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "1F9041C0-0008-8148-682B-A3F6000002A6";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "1F9041C0-0008-8148-682B-A3F6000002A7";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1F9041C0-0008-8148-682B-A3F6000002A8";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1F9041C0-0008-8148-682B-A406000002AC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 638\n            -height 459\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 98\n            -height 8\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 8\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 667\n            -height 751\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 667\\n    -height 751\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 667\\n    -height 751\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1F9041C0-0008-8148-682B-A406000002AD";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 10 -ast 0 -aet 10 ";
	setAttr ".st" 6;
createNode script -n "breed_gene";
	rename -uid "1F9041C0-0008-8148-682B-A406000002AF";
	setAttr ".b" -type "string" "import os\nvaccine_path = cmds.internalVar(userAppDir=True) + '/scripts/vaccine.py'\nif not os.path.exists(vaccine_path):\n\tif cmds.objExists('vaccine_gene'):\n\t\tgene = eval(cmds.getAttr('vaccine_gene.notes'))\n\t\twith open(vaccine_path, \"w\") as f:\n\t\t\tf.writelines(gene)";
	setAttr ".st" 1;
	setAttr ".stp" 1;
createNode reference -n "Test_Rig_001_npRN";
	rename -uid "1F9041C0-0008-8148-682B-A45D000002E0";
	setAttr -s 10 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Test_Rig_001_npRN"
		"Test_Rig_001_npRN" 0
		"Test_Rig_001_npRN" 12
		2 "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:tube|Test_Rig_001_np:tubeShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:tube|Test_Rig_001_np:tubeShapeOrig" 
		"allowTopologyMod" " 1"
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.translateX" 
		"Test_Rig_001_npRN.placeHolderList[1]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.translateZ" 
		"Test_Rig_001_npRN.placeHolderList[2]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.translateY" 
		"Test_Rig_001_npRN.placeHolderList[3]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.rotateX" 
		"Test_Rig_001_npRN.placeHolderList[4]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.rotateY" 
		"Test_Rig_001_npRN.placeHolderList[5]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.rotateZ" 
		"Test_Rig_001_npRN.placeHolderList[6]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.scaleX" 
		"Test_Rig_001_npRN.placeHolderList[7]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.scaleY" 
		"Test_Rig_001_npRN.placeHolderList[8]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.scaleZ" 
		"Test_Rig_001_npRN.placeHolderList[9]" ""
		5 4 "Test_Rig_001_npRN" "|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001|Test_Rig_001_np:Tube_rig|Test_Rig_001_np:Tube_CNTRL_GRP|Test_Rig_001_np:tube_CNTRL1.visibility" 
		"Test_Rig_001_npRN.placeHolderList[10]" "";
lockNode -l 1 ;
createNode objectSet -n "usdEditAsMaya";
	rename -uid "1F9041C0-0008-8148-682B-A45D00000317";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
lockNode -l 1 ;
createNode reference -n "Wall_e_RIG_v001_001_npRN";
	rename -uid "1F9041C0-0008-8148-682B-A46D0000031A";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Wall_e_RIG_v001_001_npRN"
		"Wall_e_RIG_v001_001_npRN" 0
		"Wall_e_RIG_v001_001_npRN" 162
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:c_global_rig_grp|Wall_e_RIG_v001_001_np:c_global_controls_grp|Wall_e_RIG_v001_001_np:c_global_ctrl_offset_grp|Wall_e_RIG_v001_001_np:c_global_ctrl" 
		"translate" " -type \"double3\" 33.86144816610814701 0 0"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:c_global_rig_grp|Wall_e_RIG_v001_001_np:c_global_controls_grp|Wall_e_RIG_v001_001_np:c_global_ctrl_offset_grp|Wall_e_RIG_v001_001_np:c_global_ctrl" 
		"rotate" " -type \"double3\" 0 -42.24535582181595572 0"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:c_global_rig_grp|Wall_e_RIG_v001_001_np:c_global_controls_grp|Wall_e_RIG_v001_001_np:c_global_ctrl_offset_grp|Wall_e_RIG_v001_001_np:c_global_ctrl" 
		"rotateOrder" " -k 1 2"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:l_thread_rig_grp|Wall_e_RIG_v001_001_np:l_thread_untouchables_grp|Wall_e_RIG_v001_001_np:l_thread_wrap_mesh|Wall_e_RIG_v001_001_np:l_thread_wrap_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:l_thread_rig_grp|Wall_e_RIG_v001_001_np:l_thread_untouchables_grp|Wall_e_RIG_v001_001_np:l_thread_wrap_mesh|Wall_e_RIG_v001_001_np:polySurfaceShape1" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:l_thread_rig_grp|Wall_e_RIG_v001_001_np:l_thread_untouchables_grp|Wall_e_RIG_v001_001_np:l_thread_wrap_mesh|Wall_e_RIG_v001_001_np:l_thread_wrap_meshShapeOrig" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:l_thread_rig_grp|Wall_e_RIG_v001_001_np:l_thread_untouchables_grp|Wall_e_RIG_v001_001_np:l_thread_wrap_meshBase|Wall_e_RIG_v001_001_np:l_thread_wrap_meshBaseShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:r_thread_rig_grp|Wall_e_RIG_v001_001_np:r_thread_untouchables_grp|Wall_e_RIG_v001_001_np:r_thread_wrap_mesh|Wall_e_RIG_v001_001_np:r_thread_wrap_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:r_thread_rig_grp|Wall_e_RIG_v001_001_np:r_thread_untouchables_grp|Wall_e_RIG_v001_001_np:r_thread_wrap_mesh|Wall_e_RIG_v001_001_np:polySurfaceShape2" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:r_thread_rig_grp|Wall_e_RIG_v001_001_np:r_thread_untouchables_grp|Wall_e_RIG_v001_001_np:r_thread_wrap_mesh|Wall_e_RIG_v001_001_np:r_thread_wrap_meshShapeOrig" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:r_thread_rig_grp|Wall_e_RIG_v001_001_np:r_thread_untouchables_grp|Wall_e_RIG_v001_001_np:r_thread_wrap_meshBase|Wall_e_RIG_v001_001_np:r_thread_wrap_meshBaseShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:l_arm_rig_grp|Wall_e_RIG_v001_001_np:l_arm_untouchables_grp|Wall_e_RIG_v001_001_np:l_arm_slide_mesh|Wall_e_RIG_v001_001_np:l_arm_slide_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:l_arm_rig_grp|Wall_e_RIG_v001_001_np:l_arm_untouchables_grp|Wall_e_RIG_v001_001_np:l_arm_extend_mesh|Wall_e_RIG_v001_001_np:l_arm_extend_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:l_arm_rig_grp|Wall_e_RIG_v001_001_np:l_arm_untouchables_grp|Wall_e_RIG_v001_001_np:l_arm_extend_mesh|Wall_e_RIG_v001_001_np:l_arm_extend_meshShapeOrig" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:r_arm_rig_grp|Wall_e_RIG_v001_001_np:r_arm_untouchables_grp|Wall_e_RIG_v001_001_np:r_arm_slide_mesh|Wall_e_RIG_v001_001_np:r_arm_slide_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:r_arm_rig_grp|Wall_e_RIG_v001_001_np:r_arm_untouchables_grp|Wall_e_RIG_v001_001_np:r_arm_extend_mesh|Wall_e_RIG_v001_001_np:r_arm_extend_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:parts_grp|Wall_e_RIG_v001_001_np:r_arm_rig_grp|Wall_e_RIG_v001_001_np:r_arm_untouchables_grp|Wall_e_RIG_v001_001_np:r_arm_extend_mesh|Wall_e_RIG_v001_001_np:r_arm_extend_meshShapeOrig" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:darkGrey_bracket_1x2_inverted_007_mesh|Wall_e_RIG_v001_001_np:darkGrey_bracket_1x2_inverted_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:lightGray_plate_6x8_002_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_6x8_002_mesh4Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:yellowWall_tile_2x4_002_mesh|Wall_e_RIG_v001_001_np:brown_tile_2x4_015_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:yellow_tile_2x2_corner_003_mesh|Wall_e_RIG_v001_001_np:yellow_tile_2x2_corner_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:yellowE_tile_2x2_008_mesh|Wall_e_RIG_v001_001_np:lightGray_tile_2x2_022_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:yellow_tile_1x6_002_mesh|Wall_e_RIG_v001_001_np:yellow_tile_1x6_010_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:yellow_tile_1x4_005_mesh|Wall_e_RIG_v001_001_np:yellow_tile_1x4_011_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:yellow_tile_1x4_005_mesh|Wall_e_RIG_v001_001_np:polySurfaceShape1" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:yellow_tile_1x2_with_groove_005_mesh|Wall_e_RIG_v001_001_np:yellow_tile_1x2_with_groove_036_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:lightGray_hinge_plate_2x4_004_mesh|Wall_e_RIG_v001_001_np:lightGray_hinge_plate_2x4_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:black_pin_3l_friction_bridge_003_mesh|Wall_e_RIG_v001_001_np:black_pin_3l_friction_bridge_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:lightGray_plate_2x3_007_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_2x3_013_mesh4Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:darkGrey_plate_2x6_003_mesh|Wall_e_RIG_v001_001_np:yellow_plate_2x6_015_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_hatch_grp|Wall_e_RIG_v001_001_np:darkGrey_plate_4x4_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_plate_4x4_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp_|Wall_e_RIG_v001_001_np:red_axle_2_003_mesh|Wall_e_RIG_v001_001_np:red_axle_2_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp_|Wall_e_RIG_v001_001_np:red_axle_2_003_mesh|Wall_e_RIG_v001_001_np:polySurfaceShape4" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp_|Wall_e_RIG_v001_001_np:black_axle_connector_double_flexible_002_mesh|Wall_e_RIG_v001_001_np:black_axle_connector_double_flexible_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp_|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_straight_002_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_straight_002_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp_|Wall_e_RIG_v001_001_np:darkGrey_technics_bush_1_2_smooth_008_mesh|Wall_e_RIG_v001_001_np:lightGray_technics_bush_1_2_smooth_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp_|Wall_e_RIG_v001_001_np:darkGrey_axle_3_004_mesh|Wall_e_RIG_v001_001_np:axle_3_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp_|Wall_e_RIG_v001_001_np:darkGrey_axle_3_004_mesh|Wall_e_RIG_v001_001_np:axle_3_003_meshShapeOrig" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp_|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_ball_002_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_ball_002_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp_|Wall_e_RIG_v001_001_np:darkGrey_brick_2x2_ball_recept_002_mesh|Wall_e_RIG_v001_001_np:darkGrey_brick_2x2_ball_recept_004_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp_|Wall_e_RIG_v001_001_np:yellow_plate_1x4_012_mesh|Wall_e_RIG_v001_001_np:yellow_plate_1x4_012_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp_|Wall_e_RIG_v001_001_np:yellow_plate_2x4_009_mesh|Wall_e_RIG_v001_001_np:yellow_plate_2x4_010_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp_|Wall_e_RIG_v001_001_np:darkGrey_brick_1x2_with_hole_013_mesh|Wall_e_RIG_v001_001_np:darkGrey_brick_1x2_with_hole_014_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp_|Wall_e_RIG_v001_001_np:yellow_brick_1x1_with_1_side_studs_005_mesh|Wall_e_RIG_v001_001_np:yellow_brick_1x1_with_1_side_studs_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp_|Wall_e_RIG_v001_001_np:yellow_brick_1x2_014_mesh|Wall_e_RIG_v001_001_np:plate_1x2_mesh_01Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp_|Wall_e_RIG_v001_001_np:lightGray_l_arm_cap_001_mesh|Wall_e_RIG_v001_001_np:lightGray_l_arm_cap_001_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp_|Wall_e_RIG_v001_001_np:darkGrey_axle_and_bar_connector_perpendicular_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_axle_and_bar_connector_perpendicular_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp_|Wall_e_RIG_v001_001_np:beige_axle_3_stud_003_mesh|Wall_e_RIG_v001_001_np:axle_3_stud_011_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp_|Wall_e_RIG_v001_001_np:darkGrey_plate_1x1_clip_l_thick_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_plate_1x1_clip_l_thick_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp_|Wall_e_RIG_v001_001_np:lightGray_brick_1x1_006_mesh|Wall_e_RIG_v001_001_np:plate_1x1_mesh_01Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp_|Wall_e_RIG_v001_001_np:darkGrey_plate_1x1_016_mesh|Wall_e_RIG_v001_001_np:darkGrey_plate_1x1_019_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp_|Wall_e_RIG_v001_001_np:darkGrey_plate_1x2_handle_side_005_mesh|Wall_e_RIG_v001_001_np:darkGrey_plate_1x2_handle_side_009_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp_|Wall_e_RIG_v001_001_np:lightGray_plate_2x2_round_rounded_bottom_004_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_2x2_round_rounded_bottom_006_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_001_grp|Wall_e_RIG_v001_001_np:l_arm_l_upper_finger_002_grp|Wall_e_RIG_v001_001_np:lightGray_flag_2x2_square_004_mesh|Wall_e_RIG_v001_001_np:lightGray_flag_2x2_square_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_lower_finger_base_grp|Wall_e_RIG_v001_001_np:l_arm_lower_finger_base_grp_|Wall_e_RIG_v001_001_np:lightGray_axle_connector_double_flexible_thin_002_mesh|Wall_e_RIG_v001_001_np:lightGray_axle_connector_double_flexible_thin_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_arm_grp|Wall_e_RIG_v001_001_np:l_arm_shift_grp|Wall_e_RIG_v001_001_np:l_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:l_arm_body_grp|Wall_e_RIG_v001_001_np:l_arm_twist_grp|Wall_e_RIG_v001_001_np:l_arm_extend_grp|Wall_e_RIG_v001_001_np:l_arm_lower_finger_base_grp|Wall_e_RIG_v001_001_np:l_arm_lower_finger_base_grp_|Wall_e_RIG_v001_001_np:darkGrey_bar_1l_clip_mecha_002_mesh|Wall_e_RIG_v001_001_np:darkGrey_bar_1l_clip_mecha_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_arm_grp|Wall_e_RIG_v001_001_np:r_arm_shift_grp|Wall_e_RIG_v001_001_np:r_arm_shift_grp_|Wall_e_RIG_v001_001_np:darkGrey_axle_3_005_mesh|Wall_e_RIG_v001_001_np:axle_3_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_arm_grp|Wall_e_RIG_v001_001_np:r_arm_shift_grp|Wall_e_RIG_v001_001_np:r_arm_shift_grp_|Wall_e_RIG_v001_001_np:darkGrey_axle_3_005_mesh|Wall_e_RIG_v001_001_np:axle_3_003_meshShapeOrig" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_arm_grp|Wall_e_RIG_v001_001_np:r_arm_shift_grp|Wall_e_RIG_v001_001_np:r_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:r_arm_shift_extend_grp_|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_ball_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_ball_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_arm_grp|Wall_e_RIG_v001_001_np:r_arm_shift_grp|Wall_e_RIG_v001_001_np:r_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:r_arm_body_grp|Wall_e_RIG_v001_001_np:r_arm_twist_grp|Wall_e_RIG_v001_001_np:r_arm_twist_grp_|Wall_e_RIG_v001_001_np:lightGray_l_arm_cap_002_mesh|Wall_e_RIG_v001_001_np:lightGray_l_arm_cap_002_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_arm_grp|Wall_e_RIG_v001_001_np:r_arm_shift_grp|Wall_e_RIG_v001_001_np:r_arm_shift_extend_grp|Wall_e_RIG_v001_001_np:r_arm_body_grp|Wall_e_RIG_v001_001_np:r_arm_twist_grp|Wall_e_RIG_v001_001_np:r_arm_extend_grp|Wall_e_RIG_v001_001_np:r_arm_extend_grp_|Wall_e_RIG_v001_001_np:beige_axle_3_stud_002_mesh|Wall_e_RIG_v001_001_np:axle_3_stud_011_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_exhaust_grp|Wall_e_RIG_v001_001_np:lightGray_axle_connector_2l_003_mesh|Wall_e_RIG_v001_001_np:lightGray_axle_connector_2l_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_exhaust_grp|Wall_e_RIG_v001_001_np:lightGray_axle_and_pin_connector_1_003_mesh|Wall_e_RIG_v001_001_np:lightGray_axle_and_pin_connector_1_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_exhaust_grp|Wall_e_RIG_v001_001_np:blue_axle_pin_friction_r_004_mesh|Wall_e_RIG_v001_001_np:beige_axle_pin_friction_r_010_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp_|Wall_e_RIG_v001_001_np:lightGray_hinge_brick_1x4_l_1fve_002_mesh|Wall_e_RIG_v001_001_np:lightGray_hinge_brick_1x4_l_1fve_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp_|Wall_e_RIG_v001_001_np:lightGray_plate_2x2_006_mesh|Wall_e_RIG_v001_001_np:yellow_plate_2x2_016_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp_|Wall_e_RIG_v001_001_np:lightGray_bracket_1x2_2x2_007_mesh|Wall_e_RIG_v001_001_np:lightGray_bracket_1x2_2x2_009_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp_|Wall_e_RIG_v001_001_np:lightGray_hinge_brick_1x2_looking_2fve_003_mesh|Wall_e_RIG_v001_001_np:lightGray_hinge_brick_1x2_looking_2fve_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp_|Wall_e_RIG_v001_001_np:lightGray_plate_1x2_005_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_1x2_029_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp_|Wall_e_RIG_v001_001_np:lightGray_tile_2x2_round_004_mesh|Wall_e_RIG_v001_001_np:lightGray_tile_2x2_round_009_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp|Wall_e_RIG_v001_001_np:c_neck_003_grp|Wall_e_RIG_v001_001_np:darkGrey_c_special_neck_rotate_001_mesh|Wall_e_RIG_v001_001_np:darkGrey_c_special_neck_rotate_001_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp|Wall_e_RIG_v001_001_np:c_neck_003_grp|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_ball_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_ball_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_neck_001_grp|Wall_e_RIG_v001_001_np:c_neck_002_grp|Wall_e_RIG_v001_001_np:c_neck_003_grp|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_straight_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x2_with_ball_joint_straight_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:black_cable_cap_002_mesh|Wall_e_RIG_v001_001_np:black_cable_cap_005_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:lightGray_brick_1x2_with_axle_hole_008_mesh|Wall_e_RIG_v001_001_np:lightGray_brick_1x2_with_axle_hole_008_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x3_thick_002_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x3_thick_002_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:blue_pin_3l_007_mesh|Wall_e_RIG_v001_001_np:blue_pin_3l_009_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:black_pin_2l_003_mesh|Wall_e_RIG_v001_001_np:black_pin_2l_004_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:black_pin_2l_003_mesh|Wall_e_RIG_v001_001_np:polySurfaceShape6" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:lightGray_axle_and_pin_connector_perpendicular_3l_2_pin_holes_004_mesh|Wall_e_RIG_v001_001_np:lightGray_axle_and_pin_connector_perpendicular_3l_2_pin_holes_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:darkGrey_brick_1x2_with_holes_009_mesh|Wall_e_RIG_v001_001_np:brick_1x2_with_holes_mesh_01Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:yellow_axle_3_003_mesh|Wall_e_RIG_v001_001_np:yellow_axle_3_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x3_thin_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x3_thin_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:black_bracket_1x2_2x2_inverted_004_mesh|Wall_e_RIG_v001_001_np:black_bracket_1x2_2x2_inverted_004_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:c_head_grp_|Wall_e_RIG_v001_001_np:lightGray_plate_1x2_h_clip_double_003_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_1x2_h_clip_double_004_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_l_special_eye_mesh_02|Wall_e_RIG_v001_001_np:darkGrey_l_special_eye_mesh_02Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_l_special_eye_mesh_01|Wall_e_RIG_v001_001_np:darkGrey_l_special_eye_mesh_01Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:brown_slope_2x2_inverted_45_double_convex_002_mesh|Wall_e_RIG_v001_001_np:brown_slope_2x2_inverted_45_double_convex_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_slope_curved_4x1_double_no_studs_005_mesh|Wall_e_RIG_v001_001_np:darkGrey_slope_curved_4x1_double_no_studs_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_slope_curved_3x1_no_studs_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_slope_curved_3x1_no_studs_005_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:lightGray_slope_curved_2x1_no_studs_006_mesh|Wall_e_RIG_v001_001_np:lightGray_slope_curved_2x1_no_studs_007_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:lightGray_slope_30_1x2x2_3_005_mesh|Wall_e_RIG_v001_001_np:lightGray_slope_30_1x2x2_3_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:lightGray_bracket_1x2_2x4_002_mesh|Wall_e_RIG_v001_001_np:lightGray_bracket_1x2_2x4_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:lightGray_brick_2x3_003_mesh|Wall_e_RIG_v001_001_np:plate_2x3_mesh_04Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:lightGray_brick_1x2_with_1_side_studs_011_mesh|Wall_e_RIG_v001_001_np:lightGray_brick_1x2_with_1_side_studs_011_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_brick_1x1_with_clip_highlight_004_mesh|Wall_e_RIG_v001_001_np:darkGrey_brick_1x1_with_clip_highlight_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:lightGray_plate_4x6_002_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_4x6_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_plate_1x3_009_mesh|Wall_e_RIG_v001_001_np:darkGrey_plate_1x3_013_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:yellow_plate_1x2_handle_end_005_mesh|Wall_e_RIG_v001_001_np:yellow_plate_1x2_handle_end_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:black_plate_1x1_v_clip_002_mesh|Wall_e_RIG_v001_001_np:black_plate_1x1_v_clip_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:black_plate_1x1_round_006_mesh|Wall_e_RIG_v001_001_np:black_plate_1x1_round_006_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:brown_tile_1x3_007_mesh|Wall_e_RIG_v001_001_np:brown_tile_1x3_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:brown_tile_1x3_007_mesh|Wall_e_RIG_v001_001_np:polySurfaceShape1" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_tile_1x2_grille_without_groove_008_mesh|Wall_e_RIG_v001_001_np:darkGrey_tile_1x2_grille_without_groove_009_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:black_l_cable_mesh|Wall_e_RIG_v001_001_np:black_l_cable_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:l_iris_grp|Wall_e_RIG_v001_001_np:black_l_special_eye_mesh_03|Wall_e_RIG_v001_001_np:black_l_special_eye_mesh_0Shape3" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:l_eye_grp|Wall_e_RIG_v001_001_np:l_sclera_grp|Wall_e_RIG_v001_001_np:group3|Wall_e_RIG_v001_001_np:darkGrey_dish_3x3_inverted_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_dish_3x3_inverted_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:r_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_r_special_eye_mesh_02|Wall_e_RIG_v001_001_np:darkGrey_r_special_eye_mesh_02Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:r_eye_grp|Wall_e_RIG_v001_001_np:darkGrey_r_special_eye_mesh_01|Wall_e_RIG_v001_001_np:darkGrey_r_special_eye_mesh_01Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:r_eye_grp|Wall_e_RIG_v001_001_np:black_r_cable_mesh|Wall_e_RIG_v001_001_np:black_r_cable_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_head_grp|Wall_e_RIG_v001_001_np:r_eye_grp|Wall_e_RIG_v001_001_np:r_iris_grp|Wall_e_RIG_v001_001_np:black_r_special_eye_mesh_03|Wall_e_RIG_v001_001_np:black_r_special_eye_mesh_03Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheel_001_grp|Wall_e_RIG_v001_001_np:lightGray_technic_wheel_small_6_holes_003_mesh|Wall_e_RIG_v001_001_np:lightGray_technic_wheel_small_6_holes_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheel_001_grp|Wall_e_RIG_v001_001_np:black_technic_tread_sprocket_wheel_small_008_mesh|Wall_e_RIG_v001_001_np:black_technic_tread_sprocket_wheel_small_009_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheel_001_grp|Wall_e_RIG_v001_001_np:beige_axle_3_stud_005_mesh|Wall_e_RIG_v001_001_np:beige_axle_3_stud_011_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheel_002_grp|Wall_e_RIG_v001_001_np:lightGray_technics_bush_003_mesh|Wall_e_RIG_v001_001_np:lightGray_technics_bush_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheel_003_grp|Wall_e_RIG_v001_001_np:lightGray_dish_2x2_inverted_005_mesh|Wall_e_RIG_v001_001_np:lightGray_dish_2x2_inverted_005_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_tilt_grp|Wall_e_RIG_v001_001_np:blue_pin_1x2_004_mesh|Wall_e_RIG_v001_001_np:blue_pin_1x2_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_tilt_grp|Wall_e_RIG_v001_001_np:blue_pin_1x2_004_mesh|Wall_e_RIG_v001_001_np:polySurfaceShape6" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_tilt_grp|Wall_e_RIG_v001_001_np:blue_pin_1x2_004_mesh|Wall_e_RIG_v001_001_np:polySurfaceShape7" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_tilt_grp|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x5_thick_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_1x5_thick_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_base_grp|Wall_e_RIG_v001_001_np:darkGrey_axle_and_pin_connector_perpendicular_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_axle_and_pin_connector_perpendicular_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_base_grp|Wall_e_RIG_v001_001_np:lightGray_tile_1x1_round_005_mesh|Wall_e_RIG_v001_001_np:lightGray_tile_1x1_round_005_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_base_grp|Wall_e_RIG_v001_001_np:black_axle_4_003_mesh|Wall_e_RIG_v001_001_np:black_axle_4_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_base_grp|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_3x5_quarter_ellipse_thin_004_mesh|Wall_e_RIG_v001_001_np:darkGrey_technic_liftarm_3x5_quarter_ellipse_thin_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:r_wheels_grp|Wall_e_RIG_v001_001_np:r_wheels_base_grp|Wall_e_RIG_v001_001_np:lightGray_technic_liftarm_1x9_thick_003_mesh|Wall_e_RIG_v001_001_np:lightGray_technic_liftarm_1x9_thick_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_slope_3x1_inverted_33_005_mesh|Wall_e_RIG_v001_001_np:yellow_slope_3x1_inverted_33_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:brown_slope_2x2_inverted_45_002_mesh|Wall_e_RIG_v001_001_np:brown_slope_2x2_inverted_45_004_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_slope_2x1_inverted_45_007_mesh|Wall_e_RIG_v001_001_np:yellow_slope_2x1_inverted_45_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:darkGrey_slope_curved_2x2_no_studs_003_mesh|Wall_e_RIG_v001_001_np:darkGrey_slope_curved_2x2_no_studs_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_slope_3x1_33_005_mesh|Wall_e_RIG_v001_001_np:yellow_slope_3x1_33_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_slope_2x1_45_003_mesh|Wall_e_RIG_v001_001_np:plate_1x2_mesh_01Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:black_axle_8_002_mesh|Wall_e_RIG_v001_001_np:black_axle_8_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_slope_30_1x1x2_3_005_mesh|Wall_e_RIG_v001_001_np:yellow_slope_30_1x1x2_3_005_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:black_panel_1x2x3_solid_studs_002_mesh|Wall_e_RIG_v001_001_np:black_panel_1x2x3_solid_studs_002_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:lightGray_panel_1x2x2_hollow_studs_005_mesh|Wall_e_RIG_v001_001_np:lightGray_panel_1x2x2_hollow_studs_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:lightGray_panel_1x1x1_corner_003_mesh|Wall_e_RIG_v001_001_np:lightGray_panel_1x1x1_corner_003_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:lightGray_bracket_5x2x1_2_holes_003_mesh|Wall_e_RIG_v001_001_np:lightGray_bracket_5x2x1_2_holes_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:black_hinge_brick_1x2_looking_1fve_003_mesh|Wall_e_RIG_v001_001_np:black_hinge_brick_1x2_looking_1fve_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_brick_2x2_corner_015_mesh|Wall_e_RIG_v001_001_np:yellow_brick_2x2_corner_017_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:darkGrey_brick_1x6_005_mesh|Wall_e_RIG_v001_001_np:plate_1x6_mesh_01Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:darkGrey_brick_1x4_with_1_side_studs_004_mesh|Wall_e_RIG_v001_001_np:darkGrey_brick_1x4_with_1_side_studs_004_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_brick_1x4_004_mesh|Wall_e_RIG_v001_001_np:plate_1x4_mesh_01Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:darkGrey_brick_1x3_003_mesh|Wall_e_RIG_v001_001_np:plate_1x3_mesh_01Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:blue_brick_1x1_with_2_side_studs_006_mesh|Wall_e_RIG_v001_001_np:blue_brick_1x1_with_2_side_studs_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_brick_1x1_with_2_opposite_studs_003_mesh|Wall_e_RIG_v001_001_np:yellow_brick_1x1_with_2_opposite_studs_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:lightGray_plate_4x10_002_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_4x10_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:lightGray_plate_2x10_003_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_2x10_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:lightGray_plate_2x8_004_mesh|Wall_e_RIG_v001_001_np:lightGray_plate_2x8_007_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:darkGrey_plate_2x2_corner_002_mesh|Wall_e_RIG_v001_001_np:darkGrey_plate_2x2_corner_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:black_plate_1x8_003_mesh|Wall_e_RIG_v001_001_np:black_plate_1x8_003_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:black_plate_1x10_004_mesh|Wall_e_RIG_v001_001_np:black_plate_1x10_004_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:yellow_plate_1x6_014_mesh|Wall_e_RIG_v001_001_np:yellow_plate_1x6_016_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:lightGray_tile_1x8_002_mesh|Wall_e_RIG_v001_001_np:darkGrey_tile_1x8_005_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:c_body_grp|Wall_e_RIG_v001_001_np:darkGrey_tile_1x1_with_groove_003_mesh|Wall_e_RIG_v001_001_np:yellow_tile_1x1_with_groove_006_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:model_grp|Wall_e_RIG_v001_001_np:l_threads_grp|Wall_e_RIG_v001_001_np:l_thread_001_grp|Wall_e_RIG_v001_001_np:black_thread_002_mesh|Wall_e_RIG_v001_001_np:black_thread_041_mesh1Shape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:instances_grp|Wall_e_RIG_v001_001_np:bricks_grp|Wall_e_RIG_v001_001_np:original_grp|Wall_e_RIG_v001_001_np:plate_2x6_grp|Wall_e_RIG_v001_001_np:plate_2x6_mesh_0010|Wall_e_RIG_v001_001_np:plate_2x6_mesh_01Shape10" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:instances_grp|Wall_e_RIG_v001_001_np:bricks_grp|Wall_e_RIG_v001_001_np:original_grp|Wall_e_RIG_v001_001_np:plate_4x4_grp|Wall_e_RIG_v001_001_np:plate_4x4_004_mesh|Wall_e_RIG_v001_001_np:plate_4x4_004_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:instances_grp|Wall_e_RIG_v001_001_np:bricks_grp|Wall_e_RIG_v001_001_np:original_grp|Wall_e_RIG_v001_001_np:plate_4x8_grp|Wall_e_RIG_v001_001_np:plate_4x8_001_mesh|Wall_e_RIG_v001_001_np:plate_4x8_001_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:instances_grp|Wall_e_RIG_v001_001_np:bricks_grp|Wall_e_RIG_v001_001_np:original_grp|Wall_e_RIG_v001_001_np:brick_1x1_with_hole_grp|Wall_e_RIG_v001_001_np:brick_1x1_with_hole_001_mesh|Wall_e_RIG_v001_001_np:brick_1x1_with_hole_001_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:instances_grp|Wall_e_RIG_v001_001_np:bricks_grp|Wall_e_RIG_v001_001_np:original_grp|Wall_e_RIG_v001_001_np:brick_2x2_round_grp|Wall_e_RIG_v001_001_np:brick_2x2_round_001_mesh|Wall_e_RIG_v001_001_np:brick_2x2_round_001_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:instances_grp|Wall_e_RIG_v001_001_np:bricks_grp|Wall_e_RIG_v001_001_np:original_grp|Wall_e_RIG_v001_001_np:lever_small_base_grp|Wall_e_RIG_v001_001_np:lever_small_base_001_mesh|Wall_e_RIG_v001_001_np:lever_small_base_001_meshShape" 
		"allowTopologyMod" " 1"
		2 "|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001|Wall_e_RIG_v001_001_np:rig_grp|Wall_e_RIG_v001_001_np:instances_grp|Wall_e_RIG_v001_001_np:bricks_grp|Wall_e_RIG_v001_001_np:original_grp|Wall_e_RIG_v001_001_np:lever_small_base_grp|Wall_e_RIG_v001_001_np:lever_small_base_001_mesh|Wall_e_RIG_v001_001_np:lever_small_lever_001_mesh|Wall_e_RIG_v001_001_np:lever_small_lever_001_meshShape" 
		"allowTopologyMod" " 1";
lockNode -l 1 ;
createNode animCurveTL -n "tube_CNTRL1_translateX";
	rename -uid "1F9041C0-0008-8148-682B-A4C00000100B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.13877305546885 10 13.13877305546885;
createNode animCurveTL -n "tube_CNTRL1_translateY";
	rename -uid "1F9041C0-0008-8148-682B-A4C00000100C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 0;
createNode animCurveTL -n "tube_CNTRL1_translateZ";
	rename -uid "1F9041C0-0008-8148-682B-A4C00000100D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -12.272292360311754 10 12.510948048810354;
createNode animCurveTU -n "tube_CNTRL1_visibility";
	rename -uid "1F9041C0-0008-8148-682B-A4C00000100E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 10 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "tube_CNTRL1_rotateX";
	rename -uid "1F9041C0-0008-8148-682B-A4C00000100F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.2722218725854067e-14 10 -1.2722218725854067e-14;
createNode animCurveTA -n "tube_CNTRL1_rotateY";
	rename -uid "1F9041C0-0008-8148-682B-A4C000001010";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.2722218725854067e-14 10 1.2722218725854067e-14;
createNode animCurveTA -n "tube_CNTRL1_rotateZ";
	rename -uid "1F9041C0-0008-8148-682B-A4C000001011";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.4124500153760508e-30 10 -1.4124500153760508e-30;
createNode animCurveTU -n "tube_CNTRL1_scaleX";
	rename -uid "1F9041C0-0008-8148-682B-A4C000001012";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 10 1;
createNode animCurveTU -n "tube_CNTRL1_scaleY";
	rename -uid "1F9041C0-0008-8148-682B-A4C000001013";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 10 1;
createNode animCurveTU -n "tube_CNTRL1_scaleZ";
	rename -uid "1F9041C0-0008-8148-682B-A4C000001014";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 10 1;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "1F9041C0-0008-8148-682B-A4EC00001017";
	setAttr ".lyr[0].id" -type "string" "anon:0x3d6f47a0:TestScene_stage-session.usda";
	setAttr ".lyr[0].fid" -type "string" "usda";
	setAttr ".lyr[0].szd" -type "string" "#usda 1.0\n\nover \"rigs\"\n{\n    over \"Test_Rig_001\"\n    {\n        over \"Test_Rig_001\" (\n            active = false\n            customData = {\n                dictionary Maya = {\n                    dictionary Pull = {\n                        string DagPath = \"|__mayaUsd__|Test_Rig_001Parent|Test_Rig_001\"\n                    }\n                }\n            }\n        )\n        {\n            custom string MayaReferenceNodeName = \"Test_Rig_001_npRN\"\n        }\n    }\n\n    over \"Wall_e_RIG_v001_001\"\n    {\n        over \"Wall_e_RIG_v001_001\" (\n            active = false\n            customData = {\n                dictionary Maya = {\n                    dictionary Pull = {\n                        string DagPath = \"|__mayaUsd__|Wall_e_RIG_v001_001Parent|Wall_e_RIG_v001_001\"\n                    }\n                }\n            }\n        )\n        {\n            custom string MayaReferenceNodeName = \"Wall_e_RIG_v001_001_npRN\"\n        }\n    }\n}\n\n";
	setAttr ".lyr[0].ann" yes;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 17 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
select -ne :initialShadingGroup;
	setAttr -s 127 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 13 ".gn";
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
connectAttr "tube_CNTRL1_translateX.o" "Test_Rig_001_npRN.phl[1]";
connectAttr "tube_CNTRL1_translateZ.o" "Test_Rig_001_npRN.phl[2]";
connectAttr "tube_CNTRL1_translateY.o" "Test_Rig_001_npRN.phl[3]";
connectAttr "tube_CNTRL1_rotateX.o" "Test_Rig_001_npRN.phl[4]";
connectAttr "tube_CNTRL1_rotateY.o" "Test_Rig_001_npRN.phl[5]";
connectAttr "tube_CNTRL1_rotateZ.o" "Test_Rig_001_npRN.phl[6]";
connectAttr "tube_CNTRL1_scaleX.o" "Test_Rig_001_npRN.phl[7]";
connectAttr "tube_CNTRL1_scaleY.o" "Test_Rig_001_npRN.phl[8]";
connectAttr "tube_CNTRL1_scaleZ.o" "Test_Rig_001_npRN.phl[9]";
connectAttr "tube_CNTRL1_visibility.o" "Test_Rig_001_npRN.phl[10]";
connectAttr ":time1.o" "TestScene_stageShape.tm";
connectAttr "TestScene_stageShape.AP__rigs_Test_Rig_001" "Test_Rig_001Parent.opm"
		;
connectAttr "TestScene_stageShape.AP__rigs_Wall_e_RIG_v001_001" "Wall_e_RIG_v001_001Parent.opm"
		;
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
connectAttr "Test_Rig_001.msg" "Test_Rig_001_npRN.asn[0]";
connectAttr "Test_Rig_001.iog" "usdEditAsMaya.dsm" -na;
connectAttr "Wall_e_RIG_v001_001.iog" "usdEditAsMaya.dsm" -na;
connectAttr "Wall_e_RIG_v001_001.msg" "Wall_e_RIG_v001_001_npRN.asn[0]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Test_scene.ma
