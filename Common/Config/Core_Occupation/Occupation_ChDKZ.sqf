Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_rifleman_aks74"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam2"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_sniper"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["rhsgref_ins_grenadier"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam3"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_grenadier"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam1"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_BRDM2_ins"];
_u = _u + ["rhsgref_BRDM2_ATGM_ins"];
_u = _u + ["rhsgref_ins_uaz_dshkm"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam2"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_rifleman_aks74"];
_u = _u + ["rhsgref_BRDM2_ATGM_ins"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam3"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_uaz_ags"];
_u = _u + ["rhsgref_ins_uaz_spg9"];
_u = _u + ["rhsgref_ins_rifleman_aks74"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam1"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_rifleman"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam2"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam3"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_sniper"];
_u = _u + ["rhsgref_ins_sniper"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam1"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_rifleman_aks74"];
_u = _u + ["rhsgref_ins_bmp2"];
_u = _u + ["rhsgref_ins_zsu234"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam2"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["BMP2_Ambul_INS"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam3"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_zsu234"];
_u = _u + ["rhsgref_ins_bmp2"];
_u = _u + ["rhsgref_ins_t72bc"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam1"];
_u		= ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_medic"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_rifleman"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam2"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_medic"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier"];
_u = _u + ["rhsgref_ins_rifleman"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam3"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_sniper"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["rhsgref_ins_grenadier"];
_u = _u + ["rhsgref_ins_rifleman"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam1"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam2"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_zsu234"];
_u = _u + ["rhsgref_ins_bmp2"];
_u = _u + ["rhsgref_ins_t72bc"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam3"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_zsu234"];
_u = _u + ["rhsgref_ins_BM21"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n = _n + ["SmallAATeam"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_rifleman"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumAATeam"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_zsu234"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeAATeam"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_zsu234"];
_u = _u + ["rhsgref_ins_zsu234"];
_u = _u + ["rhsgref_ins_bmp2"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_INS: Initialization - [Done]",diag_frameno,diag_tickTime];