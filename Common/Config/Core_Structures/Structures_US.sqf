Private ['_c','_count','_d','_dir','_dis','_n','_s','_t','_v'];

/* Root Definition */
WESTHQ = "LAV25_hq_unfolded";
WESTBAR = "US_WarfareBBarracks_EP1";
WESTLVF = "US_WarfareBLightFactory_EP1";
WESTCC = "US_WarfareBUAVterminal_EP1";
WESTHEAVY = "US_WarfareBHeavyFactory_EP1";
WESTAIR = "US_WarfareBAircraftFactory_EP1";
WESTSP = "US_WarfareBVehicleServicePoint_Base_EP1";
WESTAAR = "US_WarfareBAntiAirRadar_EP1";
WESTFH = if (WF_Camo) then {"USMC_WarfareBFieldhHospital"} else {"US_WarfareBFieldhHospital_EP1"};

/* Flag Textures */
['WFBE_WESTFLAG','\rwm_core_ui\Images\flag_usa_co.paa',true] Call SetNamespace;

/* Camp_EP1 used after being deployed */
['WFBE_WESTFARP','Camp_EP1',true] Call SetNamespace;

/* Construction Crates */
['WFBE_WESTCONSTRUCTIONSITE','Land_CinderBlocks_01_F',true] Call SetNamespace;

/* Structures */
_v			= ["Headquarters"];
_n			= [WESTHQ];
_d			= [localize "strheadquarters"];
_c			= [('WFBE_HQDEPLOYPRICE' Call GetNamespace)];
_t			= [if (WF_Debug) then {1} else {30}];
_s			= ["HQSite"];
_dis		= [15];
_dir		= [0];

