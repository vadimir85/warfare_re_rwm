Private ["_n"];

/* Call in dynamically the west structures. */
Call Compile PreprocessFile Format["Common\Config\Core_Structures\Structures_%1.sqf",WFBE_V_West_StructuresFaction];

/* Call in dynamically the east structures. */
Call Compile PreprocessFile Format["Common\Config\Core_Structures\Structures_%1.sqf",WFBE_V_East_StructuresFaction];
    
WFDepot = ["FootBridge_0_ACR"];
WFCAMP = ["Land_Obstacle_Saddle_F"];
WFHANGAR = ["Land_Hangar_F","WarfareBAirport","Land_TentHangar_V1_F","Land_Mil_hangar_EP1"];
if (WFBE_RESISTANCEFACTION == 0) then {WFFLAG = "Flag_AAF_F"};
if (WFBE_RESISTANCEFACTION == 1) then {WFFLAG = "Flag_Syndikat_F"};
if (WFBE_RESISTANCEFACTION == 2) then {WFFLAG = "Flag_Green_F"};
if (WFBE_RESISTANCEFACTION == 3) then {WFFLAG = "Flag_Green_F"};

/* RESISTANCE STATIONARY DEFENSES */
_n = ["I_GMG_01_A_F"];
_n = _n + ["I_GMG_01_F"];
_n = _n + ["I_GMG_01_high_F"];
_n = _n + ["I_HMG_01_A_F"];
_n = _n + ["I_HMG_01_F"];
_n = _n + ["I_HMG_01_high_F"];
_n = _n + ["I_Mortar_01_F"];
_n = _n + ["I_static_AA_F"];
_n = _n + ["I_static_AT_F"];

_n = _n + ["rhsgref_nat_2b14"];
_n = _n + ["rhsgref_nat_AGS30_TriPod"];
_n = _n + ["rhsgref_nat_d30"];
_n = _n + ["rhsgref_nat_d30_at"];
_n = _n + ["rhsgref_nat_DSHKM"];
_n = _n + ["rhsgref_nat_DSHKM_Mini_TriPod"];
_n = _n + ["rhsgref_nat_Igla_AA_pod"];
_n = _n + ["rhsgref_nat_NSV_TriPod"];
_n = _n + ["rhsgref_nat_SPG9"];
_n = _n + ["rhsgref_nat_ZU23"];

_n = _n + ["rhsgref_ins_g_2b14"];
_n = _n + ["rhsgref_ins_g_AGS30_TriPod"];
_n = _n + ["rhsgref_ins_g_d30"];
_n = _n + ["rhsgref_ins_g_d30_at"];
_n = _n + ["rhsgref_ins_g_DSHKM"];
_n = _n + ["rhsgref_ins_g_DSHKM_Mini_TriPod"];
_n = _n + ["rhsgref_ins_g_Igla_AA_pod"];
_n = _n + ["rhsgref_ins_g_NSV_TriPod"];
_n = _n + ["rhsgref_ins_g_SPG9"];
_n = _n + ["rhsgref_ins_g_SPG9M"];
_n = _n + ["rhsgref_ins_g_ZU23"];


['WFBE_RESISTANCEDEFENSENAMES',_n,true] Call SetNamespace;

//--- Multiply the building cost when money only is being used.
if (paramMoneyOnly) then {
	Private ["_i","_list"];
	
	_list = 'WFBE_WESTSTRUCTURECOSTS' Call GetNamespace;
	for '_i' from 0 to count(_list)-1 do {
		_list set [_i, round((_list select _i) * 5)];
	};

	_list = 'WFBE_EASTSTRUCTURECOSTS' Call GetNamespace;
	for '_i' from 0 to count(_list)-1 do {
		_list set [_i, round((_list select _i) * 5)];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Config_Structures: Initialization (West: %3 | East: %4) - [Done]",diag_frameno,diag_tickTime,WFBE_V_West_StructuresFaction,WFBE_V_East_StructuresFaction];