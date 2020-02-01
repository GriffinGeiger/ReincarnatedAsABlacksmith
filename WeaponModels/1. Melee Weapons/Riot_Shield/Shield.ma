//Maya ASCII 7.0 scene
//Name: Shield.ma
//Last modified: Wed, Feb 01, 2006 11:26:45 AM
requires maya "7.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 7.0";
fileInfo "version" "7.0";
fileInfo "cutIdentifier" "200507192211-654274";
fileInfo "osv" "Microsoft Windows XP Service Pack 2 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.941622130375855 74.288171503707787 -50.309015940839018 ;
	setAttr ".r" -type "double3" -53.738352729601957 157.39999999999975 0 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr ".rpt" -type "double3" -1.2791290813217967e-014 -1.3108807644909629e-019 
		-1.5099033134902129e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 92.131867710100735;
	setAttr ".ow" 79.007267014919805;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 5.3290705182007514e-015 1.7763568394002505e-015 ;
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
createNode transform -n "group1";
	setAttr ".t" -type "double3" -27.223297595977783 -57.914363861083984 12.117864608764648 ;
	setAttr ".r" -type "double3" -3.5489989737114187 -4.9696166897867462e-017 7.5231995174836328 ;
	setAttr ".rp" -type "double3" 27.223297595977783 57.914363861083984 -12.117864608764648 ;
	setAttr ".sp" -type "double3" 27.223297595977783 57.914363861083984 -12.117864608764648 ;
