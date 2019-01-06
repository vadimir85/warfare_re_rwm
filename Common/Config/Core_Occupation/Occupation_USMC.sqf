Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["rhsusf_usmc_marpat_wd_squadleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_autorifleman_m249"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_m4"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam2"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_autorifleman_m249"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_law"];
_u = _u + ["rhsusf_navy_sarc_w"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam3"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_machinegunner"];
_u = _u + ["rhsusf_usmc_marpat_wd_autorifleman_m249"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_law"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam1"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_rg33_usmc_wd"];
_u = _u + ["rhsusf_rg33_m2_usmc_wd"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam2"];
_u		= ["rhsusf_usmc_marpat_wd_squadleader"];
_u = _u + ["rhsusf_rg33_m2_usmc_wd"];
_u = _u + ["RHS_M2A2_wd"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam3"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_rg33_usmc_wd"];
_u = _u + ["rhsusf_rg33_m2_usmc_wd"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam1"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_autorifleman_m249"];
_u = _u + ["rhsusf_navy_sarc_w"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam2"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_law"];
_u = _u + ["rhsusf_usmc_marpat_wd_smaw"];
_u = _u + ["rhsusf_usmc_marpat_wd_autorifleman_m249"];
_u = _u + ["rhsusf_usmc_marpat_wd_machinegunner"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam3"];
_u		= ["rhsusf_usmc_recon_marpat_wd_officer"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_rifleman"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_rifleman"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_marksman"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_grenadier_m32"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam1"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["RHS_M2A2_wd"];
_u = _u + ["RHS_M2A2_wd"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam2"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_m1a1hc_wd"];
_u = _u + ["rhsusf_m1a1hc_wd"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam3"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["RHS_M2A2_wd"];
_u = _u + ["rhsusf_m1025_w_s_m2"];
_u = _u + ["rhsusf_m1a1hc_wd"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam1"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_smaw"];
_u = _u + ["rhsusf_usmc_marpat_wd_smaw"];
_u = _u + ["rhsusf_usmc_marpat_wd_smaw"];
_u = _u + ["rhsusf_usmc_marpat_wd_javelin"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_m4"];
_u = _u + ["rhsusf_navy_sarc_w"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam2"];
_u		= ["rhsusf_usmc_lar_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_lar_marpat_wd_autorifleman"];
_u = _u + ["rhsusf_usmc_lar_marpat_wd_riflemanat"];
_u = _u + ["rhsusf_usmc_lar_marpat_wd_marksman"];
_u = _u + ["rhsusf_usmc_lar_marpat_wd_rifleman"];
_u = _u + ["rhsusf_usmc_lar_marpat_wd_rifleman_light"];
_u = _u + ["rhsusf_usmc_lar_marpat_wd_rifleman_light"];
_u = _u + ["rhsusf_usmc_lar_marpat_wd_rifleman_light"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;


_n = _n + ["LargeTeam3"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u + ["rhsusf_navy_sarc_w"];
_u = _u + ["rhsusf_usmc_marpat_wd_grenadier_m32"];
_u = _u + ["rhsusf_usmc_marpat_wd_sniper_M107"];
_u = _u + ["rhsusf_usmc_marpat_wd_smaw"];
_u = _u + ["rhsusf_usmc_marpat_wd_machinegunner"];
_u = _u + ["rhsusf_usmc_marpat_wd_autorifleman_m249"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_law"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam1"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_m1a1fep_od"];
_u = _u + ["rhsusf_m1a1fep_od"];
_u = _u + ["rhsusf_m1a1fep_od"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam2"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_m1a1fep_od"];
_u = _u + ["rhsusf_m1a1fep_od"];
_u = _u + ["rhsusf_m1a1fep_od"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam3"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_m1a1fep_od"];
_u = _u + ["rhsusf_m1a1fep_od"];
_u = _u + ["rhsusf_m1a1fep_od"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n = _n + ["SmallAATeam"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_m4"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_m4"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumAATeam"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_m4"];
_u = _u + ["RHS_M6_wd"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeAATeam"];
_u		= ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_m4"];
_u = _u + ["rhsusf_usmc_marpat_wd_rifleman_m4"];
_u = _u + ["RHS_M6_wd"];
_u = _u + ["RHS_M6_wd"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_USMC: Initialization - [Done]",diag_frameno,diag_tickTime];