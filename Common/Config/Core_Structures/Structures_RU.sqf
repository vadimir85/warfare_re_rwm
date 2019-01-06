Private ['_c','_count','_d','_dir','_dis','_n','_s','_t','_v'];

/* Root Definition */
EASTHQ = "BRDM2_HQ_TK_GUE_unfolded_Base_EP1";
EASTBAR = "TK_WarfareBBarracks_EP1";
EASTLVF = "TK_WarfareBLightFactory_EP1";
EASTCC = "TK_WarfareBUAVterminal_EP1";
EASTHEAVY = "TK_WarfareBHeavyFactory_EP1";
EASTAIR = "TK_WarfareBAircraftFactory_EP1";
EASTSP = "TK_GUE_WarfareBVehicleServicePoint_Base_EP1";
EASTAAR = "TK_WarfareBAntiAirRadar_EP1";
EASTFH = if (WF_Camo) then {"RU_WarfareBFieldhHospital"} else {"TK_WarfareBFieldhHospital_EP1"};

/* Flag Textures */
['WFBE_EASTFLAG','\rwm_core_ui\Images\flag_rus_co.paa',true] Call SetNamespace;

/* Mash used after being deployed */
['WFBE_EASTFARP','CampEast_EP1',true] Call SetNamespace;

/* Construction Crates */
['WFBE_EASTCONSTRUCTIONSITE','Land_CinderBlocks_01_F',true] Call SetNamespace;

/* Structures */
_v			= ["Headquarters"];
_n			= [EASTHQ];
_d			= [localize "strheadquarters"];
_c			= [('WFBE_HQDEPLOYPRICE' Call GetNamespace)];
_t			= [if (WF_Debug) then {1} else {30}];
_s			= ["HQSite"];
_dis		= [15];
_dir		= [0];