createNode transform -n "shield_back_bmp" -p "group1";
createNode mesh -n "shield_back_bmpShape" -p "shield_back_bmp";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:77]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 65 ".uvst[0].uvsp[0:64]" -type "float2" 0.921875 0.921875 
		0.90625 0.984375 0.88671899 0.94531298 0.097655997 0.94531298 0.078125 0.984375 0.0625 
		0.921875 0.039062999 0.96875 0.035156 0.875 0.011719 0.91406298 0.027344 0.80468798 
		0.0039059999 0.83593798 0.027344 0.203125 0.0039059999 0.16406301 0.011719 0.09375 
		0.97265601 0.91406298 0.95703101 0.80468798 0.98046899 0.83593798 0.98046899 0.16406301 
		0.95703101 0.203125 0.97265601 0.09375 0.94921899 0.13281301 0.94140601 0.039062999 
		0.921875 0.078125 0.90625 0.015625 0.88671899 0.0625 0.078125 0.015625 0.097655997 
		0.0625 0.0625 0.078125 0.27734399 0.17968801 0.035156 0.13281301 0.152344 0.17968801 
		0.152344 0.82031298 0.24218801 0.28906301 0.24218801 0.34375 0.22656301 0.28906301 
		0.22656301 0.34375 0.24218801 0.671875 0.22656301 0.671875 0.24218801 0.71875 0.22656301 
		0.71875 0.21093801 0.328125 0.1875 0.328125 0.21093801 0.38281301 0.199219 0.38281301 
		0.1875 0.6875 0.199219 0.625 0.21093801 0.6875 0.21093801 0.625 0.27734399 0.82031298 
		0.94921899 0.875 0.039062999 0.039062999 0.94140601 0.96875 0.25390601 0.24218801 
		0.25390601 0.765625 0.171875 0.24218801 0.171875 0.765625 0.21093801 0.328125 0.21093801 
		0.328125 0.1875 0.328125 0.1875 0.328125 0.1875 0.328125 0.1875 0.6875 0.1875 0.6875 
		0.1875 0.6875 0.21093801 0.6875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 52 ".vt[0:51]"  40.729023 56.998241 -41.876286 42.162994 
		58.655163 -40.075943 41.372074 56.722691 -40.149426 42.302067 53.681828 15.039028 
		43.104378 55.622013 15.132776 41.718948 53.774147 16.806864 42.508915 55.696144 16.889799 
		40.045982 54.205055 18.120945 40.848461 56.144688 18.224678 37.758442 54.87672 18.677378 
		38.54953 56.808643 18.760841 17.469585 57.139721 19.143961 17.118059 59.199085 19.2537 
		14.727138 59.058765 18.815401 39.814571 59.499588 -43.004753 36.710995 58.303345 
		-43.489429 37.511234 60.223129 -43.386761 16.080885 62.623501 -42.893372 16.42214 
		60.566345 -43.02285 13.685719 62.434071 -42.40276 14.04718 60.373596 -42.51273 11.962467 
		62.236504 -41.102543 12.303888 60.178802 -41.222042 11.342217 62.09288 -39.367157 
		11.703511 60.032959 -39.48711 12.282482 59.049809 15.841032 12.623904 56.992104 15.721536 
		13.293643 56.955257 17.45113 16.688629 57.758198 7.1312108 15.068561 57.00106 18.695906 
		16.801956 57.444706 13.142015 38.202667 55.047108 12.659294 34.533367 56.429535 3.952745 
		34.190956 53.393074 3.790653 36.222446 56.241135 3.9139011 35.879868 53.205227 3.7418261 
		34.060204 53.790985 -3.3871419 35.770447 53.609741 -3.41593 34.411434 56.81641 -3.2258091 
		36.110451 56.626904 -3.2648809 35.357128 56.38998 2.7647419 35.173279 54.763702 2.657902 
		35.083469 55.040737 -2.153311 35.28669 56.666458 -2.076879 38.111279 55.378784 6.6391091 
		39.014668 57.578701 -43.087467 12.951101 59.00304 17.570095 41.530048 58.929054 -41.793053 
		18.598253 60.915016 8.3353462 37.008129 58.851547 7.911418 18.672602 60.688751 12.228091 
		37.064842 58.647346 11.80568;
	setAttr -s 130 ".ed[0:129]"  0 1 0 1 2 0 
		2 0 0 1 3 0 3 2 0 1 4 0 
		4 3 0 4 5 0 5 3 0 4 6 0 
		6 5 0 6 7 0 7 5 0 6 8 0 
		8 7 0 8 9 0 9 7 0 8 10 0 
		10 9 0 10 11 0 11 9 0 10 12 0 
		12 11 0 12 13 0 13 11 0 14 15 0 
		15 16 0 16 14 0 15 17 0 17 16 0 
		15 18 0 18 17 0 18 19 0 19 17 0 
		18 20 0 20 19 0 20 21 0 21 19 0 
		20 22 0 22 21 0 22 23 0 23 21 0 
		22 24 0 24 23 0 24 25 0 25 23 0 
		24 26 0 26 25 0 26 27 0 27 25 0 
		18 28 0 28 20 0 28 29 0 29 20 0 
		28 30 0 30 29 0 30 11 0 11 29 0 
		30 31 0 31 11 0 31 9 0 31 7 0 
		32 33 0 33 34 0 34 32 0 33 35 0 
		35 34 0 33 36 0 36 35 0 36 37 0 
		37 35 0 36 38 0 38 37 0 38 39 0 
		39 37 0 35 40 0 40 34 0 35 41 0 
		41 40 0 37 41 0 37 42 0 42 41 0 
		39 42 0 39 43 0 43 42 0 41 32 0 
		32 40 0 41 33 0 42 33 0 42 36 0 
		43 36 0 43 38 0 44 45 0 45 7 0 
		7 44 0 45 5 0 45 0 0 0 5 0 
		0 3 0 27 20 0 29 27 0 27 22 0 
		27 24 0 44 15 0 15 45 0 44 18 0 
		44 28 0 13 46 0 46 29 0 29 13 0 
		46 27 0 46 25 0 14 47 0 47 45 0 
		45 14 0 47 0 0 47 1 0 44 48 0 
		48 28 0 44 49 0 49 48 0 30 50 0 
		50 31 0 50 51 0 51 31 0 48 50 0 
		50 28 0 44 51 0 51 49 0 44 31 0;
	setAttr -s 234 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 0.91690803 -0.35760301 -0.177201 0.91690803 -0.35760301 -0.177201 
		0.92613399 -0.372614 0.058602002 0.91690803 -0.35760301 -0.177201 0.91512299 -0.37280899 
		0.153504 0.92613399 -0.372614 0.058602002 0.92613399 -0.372614 0.058602002 0.91512299 
		-0.37280899 0.153504 0.83781803 -0.35460699 0.41510901 0.91512299 -0.37280899 0.153504 
		0.74941498 -0.32700601 0.57571203 0.83781803 -0.35460699 0.41510901 0.83781803 -0.35460699 
		0.41510901 0.74941498 -0.32700601 0.57571203 0.51980001 -0.24699999 0.817801 0.74941498 
		-0.32700601 0.57571203 0.38200599 -0.19610301 0.90311402 0.51980001 -0.24699999 0.817801 
		0.51980001 -0.24699999 0.817801 0.38200599 -0.19610301 0.90311402 0.16499799 -0.113098 
		0.97978801 0.38200599 -0.19610301 0.90311402 0.090998001 -0.084197998 0.99228501 
		0.16499799 -0.113098 0.97978801 0.16499799 -0.113098 0.97978801 0.090998001 -0.084197998 
		0.99228501 -0.101802 -0.073100999 0.99211502 0.090998001 -0.084197998 0.99228501 
		-0.101802 -0.073100999 0.99211502 -0.101802 -0.073100999 0.99211502 -0.101802 -0.073100999 
		0.99211502 -0.101802 -0.073100999 0.99211502 -0.37448701 -0.111796 0.92046797 0.35109201 
		-0.095298 -0.93147898 0.094696 0.010199 -0.99545401 0.094696 0.010199 -0.99545401 
		0.094696 0.010199 -0.99545401 0.094696 0.010199 -0.99545401 -0.095701002 0.042199999 
		-0.994515 0.094696 0.010199 -0.99545401 -0.174503 0.029300001 -0.98422098 -0.095701002 
		0.042199999 -0.994515 -0.095701002 0.042199999 -0.994515 -0.174503 0.029300001 -0.98422098 
		-0.40538999 -0.011 -0.914078 -0.174503 0.029300001 -0.98422098 -0.55202103 -0.038702 
		-0.832932 -0.40538999 -0.011 -0.914078 -0.40538999 -0.011 -0.914078 -0.55202103 -0.038702 
		-0.832932 -0.79650599 -0.090600997 -0.59780401 -0.55202103 -0.038702 -0.832932 -0.89071399 
		-0.114502 -0.43990701 -0.79650599 -0.090600997 -0.59780401 -0.79650599 -0.090600997 
		-0.59780401 -0.89071399 -0.114502 -0.43990701 -0.97315902 -0.14239401 -0.180792 -0.89071399 
		-0.114502 -0.43990701 -0.98497403 -0.14959601 -0.086297996 -0.97315902 -0.14239401 
		-0.180792 -0.97315902 -0.14239401 -0.180792 -0.98497403 -0.14959601 -0.086297996 
		-0.97541898 -0.16170301 0.149703 -0.98497403 -0.14959601 -0.086297996 -0.97541898 
		-0.16170301 0.149703 -0.97541898 -0.16170301 0.149703 -0.97541898 -0.16170301 0.149703 
		-0.97541898 -0.16170301 0.149703 -0.87569797 -0.1636 0.454299 -0.048700001 -0.997293 
		-0.055098999 0.0152 -0.99862301 -0.050200999 0.078502998 -0.99533999 -0.056001998 
		0.078502998 -0.99533999 -0.056001998 0.0152 -0.99862301 -0.050200999 0.078502998 
		-0.99533999 -0.056001998 0.0152 -0.99862301 -0.050200999 0.0152 -0.99862301 -0.050200999 
		0.078502998 -0.99533999 -0.056001998 0.078502998 -0.99533999 -0.056001998 0.0152 
		-0.99862301 -0.050200999 -0.048700001 -0.997293 -0.055098999 0.0152 -0.99862301 -0.050200999 
		-0.206195 -0.97717601 -0.051098 -0.048700001 -0.997293 -0.055098999 -0.048700001 
		-0.997293 -0.055098999 -0.206195 -0.97717601 -0.051098 -0.206195 -0.97717601 -0.051098 
		-0.206195 -0.97717601 -0.051098 -0.29850999 -0.953233 -0.047301002 -0.206195 -0.97717601 
		-0.051098 -0.993209 0.113601 0.0251 -0.852162 0.065397002 0.51917601 0.51131397 -0.102803 
		0.85322303 0.51131397 -0.102803 0.85322303 -0.852162 0.065397002 0.51917601 0.80473399 
		-0.59172499 -0.047602002 -0.852162 0.065397002 0.51917601 -0.91629797 -0.400399 -0.0088999998 
		0.80473399 -0.59172499 -0.047602002 0.80473399 -0.59172499 -0.047602002 -0.91629797 
		-0.400399 -0.0088999998 0.85266101 -0.066797003 -0.51817602 -0.91629797 -0.400399 
		-0.0088999998 -0.51119202 0.103698 -0.85318798 0.85266101 -0.066797003 -0.51817602 
		0.85266101 -0.066797003 -0.51817602 -0.51119202 0.103698 -0.85318798 0.99336499 -0.112996 
		-0.021399001 0.51131397 -0.102803 0.85322303 0.80473399 -0.59172499 -0.047602002 
		0.47989699 -0.0073000002 -0.877294 0.47989699 -0.0073000002 -0.877294 0.80473399 
		-0.59172499 -0.047602002 0.0623 0.74100399 -0.66860402 0.80473399 -0.59172499 -0.047602002 
		0.85266101 -0.066797003 -0.51817602 0.0623 0.74100399 -0.66860402 0.0623 0.74100399 
		-0.66860402 0.85266101 -0.066797003 -0.51817602 0.085001998 0.66261703 0.74411899 
		0.85266101 -0.066797003 -0.51817602 0.99336499 -0.112996 -0.021399001 0.085001998 
		0.66261703 0.74411899 0.085001998 0.66261703 0.74411899 0.99336499 -0.112996 -0.021399001 
		-0.485616 0.0087010004 0.874129 0.47989699 -0.0073000002 -0.877294 0.0623 0.74100399 
		-0.66860402 -0.993209 0.113601 0.0251 -0.993209 0.113601 0.0251 0.0623 0.74100399 
		-0.66860402 -0.852162 0.065397002 0.51917601 0.0623 0.74100399 -0.66860402 0.085001998 
		0.66261703 0.74411899 -0.852162 0.065397002 0.51917601 -0.852162 0.065397002 0.51917601 
		0.085001998 0.66261703 0.74411899 -0.91629797 -0.400399 -0.0088999998 0.085001998 
		0.66261703 0.74411899 -0.485616 0.0087010004 0.874129 -0.91629797 -0.400399 -0.0088999998 
		-0.91629797 -0.400399 -0.0088999998 -0.485616 0.0087010004 0.874129 -0.51119202 0.103698 
		-0.85318798 -0.206195 -0.97717601 -0.051098 -0.29850999 -0.953233 -0.047301002 -0.29850999 
		-0.953233 -0.047301002 -0.29850999 -0.953233 -0.047301002 -0.29850999 -0.953233 -0.047301002 
		-0.29850999 -0.953233 -0.047301002 -0.29850999 -0.953233 -0.047301002 -0.29850999 
		-0.953233 -0.047301002 -0.29850999 -0.953233 -0.047301002 -0.29850999 -0.953233 -0.047301002 
		-0.29850999 -0.953233 -0.047301002 -0.29850999 -0.953233 -0.047301002 -0.29850999 
		-0.953233 -0.047301002 -0.29850999 -0.953233 -0.047301002 -0.29850999 -0.953233 -0.047301002 
		0.078502998 -0.99533999 -0.056001998 0.078502998 -0.99533999 -0.056001998 0.078502998 
		-0.99533999 -0.056001998 0.078502998 -0.99533999 -0.056001998;
	setAttr ".n[166:233]" -type "float3"  0.078502998 -0.99533999 -0.056001998 
		0.078502998 -0.99533999 -0.056001998 0.078502998 -0.99533999 -0.056001998 0.078502998 
		-0.99533999 -0.056001998 0.078502998 -0.99533999 -0.056001998 0.078502998 -0.99533999 
		-0.056001998 0.078502998 -0.99533999 -0.056001998 0.078502998 -0.99533999 -0.056001998 
		-0.29850999 -0.953233 -0.047301002 -0.206195 -0.97717601 -0.051098 -0.206195 -0.97717601 
		-0.051098 -0.206195 -0.97717601 -0.051098 -0.206195 -0.97717601 -0.051098 -0.048700001 
		-0.997293 -0.055098999 -0.206195 -0.97717601 -0.051098 0.0152 -0.99862301 -0.050200999 
		-0.048700001 -0.997293 -0.055098999 -0.37448701 -0.111796 0.92046797 -0.77616501 
		-0.156993 0.610672 -0.52382398 -0.130706 0.841739 -0.52382398 -0.130706 0.841739 
		-0.77616501 -0.156993 0.610672 -0.87569797 -0.1636 0.454299 -0.77616501 -0.156993 
		0.610672 -0.97541898 -0.16170301 0.149703 -0.87569797 -0.1636 0.454299 0.35109201 
		-0.095298 -0.93147898 0.72907799 -0.26059201 -0.63287997 0.49160701 -0.155002 -0.856911 
		0.49160701 -0.155002 -0.856911 0.72907799 -0.26059201 -0.63287997 0.82284099 -0.305415 
		-0.47922301 0.72907799 -0.26059201 -0.63287997 0.91690803 -0.35760301 -0.177201 0.82284099 
		-0.305415 -0.47922301 -0.023401 -0.39811599 0.91703701 -0.023401 -0.39811599 0.91703701 
		-0.023401 -0.39811599 0.91703701 -0.023401 -0.39811599 0.91703701 -0.023401 -0.39811599 
		0.91703701 -0.023401 -0.39811599 0.91703701 -0.054901 -0.29530799 -0.95382398 -0.054901 
		-0.29530799 -0.95382398 -0.054901 -0.29530799 -0.95382398 -0.054901 -0.29530799 -0.95382398 
		-0.054901 -0.29530799 -0.95382398 -0.054901 -0.29530799 -0.95382398 0.87096202 -0.48957801 
		-0.041698001 0.87096202 -0.48957801 -0.041698001 0.87096202 -0.48957801 -0.041698001 
		0.87096202 -0.48957801 -0.041698001 0.87096202 -0.48957801 -0.041698001 0.87096202 
		-0.48957801 -0.041698001 -0.958561 -0.284888 0.00039999999 -0.958561 -0.284888 0.00039999999 
		-0.958561 -0.284888 0.00039999999 -0.958561 -0.284888 0.00039999999 -0.958561 -0.284888 
		0.00039999999 -0.958561 -0.284888 0.00039999999 -0.37448701 -0.111796 0.92046797 
		-0.52382398 -0.130706 0.841739 -0.101802 -0.073100999 0.99211502 0.35109201 -0.095298 
		-0.93147898 0.49160701 -0.155002 -0.856911 0.094696 0.010199 -0.99545401 -0.206195 
		-0.97717601 -0.051098 -0.29850999 -0.953233 -0.047301002 -0.206195 -0.97717601 -0.051098;
	setAttr -s 78 ".fc[0:77]" -type "polyFaces" 
		f 3 0 1 2 
		mu 0 3 0 1 2 
		f 3 -2 3 4 
		mu 0 3 2 1 3 
		f 3 5 6 -4 
		mu 0 3 1 4 3 
		f 3 -7 7 8 
		mu 0 3 3 4 5 
		f 3 9 10 -8 
		mu 0 3 4 6 5 
		f 3 -11 11 12 
		mu 0 3 5 6 7 
		f 3 13 14 -12 
		mu 0 3 6 8 7 
		f 3 -15 15 16 
		mu 0 3 7 8 9 
		f 3 17 18 -16 
		mu 0 3 8 10 9 
		f 3 -19 19 20 
		mu 0 3 9 10 11 
		f 3 21 22 -20 
		mu 0 3 10 12 11 
		f 3 -23 23 24 
		mu 0 3 11 12 13 
		f 3 25 26 27 
		mu 0 3 14 15 16 
		f 3 -27 28 29 
		mu 0 3 16 15 17 
		f 3 30 31 -29 
		mu 0 3 15 18 17 
		f 3 -32 32 33 
		mu 0 3 17 18 19 
		f 3 34 35 -33 
		mu 0 3 18 20 19 
		f 3 -36 36 37 
		mu 0 3 19 20 21 
		f 3 38 39 -37 
		mu 0 3 20 22 21 
		f 3 -40 40 41 
		mu 0 3 21 22 23 
		f 3 42 43 -41 
		mu 0 3 22 24 23 
		f 3 -44 44 45 
		mu 0 3 23 24 25 
		f 3 46 47 -45 
		mu 0 3 24 26 25 
		f 3 -48 48 49 
		mu 0 3 25 26 27 
		f 3 50 51 -35 
		mu 0 3 18 28 20 
		f 3 -52 52 53 
		mu 0 3 20 28 29 
		f 3 54 55 -53 
		mu 0 3 28 30 29 
		f 3 -56 56 57 
		mu 0 3 29 30 11 
		f 3 58 59 -57 
		mu 0 3 30 31 11 
		f 3 -60 60 -21 
		mu 0 3 11 31 9 
		f 3 61 -17 -61 
		mu 0 3 31 7 9 
		f 3 62 63 64 
		mu 0 3 32 33 34 
		f 3 -64 65 66 
		mu 0 3 34 33 35 
		f 3 67 68 -66 
		mu 0 3 33 36 35 
		f 3 -69 69 70 
		mu 0 3 35 36 37 
		f 3 71 72 -70 
		mu 0 3 36 38 37 
		f 3 -73 73 74 
		mu 0 3 37 38 39 
		f 3 -67 75 76 
		mu 0 3 40 41 42 
		f 3 -76 77 78 
		mu 0 3 42 41 43 
		f 3 -71 79 -78 
		mu 0 3 41 44 43 
		f 3 -80 80 81 
		mu 0 3 43 44 45 
		f 3 -75 82 -81 
		mu 0 3 44 46 45 
		f 3 -83 83 84 
		mu 0 3 45 46 47 
		f 3 -79 85 86 
		mu 0 3 42 43 56 
		f 3 -86 87 -63 
		mu 0 3 57 43 58 
		f 3 -82 88 -88 
		mu 0 3 43 45 59 
		f 3 -89 89 -68 
		mu 0 3 60 45 61 
		f 3 -85 90 -90 
		mu 0 3 45 47 62 
		f 3 -91 91 -72 
		mu 0 3 63 47 64 
		f 3 92 93 94 
		mu 0 3 48 49 7 
		f 3 -94 95 -13 
		mu 0 3 7 49 5 
		f 3 96 97 -96 
		mu 0 3 49 0 5 
		f 3 -98 98 -9 
		mu 0 3 5 0 3 
		f 3 -3 -5 -99 
		mu 0 3 0 2 3 
		f 3 99 -54 100 
		mu 0 3 27 20 29 
		f 3 101 -39 -100 
		mu 0 3 27 22 20 
		f 3 102 -43 -102 
		mu 0 3 27 24 22 
		f 3 -49 -47 -103 
		mu 0 3 27 26 24 
		f 3 -93 103 104 
		mu 0 3 49 48 15 
		f 3 -104 105 -31 
		mu 0 3 15 48 18 
		f 3 106 -51 -106 
		mu 0 3 48 28 18 
		f 3 107 108 109 
		mu 0 3 13 50 29 
		f 3 -109 110 -101 
		mu 0 3 29 50 27 
		f 3 111 -50 -111 
		mu 0 3 50 25 27 
		f 3 112 113 114 
		mu 0 3 14 51 49 
		f 3 -114 115 -97 
		mu 0 3 49 51 0 
		f 3 116 -1 -116 
		mu 0 3 51 1 0 
		f 3 -107 117 118 
		mu 0 3 28 48 52 
		f 3 -118 119 120 
		mu 0 3 52 48 53 
		f 3 121 122 -59 
		mu 0 3 30 54 31 
		f 3 -123 123 124 
		mu 0 3 31 54 55 
		f 3 125 126 -119 
		mu 0 3 52 54 28 
		f 3 -127 -122 -55 
		mu 0 3 28 54 30 
		f 3 -120 127 128 
		mu 0 3 53 48 55 
		f 3 -128 129 -125 
		mu 0 3 55 48 31 
		f 3 -110 -58 -25 
		mu 0 3 13 29 11 
		f 3 -115 -105 -26 
		mu 0 3 14 49 15 
		f 3 -95 -62 -130 
		mu 0 3 48 7 31 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "shield_front_bmp" -p "group1";
