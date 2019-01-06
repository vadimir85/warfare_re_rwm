Private ["_n","_u"];

//--- Resistance Key Units.
['WFBE_GUERCREW',(selectRandom ['rhsgref_nat_crew','rhsgref_nat_pmil_crew']),true] Call SetNamespace;
['WFBE_GUERPILOT','rhsgref_nat_warlord',true] Call SetNamespace;
['WFBE_GUERSOLDIER',(selectRandom ['rhsgref_nat_rifleman','rhsgref_nat_pmil_rifleman']),true] Call SetNamespace;

//--- Town Resistance.
_n		= ["Group"];
_u		= ["Indep", "rhsgref_faction_nationalist", "rhsgref_group_national_infantry", "rhsgref_group_national_infantry_mg"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n		= ["Militia"];
_u		= [selectRandom ['rhsgref_nat_commander','rhsgref_nat_pmil_commander']];
_u = _u + ["rhsgref_nat_rifleman"];
_u = _u + ["rhsgref_nat_grenadier"];
_u = _u + ["rhsgref_nat_hunter"];
_u = _u + ["rhsgref_nat_militiaman_kar98k"];
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
_u		= [selectRandom ['rhsgref_nat_commander','rhsgref_nat_pmil_commander']];
_u = _u + [selectRandom ['rhsgref_nat_grenadier_rpg','rhsgref_nat_pmil_grenadier_rpg']];
_u = _u + [selectRandom ['rhsgref_nat_grenadier_rpg','rhsgref_nat_pmil_grenadier_rpg']];
_u = _u + [selectRandom ['rhsgref_nat_uaz_spg9','rhsgref_BRDM2_ATGM']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["AATeam"];
_u		= [selectRandom ['rhsgref_nat_commander','rhsgref_nat_pmil_commander']];
_u = _u + [selectRandom ['rhsgref_nat_specialist_aa','rhsgref_nat_pmil_specialist_aa']];
_u = _u + [selectRandom ['rhsgref_nat_specialist_aa','rhsgref_nat_pmil_specialist_aa']];
_u = _u + [selectRandom ['rhsgref_nat_medic','rhsgref_nat_pmil_medic']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SniperTeam"];
_u		= [selectRandom ['rhsgref_nat_hunter','rhsgref_nat_pmil_hunter']];
_u = _u + [selectRandom ['rhsgref_nat_hunter','rhsgref_nat_pmil_hunter']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["rhs_group_nat_btr70_squad"];
_u		= ["Indep", "rhsgref_faction_nationalist", "rhs_group_indp_nat_btr70", "rhs_group_nat_btr70_squad"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["Technical"];
_u		= [selectRandom ['rhsgref_nat_commander','rhsgref_nat_pmil_commander']];
_u = _u + ["rhsgref_nat_uaz_dshkm"];
_u = _u + ["rhsgref_nat_uaz_ags"];
_u = _u + [selectRandom ['rhsgref_nat_machinegunner','rhsgref_nat_pmil_machinegunner']];
_u = _u + [selectRandom ['rhsgref_nat_grenadier','rhsgref_nat_pmil_grenadier']];
_u = _u + [selectRandom ['rhsgref_nat_hunter','rhsgref_nat_pmil_hunter']];
_u = _u + [selectRandom ['rhsgref_nat_grenadier_rpg','rhsgref_nat_pmil_grenadier_rpg']];
_u = _u + [selectRandom ['rhsgref_nat_grenadier_rpg','rhsgref_nat_pmil_grenadier_rpg']];
_u = _u + [selectRandom ['rhsgref_nat_medic','rhsgref_nat_pmil_medic']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MotorizedGroup"];
_u		= ["Indep", "rhsgref_faction_nationalist", "rhs_group_indp_nat_ural", "rhs_group_nat_ural_squad"] Call GetGroupFromConfig;
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MotorizedAATeam"];
_u		= [selectRandom ['rhsgref_nat_commander','rhsgref_nat_pmil_commander']];
_u = _u + [selectRandom ['rhsgref_nat_uaz','rhsgref_nat_uaz_open']];
_u = _u + [selectRandom ['rhsgref_cdf_gaz66_zu23','rhsgref_nat_ural_Zu23']];
_u = _u + [selectRandom ['rhsgref_cdf_gaz66_zu23','rhsgref_cdf_zsu234']];
_u = _u + [selectRandom ['rhsgref_nat_specialist_aa','rhsgref_nat_pmil_specialist_aa']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MechanizedPatrol"];
_u		= [selectRandom ['rhsgref_nat_commander','rhsgref_nat_pmil_commander']];
_u = _u + [selectRandom ['rhsgref_nat_rifleman_akms','rhsgref_nat_pmil_rifleman_aksu']];
_u = _u + [selectRandom ['rhsgref_nat_scout','rhsgref_nat_pmil_scout']];
_u = _u + [selectRandom ['rhsgref_nat_rifleman','rhsgref_nat_pmil_rifleman']];
_u = _u + [selectRandom ['rhsgref_nat_saboteur','rhsgref_nat_pmil_saboteur']];
_u = _u + ["rhsgref_cdf_bmd1"];
_u = _u + ["rhsgref_cdf_bmp2d"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MechanizedGroup"];
_u		= [selectRandom ['rhsgref_nat_commander','rhsgref_nat_pmil_commander']];
_u = _u + [selectRandom ['rhsgref_cdf_bmd1','rhsgref_cdf_bmd2']];
_u = _u + [selectRandom ['rhsgref_nat_machinegunner','rhsgref_nat_pmil_machinegunner']];
_u = _u + [selectRandom ['rhsgref_nat_scout','rhsgref_nat_pmil_scout']];
_u = _u + [selectRandom ['rhsgref_nat_hunter','rhsgref_nat_pmil_hunter']];
_u = _u + [selectRandom ['rhsgref_nat_rifleman_m92','rhsgref_nat_pmil_rifleman_m92']];
_u = _u + ["rhsgref_nat_militiaman_kar98k"];
_u = _u + [selectRandom ['rhsgref_nat_grenadier_rpg','rhsgref_nat_pmil_grenadier_rpg']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LightArmor"];
_u		= ["rhsgref_BRDM2"];
_u		= ["rhsgref_nat_btr70"];
_u = _u + [selectRandom ['rhsgref_cdf_bmp1','rhsgref_cdf_bmp1d']];
_u = _u + ["rhsgref_cdf_bmp2"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["HeavyArmor"];
_u		= ["rhsgref_cdf_t72ba_tv"];
_u = _u + [selectRandom ['rhsgref_cdf_t72bb_tv','rhsgref_cdf_t80b_tv']];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["CentralArmor"];
_u		= ["rhsgref_cdf_t72bb_tv"];
_u = _u + [selectRandom ['rhsgref_cdf_t80b_tv','rhsgref_cdf_t80bv_tv']];
_u = _u + ["rhsgref_cdf_Mi24D"];
[Format["WFBE_RES%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- Patroling Resistance.
if (('WFBE_RESPATROL' Call GetNamespace) > 0) then {
	['WFBE_RESPATROLTYPE10',['rhsgref_nat_rifleman','rhsgref_nat_rifleman_m92','rhsgref_nat_hunter','rhsgref_nat_medic'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE11',['rhsgref_nat_commander','rhsgref_nat_machinegunner','rhsgref_nat_saboteur','rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE12',['rhsgref_BRDM2','rhsgref_nat_btr70'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE20',['rhsgref_nat_btr70','rhsgref_nat_btr70'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE21',['rhsgref_nat_commander','rhsgref_nat_uaz_ags','rhsgref_nat_grenadier_rpg','rhsgref_nat_scout'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE22',['rhsgref_nat_ural_Zu23','rhsgref_nat_specialist_aa','rhsgref_nat_specialist_aa','rhsgref_nat_medic'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE30',['rhsgref_nat_uaz_spg9','rhsgref_nat_btr70'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE31',['rhsgref_cdf_gaz66_zu23','rhsgref_nat_ural_Zu23'],true] Call SetNamespace;
	['WFBE_RESPATROLTYPE32',['rhsgref_nat_commander',(selectRandom ['rhsgref_nat_ural','rhsgref_nat_ural_open']),'rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier_rpg'],true] Call SetNamespace;
};

//--- Base Attacker Resistance.
if (('WFBE_RESSTRIKER' Call GetNamespace) > 0) then {
	['WFBE_RESSTRIKERTYPE10',['rhsgref_BRDM2','rhsgref_nat_rifleman','rhsgref_nat_rifleman_akms'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE11',['rhsgref_nat_commander','rhsgref_nat_grenadier_rpg','rhsgref_nat_saboteur','rhsgref_nat_grenadier_rpg','rhsgref_nat_specialist_aa'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE12',['rhsgref_nat_commander','rhsgref_nat_scout','rhsgref_nat_specialist_aa','rhsgref_nat_rifleman_akms'],true] Call SetNamespace;
	['WFBE_RESSTRIKERTYPE13',['rhsgref_nat_commander',(selectRandom ['rhsgref_nat_ural','rhsgref_nat_ural_open']),'rhsgref_nat_machinegunner','rhsgref_nat_medic','rhsgref_nat_grenadier_rpg','rhsgref_nat_grenadier_rpg'],true] Call SetNamespace;
};

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Resistance_NATI: Initialization - [Done]",diag_frameno,diag_tickTime];