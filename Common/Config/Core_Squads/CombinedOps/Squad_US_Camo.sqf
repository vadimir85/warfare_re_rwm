Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["West", "rhs_faction_usmc_d"] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["rhsusf_m1a2sep1wd_usarmy"];
_u = _u + ["rhsusf_m1a2sep1wd_usarmy"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - M1A1 Section"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,true,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,1,0]];

_u		= ["RHS_CH_47F"];
_u = _u + ["rhsusf_army_ucp_teamleader"];
_u = _u + ["rhsusf_army_ucp_machinegunner"];
_u = _u + ["rhsusf_army_ucp_javelin"];
_u = _u + ["rhsusf_army_ucp_medic"];
_u = _u + ["rhsusf_army_ucp_rifleman"];
_u = _u + ["rhsusf_army_ucp_rifleman"];
_u = _u + ["rhsusf_army_ucp_rifleman"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry UH1Y Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,1]];

_u		= ["RHS_UH60M"];
_u = _u + ["rhsusf_army_ucp_teamleader"];
_u = _u + ["rhsusf_army_ucp_machinegunner"];
_u = _u + ["rhsusf_army_ucp_riflemanat"];
_u = _u + ["rhsusf_army_ucp_medic"];
_u = _u + ["rhsusf_army_ucp_rifleman"];
_u = _u + ["rhsusf_army_ucp_rifleman"];
_u = _u + ["rhsusf_army_ucp_rifleman"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry MH-60S Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamUpgrades = _aiTeamUpgrades + [[2,0,0,0]];

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]