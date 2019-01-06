Private ["_n","_u"];

//--- Resistance Key Units.
['WFBE_GUERCREW',(selectRandom ['RWM_ISIS_Soldier_plam','I_C_Soldier_Bandit_4_F']),true] Call SetNamespace;
['WFBE_GUERPILOT','rhsgref_nat_warlord',true] Call SetNamespace;
['WFBE_GUERSOLDIER',(selectRandom ['I_C_Soldier_Bandit_4_F','I_C_Soldier_Para_1_F']),true] Call SetNamespace;

//--- Town Resistance.
_n		= ["Group"];
_u		= ["Indep", "rhsgref_faction_nationalist", "rhsgref_group_national_infantry", "rhsgref_group_national_infantry_mg"] Call GetGroupFromConfig;
_u = _u + ["RWM_ISIS_Soldier_FT"];
_u = _u + ["RWM_ISIS_Soldier_robin_hood"];
_u = _u + ["RWM_ISIS_Soldier_Retro"];
_u = _u + ["RWM_ISIS_Soldier_WAI_AKS74"];
_u = _u + ["RWM_ISIS_Soldier_Retro_rpg"];
_u = _u + ["RWM_ISIS_Soldier_scheibe"];
_u = _u + ["RWM_ISIS_Soldier_AKS74"];
_u = _u + ["RWM_ISIS_Soldier_Retro"];
_u = _u + ["RWM_ISIS_Soldier_WAI_AKS74"];
_u = _u + ["RWM_ISIS_Soldier_FCB_AKS74"];
_u = _u + ["RWM_ISIS_Soldier_RPG7"];
_u = _u + ["RWM_ISIS_Soldier_1"];
_u = _u + ["RWM_ISIS_Soldier_2"];
_u = _u + ["RWM_ISIS_Soldier_3"];
_u = _u + ["Rwm_ISIS_Soldier_4"];
_u = _u + ["RWM_ISIS_Soldier_plam"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["GroupAssault"];
_u		= ["Indep", "rhsgref_faction_nationalist", "rhsgref_group_national_infantry", "rhsgref_group_national_infantry_squad"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["GroupWeapons"];
_u		= ["Indep", "rhsgref_faction_nationalist", "rhsgref_group_national_infantry", "rhsgref_group_national_infantry_squad_2"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Patrol1"];
_u		= ["Indep", "rhsgref_faction_nationalist", "rhsgref_group_national_infantry", "rhsgref_group_national_infantry_patrol"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Patrol2"];
_u		= ["Indep", "rhsgref_faction_nationalist", "rhsgref_group_national_infantry", "rhsgref_group_national_infantry_patrol"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["ATTeam"];
_u		= [selectRandom ['I_C_Soldier_Para_7_F','I_C_Soldier_Bandit_8_F']];
_u = _u + ["I_C_Soldier_Bandit_4_F"];
_u = _u + ["I_C_Soldier_Bandit_7_F"];
_u = _u + ["I_C_Soldier_Bandit_1_F"];
_u = _u + ["I_C_Soldier_Bandit_2_F"];
_u = _u + ["I_C_Soldier_Bandit_5_F"];
_u = _u + ["I_C_Soldier_Para_3_F"];
_u = _u + ["I_C_Soldier_Para_2_F"];
_u = _u + ["I_C_Soldier_Para_1_F"];

[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["AATeam"];
_u		= [selectRandom ['rhsgref_ins_g_commander','RWM_ISIS_Soldier_rpg75']];
_u = _u + [selectRandom ['rhsgref_ins_g_specialist_aa','rhsgref_ins_g_specialist_aa']];
_u = _u + [selectRandom ['rhsgref_ins_g_specialist_aa','rhsgref_ins_g_specialist_aa']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SniperTeam"];
_u		= [selectRandom ['RWM_ISIS_Soldier_panzerfaust','rhsgref_ins_g_sniper']];
_u = _u + [selectRandom ['rhsgref_ins_g_sniper','RWM_ISIS_Soldier_panzerfaust']];
_u = _u + ["RWM_ISIS_Soldier_AKS74"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Technical"];
_u		= [selectRandom ['rhsgref_ins_g_commander','RWM_ISIS_Soldier_rpg75']];
_u = _u + ["RWM_ISIS_Soldier_AKS74"];
_u = _u + ["RWM_ISIS_Soldier_Retro"];
_u = _u + ["RWM_ISIS_Soldier_WAI_AKS74"];
_u = _u + ["RWM_ISIS_Soldier_FCB_AKS74"];
_u = _u + ["RWM_ISIS_Soldier_FT"];
_u = _u + ["RWM_ISIS_Soldier_robin_hood"];
_u = _u + ["RWM_ISIS_Soldier_Retro"];
_u = _u + ["RWM_ISIS_Soldier_WAI_AKS74"];
_u = _u + ["RWM_ISIS_Soldier_plam"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MotorizedGroup"];
_u		= ["Indep", "rhsgref_faction_nationalist", "I_G_Offroad_01_armed_F", "I_G_Offroad_01_AT_F"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MotorizedAATeam"];
_u		= [selectRandom ['rhsgref_ins_g_commander','RWM_ISIS_Soldier_rpg75']];
_u = _u + [selectRandom ['Rwm_isis_M113_m2_res','rhsgref_nat_ural_Zu23']];
_u = _u + [selectRandom ['Rwm_ISIS_hmmwv_Mk19_res','I_G_Offroad_01_AT_F']];
_u = _u + [selectRandom ['rhsgref_nat_ural_Zu23','rhssaf_m1025_olive_m2']];
_u = _u + [selectRandom ['rhsgref_ins_g_specialist_aa','rhsgref_ins_g_specialist_aa']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MechanizedPatrol"];
_u		= [selectRandom ['rhsgref_ins_g_commander','RWM_ISIS_Soldier_rpg75']];
_u = _u + [selectRandom ['RWM_ISIS_Soldier_AKS74_akms','rhsgref_nat_pmil_rifleman_aksu']];
_u = _u + [selectRandom ['rhsgref_nat_scout','rhsgref_nat_pmil_scout']];
_u = _u + [selectRandom ['RWM_ISIS_Soldier_AKS74','rhsgref_nat_pmil_rifleman']];
_u = _u + [selectRandom ['rhsgref_nat_saboteur','rhsgref_nat_pmil_saboteur']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MechanizedGroup"];
_u		= [selectRandom ['rhsgref_ins_g_commander','RWM_ISIS_Soldier_rpg75']];
_u = _u + [selectRandom ['rhsgref_BRDM2_ins_g','rhsgref_BRDM2_ATGM_ins_g']];
_u = _u + [selectRandom ['RWM_ISIS_Soldier_rpg75','RWM_ISIS_Soldier_robin_hood']];
_u = _u + [selectRandom ['rhsgref_nat_scout','rhsgref_nat_pmil_scout']];
_u = _u + [selectRandom ['RWM_ISIS_Soldier_panzerfaust','RWM_ISIS_Soldier_panzerfaust']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LightArmor"];
_u		= ["rhsgref_ins_g_btr60"];
_u = _u + ["rhsgref_hidf_m113a3_m2"];
_u = _u + [selectRandom ['rhssaf_m1025_olive_m2','rhsgref_ins_g_uaz_ags']];
_u = _u + [selectRandom ['rhsgref_cdf_btr70','rhsgref_ins_g_btr70']];
_u = _u + [selectRandom ['I_G_Offroad_01_armed_F','I_G_Offroad_01_AT_F']];
_u = _u + [selectRandom ['RWM_ISIS_bmd1p_res','rhsgref_ins_g_bmp2d']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["HeavyArmor"];
_u		= ["RWM_ISIS_bmp2d_res"];
_u = _u + ["RWM_ISIS_bmp2_res"];
_u = _u + ["RWM_ISIS_t72bb_res"];
_u = _u + [selectRandom ['rhsgref_BRDM2_ATGM_ins_g','rhsgref_nat_ural_Zu23']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["CentralArmor"];
_u		= ["RWM_ISIS_Soldier_FT"];
_u = _u + [selectRandom ['RWM_ISIS_bmp1p_res','RWM_ISIS_bmp1k_res']];
_u = _u + ["RWM_ISIS_t72bb_res"];
_u = _u + ["Rwm_M60A3_W"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- Patroling Resistance.
if (('WFBE_RESPATROL' Call GetNamespace) > 0) then {
	['WFBE_RESPATROLTYPE10',['RWM_ISIS_Soldier_AKS74','RWM_ISIS_Soldier_AKS74_m92','RWM_ISIS_Soldier_panzerfaust','rhsgref_nat_medic'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE11',['rhsgref_ins_g_commander','RWM_ISIS_Soldier_rpg75','rhsgref_nat_saboteur','RWM_ISIS_Soldier_isis','RWM_ISIS_Soldier_isis'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE12',['rhsgref_BRDM2','rhsgref_nat_btr70'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE20',['rhsgref_nat_btr70','rhsgref_nat_btr70'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE21',['rhsgref_ins_g_commander','rhsgref_nat_uaz_ags','RWM_ISIS_Soldier_isis','rhsgref_nat_scout'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE22',['rhsgref_nat_ural_Zu23','rhsgref_ins_g_specialist_aa','rhsgref_ins_g_specialist_aa','rhsgref_nat_medic'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE30',['rhsgref_ins_g_uaz_spg9','rhsgref_nat_btr70'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE31',['rhssaf_m1025_olive_m2','rhsgref_nat_ural_Zu23'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE32',['rhsgref_ins_g_commander',(selectRandom ['rhsgref_nat_ural','rhsgref_nat_ural_open']),'RWM_ISIS_Soldier_isis','RWM_ISIS_Soldier_isis','RWM_ISIS_Soldier_isis'],true] Call SetNamespace;
};

//--- Base Attacker Resistance.
if (('WFBE_RESSTRIKER' Call GetNamespace) > 0) then {
	['WFBE_RESSTRIKERTYPE10',['rhsgref_BRDM2','RWM_ISIS_Soldier_AKS74','RWM_ISIS_Soldier_AKS74_akms'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE11',['rhsgref_ins_g_commander','RWM_ISIS_Soldier_isis','rhsgref_nat_saboteur','RWM_ISIS_Soldier_isis','rhsgref_ins_g_specialist_aa'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE12',['rhsgref_ins_g_commander','rhsgref_nat_scout','rhsgref_ins_g_specialist_aa','RWM_ISIS_Soldier_AKS74_akms'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE13',['rhsgref_ins_g_commander',(selectRandom ['rhsgref_nat_ural','rhsgref_nat_ural_open']),'RWM_ISIS_Soldier_rpg75','rhsgref_nat_medic','RWM_ISIS_Soldier_isis','RWM_ISIS_Soldier_isis'],true] Call SetNamespace;
};

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Resistance_INSCHDKZ: Initialization - [Done]",diag_frameno,diag_tickTime];