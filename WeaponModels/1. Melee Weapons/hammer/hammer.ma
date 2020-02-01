//Maya ASCII 2008 scene
//Name: hammer.ma
//Last modified: Thu, Oct 16, 2008 12:26:28 PM
//Codeset: 1252
requires maya "2008";
requires "Mayatomr" "9.0.1.4m - 3.6.51.0 ";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2008";
fileInfo "version" "2008 Extension 2";
fileInfo "cutIdentifier" "200802250025-718075";
fileInfo "osv" "Microsoft Windows XP Service Pack 3 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.87828991409137713 0.77076608918721901 1.8401211424297139 ;
	setAttr ".r" -type "double3" -11.73835272961086 -22.600000000088908 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 2.0444143121420484;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0083684474229812622 0.322647824883461 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.0083684474229812622 100.1000003509359 2.2155022822112889e-014 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.0526315789473684;
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
createNode transform -n "polySurface74";
createNode mesh -n "polySurfaceShape77" -p "polySurface74";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:179]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 244 ".uvst[0].uvsp[0:243]" -type "float2" 0.97346234 0.64758635 
		0.99386376 0.64758635 0.97346234 0.87975627 0.97346234 0.81175524 0.0076702721 0.75762975 
		0.0076702721 0.64758635 0.23318756 0.64758635 0.23318756 0.75762975 0.0076702721 
		0.80321121 0.23318756 0.80321121 0.0076702721 0.75762975 0.23318756 0.75762975 0.0076702721 
		0.64758635 0.23318756 0.64758635 0.0076702721 0.53754228 0.23318756 0.53754228 0.10733283 
		0.49196097 0.10728788 0.51738977 0.23318756 0.49196097 0.23318756 0.53754228 0.10734093 
		0.51605546 0.0076702721 0.53754228 0.28888738 0.64758635 0.28888738 0.81718707 0.28888738 
		0.88743764 0.28888738 0.81718707 0.28888738 0.64758635 0.28888738 0.47798565 0.28888738 
		0.40773407 0.28888738 0.47798565 0.35386515 0.64758635 0.35386515 0.76079601 0.35386515 
		0.80768883 0.35386515 0.76079601 0.35386515 0.64758635 0.35386515 0.53437668 0.35386515 
		0.48748386 0.35386515 0.53437668 0.55335975 0.88995469 0.55335975 0.64758635 0.92001271 
		0.64758635 0.92001271 0.89138502 0.55335927 0.99034715 0.92001224 0.99237013 0.55335927 
		0.88995469 0.92001224 0.89138502 0.55335975 0.64758635 0.92001271 0.64758635 0.55336022 
		0.40521735 0.92001295 0.40378669 0.55335927 0.30482525 0.92001224 0.30280221 0.55335879 
		0.40521735 0.92001176 0.40378669 0.47882175 0.75469375 0.47882175 0.64758635 0.53880119 
		0.64758635 0.53880119 0.79528505 0.47882175 0.79905915 0.53880119 0.85646409 0.47882175 
		0.75469375 0.53880119 0.79528505 0.47882175 0.64758635 0.53880119 0.64758635 0.47882175 
		0.54047877 0.53880119 0.49988663 0.47882175 0.49611351 0.53880119 0.43870813 0.47882175 
		0.54047877 0.53880119 0.49988663 0.41884279 0.82419646 0.41884279 0.64758635 0.41884279 
		0.89735049 0.41884279 0.82419646 0.41884279 0.64758635 0.41884279 0.4709762 0.41884279 
		0.39782104 0.41884279 0.4709762 0.97346234 0.81175524 0.97346234 0.64758635 0.97346234 
		0.48341694 0.97346234 0.41541544 0.97346234 0.48341694 0.020102501 0.96008903 0.0069918633 
		0.95933312 0.0070157051 0.92809534 0.020125389 0.92821151 0.0076702721 0.51731843 
		0.0076702721 0.51599395 0.93340373 0.17006528 0.93352377 0.2179005 0.85452473 0.21806265 
		0.91700363 0.16992685 0.1323905 0.087031186 0.13245773 0.0079928637 0.85452962 0.0079927705 
		0.85452938 0.087030999 0.13100624 0.28785706 0.13092804 0.2180624 0.85452509 0.28785709 
		0.15879726 0.15078163 0.93356776 0.08722049 0.9334166 0.13192555 0.91701615 0.13098714 
		0.53350687 0.96008992 0.5335052 0.97320008 0.020100594 0.97320008 0.53354859 0.91585279 
		0.53352892 0.92896271 0.020144463 0.91510171 0.97346234 0.64758635 0.97346234 0.81175524 
		0.97346234 0.87975627 0.99386376 0.64758635 0.0076702721 0.75762975 0.23318756 0.75762975 
		0.23318756 0.64758635 0.0076702721 0.64758635 0.0076702721 0.80321121 0.23318756 
		0.80321121 0.23318756 0.53754228 0.23318756 0.49196097 0.10733283 0.49196097 0.10734093 
		0.51605546 0.0076702721 0.53754228 0.28888738 0.81718707 0.28888738 0.64758635 0.28888738 
		0.88743764 0.28888738 0.47798565 0.28888738 0.40773407 0.35386515 0.76079601 0.35386515 
		0.64758635 0.35386515 0.80768883 0.35386515 0.53437668 0.35386515 0.48748386 0.55335975 
		0.88995469 0.92001271 0.89138502 0.92001271 0.64758635 0.55335975 0.64758635 0.55335927 
		0.99034715 0.92001224 0.99237013 0.55335879 0.40521735 0.92001176 0.40378669 0.92001224 
		0.30280221 0.55335927 0.30482525 0.47882175 0.75469375 0.53880119 0.79528505 0.53880119 
		0.64758635 0.47882175 0.64758635 0.47882175 0.79905915 0.53880119 0.85646409 0.47882175 
		0.54047877 0.53880119 0.49988663 0.53880119 0.43870813 0.47882175 0.49611351 0.41884279 
		0.82419646 0.41884279 0.64758635 0.41884279 0.89735049 0.41884279 0.4709762 0.41884279 
		0.39782104 0.97346234 0.41541544 0.97346234 0.48341694 0.0076702721 0.51599395 0.1323905 
		0.087031186 0.85452938 0.087030999 0.85452962 0.0079927705 0.13245773 0.0079928637 
		0.93356776 0.08722049 0.91701615 0.13098714 0.9334166 0.13192555 0.85452473 0.21806265 
		0.91700363 0.16992685 0.15879726 0.15078163 0.0076702721 0.75762975 0.23318756 0.75762975 
		0.23318756 0.80321121 0.0076702721 0.80321121 0.0076702721 0.64758635 0.23318756 
		0.64758635 0.0076702721 0.53754228 0.23318756 0.53754228 0.10733283 0.49196097 0.23318756 
		0.49196097 0.10728788 0.51738977 0.28888738 0.81718707 0.28888738 0.88743764 0.28888738 
		0.64758635 0.28888738 0.47798565 0.28888738 0.40773407 0.35386515 0.76079601 0.35386515 
		0.80768883 0.35386515 0.64758635 0.35386515 0.53437668 0.35386515 0.48748386 0.55335927 
		0.88995469 0.92001224 0.89138502 0.92001224 0.99237013 0.55335927 0.99034715 0.55335975 
		0.64758635 0.92001271 0.64758635 0.55336022 0.40521735 0.92001295 0.40378669 0.55335927 
		0.30482525 0.92001224 0.30280221 0.47882175 0.75469375 0.53880119 0.79528505 0.53880119 
		0.85646409 0.47882175 0.79905915 0.47882175 0.64758635 0.53880119 0.64758635 0.47882175 
		0.54047877 0.53880119 0.49988663 0.47882175 0.49611351 0.53880119 0.43870813 0.41884279 
		0.82419646 0.41884279 0.89735049 0.41884279 0.64758635 0.41884279 0.4709762 0.41884279 
		0.39782104 0.97346234 0.87975627 0.97346234 0.81175524 0.97346234 0.64758635 0.97346234 
		0.48341694 0.97346234 0.41541544 0.99386376 0.64758635 0.020102501 0.96008903 0.020125389 
		0.92821151 0.0070157051 0.92809534 0.0069918633 0.95933312 0.0076702721 0.51731843 
		0.93340373 0.17006528 0.91700363 0.16992685 0.85452473 0.21806265 0.93352377 0.2179005 
		0.13100624 0.28785706 0.85452509 0.28785709 0.13092804 0.2180624 0.15879726 0.15078163 
		0.53350687 0.96008992 0.020100594 0.97320008 0.5335052 0.97320008 0.53354859 0.91585279 
		0.020144463 0.91510171 0.53352892 0.92896271;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 179 ".vt";
	setAttr ".vt[0:165]"  -0.0700683 0.49475139 -0.31247598 0.00836844 0.46226165 
		-0.31247598 0.086805187 0.49475142 -0.31247595 0.11929475 0.57318819 -0.31247598 
		0.086805195 0.65162468 -0.31247598 0.0083684409 0.68411434 -0.31247598 -0.0700683 
		0.65162468 -0.31247598 -0.10255787 0.57318819 -0.31247598 -0.044779539 0.57318819 
		0 -0.044208083 0.62576479 0 -0.044208091 0.52061135 7.7715612e-016 -0.044779543 0.57318819 
		-0.074852049 -0.04420808 0.62576479 -0.074852049 0.0083684409 0.64754266 -0.074852049 
		0.060944948 0.62576479 -0.074852057 0.061516419 0.57318819 -0.074852049 0.060944948 
		0.52061141 -0.074852049 0.0083684474 0.49883354 -0.074852049 -0.044208083 0.52061135 
		-0.074852049 -0.10622781 0.57318819 -0.092731357 -0.072663352 0.65421999 -0.092731357 
		0.0083684474 0.68778425 -0.092731364 0.089400239 0.65421999 -0.092731364 0.12296469 
		0.57318819 -0.092731364 0.089400239 0.49215645 -0.092731364 0.0083684428 0.45859161 
		-0.092731357 -0.072663337 0.49215645 -0.092731357 -0.091429241 0.57318819 -0.17295228 
		-0.06219916 0.64375567 -0.17295229 0.0083684409 0.67298579 -0.17295229 0.078936055 
		0.64375567 -0.17295228 0.10816611 0.57318819 -0.17295229 0.078936048 0.50262034 -0.17295229 
		0.0083684418 0.47339043 -0.17295229 -0.062199164 0.50262034 -0.17295229 -0.064002238 
		0.57318819 -0.15369922 -0.042805362 0.62436199 -0.15369922 0.00836844 0.64555883 
		-0.15369922 0.059542228 0.62436199 -0.15369922 0.080739111 0.57318819 -0.15369922 
		0.059542231 0.52201438 -0.15369922 0.0083684409 0.50081754 -0.15369922 -0.042805355 
		0.52201438 -0.15369922 -0.11096403 0.57318819 -0.13444632 -0.076012351 0.65756887 
		-0.13444631 0.0083684465 0.69252038 -0.13444632 0.092749231 0.65756893 -0.13444632 
		0.1277009 0.57318819 -0.13444631 0.092749231 0.48880747 -0.13444632 0.0083684465 
		0.45385543 -0.13444632 -0.076012328 0.48880747 -0.13444632 -0.068125337 0.57318819 
		-0.11358887 -0.045720827 0.62727749 -0.11358887 0.0083684437 0.64968193 -0.11358887 
		0.062457703 0.62727749 -0.11358886 0.084862217 0.57318813 -0.11358886 0.062457707 
		0.519099 -0.11358888 0.0083684428 0.49669448 -0.11358888 -0.045720823 0.519099 -0.11358888 
		-0.15539573 0.57318819 -0.17762548 -0.10743032 0.6889869 -0.17762548 -0.15636238 
		0.57318819 -0.29531896 -0.10811386 0.68967032 -0.29531896 0.008368453 0.73695242 
		-0.17762536 0.0083684539 0.73791897 -0.29531884 0.12416725 0.6889869 -0.17762536 
		0.12485078 0.68967032 -0.29531884 0.17213263 0.57318819 -0.17762548 0.17309929 0.57318819 
		-0.29531896 0.12416724 0.45738921 -0.17762566 0.12485077 0.45670563 -0.29531908 0.0083684642 
		0.40942386 -0.17762536 0.0083684651 0.40845737 -0.29531884 -0.10743032 0.45738921 
		-0.17762518 -0.10811386 0.45670563 -0.29531866 0.008368439 0.57318819 -0.32099444 
		0.0083684474 0.49883354 -0.034453392 -0.01942295 0.51034546 -0.034456018 0.037698869 
		0.51098287 -0.034438968 -0.019352058 0.51031595 3.1773542e-012 -0.019352043 0.19553593 
		-8.932137e-011 -0.019422941 0.19553605 -0.034456018 0.037698865 0.19553807 -0.034438968 
		0.016705509 0.18736455 -0.0072090039 -0.00026990188 0.18736489 -0.0072092419 -0.00047423021 
		-0.09262237 -0.0072095399 0.01691032 -0.092622638 -0.0072090025 -0.0700683 0.49475139 
		0.31247601 -0.070068292 0.65162468 0.31247598 -0.10255787 0.57318819 0.31247598 -0.044779539 
		0.57318819 0.074852049 -0.044208076 0.62576479 0.074852049 -0.044208087 0.52061135 
		0.074852042 -0.1062278 0.57318819 0.092731349 -0.072663344 0.65421999 0.092731357 
		-0.072663337 0.49215648 0.092731342 -0.091429241 0.57318819 0.17295228 -0.06219916 
		0.64375561 0.17295228 -0.06219916 0.50262034 0.17295229 -0.064002246 0.57318819 0.15369922 
		-0.04280537 0.62436199 0.15369922 -0.042805351 0.52201438 0.15369922 -0.11096403 
		0.57318819 0.13444632 -0.076012351 0.65756893 0.13444632 -0.076012328 0.48880747 
		0.13444632 -0.06812533 0.57318819 0.11358886 -0.045720819 0.62727749 0.11358887 -0.045720823 
		0.519099 0.11358886 -0.15539575 0.57318819 0.17762546 -0.10743033 0.6889869 0.17762548 
		-0.1563624 0.57318819 0.29531896 -0.10811386 0.68967032 0.29531896 -0.10743033 0.45738921 
		0.17762518 -0.10811386 0.45670563 0.29531866 -0.019422952 0.5103454 0.034456015 -0.019422939 
		0.19553605 0.034455985 0.060944945 0.62576473 1.8405977e-010 0.0083684362 0.6475426 
		1.2270651e-010 0.061516419 0.57318819 1.8405977e-010 0.060944941 0.52061141 2.705921e-010 
		-6.7594396e-005 -0.092623323 -5.246047e-011 0.016968209 -0.092622638 4.301802e-010 
		0.037616555 0.51094878 -6.4582277e-011 0.0167634 0.18736467 -5.6776245e-010 0.037616558 
		0.19553795 -2.9184993e-010 0.0001367332 0.18736401 -2.5938904e-011 0.0083684418 0.68411434 
		0.31247598 0.0083684418 0.57318819 0.32099444 0.0083684372 0.6475426 0.074852049 
		0.0083684362 0.49883354 0.074852049 0.008368439 0.49883354 0.034453392 0.0083684437 
		0.68778419 0.092731357 0.0083684418 0.45859161 0.092731349 0.0083684428 0.64968193 
		0.11358887 0.0083684437 0.49669448 0.11358887 0.0083684456 0.73695242 0.17762536 
		0.0083684456 0.73791897 0.29531884 0.0083684605 0.40845737 0.29531884 0.0083684605 
		0.40942386 0.17762536 0.00836844 0.64555883 0.15369922 0.0083684446 0.67298579 0.17295229 
		0.0083684456 0.47339043 0.17295229 0.0083684418 0.50081754 0.15369922 0.0083684437 
		0.69252038 0.13444632 0.0083684446 0.45385543 0.13444632 0.0083684418 0.46226165 
		0.31247598 -0.00026990077 0.18736491 0.0072092405 0.037698865 0.19553807 0.034438968 
		0.016705509 0.18736455 0.0072090002 0.086805187 0.49475142 0.31247598 0.11929475 
		0.57318819 0.31247598 0.086805187 0.65162468 0.31247598 0.060944945 0.62576473 0.074852049 
		0.061516419 0.57318819 0.074852049 0.060944945 0.52061141 0.074852049 0.089400239 
		0.65421999 0.092731357 0.12296469 0.57318819 0.092731357 0.089400239 0.49215648 0.092731357 
		0.078936055 0.64375567 0.17295229 0.10816611 0.57318819 0.17295229 0.078936055 0.50262034 
		0.17295229 0.059542231 0.62436199 0.15369922 0.080739111 0.57318819 0.15369922 0.059542231 
		0.52201438 0.15369922 0.092749231 0.65756893 0.13444632 0.1277009 0.57318819 0.13444632;
	setAttr ".vt[166:178]" 0.092749231 0.48880747 0.13444632 0.062457703 0.62727749 
		0.11358887 0.084862217 0.57318819 0.11358887 0.062457703 0.519099 0.11358887 0.12416724 
		0.6889869 0.17762536 0.12485077 0.68967032 0.29531884 0.17213263 0.57318819 0.17762548 
		0.17309929 0.57318819 0.29531896 0.12416724 0.45738921 0.17762566 0.12485077 0.45670566 
		0.29531908 0.037698865 0.51098287 0.034438968 -0.00047423039 -0.09262237 0.0072095394 
		0.016910318 -0.092622638 0.007209003;
	setAttr -s 357 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 
		1 3 4 1 4 5 1 5 6 1 6 7 
		1 7 0 1 8 11 1 9 12 1 8 9 
		1 117 13 1 9 117 1 116 14 1 118 15 
		1 119 16 1 10 18 1 10 8 1 11 19 
		1 12 20 1 11 12 0 13 21 1 12 13 
		0 14 22 1 13 14 0 15 23 1 14 15 
		0 16 24 1 15 16 0 17 25 1 16 17 
		1 18 26 1 17 18 1 18 11 0 19 51 
		1 20 52 1 19 20 1 21 53 1 20 21 
		1 22 54 1 21 22 1 23 55 1 22 23 
		1 24 56 1 23 24 1 25 57 1 24 25 
		1 26 58 1 25 26 1 26 19 1 27 28 
		0 28 29 0 29 30 0 30 31 0 31 32 
		0 32 33 0 33 34 0 34 27 0 35 27 
		1 36 28 1 35 36 0 37 29 1 36 37 
		0 38 30 1 37 38 0 39 31 1 38 39 
		0 40 32 1 39 40 0 41 33 1 40 41 
		0 42 34 1 41 42 0 42 35 0 43 35 
		1 44 36 1 43 44 1 45 37 1 44 45 
		1 46 38 1 45 46 1 47 39 1 46 47 
		1 48 40 1 47 48 1 49 41 1 48 49 
		1 50 42 1 49 50 1 50 43 1 51 43 
		1 52 44 1 51 52 0 53 45 1 52 53 
		0 54 46 1 53 54 0 55 47 1 54 55 
		0 56 48 1 55 56 0 57 49 1 56 57 
		0 58 50 1 57 58 0 58 51 0 27 59 
		1 28 60 1 59 60 0 7 61 1 59 61 
		1 6 62 1 62 61 0 60 62 1 29 63 
		1 60 63 0 5 64 1 64 62 0 63 64 
		1 30 65 1 63 65 0 4 66 1 66 64 
		0 65 66 1 31 67 1 65 67 0 3 68 
		1 68 66 0 67 68 1 32 69 1 67 69 
		0 2 70 1 70 68 0 69 70 1 33 71 
		1 69 71 0 1 72 1 72 70 0 71 72 
		1 34 73 1 71 73 0 0 74 1 74 72 
		0 73 74 1 73 59 0 61 74 0 1 75 
		1 75 5 1 7 75 1 75 3 1 76 17 
		1 18 77 1 77 76 0 76 78 0 78 16 
		1 79 10 1 77 79 0 78 122 0 79 80 
		1 77 81 1 81 82 1 81 80 1 78 82 
		1 82 124 1 82 83 1 83 123 0;
	setAttr ".ed[166:331]" 125 80 1 83 84 0 84 125 
		0 84 81 1 84 85 1 85 120 0 83 86 
		1 86 121 0 86 85 0 76 81 1 76 82 
		1 87 145 1 126 88 1 88 89 1 89 87 
		1 8 90 1 9 91 1 10 92 1 90 93 
		1 91 94 1 90 91 0 91 128 0 92 95 
		1 129 92 1 92 90 0 93 105 1 94 106 
		1 93 94 1 94 131 1 95 107 1 132 95 
		1 95 93 1 96 97 0 97 140 0 141 98 
		0 98 96 0 99 96 1 100 97 1 99 100 
		0 100 139 0 101 98 1 142 101 0 101 99 
		0 102 99 1 103 100 1 102 103 1 103 143 
		1 104 101 1 144 104 1 104 102 1 105 102 
		1 106 103 1 105 106 0 106 133 0 107 104 
		1 134 107 0 107 105 0 96 108 1 97 109 
		1 108 109 0 89 110 1 108 110 1 88 111 
		1 111 110 0 109 111 1 109 135 0 136 111 
		0 98 112 1 138 112 0 87 113 1 113 137 
		0 112 113 1 112 108 0 110 113 0 89 127 
		1 92 114 1 114 130 0 114 79 0 114 115 
		1 115 147 1 115 80 1 146 115 1 130 115 
		1 117 116 0 116 118 0 118 119 0 121 120 
		0 119 122 0 124 123 0 122 124 0 125 120 
		0 123 121 0 127 126 0 117 128 0 130 129 
		0 128 131 0 129 132 0 131 133 0 132 134 
		0 135 136 0 138 137 0 139 140 0 142 141 
		0 143 139 0 144 142 0 133 143 0 134 144 
		0 140 135 0 126 136 0 141 138 0 145 137 
		0 145 127 0 146 125 0 147 148 0 148 146 
		0 130 147 0 145 149 1 149 150 1 150 151 
		1 151 126 1 116 152 1 118 153 1 119 154 
		1 152 155 1 128 152 0 153 156 1 152 153 
		0 154 157 1 153 154 0 154 129 1 155 167 
		1 131 155 1 156 168 1 155 156 1 157 169 
		1 156 157 1 157 132 1 140 158 0 158 159 
		0 159 160 0 160 141 0 161 158 1 139 161 
		0 162 159 1 161 162 0 163 160 1 162 163 
		0 163 142 0 164 161 1 143 164 1 165 162 
		1 164 165 1 166 163 1 165 166 1 166 144 
		1 167 164 1 133 167 0 168 165 1 167 168 
		0 169 166 1 168 169 0 169 134 0 158 170 
		1 135 170 0 151 171 1 171 136 0;
	setAttr ".ed[332:356]" 170 171 1 159 172 1 170 172 
		0 150 173 1 173 171 0 172 173 1 160 174 
		1 172 174 0 149 175 1 175 173 0 174 175 
		1 174 138 0 137 175 0 127 150 1 130 176 
		0 176 154 1 176 122 0 176 147 1 147 124 
		1 148 123 0 146 177 1 177 120 0 148 178 
		1 178 121 0 178 177 0;
	setAttr -s 180 ".fc[0:179]" -type "polyFaces" 
		f 4 148 147 5 6 
		mu 0 4 0 1 2 3 
		f 4 -11 8 20 -10 
		mu 0 4 4 5 6 7 
		f 4 -13 9 22 -12 
		mu 0 4 8 4 7 9 
		f 4 -250 11 24 -14 
		mu 0 4 10 8 9 11 
		f 4 -251 13 26 -15 
		mu 0 4 12 10 11 13 
		f 4 -252 14 28 -16 
		mu 0 4 14 12 13 15 
		f 4 153 154 30 -151 
		mu 0 4 16 17 15 18 
		f 4 151 152 150 32 
		mu 0 4 19 20 16 18 
		f 4 -18 16 33 -9 
		mu 0 4 5 21 19 6 
		f 4 -21 18 36 -20 
		mu 0 4 7 6 22 23 
		f 4 -23 19 38 -22 
		mu 0 4 9 7 23 24 
		f 4 -25 21 40 -24 
		mu 0 4 11 9 24 25 
		f 4 -27 23 42 -26 
		mu 0 4 13 11 25 26 
		f 4 -29 25 44 -28 
		mu 0 4 15 13 26 27 
		f 4 -31 27 46 -30 
		mu 0 4 18 15 27 28 
		f 4 -33 29 48 -32 
		mu 0 4 19 18 28 29 
		f 4 -34 31 49 -19 
		mu 0 4 6 19 29 22 
		f 4 -37 34 92 -36 
		mu 0 4 23 22 30 31 
		f 4 -39 35 94 -38 
		mu 0 4 24 23 31 32 
		f 4 -41 37 96 -40 
		mu 0 4 25 24 32 33 
		f 4 -43 39 98 -42 
		mu 0 4 26 25 33 34 
		f 4 -45 41 100 -44 
		mu 0 4 27 26 34 35 
		f 4 -47 43 102 -46 
		mu 0 4 28 27 35 36 
		f 4 -49 45 104 -48 
		mu 0 4 29 28 36 37 
		f 4 -50 47 105 -35 
		mu 0 4 22 29 37 30 
		f 4 -109 110 -113 -114 
		mu 0 4 38 39 40 41 
		f 4 -116 113 -118 -119 
		mu 0 4 42 38 41 43 
		f 4 -121 118 -123 -124 
		mu 0 4 44 42 43 45 
		f 4 -126 123 -128 -129 
		mu 0 4 46 44 45 47 
		f 4 -131 128 -133 -134 
		mu 0 4 48 46 47 49 
		f 4 -136 133 -138 -139 
		mu 0 4 50 48 49 51 
		f 4 -141 138 -143 -144 
		mu 0 4 52 50 51 53 
		f 4 -145 143 -146 -111 
		mu 0 4 39 52 53 40 
		f 4 -61 58 50 -60 
		mu 0 4 54 55 56 57 
		f 4 -63 59 51 -62 
		mu 0 4 58 54 57 59 
		f 4 -65 61 52 -64 
		mu 0 4 60 58 59 61 
		f 4 -67 63 53 -66 
		mu 0 4 62 60 61 63 
		f 4 -69 65 54 -68 
		mu 0 4 64 62 63 65 
		f 4 -71 67 55 -70 
		mu 0 4 66 64 65 67 
		f 4 -73 69 56 -72 
		mu 0 4 68 66 67 69 
		f 4 -74 71 57 -59 
		mu 0 4 55 68 69 56 
		f 4 -77 74 60 -76 
		mu 0 4 70 71 55 54 
		f 4 -79 75 62 -78 
		mu 0 4 72 70 54 58 
		f 4 -81 77 64 -80 
		mu 0 4 73 72 58 60 
		f 4 -83 79 66 -82 
		mu 0 4 74 73 60 62 
		f 4 -85 81 68 -84 
		mu 0 4 75 74 62 64 
		f 4 -87 83 70 -86 
		mu 0 4 76 75 64 66 
		f 4 -89 85 72 -88 
		mu 0 4 77 76 66 68 
		f 4 -90 87 73 -75 
		mu 0 4 71 77 68 55 
		f 4 -93 90 76 -92 
		mu 0 4 31 30 71 70 
		f 4 -95 91 78 -94 
		mu 0 4 32 31 70 72 
		f 4 -97 93 80 -96 
		mu 0 4 33 32 72 73 
		f 4 -99 95 82 -98 
		mu 0 4 34 33 73 74 
		f 4 -101 97 84 -100 
		mu 0 4 35 34 74 75 
		f 4 -103 99 86 -102 
		mu 0 4 36 35 75 76 
		f 4 -105 101 88 -104 
		mu 0 4 37 36 76 77 
		f 4 -106 103 89 -91 
		mu 0 4 30 37 77 71 
		f 4 -51 106 108 -108 
		mu 0 4 57 56 39 38 
		f 4 -7 111 112 -110 
		mu 0 4 0 3 41 40 
		f 4 -52 107 115 -115 
		mu 0 4 59 57 38 42 
		f 4 -6 116 117 -112 
		mu 0 4 3 2 43 41 
		f 4 -53 114 120 -120 
		mu 0 4 61 59 42 44 
		f 4 -5 121 122 -117 
		mu 0 4 2 78 45 43 
		f 4 -54 119 125 -125 
		mu 0 4 63 61 44 46 
		f 4 -4 126 127 -122 
		mu 0 4 78 79 47 45 
		f 4 -55 124 130 -130 
		mu 0 4 65 63 46 48 
		f 4 -3 131 132 -127 
		mu 0 4 79 80 49 47 
		f 4 -56 129 135 -135 
		mu 0 4 67 65 48 50 
		f 4 -2 136 137 -132 
		mu 0 4 80 81 51 49 
		f 4 -57 134 140 -140 
		mu 0 4 69 67 50 52 
		f 4 -1 141 142 -137 
		mu 0 4 81 82 53 51 
		f 4 -58 139 144 -107 
		mu 0 4 56 69 52 39 
		f 4 -8 109 145 -142 
		mu 0 4 82 0 40 53 
		f 4 -148 149 3 4 
		mu 0 4 2 1 79 78 
		f 4 0 146 -149 7 
		mu 0 4 82 81 1 0 
		f 4 -150 -147 1 2 
		mu 0 4 79 1 81 80 
		f 4 171 -253 -174 174 
		mu 0 4 83 84 85 86 
		f 4 -254 15 -155 157 
		mu 0 4 87 14 15 17 
		f 4 -156 -157 -152 -17 
		mu 0 4 21 88 20 19 
		f 4 -255 -164 164 165 
		mu 0 4 89 90 91 92 
		f 4 156 158 -162 -160 
		mu 0 4 93 94 95 96 
		f 4 -158 162 163 -256 
		mu 0 4 97 98 91 99 
		f 3 -163 -154 176 
		mu 0 3 91 98 100 
		f 4 -167 -169 169 161 
		mu 0 4 101 102 103 96 
		f 4 -161 -170 -168 -165 
		mu 0 4 91 96 103 92 
		f 4 168 256 -172 -171 
		mu 0 4 104 105 106 83 
		f 4 -166 172 173 -258 
		mu 0 4 107 108 86 109 
		f 4 -175 -173 167 170 
		mu 0 4 83 86 108 104 
		f 3 -176 -153 159 
		mu 0 3 96 100 93 
		f 3 -177 175 160 
		mu 0 3 91 100 96 
		f 4 -180 -179 -259 -241 
		mu 0 4 110 111 112 113 
		f 4 182 -187 -182 10 
		mu 0 4 114 115 116 117 
		f 4 259 -188 -183 12 
		mu 0 4 118 119 115 114 
		f 4 -190 -261 -243 -242 
		mu 0 4 120 121 122 123 
		f 4 181 -191 -184 17 
		mu 0 4 117 116 120 124 
		f 4 185 -194 -185 186 
		mu 0 4 115 125 126 116 
		f 4 261 -195 -186 187 
		mu 0 4 119 127 125 115 
		f 4 188 -197 -263 189 
		mu 0 4 120 128 129 121 
		f 4 184 -198 -189 190 
		mu 0 4 116 126 128 120 
		f 4 192 -219 -192 193 
		mu 0 4 125 130 131 126 
		f 4 263 -220 -193 194 
		mu 0 4 127 132 130 125 
		f 4 195 -222 -265 196 
		mu 0 4 128 133 134 129 
		f 4 191 -223 -196 197 
		mu 0 4 126 131 133 128 
		f 4 230 229 -228 225 
		mu 0 4 135 136 137 138 
		f 4 265 232 -231 231 
		mu 0 4 139 140 136 135 
		f 4 237 236 -267 234 
		mu 0 4 141 142 143 144 
		f 4 227 239 -238 238 
		mu 0 4 138 137 142 141 
		f 4 203 -199 -203 204 
		mu 0 4 145 146 147 148 
		f 4 267 -200 -204 205 
		mu 0 4 149 150 146 145 
		f 4 206 -201 -269 207 
		mu 0 4 151 152 153 154 
		f 4 202 -202 -207 208 
		mu 0 4 148 147 152 151 
		f 4 210 -205 -210 211 
		mu 0 4 155 145 148 156 
		f 4 269 -206 -211 212 
		mu 0 4 157 149 145 155 
		f 4 213 -208 -271 214 
		mu 0 4 158 151 154 159 
		f 4 209 -209 -214 215 
		mu 0 4 156 148 151 158 
		f 4 217 -212 -217 218 
		mu 0 4 130 155 156 131 
		f 4 271 -213 -218 219 
		mu 0 4 132 157 155 130 
		f 4 220 -215 -273 221 
		mu 0 4 133 158 159 134 
		f 4 216 -216 -221 222 
		mu 0 4 131 156 158 133 
		f 4 224 -226 -224 198 
		mu 0 4 146 135 138 147 
		f 4 226 -230 -229 179 
		mu 0 4 110 137 136 111 
		f 4 273 -232 -225 199 
		mu 0 4 150 139 135 146 
		f 4 228 -233 -275 178 
		mu 0 4 111 136 140 112 
		f 4 233 -235 -276 200 
		mu 0 4 152 141 144 153 
		f 4 276 -237 -236 177 
		mu 0 4 160 143 142 161 
		f 4 223 -239 -234 201 
		mu 0 4 147 138 141 152 
		f 4 235 -240 -227 180 
		mu 0 4 161 142 137 110 
		f 4 -181 240 -278 -178 
		mu 0 4 161 110 113 160 
		f 4 183 241 243 155 
		mu 0 4 124 120 123 162 
		f 4 244 246 -159 -244 
		mu 0 4 163 164 165 166 
		f 4 -247 -248 278 166 
		mu 0 4 167 164 168 169 
		f 4 279 280 247 245 
		mu 0 4 170 171 168 164 
		f 3 -245 242 248 
		mu 0 3 164 163 172 
		f 3 -246 -249 281 
		mu 0 3 170 164 172 
		f 4 286 -291 -260 249 
		mu 0 4 173 174 175 176 
		f 4 287 -293 -287 250 
		mu 0 4 177 178 174 173 
		f 4 288 -295 -288 251 
		mu 0 4 179 180 178 177 
		f 4 260 -296 -348 -347 
		mu 0 4 181 182 180 183 
		f 4 289 -298 -262 290 
		mu 0 4 174 184 185 175 
		f 4 291 -300 -290 292 
		mu 0 4 178 186 184 174 
		f 4 293 -302 -292 294 
		mu 0 4 180 187 186 178 
		f 4 262 -303 -294 295 
		mu 0 4 182 188 187 180 
		f 4 296 -323 -264 297 
		mu 0 4 184 189 190 185 
		f 4 298 -325 -297 299 
		mu 0 4 186 191 189 184 
		f 4 300 -327 -299 301 
		mu 0 4 187 192 191 186 
		f 4 264 -328 -301 302 
		mu 0 4 188 193 192 187 
		f 4 332 331 -266 329 
		mu 0 4 194 195 196 197 
		f 4 337 336 -333 334 
		mu 0 4 198 199 195 194 
		f 4 342 341 -338 339 
		mu 0 4 200 201 199 198 
		f 4 266 344 -343 343 
		mu 0 4 202 203 201 200 
		f 4 307 -304 -268 308 
		mu 0 4 204 205 206 207 
		f 4 309 -305 -308 310 
		mu 0 4 208 209 205 204 
		f 4 311 -306 -310 312 
		mu 0 4 210 211 209 208 
		f 4 268 -307 -312 313 
		mu 0 4 212 213 211 210 
		f 4 314 -309 -270 315 
		mu 0 4 214 204 207 215 
		f 4 316 -311 -315 317 
		mu 0 4 216 208 204 214 
		f 4 318 -313 -317 319 
		mu 0 4 217 210 208 216 
		f 4 270 -314 -319 320 
		mu 0 4 218 212 210 217 
		f 4 321 -316 -272 322 
		mu 0 4 189 214 215 190 
		f 4 323 -318 -322 324 
		mu 0 4 191 216 214 189 
		f 4 325 -320 -324 326 
		mu 0 4 192 217 216 191 
		f 4 272 -321 -326 327 
		mu 0 4 193 218 217 192 
		f 4 328 -330 -274 303 
		mu 0 4 205 194 197 206 
		f 4 274 -332 -331 285 
		mu 0 4 219 196 195 220 
		f 4 333 -335 -329 304 
		mu 0 4 209 198 194 205 
		f 4 330 -337 -336 284 
		mu 0 4 220 195 199 221 
		f 4 338 -340 -334 305 
		mu 0 4 211 200 198 209 
		f 4 335 -342 -341 283 
		mu 0 4 221 199 201 222 
		f 4 275 -344 -339 306 
		mu 0 4 213 202 200 211 
		f 4 340 -345 -277 282 
		mu 0 4 222 201 203 223 
		f 4 -286 -285 -346 258 
		mu 0 4 219 220 221 224 
		f 4 -284 -283 277 345 
		mu 0 4 221 222 223 224 
		f 4 -357 355 252 -354 
		mu 0 4 225 226 227 228 
		f 4 -349 347 -289 253 
		mu 0 4 229 183 180 179 
		f 4 -352 -280 350 254 
		mu 0 4 230 231 232 233 
		f 4 255 -351 -350 348 
		mu 0 4 234 235 232 236 
		f 3 -282 346 349 
		mu 0 3 232 237 236 
		f 4 352 353 -257 -279 
		mu 0 4 238 225 239 240 
		f 4 257 -356 -355 351 
		mu 0 4 241 242 226 243 
		f 4 -353 -281 354 356 
		mu 0 4 225 238 243 226 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
