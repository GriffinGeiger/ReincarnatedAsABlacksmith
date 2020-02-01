//Maya ASCII 2008 scene
//Name: sowrd.ma
//Last modified: Tue, Jul 15, 2008 09:33:47 AM
//Codeset: 1252
requires maya "2008";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2008";
fileInfo "version" "2008 Extension 2";
fileInfo "cutIdentifier" "200802250025-718075";
fileInfo "osv" "Microsoft Windows XP Service Pack 2 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.11066335623995782 -1.8987000016808808 3.579267854863045 ;
	setAttr ".r" -type "double3" -215.73835272959789 186.99999999999892 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.4183800547026575;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "Hand_Sowrd_Contact1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 103.40400000000014 -85.430399999999977 176.34199999999981 ;
	setAttr ".bps" -type "matrix" -0.079507726658339939 0.0050830108743811766 0.99682129010273124 0
		 0.98248205832381408 0.16947797836927947 0.077499805933069807 0 -0.16854532468574765 0.98552086626733226 -0.018468775765137169 0
		 0 0 0 1;
	setAttr ".radi" 0.68445501253127983;
createNode joint -n "handel_blade" -p "Hand_Sowrd_Contact1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.051300499999999999 -0.297043 -0.11478 ;
	setAttr ".r" -type "double3" -76.596402738248912 -94.569629530950508 86.34163772532257 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -96.253699999999938 80.2389 -91.718199999999953 ;
	setAttr ".bps" -type "matrix" -0.079507686566221536 0.005083098805713668 0.99682129285214349 0
		 0.9824819539780133 0.16947861356286259 0.077499739692174038 0 -0.16854595184824903 0.98552075658067262 -0.018468905333734832 0
		 -0.27657257181468675 -0.16319957115954908 0.030236501821460753 1;
	setAttr ".radi" 0.68445501253127983;
createNode joint -n "base_blade" -p "handel_blade";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.2997984534064797 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.079507686566221536 0.005083098805713668 0.99682129285214349 0
		 0.9824819539780133 0.16947861356286259 0.077499739692174038 0 -0.16854595184824903 0.98552075658067262 -0.018468905333734832 0
		 -0.30040885328116712 -0.16167566599908381 0.32908198374118097 1;
	setAttr ".radi" 0.5;
createNode joint -n "mid_blade" -p "base_blade";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.86608442095205151 -1.3322676295501878e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.079507686566221536 0.005083098805713668 0.99682129285214349 0
		 0.9824819539780133 0.16947861356286259 0.077499739692174038 0 -0.16854595184824903 0.98552075658067262 -0.018468905333734832 0
		 -0.36926922196211159 -0.15727327331329544 1.192413375953705 1;
	setAttr ".radi" 0.51432341406464588;
createNode joint -n "tip_blade" -p "mid_blade";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.2769193385831534 -2.6645352591003757e-015 -0.011416661711653342 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999929 ;
	setAttr ".bps" -type "matrix" 0.98248195397801319 0.16947861356286259 0.077499739692175149 0
		 0.079507686566222632 -0.0050830988057134797 -0.99682129285214338 0 -0.16854595184824903 0.98552075658067262 -0.018468905333734832 0
		 -0.4688698923894104 -0.16203392323604537 2.4654846151524477 1;
	setAttr ".radi" 0.51432341406464588;
createNode transform -n "polySurface83";
	setAttr ".t" -type "double3" -0.27657257181468675 -0.16319957115954908 0.030236501821460753 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 103.40410168600931 -85.430401977277072 176.34193505225574 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 2.2828674237861328 2.0740738999907293 0.052260797529927017 ;
	setAttr ".rpt" -type "double3" -0.4354410992950985 -1.6594545895967265 2.3831250468879768 ;
	setAttr ".sp" -type "double3" 2.2828674237861328 2.0740738999907293 0.052260797529927017 ;