createNode mesh -n "shield_front_bmpShape" -p "shield_front_bmp";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:35]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 46 ".uvst[0].uvsp[0:45]" -type "float2" 0.89843798 0.023437999 
		0.93359399 0.039062999 0.085937999 0.023437999 0.046875 0.039062999 0.96484399 0.09375 
		0.019531 0.09375 0.97265601 0.16406301 0.265625 0.16406301 0.97265601 0.83593798 
		0.265625 0.83593798 0.96484399 0.90625 0.019531 0.90625 0.046875 0.96093798 0.160156 
		0.765625 0.140625 0.19531301 0.160156 0.234375 0.234375 0.234375 0.25390601 0.19531301 
		0.234375 0.765625 0.25390601 0.8125 0.140625 0.8125 0.13281301 0.16406301 0.0078130001 
		0.16406301 0.13281301 0.83593798 0.0078130001 0.83593798 0.085937999 0.984375 0.89843798 
		0.984375 0.93359399 0.96093798 0.21875 0.72656298 0.22656301 0.72656298 0.21875 0.27343801 
		0.22656301 0.27343801 0.191406 0.63281298 0.207031 0.63281298 0.191406 0.359375 0.207031 
		0.359375 0.171875 0.734375 0.171875 0.27343801 0.183594 0.734375 0.183594 0.27343801 
		0.207031 0.63281298 0.191406 0.63281298 0.207031 0.359375 0.207031 0.359375 0.191406 
		0.63281298 0.191406 0.359375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 28 ".vt[0:27]"  42.162994 58.655163 -40.075943 41.530048 
		58.929054 -41.793053 43.104378 55.622013 15.132776 42.508915 55.696144 16.889799 
		39.814571 59.499588 -43.004753 40.848461 56.144688 18.224678 37.511234 60.223129 
		-43.386761 38.33857 57.483582 6.751637 16.080885 62.623501 -42.893372 16.935789 59.860779 
		7.2432809 13.685719 62.434071 -42.40276 14.727138 59.058765 18.815401 12.951101 59.00304 
		17.570095 18.672602 60.688751 12.228091 38.591942 58.40992 12.838637 37.064842 58.647346 
		11.80568 37.008129 58.851547 7.911418 38.480682 58.743813 6.8189101 18.598253 60.915016 
		8.3353462 17.070204 61.141964 7.311842 17.171528 60.809181 13.3318 38.439896 57.150799 
		12.771593 38.54953 56.808643 18.760841 17.037113 59.527996 13.263237 17.118059 59.199085 
		19.2537 12.282482 59.049809 15.841032 11.342217 62.09288 -39.367157 11.962467 62.236504 
		-41.102543;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 
		2 0 0 1 3 0 3 2 0 1 4 0 
		4 3 0 4 5 0 5 3 0 4 6 0 
		6 5 0 6 7 0 7 5 0 6 8 0 
		8 7 0 8 9 0 9 7 0 8 10 0 
		10 9 0 10 11 0 11 9 0 10 12 0 
		12 11 0 13 14 0 14 15 0 15 13 0 
		14 16 0 16 15 0 14 17 0 17 16 0 
		17 18 0 18 16 0 17 19 0 19 18 0 
		19 13 0 13 18 0 19 20 0 20 13 0 
		20 14 0 7 21 0 21 5 0 21 22 0 
		22 5 0 21 23 0 23 22 0 23 24 0 
		24 22 0 23 11 0 11 24 0 25 12 0 
		12 26 0 26 25 0 12 27 0 27 26 0 
		10 27 0 9 19 0 19 7 0 17 7 0 
		17 21 0 14 21 0 21 20 0 20 23 0 
		9 20 0 9 23 0;
	setAttr -s 108 ".n[0:107]" -type "float3"  1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 0.29850999 0.953233 0.047301002 0.29850999 0.953233 
		0.047301002 0.29850999 0.953233 0.047301002 0.29850999 0.953233 0.047301002 0.29850999 
		0.953233 0.047301002 0.29850999 0.953233 0.047301002 0.29850999 0.953233 0.047301002 
		0.29850999 0.953233 0.047301002 0.29850999 0.953233 0.047301002 0.29850999 0.953233 
		0.047301002 0.237202 0.970209 0.0493 0.29850999 0.953233 0.047301002 0.29850999 0.953233 
		0.047301002 0.237202 0.970209 0.0493 0.17489301 0.98326099 0.051098 0.237202 0.970209 
		0.0493 0.016899001 0.99836498 0.054598 0.17489301 0.98326099 0.051098 0.17489301 
		0.98326099 0.051098 0.016899001 0.99836498 0.054598 -0.0309 0.99799198 0.055298999 
		0.016899001 0.99836498 0.054598 -0.078502998 0.99533999 0.056001998 -0.0309 0.99799198 
		0.055298999 -0.0309 0.99799198 0.055298999 -0.078502998 0.99533999 0.056001998 -0.078502998 
		0.99533999 0.056001998 -0.078502998 0.99533999 0.056001998 -0.078502998 0.99533999 
		0.056001998 -0.078502998 0.99533999 0.056001998 0.112002 0.99231499 0.0526 0.112002 
		0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 
		0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 
		0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 
		0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 
		0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 
		0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 
		0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 0.99231499 0.0526 0.112002 
		0.99231499 0.0526 0.112002 0.99231499 0.0526 0.17489301 0.98326099 0.051098 0.237202 
		0.970209 0.0493 0.29850999 0.953233 0.047301002 0.29850999 0.953233 0.047301002 0.237202 
		0.970209 0.0493 0.17489301 0.98326099 0.051098 0.237202 0.970209 0.0493 0.016899001 
		0.99836498 0.054598 0.17489301 0.98326099 0.051098 0.17489301 0.98326099 0.051098 
		0.016899001 0.99836498 0.054598 0.016899001 0.99836498 0.054598 0.016899001 0.99836498 
		0.054598 -0.078502998 0.99533999 0.056001998 0.016899001 0.99836498 0.054598 -0.078502998 
		0.99533999 0.056001998 -0.078502998 0.99533999 0.056001998 -0.078502998 0.99533999 
		0.056001998 -0.078502998 0.99533999 0.056001998 -0.078502998 0.99533999 0.056001998 
		-0.078502998 0.99533999 0.056001998 -0.078502998 0.99533999 0.056001998 -0.078502998 
		0.99533999 0.056001998 -0.078502998 0.99533999 0.056001998 -0.016798999 0.054797001 
		-0.99835598 -0.016798999 0.054797001 -0.99835598 -0.016798999 0.054797001 -0.99835598 
		-0.016798999 0.054797001 -0.99835598 -0.016798999 0.054797001 -0.99835598 -0.016798999 
		0.054797001 -0.99835598 0.99359202 -0.110699 -0.0228 0.99359202 -0.110699 -0.0228 
		0.99359202 -0.110699 -0.0228 0.99359202 -0.110699 -0.0228 0.99359202 -0.110699 -0.0228 
		0.99359202 -0.110699 -0.0228 0.016798999 -0.054797001 0.99835598 0.016798999 -0.054797001 
		0.99835598 0.016798999 -0.054797001 0.99835598 0.016798999 -0.054797001 0.99835598 
		0.016798999 -0.054797001 0.99835598 0.016798999 -0.054797001 0.99835598 -0.99358302 
		0.110698 0.023198999 -0.99358302 0.110698 0.023198999 -0.99358302 0.110698 0.023198999 
		-0.99358302 0.110698 0.023198999 -0.99358302 0.110698 0.023198999 -0.99358302 0.110698 
		0.023198999 0.016899001 0.99836498 0.054598 -0.0309 0.99799198 0.055298999 -0.078502998 
		0.99533999 0.056001998;
	setAttr -s 36 ".fc[0:35]" -type "polyFaces" 
		f 3 0 1 2 
		mu 0 3 0 1 2 
		f 3 -2 3 4 
		mu 0 3 2 1 3 
		f 3 5 6 -4 
		mu 0 3 1 4 3 
		f 3 -7 7 8 
		mu 0 3 3 4 5 
		f 3 9 10 -8 
		mu 0 3 4 6 5 
		f 3 -11 11 12 
		mu 0 3 5 6 7 
		f 3 13 14 -12 
		mu 0 3 6 8 7 
		f 3 -15 15 16 
		mu 0 3 7 8 9 
		f 3 17 18 -16 
		mu 0 3 8 10 9 
		f 3 -19 19 20 
		mu 0 3 9 10 11 
		f 3 21 22 -20 
		mu 0 3 10 12 11 
		f 3 23 24 25 
		mu 0 3 13 14 15 
		f 3 -25 26 27 
		mu 0 3 15 14 16 
		f 3 28 29 -27 
		mu 0 3 14 17 16 
		f 3 -30 30 31 
		mu 0 3 16 17 18 
		f 3 32 33 -31 
		mu 0 3 17 19 18 
		f 3 -34 34 35 
		mu 0 3 18 19 13 
		f 3 36 37 -35 
		mu 0 3 19 20 13 
		f 3 -38 38 -24 
		mu 0 3 13 20 14 
		f 3 39 40 -13 
		mu 0 3 7 21 5 
		f 3 -41 41 42 
		mu 0 3 5 21 22 
		f 3 43 44 -42 
		mu 0 3 21 23 22 
		f 3 -45 45 46 
		mu 0 3 22 23 24 
		f 3 47 48 -46 
		mu 0 3 23 11 24 
		f 3 49 50 51 
		mu 0 3 25 12 26 
		f 3 -51 52 53 
		mu 0 3 26 12 27 
		f 3 -22 54 -53 
		mu 0 3 12 10 27 
		f 3 55 56 -17 
		mu 0 3 28 29 30 
		f 3 -57 -33 57 
		mu 0 3 30 29 31 
		f 3 -58 58 -40 
		mu 0 3 32 33 34 
		f 3 -59 -29 59 
		mu 0 3 34 33 35 
		f 3 -44 60 61 
		mu 0 3 36 37 38 
		f 3 -61 -60 -39 
		mu 0 3 38 37 39 
		f 3 -56 62 -37 
		mu 0 3 40 41 42 
		f 3 -63 63 -62 
		mu 0 3 43 44 45 
		f 3 -64 -21 -48 
		mu 0 3 23 9 11 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode transform -n "shield_glass_bmp" -p "group1";