_v = _v		+ ["Barracks"];
_n = _n		+ [WESTBAR];
_d = _d		+ [localize "str_wf_barracks"];
_c = _c		+ [1000];
_t = _t		+ [if (WF_Debug) then {1} else {50}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [18];
_dir = _dir	+ [90];

_v = _v		+ ["Light"];
_n = _n		+ [WESTLVF];
_d = _d		+ [localize "str_wf_lightfactory"];
_c = _c		+ [2000];
_t = _t		+ [if (WF_Debug) then {1} else {90}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

_v = _v		+ ["CommandCenter"];
_n = _n		+ [WESTCC];
_d = _d		+ [localize "STR_WF_CommandCenter_USMC"];
_c = _c		+ [1400];
_t = _t		+ [if (WF_Debug) then {1} else {110}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [20];
_dir = _dir	+ [90];

_v = _v		+ ["Heavy"];
_n = _n		+ [WESTHEAVY];
_d = _d		+ [localize "str_wf_heavyfactory"];
_c = _c		+ [4000];
_t = _t		+ [if (WF_Debug) then {1} else {130}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

_v = _v		+ ["Aircraft"];
_n = _n		+ [WESTAIR];
_d = _d		+ [localize "STR_WF_AircraftFactory"];
_c = _c		+ [5000];
_t = _t		+ [if (WF_Debug) then {1} else {150}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [31];
_dir = _dir	+ [90];

_v = _v		+ ["ServicePoint"];
_n = _n		+ [WESTSP];
_d = _d		+ [localize "STR_WF_MAIN_ServicePoint"];
_c = _c		+ [500];
_t = _t		+ [if (WF_Debug) then {1} else {70}];
_s = _s		+ ["Service"];
_dis = _dis	+ [21];
_dir = _dir	+ [90];

if (paramAARadar) then {
	_v = _v		+ ["AARadar"];
	_n = _n		+ [WESTAAR];
	_d = _d		+ [localize "str_wf_antiairradar"];
	_c = _c		+ [3000];
	_t = _t		+ [if (WF_Debug) then {1} else {200}];
	_s = _s		+ ["MediumSite"];
	_dis = _dis	+ [21];
	_dir = _dir	+ [90];
};

_v = _v		+ ["FieldHospital"];
_n = _n		+ [WESTFH];
_d = _d		+ [localize "str_wf_fieldhhospital"];
_c = _c		+ [3500];
_t = _t		+ [if (WF_Debug) then {1} else {130}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

for [{_count = count _v - 1},{_count >= 0},{_count = _count - 1}] do {
	[Format["WFBE_WEST%1TYPE",_v select _count],_count,true] Call SetNamespace;
};

['WFBE_WESTMHQNAME',if (WF_Camo) then {'Rwm_Lav_25_MHQ'} else {'Rwm_Lav_25_MHQ'},true] Call SetNamespace;

['WFBE_WESTSTRUCTURES',_v,true] Call SetNamespace;
['WFBE_WESTSTRUCTURENAMES',_n,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDESCRIPTIONS',_d,true] Call SetNamespace;
['WFBE_WESTSTRUCTURECOSTS',_c,true] Call SetNamespace;
['WFBE_WESTSTRUCTURETIMES',_t,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDISTANCES',_dis,true] Call SetNamespace;
['WFBE_WESTSTRUCTUREDIRECTIONS',_dir,true] Call SetNamespace;
['WFBE_WESTSTRUCTURESCRIPTS',_s,true] Call SetNamespace;

/* Defenses */
_n			= ["RHS_M2StaticMG_MiniTripod_WD"];
_n = _n		+ ["RHS_M2StaticMG_WD"];
_n = _n		+ ["RHS_MK19_TriPod_WD"];
_n = _n		+ ["RHS_TOW_TriPod_WD"];
_n = _n		+ ["RHS_M252_WD"];
_n = _n		+ ["RHS_M119_WD"];
_n = _n		+ ["RHS_Stinger_AA_pod_WD"];
_n = _n		+ ["B_SAM_System_03_F"];
_n = _n		+ ["B_Radar_System_01_F"];
_n = _n		+ ["Camp_EP1"];

_n = _n		+ ["Land_HBarrier_3_F"];
_n = _n		+ ["Land_HBarrier_5_F"];
_n = _n		+ ["Land_HBarrier_Big_F"];
//_n = _n		+ ["US_WarfareBBarrier5x_EP1"];
//_n = _n		+ ["US_WarfareBBarrier10x_EP1"];
//_n = _n		+ ["US_WarfareBBarrier10xTall_EP1"];
_n = _n		+ ["Land_MedicalTent_01_white_generic_closed_F"];
_n = _n 	+ ["Land_SM_01_shelter_wide_F"];
_n = _n 	+ ["Land_Hangar_F"];
_n = _n		+ ["Land_BagFence_Long_F"];
_n = _n		+ ["Land_BagFence_Corner_F"];
_n = _n		+ ["Land_BagFence_Round_F"];
_n = _n		+ [if (WF_Camo) then {"Land_Bunker_01_small_F"} else {"Land_BagBunker_Small_F"}];
_n = _n		+ [if (WF_Camo) then {"Land_Barricade_01_4m_F"} else {"Land_Barricade_01_10m_F"}];
_n = _n		+ [if (WF_Camo) then {"Land_Trench_01_forest_F"} else {"Land_TrenchFrame_01_F"}];
_n = _n		+ ["Land_Bunker_01_blocks_3_F"];
_n = _n		+ ["Land_CzechHedgehog_01_F"];
_n = _n		+ [if (WF_Camo) then {"CamoNet_BLUFOR_F"} else {"CamoNet_BLUFOR_F"}];
_n = _n		+ [if (WF_Camo) then {"CamoNet_BLUFOR_open_F"} else {"CamoNet_BLUFOR_open_F"}];
_n = _n		+ [if (WF_Camo) then {"CamoNet_BLUFOR_big_F"} else {"CamoNet_BLUFOR_big_F"}];
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
_n = _n + ['Flag_US_F'];
//_n = _n + ['FlagCarrierUS'];
_n = _n + ['Flag_NATO_F'];
_n = _n + ['Land_Cargo10_military_green_F'];
_n = _n + ['B_CargoNet_01_ammo_F'];
_n = _n + ['CargoNet_01_barrels_F'];
/// Markus
/*_n = _n		+ ["USOrdnanceBox_EP1"];
_n = _n		+ ["USVehicleBox_EP1"];
_n = _n		+ ["USBasicAmmunitionBox_EP1"];
_n = _n		+ ["USBasicWeapons_EP1"];
_n = _n		+ ["USLaunchers_EP1"];
_n = _n		+ ["USSpecialWeapons_EP1"];*/

/* Class used for AI, AI will attempt to build those */
['WFBE_WESTDEFENSES_MG',['RHS_M2StaticMG_WD'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_GL',['RHS_MK19_TriPod_WD'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_AAPOD',['RHS_Stinger_AA_pod_WD'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_ATPOD',['RHS_TOW_TriPod_WD'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_CANNON',['RHS_M119_WD'],true] Call SetNamespace;
['WFBE_WESTDEFENSES_MASH',['Land_MedicalTent_01_white_generic_closed_F'],true] Call SetNamespace;

['WFBE_WESTDEFENSENAMES',_n,true] Call SetNamespace;