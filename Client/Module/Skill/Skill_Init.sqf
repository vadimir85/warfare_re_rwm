/*
	Script: Skill System by Benny.
	Description: Skill Initialization.
*/

/* Skills Root */
WFBE_SK_V_Root = 'Client\Module\Skill\Skill_';

/* Functions */
WFBE_SK_FNC_Apply = Compile preprocessFile "Client\Module\Skill\Skill_Apply.sqf";

/* Define which classname belong to which skill group */
WFBE_SK_V_Engineers = ['rhs_msv_engineer','rhsusf_socom_marsoc_cso_mechanic','rhsgref_ins_engineer','rhsusf_army_ucp_engineer'];
WFBE_SK_V_Officers = ['rhsusf_army_ucp_officer','rhs_msv_officer'];
WFBE_SK_V_Medics = ['rhsusf_socom_marsoc_sarc','rhsusf_army_ucp_medic','rhsgref_ins_medic','rhs_msv_medic'];
WFBE_SK_V_TeamLeaders = ['rhsusf_usmc_marpat_wd_teamleader','rhsgref_ins_squadleader','rhs_msv_officer_armored','rhsusf_army_ucp_teamleader'];
WFBE_SK_V_SpecsOps = ['rhs_mvd_izlom_rifleman','rhsgref_cdf_b_reg_engineer','rhsgref_ins_saboteur','rhsusf_army_ucp_explosives'];
WFBE_SK_V_Spotters = ['rhs_msv_marksman','rhsusf_army_ucp_marksman','rhsusf_usmc_marpat_wd_jfo','rhs_vdv_recon_rifleman_scout_akm','rhs_mvd_izlom_marksman','rhsusf_socom_marsoc_spotter','rhsgref_ins_sniper','rhsusf_army_ucp_jfo'];

/* Skills Variables */
WFBE_SK_V_LastUse_Repair = -1200;
WFBE_SK_V_LastUse_MASH = -1200;
WFBE_SK_V_LastUse_Lockpick = -1200;
WFBE_SK_V_LastUse_Spot = -1200;

/* Skills Timeout */
WFBE_SK_V_Reload_Repair = 60; // 4 minutes
WFBE_SK_V_Reload_MASH = 1000; // 20 minutes
WFBE_SK_V_Reload_Lockpick = 10; // 1 minute 
WFBE_SK_V_Reload_Spot = 5;

/* Find the player type */
WFBE_SK_V_Type = "";
if (playerType in WFBE_SK_V_Engineers) then {WFBE_SK_V_Type = "Engineer"};
if (playerType in WFBE_SK_V_Officers) then {WFBE_SK_V_Type = "Officer"};
if (playerType in WFBE_SK_V_TeamLeaders) then {WFBE_SK_V_Type = "TeamLeader"};
if (playerType in WFBE_SK_V_Medics) then {WFBE_SK_V_Type = "Medic"};
if (playerType in WFBE_SK_V_SpecsOps) then {WFBE_SK_V_Type = "SpecOps"};
if (playerType in WFBE_SK_V_Spotters) then {WFBE_SK_V_Type = "Spotter"};

/* Special one time init */
/* The Officer and Spec Ops can hire more units than the others leader */
if (WFBE_SK_V_Type == 'Officer') then {['WFBE_MAXGROUPSIZE',('WFBE_MAXGROUPSIZE' Call GetNameSpace) + 2,true] Call SetNamespace};
if (WFBE_SK_V_Type == 'TeamLeader') then {['WFBE_MAXGROUPSIZE',('WFBE_MAXGROUPSIZE' Call GetNameSpace) + 4,true] Call SetNamespace};