createNode mesh -n "shield_glass_bmpShape" -p "shield_glass_bmp";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.96875 0.015625 
		0.96875 0.984375 0 0.015625 0 0.984375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 4 ".vt[0:3]"  17.328367 60.61861 7.5089502 17.422127 60.310661 
		13.079656 38.122826 58.289165 7.0301838 38.216587 57.98122 12.600889;
	setAttr -s 5 ".ed[0:4]"  0 1 0 1 2 0 
		2 0 0 1 3 0 3 2 0;
	setAttr -s 12 ".n[0:11]" -type "float3"  1e+020 1e+020 1e+020 1e+020 
		1e+020 1e+020 1e+020 1e+020 1e+020 0.112002 0.99231499 0.0526 0.112002 0.99231499 
		0.0526 0.112002 0.99231499 0.0526 -0.112002 -0.99231499 -0.0526 -0.112002 -0.99231499 
		-0.0526 -0.112002 -0.99231499 -0.0526 -0.112002 -0.99231499 -0.0526 -0.112002 -0.99231499 
		-0.0526 -0.112002 -0.99231499 -0.0526;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 3 0 1 2 
		mu 0 3 0 1 2 
		f 3 -2 3 4 
		mu 0 3 2 1 3 
		f 3 -3 -2 -1 
		mu 0 3 0 2 1 
		f 3 1 -5 -4 
		mu 0 3 1 2 3 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
