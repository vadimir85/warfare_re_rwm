Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam2"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam3"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_engineer"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam1"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_BRDM2_ATGM_b"];
_u = _u + ["rhsgref_BRDM2_b"];
_u = _u + ["rhsgref_cdf_b_reg_uaz_dshkm"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam2"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_BRDM2_ATGM_b"];
_u = _u + ["rhsgref_cdf_b_ural_Zu23"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam3"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_uaz_ags"];
_u = _u + ["rhsgref_cdf_b_reg_uaz_dshkm"];
_u = _u + ["rhsgref_cdf_b_ural_Zu23"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam1"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam2"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam3"];
_u		= ["rhsgref_cdf_b_reg_marksman"];
_u = _u + ["rhsgref_cdf_b_ngd_rifleman_m92"];
_u = _u + ["rhsgref_cdf_b_ngd_rifleman_m92"];
_u = _u + ["rhsgref_cdf_b_para_marksman"];
_u = _u + ["rhsgref_cdf_b_para_marksman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam1"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_ural_Zu23"];
_u = _u + ["rhsgref_cdf_b_bmp2"];
_u = _u + ["rhsgref_cdf_b_zsu234"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam2"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_btr60"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam3"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_zsu234"];
_u = _u + ["rhsgref_cdf_b_bmp2"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam1"];
_u		= ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam2"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_marksman"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam3"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier"];
_u = _u + ["rhsgref_cdf_b_reg_marksman"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_engineer"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam1"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam2"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_zsu234"];
_u = _u + ["rhsgref_cdf_b_bmp2"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam3"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_zsu234"];
_u = _u + ["rhsgref_cdf_b_reg_BM21"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n = _n + ["SmallAATeam"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumAATeam"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_zsu234"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeAATeam"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_zsu234"];
_u = _u + ["rhsgref_cdf_b_zsu234"];
_u = _u + ["rhsgref_cdf_b_bmp2"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_CDF: Initialization - [Done]",diag_frameno,diag_tickTime];