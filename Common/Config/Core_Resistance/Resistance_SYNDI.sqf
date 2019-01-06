Private ["_n","_u"];

//--- Resistance Key Units.
['WFBE_GUERCREW','I_C_Soldier_Para_1_F',true] Call SetNamespace;
['WFBE_GUERPILOT','I_C_Pilot_F',true] Call SetNamespace;
['WFBE_GUERSOLDIER','I_C_Soldier_Bandit_1_F',true] Call SetNamespace;

//--- Town Resistance.
_n		= ["Group"];
_u		= ["Indep", "IND_C_F", "Infantry", "BanditCombatGroup"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["GroupAssault"];
_u		= ["Indep", "IND_C_F", "Infantry", "BanditFireTeam"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["GroupWeapons"];
_u		= ["Indep", "IND_C_F", "Infantry", "BanditShockTeam"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Patrol1"];
_u		= ["Indep", "IND_C_F", "Infantry", "ParaCombatGroup"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Patrol2"];
_u		= ["Indep", "IND_C_F", "Infantry", "ParaFireTeam"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["ATTeam"];
_u		= ["I_C_Soldier_Bandit_2_F"];
_u = _u + ["I_C_Soldier_Para_5_F"];
_u = _u + ["I_C_Soldier_Para_3_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["AATeam"];
_u		= ["I_C_Soldier_Para_2_F"];
_u = _u + ["I_C_Soldier_Para_4_F"];
_u = _u + ["I_C_Soldier_Para_4_F"];
_u = _u + ["I_C_Soldier_Para_3_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SniperTeam"];
_u		= ["I_C_Soldier_Bandit_6_F"];
_u = _u + ["I_C_Soldier_Bandit_6_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Militia"];
_u		= ["Indep", "IND_C_F", "Infantry", "ParaShockTeam"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Technical"];
_u		= ["I_C_Soldier_Para_2_F"];
_u = _u + ["I_G_Offroad_01_armed_F"];
_u = _u + ["I_G_Offroad_01_armed_F"];
_u = _u + ["I_G_Offroad_01_repair_F"];
_u = _u + ["I_C_Soldier_Bandit_3_F"];
_u = _u + ["I_C_Soldier_Para_6_F"];
_u = _u + ["I_C_Soldier_Bandit_6_F"];
_u = _u + ["I_C_Soldier_Para_5_F"];
_u = _u + ["I_C_Soldier_Para_3_F"];
_u = _u + ["I_C_Soldier_Bandit_1_F"];
_u = _u + ["I_C_Soldier_Bandit_8_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MotorizedGroup"];
_u		= ["I_C_Soldier_Para_7_F"];
_u = _u + ["I_C_Offroad_02_unarmed_F"];
_u = _u + ["I_C_Soldier_Para_8_F"];
_u = _u + ["I_C_Soldier_Bandit_8_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MotorizedAATeam"];
_u		= ["I_C_Soldier_Para_2_F"];
_u = _u + ["rhssaf_m1025_olive_m2"];
_u = _u + ["I_C_Soldier_Bandit_6_F"];
_u = _u + ["I_C_Soldier_Para_4_F"];
_u = _u + ["I_C_Soldier_Para_1_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MechanizedPatrol"];
_u		= ["I_C_Soldier_Para_3_F"];
_u = _u + ["rhssaf_m1025_olive_m2"];
_u = _u + ["I_MRAP_03_hmg_F"];
_u = _u + ["I_C_Soldier_Bandit_5_F"];
_u = _u + ["I_C_Soldier_Para_1_F"];
_u = _u + ["I_C_Soldier_Para_8_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MechanizedGroup"];
_u		= ["I_C_Soldier_Para_2_F"];
_u = _u + ["I_G_Offroad_01_armed_F"];
_u = _u + ["rhssaf_m1025_olive_m2"];
_u = _u + ["I_C_Soldier_Bandit_3_F"];
_u = _u + ["I_C_Soldier_Bandit_5_F"];
_u = _u + ["I_C_Soldier_Bandit_2_F"];
_u = _u + ["I_C_Soldier_Para_3_F"];
_u = _u + ["I_C_Soldier_Bandit_6_F"];
_u = _u + ["I_C_Soldier_Para_5_F"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LightArmor"];
_u		= ["I_G_Offroad_01_armed_F"];
_u = _u + ["I_G_Offroad_01_armed_F"];
_u = _u + ["rhssaf_m1025_olive_m2"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["HeavyArmor"];
_u		= ["I_G_Offroad_01_armed_F"];
_u = _u + ["I_APC_Wheeled_03_cannon_F"];
_u = _u + ["rhssaf_m1025_olive_m2"];
_u = _u + [selectRandom ['rhsgref_cdf_reg_Mi17Sh_UPK','rhsgref_cdf_reg_Mi17Sh']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["CentralArmor"];
_u		= ["I_MRAP_03_gmg_F"];
_u = _u + ["I_MRAP_03_hmg_F"];
_u = _u + ["I_APC_Wheeled_03_cannon_F"];
_u = _u + ["I_G_Offroad_01_F"];
_u = _u + [selectRandom ['rhsgref_cdf_reg_Mi17Sh_UPK','rhsgref_cdf_reg_Mi17Sh']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- Patroling Resistance.
if (('WFBE_RESPATROL' Call GetNamespace) > 0) then {
	['WFBE_RESPATROLTYPE10',['I_C_Soldier_Para_1_F','I_C_Soldier_Bandit_3_F','I_C_Soldier_Bandit_6_F','I_C_Soldier_Bandit_1_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE11',['I_C_Soldier_Para_2_F','I_C_Soldier_Bandit_3_F','I_C_Soldier_Bandit_4_F','I_C_Soldier_Bandit_2_F','I_C_Soldier_Para_6_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE12',['rhssaf_m1025_olive_m2','I_MRAP_03_gmg_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE20',['rhssaf_m998_olive_2dr_halftop','rhssaf_m1025_olive_m2'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE21',['rhssaf_m998_olive_2dr_fulltop','I_C_Soldier_Para_2_F','I_C_Soldier_Bandit_2_F','I_C_Soldier_Bandit_5_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE22',['rhssaf_m998_olive_2dr_halftop','I_C_Soldier_Para_4_F','I_C_Soldier_Para_4_F','I_C_Soldier_Bandit_1_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE30',['I_G_Offroad_01_armed_F','I_G_Offroad_01_armed_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE31',['I_G_Offroad_01_armed_F','I_G_Offroad_01_armed_F'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE32',['rhssaf_m1025_olive','I_C_Soldier_Para_2_F','I_C_Soldier_Para_5_F','I_C_Soldier_Para_3_F','I_C_Soldier_Para_3_F'],true] Call SetNamespace;
};

//--- Base Attacker Resistance.
if (('WFBE_RESSTRIKER' Call GetNamespace) > 0) then {
	['WFBE_RESSTRIKERTYPE10',['rhssaf_m1025_olive_m2','I_C_Soldier_Para_1_F','I_C_Soldier_Para_1_F'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE11',['I_C_Soldier_Para_2_F','I_C_Soldier_Para_3_F','I_C_Soldier_Bandit_4_F','I_C_Soldier_Para_5_F','I_C_Soldier_Para_4_F'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE12',['I_C_Soldier_Para_2_F','I_C_Soldier_Bandit_5_F','I_C_Soldier_Para_4_F','I_C_Soldier_Bandit_7_F'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE13',['I_C_Heli_Light_01_civil_F','I_C_Soldier_Bandit_3_F','I_C_Soldier_Bandit_1_F','I_C_Soldier_Bandit_2_F','I_C_Soldier_Para_5_F'],true] Call SetNamespace;
};

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Resistance_SYNDI: Initialization - [Done]",diag_frameno,diag_tickTime];