_v = _v		+ ["Barracks"];
_n = _n		+ [EASTBAR];
_d = _d		+ [localize "str_wf_barracks"];
_c = _c		+ [1000];
_t = _t		+ [if (WF_Debug) then {1} else {50}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [18];
_dir = _dir	+ [90];

_v = _v		+ ["Light"];
_n = _n		+ [EASTLVF];
_d = _d		+ [localize "str_wf_lightfactory"];
_c = _c		+ [2000];
_t = _t		+ [if (WF_Debug) then {1} else {90}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

_v = _v		+ ["CommandCenter"];
_n = _n		+ [EASTCC];
_d = _d		+ [localize "STR_WF_CommandCenter_RU"];
_c = _c		+ [1400];
_t = _t		+ [if (WF_Debug) then {1} else {110}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [20];
_dir = _dir	+ [90];

_v = _v		+ ["Heavy"];
_n = _n		+ [EASTHEAVY];
_d = _d		+ [localize "str_wf_heavyfactory"];
_c = _c		+ [4000];
_t = _t		+ [if (WF_Debug) then {1} else {130}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

_v = _v		+ ["Aircraft"];
_n = _n		+ [EASTAIR];
_d = _d		+ [localize "STR_WF_AircraftFactory"];
_c = _c		+ [5000];
_t = _t		+ [if (WF_Debug) then {1} else {150}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [21];
_dir = _dir	+ [90];

_v = _v		+ ["ServicePoint"];
_n = _n		+ [EASTSP];
_d = _d		+ [localize "STR_WF_MAIN_ServicePoint"];
_c = _c		+ [500];
_t = _t		+ [if (WF_Debug) then {1} else {70}];
_s = _s		+ ["Service"];
_dis = _dis	+ [21];
_dir = _dir	+ [90];

if (paramAARadar) then {
	_v = _v		+ ["AARadar"];
	_n = _n		+ [EASTAAR];
	_d = _d		+ [localize "str_wf_antiairradar"];
	_c = _c		+ [3000];
	_t = _t		+ [if (WF_Debug) then {1} else {200}];
	_s = _s		+ ["MediumSite"];
	_dis = _dis	+ [21];
	_dir = _dir	+ [90];
};

_v = _v		+ ["FieldHospital"];
_n = _n		+ [EASTFH];
_d = _d		+ [localize "str_wf_fieldhhospital"];
_c = _c		+ [3500];
_t = _t		+ [if (WF_Debug) then {1} else {130}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

for [{_count = count _v - 1},{_count >= 0},{_count = _count - 1}] do {
	[Format["WFBE_EAST%1TYPE",_v select _count],_count,true] Call SetNamespace;
};

['WFBE_EASTMHQNAME','rhsgref_BRDM2UM_msv',true] Call SetNamespace;

['WFBE_EASTSTRUCTURES',_v,true] Call SetNamespace;
['WFBE_EASTSTRUCTURENAMES',_n,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDESCRIPTIONS',_d,true] Call SetNamespace;
['WFBE_EASTSTRUCTURECOSTS',_c,true] Call SetNamespace;
['WFBE_EASTSTRUCTURETIMES',_t,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDISTANCES',_dis,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDIRECTIONS',_dir,true] Call SetNamespace;
['WFBE_EASTSTRUCTURESCRIPTS',_s,true] Call SetNamespace;

/* Defenses */
_n			= ["RHS_NSV_TriPod_MSV"];
_n = _n		+ ["rhs_KORD_MSV"];
_n = _n		+ ["rhs_KORD_high_MSV"];
_n = _n		+ ["RHS_AGS30_TriPod_MSV"];
_n = _n		+ ["RHS_ZU23_MSV"];
_n = _n		+ ["rhs_SPG9M_MSV"];
_n = _n		+ ["rhs_Metis_9k115_2_msv"];
_n = _n		+ ["rhs_Kornet_9M133_2_msv"];
_n = _n		+ ["rhs_Igla_AA_pod_msv"];
_n = _n		+ ["rhs_2b14_82mm_msv"];
_n = _n		+ ["rhs_D30_msv"];
_n = _n		+ ["rhs_D30_at_msv"];
_n = _n		+ ["Rwm_SAM_System"];
_n = _n		+ ["Rwm_Radar_System"];
_n = _n		+ ["CampEast_EP1"];

_n = _n		+ ["Land_HBarrier_3_F"];
_n = _n		+ ["Land_HBarrier_5_F"];
_n = _n		+ ["Land_HBarrier_Big_F"];
//_n = _n		+ ["Land_HBarrier_01_wall_corner_green_F"];
//_n = _n		+ ["Land_HBarrier_01_wall_4_green_F"];
//_n = _n		+ ["Land_HBarrier_01_wall_6_green_F"];
_n = _n		+ ["Land_MedicalTent_01_white_generic_closed_F"];
_n = _n     + ["Land_SM_01_shelter_wide_F"];
_n = _n 	+ ["Land_Hangar_F"];
_n = _n		+ ["Land_BagFence_Long_F"];
_n = _n		+ ["Land_BagFence_Corner_F"];
_n = _n		+ ["Land_BagFence_Round_F"];
_n = _n		+ [if (WF_Camo) then {"Land_Bunker_01_small_F"} else {"Land_BagBunker_Small_F"}];
_n = _n		+ [if (WF_Camo) then {"Land_Barricade_01_4m_F"} else {"Land_Barricade_01_10m_F"}];
_n = _n		+ [if (WF_Camo) then {"Land_Trench_01_forest_F"} else {"Land_TrenchFrame_01_F"}];
_n = _n		+ ["Land_Bunker_01_blocks_3_F"];
_n = _n		+ ["Land_CzechHedgehog_01_F"];
_n = _n		+ [if (WF_Camo) then {"CamoNet_OPFOR_F"} else {"CamoNet_OPFOR_F"}];
_n = _n		+ [if (WF_Camo) then {"CamoNet_OPFOR_open_F"} else {"CamoNet_OPFOR_open_F"}];
_n = _n		+ [if (WF_Camo) then {"CamoNet_OPFOR_big_F"} else {"CamoNet_OPFOR_big_F"}];
_n = _n		+ ["Land_Sign_Mines_F"];
_n = _n		+ ["Land_HelipadCivil_F"];
_n = _n		+ ["Land_Razorwire_F"];
_n = _n		+ ["Land_LampHalogen_F"];
//_n = _n		+ ["Concrete_Wall_EP1"];
_n = _n		+ ["Land_Campfire_F"];
// Markus - Add additional strategic objects
_n = _n + ['Land_WoodenShelter_01_F'];
_n = _n + ['Land_BarGate_01_open_F'];
_n = _n + ['Land_ToiletBox_F'];
_n = _n + ['rhs_Flag_Russia_F'];
_n = _n + ['Land_Cargo10_light_green_F'];
_n = _n + ['O_CargoNet_01_ammo_F'];
_n = _n + ['CargoNet_01_barrels_F'];
/// Markus
/*_n = _n		+ ["RUOrdnanceBox"];
_n = _n		+ ["RUVehicleBox"];
_n = _n		+ ["RUBasicAmmunitionBox"];
_n = _n		+ ["RUBasicWeaponsBox"];
_n = _n		+ ["RULaunchersBox"];
_n = _n		+ ["RUSpecialWeaponsBox"];*/

/* Class used for AI, AI will attempt to build those */
['WFBE_EASTDEFENSES_MG',['rhs_KORD_high_MSV'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_GL',['RHS_AGS30_TriPod_MSV'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_AAPOD',['rhs_Igla_AA_pod_msv'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_ATPOD',['rhs_Metis_9k115_2_msv'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_CANNON',['rhs_D30_msv'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_MASH',['Land_MedicalTent_01_white_generic_closed_F'],true] Call SetNamespace;

['WFBE_EASTDEFENSENAMES',_n,true] Call SetNamespace;