createNode shadingEngine -n "shield_back_bmp1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode phong -n "shield_back_bmp2";
	setAttr ".ambc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".cp" 2;
createNode file -n "shield_back_bmp2F";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Jaime/Desktop/M67 Nade/shield_back.bmp";
createNode place2dTexture -n "shield_back_bmp2P2D";
createNode shadingEngine -n "shield_front_bmp1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode phong -n "shield_front_bmp2";
	setAttr ".ambc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".cp" 2;
createNode file -n "shield_front_bmp2F";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Jaime/Desktop/M67 Nade/shield_front.bmp";
createNode place2dTexture -n "shield_front_bmp2P2D";
createNode shadingEngine -n "shield_glass_bmp1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode phong -n "shield_glass_bmp2";
	setAttr ".ambc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".cp" 2;
createNode file -n "shield_glass_bmp2F";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Jaime/Desktop/M67 Nade/shield_glass.bmp";
createNode place2dTexture -n "shield_glass_bmp2P2D";
createNode lightLinker -n "lightLinker1";
	setAttr -s 8 ".lnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Top View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Top View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Top View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n"
		+ "            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n"
		+ "            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Side View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Side View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Side View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Front View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Front View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Front View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Persp View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Persp View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"none\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Persp View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"none\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" \"Outliner\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l \"Outliner\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -mainListConnection \"worldList\" \n                -selectionConnection \"modelList\" \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n"
		+ "                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l \"Outliner\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -mainListConnection \"worldList\" \n            -selectionConnection \"modelList\" \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" \"Graph Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l \"Graph Editor\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"graphEditorList\" \n                -selectionConnection \"graphEditor1FromOutliner\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -mainListConnection \"graphEditor1FromOutliner\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Graph Editor\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"graphEditorList\" \n"
		+ "                -selectionConnection \"graphEditor1FromOutliner\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -mainListConnection \"graphEditor1FromOutliner\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" \"Dope Sheet\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l \"Dope Sheet\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"animationList\" \n                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Dope Sheet\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"animationList\" \n                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" \"Trax Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l \"Trax Editor\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -mainListConnection \"clipEditorList\" \n                -highlightConnection \"clipEditorPanel1HighlightConnection\" \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Trax Editor\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -mainListConnection \"clipEditorList\" \n                -highlightConnection \"clipEditorPanel1HighlightConnection\" \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" \"Relationship Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l \"Relationship Editor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Relationship Editor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" \"Hypershade\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l \"Hypershade\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Hypershade\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" \"Visor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l \"Visor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Visor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" \"Reference Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l \"Reference Editor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Reference Editor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" \"Web Browser\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l \"Web Browser\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Web Browser\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" \"Paint Effects\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l \"Paint Effects\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Paint Effects\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" \"Render Window Panel 1\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l \"Render Window Panel 1\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Render Window Panel 1\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl \"Current Layout\"`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label \"Current Layout\"\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t\"Outliner\"\n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l \\\"Outliner\\\" -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -mainListConnection \\\"worldList\\\" \\n    -selectionConnection \\\"modelList\\\" \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l \\\"Outliner\\\" -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -mainListConnection \\\"worldList\\\" \\n    -selectionConnection \\\"modelList\\\" \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t\"Persp View\"\n\t\t\t\t\t\"modelPanel\"\n\t\t\t\t\t\"$panelName = `modelPanel -unParent -l \\\"Persp View\\\" -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"none\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l \\\"Persp View\\\" -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"none\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout \"Current Layout\";\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId4.id" "shield_back_bmpShape.iog.og[0].gid";
