Private ["_n","_u"];

//--- Resistance Key Units.
['WFBE_GUERCREW','I_crew_F',true] Call SetNamespace;
['WFBE_GUERPILOT','I_helipilot_F',true] Call SetNamespace;
['WFBE_GUERSOLDIER','I_soldier_F',true] Call SetNamespace;

//--- Town Resistance.
_n		= ["Group"];
_u		= ["Indep", "IND_F", "Infantry", "HAF_InfSquad"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["GroupAssault"];
_u		= ["Indep", "IND_F", "Infantry", "HAF_SniperTeam"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["GroupWeapons"];
_u		= ["Indep", "IND_F", "Infantry", "HAF_InfTeam_AA"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Patrol1"];
_u		= ["Indep", "IND_F", "Infantry", "HAF_InfTeam_AT"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Patrol2"];
_u		= ["Indep", "IND_F", "Infantry", "HAF_InfSquad_Weapons"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["ATTeam"];
_u		= ["I_Soldier_LAT_F"];
_u = _u + ["I_Soldier_LAT_F"];
_u = _u + ["I_Soldier_AT_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["AATeam"];
_u		= ["I_Soldier_SL_F"];
_u = _u + ["I_Soldier_AA_F"];
_u = _u + ["I_Soldier_AA_F"];
_u = _u + ["I_medic_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SniperTeam"];
_u		= ["I_Soldier_M_F"];
_u = _u + ["I_Soldier_M_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["HAF_Support_MG"];
_u		= ["Indep", "IND_F", "Support", "HAF_Support_MG"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Technical"];
_u		= ["I_Soldier_SL_F"];
_u = _u + ["I_APC_Wheeled_03_cannon_F"];
_u = _u + ["I_APC_tracked_03_cannon_F"];
_u = _u + ["I_MRAP_03_hmg_F"];
_u = _u + ["I_Soldier_AR_F"];
_u = _u + ["I_Soldier_GL_F"];
_u = _u + ["I_Soldier_M_F"];
_u = _u + ["I_Soldier_LAT_F"];
_u = _u + ["I_Soldier_AT_F"];
_u = _u + ["I_medic_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MotorizedGroup"];
_u		= ["Indep", "IND_F", "Motorized", "HAF_MotInf_Reinforce"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MotorizedAATeam"];
_u		= ["I_Soldier_SL_F"];
_u = _u + ["I_APC_Wheeled_03_cannon_F"];
_u = _u + ["I_Soldier_M_F"];
_u = _u + ["I_Soldier_AA_F"];
_u = _u + ["I_soldier_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MechanizedPatrol"];
_u		= ["I_Soldier_AT_F"];
_u = _u + ["I_MRAP_03_hmg_F"];
_u = _u + ["I_MRAP_03_hmg_F"];
_u = _u + ["I_Spotter_F"];
_u = _u + ["I_soldier_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MechanizedGroup"];
_u		= ["I_Soldier_SL_F"];
_u = _u + ["I_APC_Wheeled_03_cannon_F"];
_u = _u + ["I_MRAP_03_hmg_F"];
_u = _u + ["I_Soldier_AR_F"];
_u = _u + ["I_Spotter_F"];
_u = _u + ["I_Soldier_LAT_F"];
_u = _u + ["I_Soldier_AT_F"];
_u = _u + ["I_Soldier_M_F"];
_u = _u + ["I_Soldier_LAT_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LightArmor"];
_u		= ["I_APC_Wheeled_03_cannon_F"];
_u = _u + ["I_APC_tracked_03_cannon_F"];
_u = _u + ["I_APC_tracked_03_cannon_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["HeavyArmor"];
_u		= ["I_APC_Wheeled_03_cannon_F"];
_u = _u + ["I_MBT_03_cannon_F"];
_u = _u + ["I_APC_tracked_03_cannon_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["CentralArmor"];
_u		= ["I_MBT_03_cannon_F"];
_u = _u + ["I_MBT_03_cannon_F"];
_u = _u + ["I_MRAP_03_hmg_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- Patroling Resistance.
if (('WFBE_RESPATROL' Call GetNamespace) > 0) then {
	['WFBE_RESPATROLTYPE10',['I_soldier_F','I_Soldier_AAR_F','I_Soldier_M_F','I_medic_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE11',['I_Soldier_SL_F','I_Soldier_AR_F','I_Soldier_A_F','I_Soldier_LAT_F','I_Soldier_GL_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE12',['I_UGV_01_rcws_F','I_MRAP_03_hmg_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE20',['I_APC_Wheeled_03_cannon_F','I_APC_tracked_03_cannon_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE21',['I_MRAP_03_F','I_Soldier_SL_F','I_Soldier_LAT_F','I_Spotter_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE22',['I_MRAP_03_gmg_F','I_Soldier_AA_F','I_Soldier_AA_F','I_medic_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE30',['I_MRAP_03_gmg_F','I_APC_Wheeled_03_cannon_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE31',['I_APC_Wheeled_03_cannon_F','I_APC_Wheeled_03_cannon_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE32',['I_Heli_Transport_02_F','I_Soldier_SL_F','I_Soldier_LAT_F','I_Soldier_AT_F','I_Soldier_AT_F'],true] Call SetNamespace;
};

//--- Base Attacker Resistance.
if (('WFBE_RESSTRIKER' Call GetNamespace) > 0) then {
	['WFBE_RESSTRIKERTYPE10',['I_MRAP_03_hmg_F','I_soldier_F','I_soldier_F'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE11',['I_Soldier_SL_F','I_Soldier_AT_F','I_Soldier_A_F','I_Soldier_LAT_F','I_Soldier_AA_F'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE12',['I_Soldier_SL_F','I_Spotter_F','I_Soldier_AA_F','Soldier_Engineer_PMC'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE13',['I_Heli_light_03_unarmed_F','I_Soldier_AR_F','I_medic_F','I_Soldier_LAT_F','I_Soldier_LAT_F'],true] Call SetNamespace;
};

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Resistance_AAF: Initialization - [Done]",diag_frameno,diag_tickTime];