createNode lightLinker -n "lightLinker1";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".maxr" 2;
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lambert -n "lambert5";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/Venom/Desktop/chops/teddy baer/art/hammer.png";
createNode place2dTexture -n "place2dTexture4";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
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
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"none\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"none\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -clipTime \"on\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -clipTime \"on\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 50 100 -ps 2 50 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Hypershade\")) \n\t\t\t\t\t\"scriptedPanel\"\n\t\t\t\t\t\"$panelName = `scriptedPanel -unParent  -type \\\"hyperShadePanel\\\" -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels `\"\n\t\t\t\t\t\"scriptedPanel -edit -l (localizedPanelLabel(\\\"Hypershade\\\")) -mbv $menusOkayInPanels  $panelName\"\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"none\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"none\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 270 -ast 0 -aet 300 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
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
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 30;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".hwfr" 30;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId14.id" "polySurfaceShape77.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "polySurfaceShape77.iog.og[0].gco";
connectAttr "groupId13.id" "polySurfaceShape77.ciog.cog[0].cgid";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr "lambert5SG.msg" "lightLinker1.lnk[5].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[5].sllk";
connectAttr "lambert5SG.msg" "lightLinker1.slnk[5].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "file1.oc" "lambert5.c";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "polySurfaceShape77.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "groupId14.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "file1.msg" "materialInfo4.t" -na;
connectAttr "place2dTexture4.c" "file1.c";
connectAttr "place2dTexture4.tf" "file1.tf";
connectAttr "place2dTexture4.rf" "file1.rf";
connectAttr "place2dTexture4.mu" "file1.mu";
connectAttr "place2dTexture4.mv" "file1.mv";
connectAttr "place2dTexture4.s" "file1.s";
connectAttr "place2dTexture4.wu" "file1.wu";
connectAttr "place2dTexture4.wv" "file1.wv";
connectAttr "place2dTexture4.re" "file1.re";
connectAttr "place2dTexture4.of" "file1.of";
connectAttr "place2dTexture4.r" "file1.ro";
connectAttr "place2dTexture4.n" "file1.n";
connectAttr "place2dTexture4.vt1" "file1.vt1";
connectAttr "place2dTexture4.vt2" "file1.vt2";
connectAttr "place2dTexture4.vt3" "file1.vt3";
connectAttr "place2dTexture4.vc1" "file1.vc1";
connectAttr "place2dTexture4.o" "file1.uv";
connectAttr "place2dTexture4.ofs" "file1.fs";
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "polySurfaceShape77.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
// End of hammer.ma
