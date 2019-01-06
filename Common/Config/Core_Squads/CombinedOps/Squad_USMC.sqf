Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["West", "rhs_faction_usmc_wd"] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["rhsusf_m1a1fep_od"];
_u = _u + ["rhsusf_m1a1hc_wd"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - M1A1 Section"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,true,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,1,0]];

_u		= ["RHS_UH1Y_UNARMED"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_machinegunner"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_rifleman_at"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_grenadier_m32"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_sniper_M107"];
_u = _u + ["rhsusf_army_ocp_rifleman"];
_u = _u + ["rhsusf_army_ocp_rifleman"];
_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry UH1Y Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,1]];

_u		= ["rhsusf_CH53E_USMC"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_teamleader"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_machinegunner"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_rifleman_at"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_marksman"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_rifleman"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_rifleman"];
_u = _u + ["rhsusf_usmc_recon_marpat_wd_grenadier_m32"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry CH-53E Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamUpgrades = _aiTeamUpgrades + [[2,0,0,0]];

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]