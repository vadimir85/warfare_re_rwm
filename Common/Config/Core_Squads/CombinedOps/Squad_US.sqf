Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["West", "rhs_faction_usarmy_wd"] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["rhsusf_m1a2sep1d_usarmy"];
_u = _u + ["rhsusf_m1a2sep1d_usarmy"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - M1A1 Section"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,true,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,1,0]];

_u		= ["RHS_M6"];
_u = _u + ["RHS_M6"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - Anti-Air Platoon"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,true,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,3,0]];

_u		= ["RHS_CH_47F"];
_u = _u + ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u + ["rhsusf_army_ucp_autorifleman"];
_u = _u + ["rhsusf_army_ucp_riflemanat"];
_u = _u + ["rhsusf_socom_marsoc_sarc"];
_u = _u + ["rhsusf_army_ocp_rifleman"];
_u = _u + ["rhsusf_army_ocp_rifleman"];
_u = _u + ["rhsusf_army_ocp_rifleman"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry CH-47F Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,0]];

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]