Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["RWM_S_Obvoj_Ak74"];
_u = _u + ["RWM_S_pyrotechnist_Ak74"];
_u = _u + ["RWM_S_Ak74_gp25"];
_u = _u + ["RWM_S_Rpg7_ak74m"];
_u = _u + ["RWM_S_Medic_Ak74"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam2"];
_u		= ["RWM_S_Obvoj_Ak74"];
_u = _u + ["RWM_S_Rpg26_ak74"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["RWM_S_Ak74_gp25"];
_u = _u + ["RWM_S_MG_PKM"];
_u = _u + ["RWM_S_MG_PKP"];
_u = _u + ["RWM_S_Rshg2_ak74m"];
_u = _u + ["RWM_S_Marksman_Svdp"];
_u = _u + ["RWM_S_Rpg7_ak74m"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam3"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["RWM_S_pyrotechnist_Ak74"];
_u = _u + ["RWM_S_Ak74_gp25"];
_u = _u + ["RWM_S_MG_PKM"];
_u = _u + ["RWM_S_Rpg7_ak74m"];
_u = _u + ["RWM_S_MG_PKM"];
_u = _u + ["RWM_S_MG_PKP"];
_u = _u + ["RWM_S_Rshg2_ak74m"];
_u = _u + ["RWM_S_Marksman_Svdp"];
_u = _u + ["RWM_btr_80_A"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam1"];
_u		= ["RWM_S_Obvoj_Ak74"];
_u = _u + ["rhs_gaz66_zu23_msv"];
_u = _u + ["rhs_btr80a_msv"];
_u = _u + ["RWM_btr_80_A"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam2"];
_u		= ["RWM_S_Obvoj_Ak74"];
_u = _u + ["rhs_btr80a_msv"];
_u = _u + ["rhs_tigr_sts_msv"];
_u = _u + ["RWM_btr_80_A"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam3"];
_u		= ["RWM_S_Obvoj_Ak74"];
_u = _u + ["rhs_bmp2d_msv"];
_u = _u + ["rhs_tigr_sts_msv"];
_u = _u + ["RWM_btr_80_A"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam1"];
_u		= ["RWM_Spetsnaz_asval"];
_u = _u + ["RWM_Spetsnaz_vss"];
_u = _u + ["RWM_Spetsnaz_rshg2"];
_u = _u + ["RWM_Spetsnaz_ak74m_gp25"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["RWM_Spetsnaz_pkp"];
_u = _u + ["RWM_Spetsnaz_ak103"];
_u = _u + ["RWM_Spetsnaz_RPG7"];
_u = _u + ["RWM_Spetsnaz_Svdp"];
_u = _u + ["RWM_btr_80_A"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam2"];
_u		= ["RWM_Spetsnaz_asval"];
_u = _u + ["RWM_Spetsnaz_vss"];
_u = _u + ["RWM_Spetsnaz_rshg2"];
_u = _u + ["RWM_Spetsnaz_ak74m_gp25"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["RWM_Spetsnaz_pkp"];
_u = _u + ["RWM_Spetsnaz_ak103"];
_u = _u + ["RWM_Spetsnaz_RPG7"];
_u = _u + ["RWM_Spetsnaz_Svdp"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam3"];
_u		= ["rhs_mvd_izlom_sergeant"];
_u = _u + ["rhs_mvd_izlom_machinegunner"];
_u = _u + ["RWM_S_Ak74_gp25"];
_u = _u + ["RWM_Spetsnaz_vss"];
_u = _u + ["RWM_Spetsnaz_rshg2"];
_u = _u + ["RWM_Spetsnaz_ak74m_gp25"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["RWM_Spetsnaz_pkp"];
_u = _u + ["RWM_Spetsnaz_ak103"];
_u = _u + ["RWM_Spetsnaz_RPG7"];
_u = _u + ["rhs_bmp2d_msv"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam1"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["rhs_btr80a_msv"];
_u = _u + ["rhs_bmp2d_msv"];
_u = _u + ["rhs_btr80a_msv"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam2"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["rhs_t80uk"];
_u = _u + ["rhs_t72be_tv"];
_u = _u + ["rhs_bmp3m_msv"];
_u = _u + ["RWM_btr_80_A"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam3"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["rhs_bmd2m"];
_u = _u + ["rhs_tigr_sts_msv"];
_u = _u + ["rhs_t80uk"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam1"];
_u		= ["RWM_S_Obvoj_Ak74"];
_u = _u + ["RWM_S_Rpg7_ak74m"];
_u = _u + ["RWM_S_Rpg7_ak74m"];
_u = _u + ["RWM_S_Ak74_gp25"];
_u = _u + ["RWM_S_Medic_Ak74"];
_u = _u + ["RWM_S_Rpg7_ak74m"];
_u = _u + ["RWM_S_Medic_Ak74"];
_u = _u + ["RWM_Spetsnaz_vss"];
_u = _u + ["RWM_Spetsnaz_rshg2"];
_u = _u + ["RWM_Spetsnaz_ak74m_gp25"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["RWM_Spetsnaz_pkp"];
_u = _u + ["RWM_Spetsnaz_ak103"];
_u = _u + ["RWM_Spetsnaz_RPG7"];
_u = _u + ["RWM_Spetsnaz_Svdp"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam2"];
_u		= ["rhs_msv_officer"];
_u = _u + ["RWM_S_pyrotechnist_Ak74_assistant"];
_u = _u + ["RWM_S_Medic_Ak74"];
_u = _u + ["rhs_msv_emr_grenadier"];
_u = _u + ["RWM_S_Ak74_gp25"];
_u = _u + ["RWM_S_Medic_Ak74"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["rhs_msv_engineer"];
_u = _u + ["RWM_S_Marksman_Svdp"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["RWM_Spetsnaz_pkp"];
_u = _u + ["RWM_Spetsnaz_ak103"];
_u = _u + ["RWM_Spetsnaz_RPG7"];
_u = _u + ["RWM_Spetsnaz_Svdp"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam3"];
_u		= ["RWM_S_Obvoj_Ak74"];
_u = _u + ["RWM_S_pyrotechnist_Ak74"];
_u = _u + ["RWM_S_Rpg7_ak74m"];
_u = _u + ["RWM_S_Rpg26_ak74"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["RWM_S_Medic_Ak74"];
_u = _u + ["RWM_S_MG_PKM"];
_u = _u + ["RWM_S_MG_PKM"];
_u = _u + ["RWM_S_Medic_Ak74"];
_u = _u + ["RWM_S_Vorona_ak74m"];
_u = _u + ["RWM_Spetsnaz_pkp"];
_u = _u + ["RWM_Spetsnaz_ak103"];
_u = _u + ["RWM_Spetsnaz_RPG7"];
_u = _u + ["RWM_Spetsnaz_Svdp"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam1"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["rhs_t90a_tv"];
_u = _u + ["rhs_t72be_tv"];
_u = _u + ["rhs_zsu234_aa"];
_u = _u + ["Rwm_2k12_kub_ru"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam2"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["rhs_t90a_tv"];
_u = _u + ["rhs_t72be_tv"];
_u = _u + ["rhs_btr80a_msv"];
_u = _u + ["rhs_zsu234_aa"];
_u = _u + ["Rwm_2k12_kub_ru"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam3"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["rhs_t90a_tv"];
_u = _u + ["rhs_t80u45m"];
_u = _u + ["rhs_t72be_tv"];
_u = _u + ["rhs_zsu234_aa"];
_u = _u + ["Rwm_2k12_kub_ru"];

[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n = _n + ["SmallAATeam"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RHS_Ural_Zu23_MSV_01"];
_u = _u + ["RHS_Ural_Zu23_MSV_01"];
_u = _u + ["RHS_Ural_Zu23_MSV_01"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumAATeam"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RHS_Ural_Zu23_MSV_01"];
_u = _u + ["rhs_zsu234_aa"];
_u = _u + ["rhs_zsu234_aa"];
_u = _u + ["Rwm_2k12_kub_ru"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeAATeam"];
_u		= ["RWM_S_Marksman_Svdp"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["RWM_S_AA_Igla"];
_u = _u + ["rhs_zsu234_aa"];
_u = _u + ["rhs_zsu234_aa"];
_u = _u + ["Rwm_2k12_kub_ru"];
_u = _u + ["Rwm_2k12_kub_ru"];
[Format["WFBE_EAST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_RU: Initialization - [Done]",diag_frameno,diag_tickTime];