createNode mesh -n "polySurfaceShape83" -p "polySurface83";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape83Orig" -p "polySurface83";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 95 ".uvst[0].uvsp[0:94]" -type "float2" 0.045957685 0.95094925 
		0.098808467 0.97478956 0.096396327 0.99410135 0.02811861 0.97008961 0.051377892 0.94649631 
		0.10017413 0.96933252 0.15429109 0.97478956 0.15670311 0.99410135 0.15292543 0.96933264 
		0.20714182 0.95094913 0.22498083 0.97008961 0.20172161 0.94649631 0.11464227 0.72415441 
		0.22344041 0.89851791 0.24446917 0.89851791 0.10209628 0.70332998 0.16778778 0.67758948 
		0.21791434 0.89851779 0.20714182 0.84608656 0.22498083 0.82694608 0.20172155 0.85053927 
		0.13494197 0.69045979 0.15429109 0.82224613 0.15670311 0.80293435 0.10209626 0.67758948 
		0.1552418 0.6567651 0.15292549 0.82770318 0.098808408 0.82224613 0.096396327 0.80293435 
		0.10017413 0.82770318 0.045957685 0.84608644 0.02811867 0.82694608 0.051377892 0.85053927 
		0.13494195 0.73210871 0.029659152 0.89851791 0.0086302757 0.89851779 0.12654978 0.89851779 
		0.16778781 0.70332998 0.035185099 0.89851791 0.11464226 0.6567651 0.15524182 0.72415441 
		0.13494192 0.64881086 0.077857852 0.11363666 0.12385106 0.081459984 0.13429534 0.11966078 
		0.073019624 0.59433627 0.099281788 0.6036073 0.099187732 0.75192857 0.073184848 0.75181544 
		0.070095658 0.015603155 0.09485352 0.038777441 0.13487184 0.594486 0.01666081 0.081720218 
		0.0031569004 0.11998308 0.047240496 0.75205481 0.046426415 0.60373557 0.045450568 
		0.03889738 0.0072380304 0.59480011 0.144647 0.081434742 0.19060683 0.11355057 0.19659591 
		0.59424186 0.19691396 0.75166535 0.1709379 0.75184155 0.17048383 0.60352087 0.19824231 
		0.015447602 0.17354083 0.038681939 0.25183749 0.081434742 0.26543427 0.11966473 0.22333932 
		0.60352087 0.22288537 0.75184155 0.2229439 0.038681939 0.26250577 0.59449029 0.073312283 
		0.79439831 0.073324323 0.79735625 0.065721512 0.79737473 0.1968832 0.77571571 0.19691169 
		0.79421079 0.18930888 0.79720628 0.1709379 0.77810979 0.20451438 0.79720628 0.22288537 
		0.77810967 0.047304273 0.7783227 0.073264837 0.77585638 0.099251509 0.77819681 0.080926895 
		0.79733789 0.02872026 0.7650094 0.073340297 0.76404607 0.15238607 0.76475143 0.19696879 
		0.76390815 0.11777091 0.7647934 0.24143708 0.7647512 0.010705709 0.36818177 0.13417459 
		0.36791316 0.25848806 0.367881 0.19691157 0.79720628;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 66 ".vt[0:65]"  0.22268462 0.21137404 -0.12815632 0.22268462 
		0.081326604 -0.20650499 0.22268462 -0.079420805 -0.20650499 0.22268462 -0.20946813 
		-0.1281563 0.22268462 -0.25914192 -0.0013855211 0.22268462 -0.20946813 0.12538525 
		0.22268462 -0.079420805 0.20373392 0.22268462 0.081326604 0.20373392 0.22268462 0.21137404 
		0.12538525 0.22268462 0.26104772 -0.0013855323 0.30653787 0.00095295906 -0.0013855323 
		0.25167108 0.00095295906 -0.0013855323 0.29300344 0.21872401 -0.13258442 0.27843738 
		0.22737825 -0.13779829 0.29308498 0.083633304 -0.21239175 0.27831411 0.087426186 
		-0.22207148 0.29308498 -0.081727266 -0.21239175 0.27831411 -0.085520267 -0.22207148 
		0.29300344 -0.21681809 -0.13258441 0.27843761 -0.22547245 -0.13779828 0.29294848 
		-0.26932001 -0.0013855211 0.27854252 -0.27896142 -0.0013855211 0.29300344 -0.21681809 
		0.12981336 0.27843761 -0.22547245 0.13502723 0.29308498 -0.081727266 0.20962071 0.27831411 
		-0.085520267 0.21930043 0.29308498 0.083633304 0.20962071 0.27831411 0.087426186 
		0.21930043 0.29300344 0.21872401 0.12981334 0.27843738 0.22737825 0.13502721 0.29294848 
		0.27122593 -0.0013855323 0.27854252 0.28086734 -0.0013855323 2.452472 0.0043628216 
		-0.0084400475 -0.29297924 0.00088906288 -0.051083181 -0.29297924 -0.066909552 -0.0017288812 
		0.29366386 -0.17033052 -0.0017288812 0.29366386 0.00088906288 -0.051083181 2.0639257 
		-0.17102695 -0.0084400475 1.1385167 -0.15289569 -0.0084400475 0.2599957 -0.068094969 
		-0.0017288812 -0.29297924 0.068687677 -0.0017288812 0.29366386 0.17210841 -0.0017288812 
		2.0639257 0.17975235 -0.0084400475 1.1385167 0.16162133 -0.0084400475 0.2599957 0.069873095 
		-0.0017288812 -0.29297924 0.00088906288 0.047625422 0.29366386 0.00088906288 0.047625422 
		-0.39091301 0.00088906288 0.047625419 -0.39091301 0.068687677 -0.0017288812 -0.39091301 
		0.00088906288 -0.051083181 -0.39091349 -0.066909552 -0.0017288886 -0.46211004 0.00088906288 
		0.014128495 -0.46211004 0.020734549 -0.0017288812 -0.46211004 0.00088906288 -0.017586265 
		-0.46211004 -0.018955946 -0.0017288812 -0.34110951 0.00088906288 -0.10361052 -0.34110951 
		0.11711276 -0.0017288812 -0.34110951 0.00088906288 0.10015275 -0.34111047 -0.11533475 
		-0.0017288886 2.0876529 0.010454178 -0.031020094 2.2064562 -0.13553596 -0.0084400475 
		2.3658488 -0.060115099 -0.0084400475 2.3658488 0.068840742 -0.0084400475 2.2064562 
		0.14426136 -0.0084400475 2.0876529 0.010454178 0.014139991 -0.46211004 0.00088906288 
		-0.0017288812;
	setAttr -s 149 ".ed[0:148]"  0 1 0 1 2 0 
		2 3 0 3 4 0 4 5 0 5 6 0 
		6 7 0 7 8 0 8 9 0 9 0 0 
		10 12 1 10 14 1 10 16 1 10 18 1 
		10 20 1 10 22 1 10 24 1 10 26 1 
		10 28 1 10 30 1 0 11 1 1 11 1 
		2 11 1 3 11 1 4 11 1 5 11 1 
		6 11 1 7 11 1 8 11 1 9 11 1 
		13 0 0 15 1 0 17 2 0 19 3 0 
		21 4 0 23 5 0 25 6 0 27 7 0 
		29 8 0 31 9 0 13 15 0 12 30 0 
		15 17 0 14 12 0 17 19 0 16 14 0 
		19 21 0 18 16 0 21 23 0 20 18 0 
		23 25 0 22 20 0 25 27 0 24 22 0 
		27 29 0 26 24 0 29 31 0 28 26 0 
		31 13 0 30 28 0 13 12 0 14 15 1 
		31 30 0 16 17 1 18 19 0 20 21 0 
		22 23 0 24 25 1 26 27 1 28 29 0 
		32 59 0 32 61 0 33 34 1 35 39 0 
		36 33 0 35 36 0 37 38 0 37 59 0 
		38 35 0 39 34 0 36 39 0 32 62 0 
		41 44 0 41 36 0 42 43 0 42 59 0 
		43 41 0 44 40 0 36 44 0 32 64 0 
		45 34 1 46 45 0 35 46 0 37 64 0 
		46 39 0 45 40 1 41 46 0 42 64 0 
		46 44 0 40 33 1 40 56 0 47 48 1 
		33 55 0 48 49 1 34 58 0 49 50 1 
		47 51 0 48 52 0 51 52 0 49 53 0 
		52 53 0 50 54 0 53 54 0 55 49 0 
		56 48 0 55 56 0 57 47 0 58 50 0 
		57 58 0 58 55 0 45 57 0 51 54 0 
		47 50 1 59 36 0 60 37 0 63 42 0 
		64 43 0 64 46 0 64 38 0 59 62 1 
		59 60 1 60 64 1 61 59 1 62 64 1 
		63 59 1 64 61 1 64 63 1 63 62 0 
		61 60 0 59 38 0 59 43 0 43 36 0 
		38 36 0 38 46 0 43 46 0 53 65 0 
		65 51 0 54 65 0 65 52 0;
	setAttr -s 87 ".fc[0:86]" -type "polyFaces" 
		f 4 40 31 -1 -31 
		mu 0 4 0 1 2 3 
		f 4 42 32 -2 -32 
		mu 0 4 1 6 7 2 
		f 4 44 33 -3 -33 
		mu 0 4 6 9 10 7 
		f 4 46 34 -4 -34 
		mu 0 4 9 13 14 10 
		f 4 48 35 -5 -35 
		mu 0 4 13 18 19 14 
		f 4 50 36 -6 -36 
		mu 0 4 18 22 23 19 
		f 4 52 37 -7 -37 
		mu 0 4 22 27 28 23 
		f 4 54 38 -8 -38 
		mu 0 4 27 30 31 28 
		f 4 56 39 -9 -39 
		mu 0 4 30 34 35 31 
		f 4 58 30 -10 -40 
		mu 0 4 34 0 3 35 
		f 3 43 -11 11 
		mu 0 3 5 4 36 
		f 3 45 -12 12 
		mu 0 3 8 5 36 
		f 3 47 -13 13 
		mu 0 3 11 8 36 
		f 3 49 -14 14 
		mu 0 3 17 11 36 
		f 3 51 -15 15 
		mu 0 3 20 17 36 
		f 3 53 -16 16 
		mu 0 3 26 20 36 
		f 3 55 -17 17 
		mu 0 3 29 26 36 
		f 3 57 -18 18 
		mu 0 3 32 29 36 
		f 3 59 -19 19 
		mu 0 3 38 32 36 
		f 3 41 -20 10 
		mu 0 3 4 38 36 
		f 3 0 21 -21 
		mu 0 3 12 15 21 
		f 3 1 22 -22 
		mu 0 3 15 24 21 
		f 3 2 23 -23 
		mu 0 3 24 39 21 
		f 3 3 24 -24 
		mu 0 3 39 41 21 
		f 3 4 25 -25 
		mu 0 3 41 25 21 
		f 3 5 26 -26 
		mu 0 3 25 16 21 
		f 3 6 27 -27 
		mu 0 3 16 37 21 
		f 3 7 28 -28 
		mu 0 3 37 40 21 
		f 3 8 29 -29 
		mu 0 3 40 33 21 
		f 3 9 20 -30 
		mu 0 3 33 12 21 
		f 4 60 -44 61 -41 
		mu 0 4 0 4 5 1 
		f 4 -61 -59 62 -42 
		mu 0 4 4 0 34 38 
		f 4 -62 -46 63 -43 
		mu 0 4 1 5 8 6 
		f 4 -64 -48 64 -45 
		mu 0 4 6 8 11 9 
		f 4 -65 -50 65 -47 
		mu 0 4 9 11 17 13 
		f 4 -66 -52 66 -49 
		mu 0 4 13 17 20 18 
		f 4 -67 -54 67 -51 
		mu 0 4 18 20 26 22 
		f 4 -68 -56 68 -53 
		mu 0 4 22 26 29 27 
		f 4 -69 -58 69 -55 
		mu 0 4 27 29 32 30 
		f 4 -70 -60 -63 -57 
		mu 0 4 30 32 38 34 
		f 3 130 124 77 
		mu 0 3 42 43 44 
		f 4 80 79 -73 -75 
		mu 0 4 45 46 47 48 
		f 3 71 132 -71 
		mu 0 3 49 50 42 
		f 3 -76 73 -81 
		mu 0 3 45 51 46 
		f 3 134 -86 -126 
		mu 0 3 52 42 53 
		f 4 74 -100 -88 -89 
		mu 0 4 45 48 54 55 
		f 3 70 129 -82 
		mu 0 3 49 42 56 
		f 3 88 -83 83 
		mu 0 3 45 55 57 
		f 3 131 -94 -125 
		mu 0 3 58 59 44 
		f 4 91 90 -80 -95 
		mu 0 4 60 61 62 63 
		f 3 89 135 -72 
		mu 0 3 64 59 65 
		f 3 94 -74 92 
		mu 0 3 60 63 51 
		f 3 136 125 97 
		mu 0 3 59 66 67 
		f 4 98 87 -96 -92 
		mu 0 4 60 68 69 61 
		f 3 81 133 -90 
		mu 0 3 64 70 59 
		f 3 -97 82 -99 
		mu 0 3 60 71 68 
		f 3 145 148 110 
		mu 0 3 72 73 74 
		f 4 106 121 -112 -123 
		mu 0 4 75 76 77 78 
		f 4 -109 -107 101 107 
		mu 0 4 79 76 75 80 
		f 4 -111 -108 103 109 
		mu 0 4 72 74 81 82 
		f 4 111 -113 -110 105 
		mu 0 4 83 84 72 82 
		f 4 -116 113 -104 -115 
		mu 0 4 85 86 82 81 
		f 4 -119 116 122 -118 
		mu 0 4 87 88 75 78 
		f 4 -120 117 -106 -114 
		mu 0 4 86 89 83 82 
		f 6 -121 95 100 114 -102 -117 
		mu 0 6 88 61 69 90 80 75 
		f 4 115 -101 99 102 
		mu 0 4 86 85 54 48 
		f 4 119 -103 72 104 
		mu 0 4 89 86 48 47 
		f 4 120 118 -105 -91 
		mu 0 4 61 88 87 62 
		f 3 140 -85 85 
		mu 0 3 42 91 53 
		f 3 142 -124 139 
		mu 0 3 92 45 42 
		f 3 126 144 -128 
		mu 0 3 59 93 60 
		f 3 -98 84 -127 
		mu 0 3 59 67 93 
		f 3 143 -93 -79 
		mu 0 3 92 60 51 
		f 3 128 -77 93 
		mu 0 3 59 92 44 
		f 3 -135 137 -130 
		mu 0 3 42 52 56 
		f 3 -133 138 -131 
		mu 0 3 42 50 43 
		f 3 -139 -136 -132 
		mu 0 3 58 65 59 
		f 3 -138 -137 -134 
		mu 0 3 70 66 59 
		f 3 -140 -78 76 
		mu 0 3 92 42 44 
		f 3 141 -84 -87 
		mu 0 3 91 45 57 
		f 3 -141 123 -142 
		mu 0 3 91 42 45 
		f 3 78 75 -143 
		mu 0 3 92 51 45 
		f 3 127 -144 -129 
		mu 0 3 59 60 92 
		f 3 -145 86 96 
		mu 0 3 60 93 71 
		f 3 147 -146 112 
		mu 0 3 84 73 72 
		f 3 -148 -122 -147 
		mu 0 3 94 77 76 
		f 3 -149 146 108 
		mu 0 3 79 94 76 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
