Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_squadleader"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ocp_rifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam2"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_riflemanat"];
_u = _u + ["rhsusf_socom_marsoc_sarc"];
_u = _u + ["RWM_it_Officer"];
_u = _u + ["RWM_it_Marksman"];
_u = _u + ["RWM_it_Medic"];
_u = _u + ["RWM_it_Autorifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam3"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_machinegunner"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_riflemanat"];
_u = _u + ["RWM_it_Officer"];
_u = _u + ["RWM_it_Marksman"];
_u = _u + ["RWM_it_Medic"];
_u = _u + ["RWM_it_Autorifleman"];
_u = _u + ["Rwm_Lav25A2"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam1"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["RWM_ACR_Pandur_II_D"];
_u = _u + ["rhsusf_M1117_O"];
_u = _u + ["Rwm_Lav25A2"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam2"];
_u		= ["rhsusf_army_ucp_squadleader"];
_u = _u + ["rhsusf_M1117_W"];
_u = _u + ["RHS_M2A3"];
_u = _u + ["RWM_ACR_Pandur_II_D"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam3"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_m1025_d_m2"];
_u = _u + ["rhsusf_m1025_d_Mk19"];
_u = _u + ["RWM_ACR_Pandur_II_D"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam1"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_socom_marsoc_sarc"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_riflemanat"];
_u = _u + ["rhsusf_army_ucp_explosives"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["Rwm_Lav25A2"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam2"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_riflemanat"];
_u = _u + ["rhsusf_army_ucp_explosives"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_machinegunner"];
_u = _u + ["RWM_it_Officer"];
_u = _u + ["RWM_it_Marksman"];
_u = _u + ["RWM_it_Medic"];
_u = _u + ["RWM_it_Autorifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam3"];
_u		= ["rhsusf_army_ucp_jfo"];
_u = _u + ["rhsusf_army_ucp_marksman"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_marksman"];
_u = _u + ["rhsusf_army_ucp_sniper_m107"];
_u = _u + ["RWM_ACR_Soldier_specop_MG"];
_u = _u + ["RWM_ACR_Soldier_specop_m4a1"];
_u = _u + ["RWM_ACR_Marksman_specop_sr25"];
_u = _u + ["RWM_ACR_Soldier_specop_medic"];
_u = _u + ["RHS_M2A3"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam1"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_M1220_M2_usarmy_wd"];
_u = _u + ["RHS_M2A3"];
_u = _u + ["rhsusf_M1237_M2_usarmy_wd"];
_u = _u + ["rhsusf_m1025_d_m2"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam2"];
_u		= ["RWM_ACR_Soldier_sa58_kr_D"];
_u = _u + ["rhsusf_m1a1aimwd_usarmy"];
_u = _u + ["rhsusf_m1a1aimwd_usarmy"];
_u = _u + ["RHS_M2A3"];

[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam3"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["Rwm_Lav25A2"];
_u = _u + ["rhsusf_m1025_d_m2"];
_u = _u + ["rhsusf_m1a1aimwd_usarmy"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam1"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_sniper_m24sws"];
_u = _u + ["rhsusf_army_ucp_maaws"];
_u = _u + ["rhsusf_army_ucp_maaws"];
_u = _u + ["rhsusf_army_ucp_javelin"];
_u = _u + ["rhsusf_army_ocp_rifleman"];
_u = _u + ["RWM_ACR_Soldier_specop_MG"];
_u = _u + ["RWM_ACR_Soldier_specop_m4a1"];
_u = _u + ["RWM_ACR_Marksman_specop_sr25"];
_u = _u + ["RWM_ACR_Soldier_specop_medic"];
_u = _u + ["RWM_ACR_Soldier_sa58_MP"];
_u = _u + ["RWM_ACR_Soldier_MP_PT"];
_u = _u + ["RWM_ACR_Soldier_sa58_specop_RPG"];
_u = _u + ["RWM_ACR_Pandur_II_D"];
_u = _u + ["RWM_it_Officer"];
_u = _u + ["RWM_it_Marksman"];
_u = _u + ["RWM_it_Medic"];
_u = _u + ["RWM_it_Autorifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam2"];
_u		= ["RWM_ACR_Soldier_sa58_kr_D"];
_u = _u + ["RWM_ACR_Soldier_specop_MG"];
_u = _u + ["RWM_ACR_Soldier_specop_m4a1"];
_u = _u + ["RWM_ACR_Marksman_specop_sr25"];
_u = _u + ["RWM_ACR_Soldier_specop_medic"];
_u = _u + ["RWM_ACR_Soldier_sa58_MP"];
_u = _u + ["RWM_ACR_Soldier_MP_PT"];
_u = _u + ["RWM_ACR_Soldier_sa58_specop_RPG"];
_u = _u + ["RWM_ACR_Soldier_sa58_specop_RPG"];
_u = _u + ["RWM_it_Officer"];
_u = _u + ["RWM_it_Marksman"];
_u = _u + ["RWM_it_Medic"];
_u = _u + ["RWM_it_Autorifleman"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam3"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_socom_marsoc_sarc"];
_u = _u + ["rhsusf_army_ucp_sniper_m107"];
_u = _u + ["rhsusf_army_ucp_jfo"];
_u = _u + ["rhsusf_army_ucp_explosives"];
_u = _u + ["rhsusf_army_ucp_machinegunner"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_riflemanat"];
_u = _u + ["rhsusf_army_ucp_explosives"];
_u = _u + ["rhsusf_army_ucp_machinegunner"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_riflemanat"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam1"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_m1a1aimwd_usarmy"];
_u = _u + ["rhsusf_m1a1aimwd_usarmy"];
_u = _u + ["RHS_M2A3"];
_u = _u + ["RHS_M6"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam2"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_m1a2sep1tuskiid_usarmy"];
_u = _u + ["rhsusf_m1a1aimwd_usarmy"];
_u = _u + ["RHS_M2A3"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam3"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_m1a2sep1tuskiid_usarmy"];
_u = _u + ["rhsusf_m1a1aimwd_usarmy"];
_u = _u + ["rhsusf_m1a1aimwd_usarmy"];
_u = _u + ["RHS_M6"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n = _n + ["SmallAATeam"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["RHS_M6"];
_u = _u + ["RHS_M6"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumAATeam"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ocp_rifleman"];
_u = _u + ["M1126_ICV_mk19_DG1_SLATDES"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeAATeam"];
_u		= ["rhsusf_army_ucp_officer"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["rhsusf_army_ucp_aa"];
_u = _u + ["RHS_M6"];
_u = _u + ["RHS_M6"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_US: Initialization - [Done]",diag_frameno,diag_tickTime];