connectAttr "shield_back_bmp1.mwc" "shield_back_bmpShape.iog.og[0].gco";
connectAttr "groupId5.id" "shield_front_bmpShape.iog.og[0].gid";
connectAttr "shield_front_bmp1.mwc" "shield_front_bmpShape.iog.og[0].gco";
connectAttr "groupId6.id" "shield_glass_bmpShape.iog.og[0].gid";
connectAttr "shield_glass_bmp1.mwc" "shield_glass_bmpShape.iog.og[0].gco";
connectAttr "shield_back_bmp2.oc" "shield_back_bmp1.ss";
connectAttr "groupId4.msg" "shield_back_bmp1.gn" -na;
connectAttr "shield_back_bmpShape.iog.og[0]" "shield_back_bmp1.dsm" -na;
connectAttr "shield_back_bmp1.msg" "materialInfo4.sg";
connectAttr "shield_back_bmp2.msg" "materialInfo4.m";
connectAttr "shield_back_bmp2F.msg" "materialInfo4.t" -na;
connectAttr "shield_back_bmp2F.oc" "shield_back_bmp2.c";
connectAttr "shield_back_bmp2P2D.c" "shield_back_bmp2F.c";
connectAttr "shield_back_bmp2P2D.tf" "shield_back_bmp2F.tf";
connectAttr "shield_back_bmp2P2D.rf" "shield_back_bmp2F.rf";
connectAttr "shield_back_bmp2P2D.s" "shield_back_bmp2F.s";
connectAttr "shield_back_bmp2P2D.wu" "shield_back_bmp2F.wu";
connectAttr "shield_back_bmp2P2D.wv" "shield_back_bmp2F.wv";
connectAttr "shield_back_bmp2P2D.re" "shield_back_bmp2F.re";
connectAttr "shield_back_bmp2P2D.of" "shield_back_bmp2F.of";
connectAttr "shield_back_bmp2P2D.r" "shield_back_bmp2F.ro";
connectAttr "shield_back_bmp2P2D.o" "shield_back_bmp2F.uv";
connectAttr "shield_back_bmp2P2D.ofs" "shield_back_bmp2F.fs";
connectAttr "shield_front_bmp2.oc" "shield_front_bmp1.ss";
connectAttr "groupId5.msg" "shield_front_bmp1.gn" -na;
connectAttr "shield_front_bmpShape.iog.og[0]" "shield_front_bmp1.dsm" -na;
connectAttr "shield_front_bmp1.msg" "materialInfo5.sg";
connectAttr "shield_front_bmp2.msg" "materialInfo5.m";
connectAttr "shield_front_bmp2F.msg" "materialInfo5.t" -na;
connectAttr "shield_front_bmp2F.oc" "shield_front_bmp2.c";
connectAttr "shield_front_bmp2P2D.c" "shield_front_bmp2F.c";
connectAttr "shield_front_bmp2P2D.tf" "shield_front_bmp2F.tf";
connectAttr "shield_front_bmp2P2D.rf" "shield_front_bmp2F.rf";
connectAttr "shield_front_bmp2P2D.s" "shield_front_bmp2F.s";
connectAttr "shield_front_bmp2P2D.wu" "shield_front_bmp2F.wu";
connectAttr "shield_front_bmp2P2D.wv" "shield_front_bmp2F.wv";
connectAttr "shield_front_bmp2P2D.re" "shield_front_bmp2F.re";
connectAttr "shield_front_bmp2P2D.of" "shield_front_bmp2F.of";
connectAttr "shield_front_bmp2P2D.r" "shield_front_bmp2F.ro";
connectAttr "shield_front_bmp2P2D.o" "shield_front_bmp2F.uv";
connectAttr "shield_front_bmp2P2D.ofs" "shield_front_bmp2F.fs";
connectAttr "shield_glass_bmp2.oc" "shield_glass_bmp1.ss";
connectAttr "groupId6.msg" "shield_glass_bmp1.gn" -na;
connectAttr "shield_glass_bmpShape.iog.og[0]" "shield_glass_bmp1.dsm" -na;
connectAttr "shield_glass_bmp1.msg" "materialInfo6.sg";
connectAttr "shield_glass_bmp2.msg" "materialInfo6.m";
connectAttr "shield_glass_bmp2F.msg" "materialInfo6.t" -na;
connectAttr "shield_glass_bmp2F.oc" "shield_glass_bmp2.c";
connectAttr "shield_glass_bmp2P2D.c" "shield_glass_bmp2F.c";
connectAttr "shield_glass_bmp2P2D.tf" "shield_glass_bmp2F.tf";
connectAttr "shield_glass_bmp2P2D.rf" "shield_glass_bmp2F.rf";
connectAttr "shield_glass_bmp2P2D.s" "shield_glass_bmp2F.s";
connectAttr "shield_glass_bmp2P2D.wu" "shield_glass_bmp2F.wu";
connectAttr "shield_glass_bmp2P2D.wv" "shield_glass_bmp2F.wv";
connectAttr "shield_glass_bmp2P2D.re" "shield_glass_bmp2F.re";
connectAttr "shield_glass_bmp2P2D.of" "shield_glass_bmp2F.of";
connectAttr "shield_glass_bmp2P2D.r" "shield_glass_bmp2F.ro";
connectAttr "shield_glass_bmp2P2D.o" "shield_glass_bmp2F.uv";
connectAttr "shield_glass_bmp2P2D.ofs" "shield_glass_bmp2F.fs";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "shield_back_bmp1.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr "shield_front_bmp1.msg" "lightLinker1.lnk[4].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr "shield_glass_bmp1.msg" "lightLinker1.lnk[5].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[6].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[7].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "shield_back_bmp1.pa" ":renderPartition.st" -na;
connectAttr "shield_front_bmp1.pa" ":renderPartition.st" -na;
connectAttr "shield_glass_bmp1.pa" ":renderPartition.st" -na;
connectAttr "shield_back_bmp2.msg" ":defaultShaderList1.s" -na;
connectAttr "shield_front_bmp2.msg" ":defaultShaderList1.s" -na;
connectAttr "shield_glass_bmp2.msg" ":defaultShaderList1.s" -na;
connectAttr "shield_back_bmp2P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shield_front_bmp2P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "shield_glass_bmp2P2D.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "shield_back_bmp2F.msg" ":defaultTextureList1.tx" -na;
connectAttr "shield_front_bmp2F.msg" ":defaultTextureList1.tx" -na;
connectAttr "shield_glass_bmp2F.msg" ":defaultTextureList1.tx" -na;
// End of Shield.ma