createNode lightLinker -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode materialInfo -n "materialInfo5";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "lambert5";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Venom/Desktop/chops/from chops/weapons/sowrd shield.png";
createNode place2dTexture -n "place2dTexture5";
createNode skinCluster -n "skinCluster1";
	setAttr -s 66 ".wl";
	setAttr -s 5 ".wl[0].w[0:4]"  1.2727916258322068e-006 0.99999600648880005 
		2.7067676281376246e-006 1.3462703311931135e-008 4.8924266941047837e-010;
	setAttr ".wl[1].w[1]"  1;
	setAttr -s 5 ".wl[2].w[0:4]"  3.3792019924769438e-007 0.99999856948852539 
		1.0887337928488928e-006 3.7248177808561712e-009 1.3266473193172164e-010;
	setAttr -s 5 ".wl[3].w[0:4]"  1.9296299787029188e-005 0.9999273419380188 
		5.3094160072542098e-005 2.5823067823356942e-007 9.3714433963264635e-009;
	setAttr -s 5 ".wl[4].w[0:4]"  7.6122667275612031e-005 0.99972856044769287 
		0.00019414196579719325 1.1333555417349212e-006 4.156369258869064e-008;
	setAttr -s 5 ".wl[5].w[0:4]"  0.00022383758391559324 0.99915194511413574 
		0.00062114851589053295 2.961681309212359e-006 1.0710474891921785e-007;
	setAttr ".wl[6].w[1]"  1;
	setAttr -s 5 ".wl[7].w[0:4]"  2.4593382874094244e-006 0.99999141693115234 
		6.1027238576829674e-006 2.0287868975591985e-008 7.1883358826737638e-010;
	setAttr ".wl[8].w[1]"  1;
	setAttr -s 4 ".wl[9].w[0:3]"  2.8985208588224232e-008 0.99999994039535522 
		3.0437315951730548e-008 1.8212023543584702e-010;
	setAttr -s 2 ".wl[10].w[1:2]"  0.98045927286148071 0.019540727138519287;
	setAttr ".wl[11].w[1]"  1;
	setAttr -s 5 ".wl[12].w[0:4]"  3.0325250077315032e-005 0.99983072280883789 
		0.00013806055881753726 8.6441573540467279e-007 2.6966531852416042e-008;
	setAttr -s 5 ".wl[13].w[0:4]"  5.5956080276250149e-005 0.99974191188812256 
		0.00020070782636790474 1.3792190016304018e-006 4.4986231656133361e-008;
	setAttr -s 5 ".wl[14].w[0:4]"  4.5992024095356586e-005 0.99963057041168213 
		0.00032207504293321488 1.3223350848674247e-006 4.0186204432225606e-008;
	setAttr -s 5 ".wl[15].w[0:4]"  0.00097428398009039615 0.99366122484207153 
		0.0053390374417535804 2.4669245943251225e-005 7.8449014123827406e-007;
	setAttr -s 5 ".wl[16].w[0:4]"  2.232933516121414e-005 0.99981945753097534 
		0.00015755414391579455 6.3956575937781775e-007 1.9424188271664608e-008;
	setAttr -s 5 ".wl[17].w[0:4]"  0.00064559171082217992 0.99577635526657104 
		0.0035612564083608573 1.6279260341440684e-005 5.1735390447727436e-007;
	setAttr -s 5 ".wl[18].w[0:4]"  0.0001683307138785296 0.99891400337219238 
		0.00091191529275161973 5.5769292750796172e-006 1.7369190238822194e-007;
	setAttr -s 5 ".wl[19].w[0:4]"  0.0043663256755291846 0.9763074517250061 
		0.01919305367686288 0.00012896924289080016 4.1996797110314694e-006;
	setAttr -s 5 ".wl[20].w[0:4]"  0.0029700048815665134 0.98278272151947021 
		0.014136961437244534 0.00010693279244098868 3.379369277748404e-006;
	setAttr -s 5 ".wl[21].w[0:4]"  0.0035001361262480138 0.98258566856384277 
		0.013797539709301612 0.00011292773658245967 3.7278640251402769e-006;
	setAttr ".wl[22].w[1]"  1;
	setAttr -s 5 ".wl[23].w[0:4]"  0.00039291052800801497 0.99784839153289795 
		0.0017468177539487352 1.1506998741247388e-005 3.7318640405334407e-007;
	setAttr ".wl[24].w[1]"  1;
	setAttr ".wl[25].w[1]"  1;
	setAttr -s 5 ".wl[26].w[0:4]"  0.0011869529757055006 0.99155515432357788 
		0.0072285900601542306 2.8443823264588403e-005 8.588172978006022e-007;
	setAttr -s 5 ".wl[27].w[0:4]"  0.0015323947178517588 0.99143284559249878 
		0.0070026953032090167 3.1082487619262119e-005 9.8189882118361063e-007;
	setAttr ".wl[28].w[1]"  1;
	setAttr ".wl[29].w[1]"  1;
	setAttr ".wl[30].w[1]"  1;
	setAttr ".wl[31].w[1]"  1;
	setAttr -s 3 ".wl[32].w";
	setAttr ".wl[32].w[1]" 0.99991893768310547;
	setAttr ".wl[32].w[3:4]" 4.0531158330021493e-005 4.0531158564509757e-005;
	setAttr -s 5 ".wl[33].w[0:4]"  6.6105739232249027e-005 0.99992972612380981 
		4.0473877193481496e-006 1.1169894957641227e-007 9.0502890119543938e-009;
	setAttr ".wl[34].w[1]"  1;
	setAttr -s 3 ".wl[35].w[0:2]"  2.193693001546682e-007 0.9999997615814209 
		1.9049278946894297e-008;
	setAttr -s 3 ".wl[36].w[0:2]"  4.2314057998529996e-010 0.9999995231628418 
		4.7641401762313972e-007;
	setAttr -s 5 ".wl[37].w[0:4]"  1.5880207582251901e-010 0.99999648332595825 
		4.181994497427511e-009 3.4145035261998434e-006 9.7829718974953166e-008;
	setAttr ".wl[38].w[1]"  1;
	setAttr -s 3 ".wl[39].w[0:2]"  5.6706769833115715e-008 0.99999994039535522 
		2.8978749422749081e-009;
	setAttr -s 5 ".wl[40].w[0:4]"  2.8591595812798097e-005 0.99997127056121826 
		1.3381078178845623e-007 3.7296583201803205e-009 3.025288315486569e-010;
	setAttr ".wl[41].w[1]"  1;
	setAttr ".wl[42].w[1]"  1;
	setAttr ".wl[43].w[1]"  1;
	setAttr ".wl[44].w[1]"  1;
	setAttr ".wl[45].w[1]"  1;
	setAttr -s 2 ".wl[46].w[0:1]"  0.0041522383689880371 0.99584776163101196;
	setAttr ".wl[47].w[1]"  1;
	setAttr -s 5 ".wl[48].w[0:4]"  0.00081853931183020355 0.99917036294937134 
		1.0640598397539483e-005 4.1887903552603652e-007 3.8261365392999513e-008;
	setAttr ".wl[49].w[1]"  1;
	setAttr ".wl[50].w[1]"  1;
	setAttr ".wl[51].w[1]"  1;
	setAttr -s 5 ".wl[52].w[0:4]"  0.0029076289043488157 0.9970163106918335 
		7.2248005505462314e-005 3.4700259895763352e-006 3.4237232264988462e-007;
	setAttr ".wl[53].w[1]"  1;
	setAttr ".wl[54].w[1]"  1;
	setAttr -s 5 ".wl[55].w[0:4]"  0.00017219910374199193 0.99981164932250977 
		1.557416560925055e-005 5.3144350711114043e-007 4.5964631880739531e-008;
	setAttr -s 5 ".wl[56].w[0:4]"  0.00030294564097366016 0.9996945858001709 
		2.379318059688959e-006 8.2128632230719475e-008 7.1121635217587795e-009;
	setAttr -s 5 ".wl[57].w[0:4]"  0.0075575185139423332 0.99241805076599121 
		2.3559741881302141e-005 8.0174815331610355e-007 6.9230031837626036e-008;
	setAttr -s 4 ".wl[58].w[0:3]"  3.8634883513922721e-006 0.9999961256980896 
		1.0453305537994289e-008 3.6025347012444883e-010;
	setAttr ".wl[59].w[1]"  1;
	setAttr ".wl[60].w[1]"  1;
	setAttr -s 5 ".wl[61].w[0:4]"  1.1296504134904331e-010 0.99969053268432617 
		1.7004660536195546e-009 0.00027056494560014641 3.8900556642586764e-005;
	setAttr ".wl[62].w[1]"  1;
	setAttr ".wl[63].w[1]"  1;
	setAttr ".wl[64].w[1]"  1;
	setAttr ".wl[65].w[1]"  1;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.079507726658340105 0.98248205832381441 -0.16854532468574773 -0
		 0.0050830108743812564 0.16947797836927941 0.98552086626733226 -0 0.99682129010273146 0.077499805933069696 -0.018468775765137072 -0
		 -0 -0 -0 1;
	setAttr ".pm[1]" -type "matrix" -0.079507686566221689 0.98248195397801341 -0.16854595184824911 -0
		 0.0050830988057137521 0.16947861356286251 0.98552075658067251 -0 0.99682129285214349 0.077499739692173927 -0.018468905333734732 -0
		 -0.051300474644396556 0.29704307680702685 0.11477981256093936 1;
	setAttr ".pm[2]" -type "matrix" -0.079507686566221689 0.98248195397801341 -0.16854595184824911 -0
		 0.0050830988057137521 0.16947861356286251 0.98552075658067251 -0 0.99682129285214349 0.077499739692173927 -0.018468905333734732 -0
		 -0.35109892805087628 0.29704307680702685 0.11477981256093937 1;
	setAttr ".pm[3]" -type "matrix" -0.079507686566221689 0.98248195397801341 -0.16854595184824911 -0
		 0.0050830988057137521 0.16947861356286251 0.98552075658067251 -0 0.99682129285214349 0.077499739692173927 -0.018468905333734732 -0
		 -1.217183349002928 0.29704307680702813 0.11477981256093935 1;
	setAttr ".pm[4]" -type "matrix" 0.98248195397801352 0.079507686566222785 -0.16854595184824911 -0
		 0.16947861356286256 -0.0050830988057135621 0.98552075658067262 0 0.077499739692175038 -0.9968212928521436 -0.018468905333734735 -0
		 0.29704307680702807 2.4941026875860821 0.12619647427259273 1;
	setAttr ".gm" -type "matrix" -0.079507686566221647 0.0050830988057136159 0.9968212928521436 0
		 0.98248195397801319 0.16947861356286342 0.077499739692174011 0 -0.16854595184825003 0.98552075658067251 -0.018468905333734797 0
		 -0.27657257181468697 -0.16319957115954897 0.030236501821461394 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ptw" -type "doubleArray" 66 0.99999600648880005 1 0.99999856948852539
		 0.9999273419380188 0.99972856044769287 0.99915194511413574 1 0.99999141693115234
		 1 0.99999994039535522 0.98045927286148071 1 0.99983072280883789 0.99974191188812256
		 0.99963057041168213 0.99366122484207153 0.99981945753097534 0.99577635526657104 0.99891400337219238
		 0.9763074517250061 0.98278272151947021 0.98258566856384277 1 0.99784839153289795
		 1 1 0.99155515432357788 0.99143284559249878 1 1 1 1 0.99991893768310547 0.99992972612380981
		 1 0.9999997615814209 0.9999995231628418 0.99999648332595825 1 0.99999994039535522
		 0.99997127056121826 1 1 1 1 1 0.99584776163101196 1 0.99917036294937134 1 1 1 0.9970163106918335
		 1 1 0.99981164932250977 0.9996945858001709 0.99241805076599121 0.9999961256980896
		 1 1 0.99969053268432617 1 1 1 1 ;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	setAttr -s 5 ".wm";
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0.43860092075186008 0.5629064044743044 0.47211253227486022 -0.51756677732100487 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -1.336859422966044 -1.650551407706347
		 1.5069458598710264 0 0.051300499999999999 -0.297043 -0.11477999999999999 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.087892523958476076 0.70817301170085889 -0.032135879023964031 0.69980938476852472 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.2997984534064797 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.86608442095205151 -1.3322676295501878e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2769193385831534 -2.6645352591003757e-015
		 -0.011416661711653342 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70710678118654713 0.70710678118654791 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr ".bp" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" (localizedPanelLabel(\"Web Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Hand_Sowrd_Contact1.s" "handel_blade.is";
connectAttr "handel_blade.s" "base_blade.is";
connectAttr "base_blade.s" "mid_blade.is";
connectAttr "mid_blade.s" "tip_blade.is";
connectAttr "skinCluster1GroupId.id" "polySurfaceShape83.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "polySurfaceShape83.iog.og[2].gco";
connectAttr "groupId2.id" "polySurfaceShape83.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "polySurfaceShape83.iog.og[3].gco";
connectAttr "skinCluster1.og[0]" "polySurfaceShape83.i";
connectAttr "tweak1.vl[0].vt[0]" "polySurfaceShape83.twl";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "lambert5SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[4].sllk";
connectAttr "lambert5SG.msg" "lightLinker1.slnk[4].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert5SG.msg" "materialInfo5.sg";
connectAttr "lambert5.msg" "materialInfo5.m";
connectAttr "file1.msg" "materialInfo5.t" -na;
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "polySurfaceShape83.iog" "lambert5SG.dsm" -na;
connectAttr "file1.oc" "lambert5.c";
connectAttr "place2dTexture5.c" "file1.c";
connectAttr "place2dTexture5.tf" "file1.tf";
connectAttr "place2dTexture5.rf" "file1.rf";
connectAttr "place2dTexture5.mu" "file1.mu";
connectAttr "place2dTexture5.mv" "file1.mv";
connectAttr "place2dTexture5.s" "file1.s";
connectAttr "place2dTexture5.wu" "file1.wu";
connectAttr "place2dTexture5.wv" "file1.wv";
connectAttr "place2dTexture5.re" "file1.re";
connectAttr "place2dTexture5.of" "file1.of";
connectAttr "place2dTexture5.r" "file1.ro";
connectAttr "place2dTexture5.n" "file1.n";
connectAttr "place2dTexture5.vt1" "file1.vt1";
connectAttr "place2dTexture5.vt2" "file1.vt2";
connectAttr "place2dTexture5.vt3" "file1.vt3";
connectAttr "place2dTexture5.vc1" "file1.vc1";
connectAttr "place2dTexture5.o" "file1.uv";
connectAttr "place2dTexture5.ofs" "file1.fs";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster1.bp";
connectAttr "Hand_Sowrd_Contact1.wm" "skinCluster1.ma[0]";
connectAttr "handel_blade.wm" "skinCluster1.ma[1]";
connectAttr "base_blade.wm" "skinCluster1.ma[2]";
connectAttr "mid_blade.wm" "skinCluster1.ma[3]";
connectAttr "tip_blade.wm" "skinCluster1.ma[4]";
connectAttr "Hand_Sowrd_Contact1.liw" "skinCluster1.lw[0]";
connectAttr "handel_blade.liw" "skinCluster1.lw[1]";
connectAttr "base_blade.liw" "skinCluster1.lw[2]";
connectAttr "mid_blade.liw" "skinCluster1.lw[3]";
connectAttr "tip_blade.liw" "skinCluster1.lw[4]";
connectAttr "handel_blade.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "polySurfaceShape83.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "polySurfaceShape83.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polySurfaceShape83Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "Hand_Sowrd_Contact1.msg" "bindPose2.m[0]";
connectAttr "handel_blade.msg" "bindPose2.m[1]";
connectAttr "base_blade.msg" "bindPose2.m[2]";
connectAttr "mid_blade.msg" "bindPose2.m[3]";
connectAttr "tip_blade.msg" "bindPose2.m[4]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "Hand_Sowrd_Contact1.bps" "bindPose2.wm[0]";
connectAttr "handel_blade.bps" "bindPose2.wm[1]";
connectAttr "base_blade.bps" "bindPose2.wm[2]";
connectAttr "mid_blade.bps" "bindPose2.wm[3]";
connectAttr "tip_blade.bps" "bindPose2.wm[4]";
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
// End of sowrd.ma
