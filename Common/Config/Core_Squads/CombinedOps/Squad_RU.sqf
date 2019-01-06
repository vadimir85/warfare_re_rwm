Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["East", "rhs_faction_msv"] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["rhs_zsu234_aa"];
_u = _u + ["rhs_zsu234_aa"];
_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - Anti Air Platoon"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,true,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,3,0]];

_u		= ["rhs_t72bd_tv"];
_u = _u + ["rhs_t72bd_tv"];
_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - Tank Platoon (Light)"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,true,false]];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,1,0]];

_u		= ["RHS_Mi8AMT_vvs"];
_u = _u + ["rhs_mvd_izlom_sergeant"];
_u = _u + ["rhs_mvd_izlom_rifleman_LAT"];
_u = _u + ["rhs_mvd_izlom_machinegunner"];
_u = _u + ["rhs_mvd_izlom_machinegunner"];
_u = _u + ["rhs_mvd_izlom_marksman"];
_u = _u + ["rhs_mvd_izlom_grenadier_rpg"];
_u = _u + ["rhs_mvd_izlom_grenadier_rpg"];
_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry Mi-8 Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamUpgrades = _aiTeamUpgrades + [[2,0,0,0]];

_u		= ["RHS_Mi8AMT_vvs"];
_u = _u + ["rhs_msv_sergeant"];
_u = _u + ["rhs_msv_aa"];
_u = _u + ["rhs_msv_RShG2"];
_u = _u + ["rhs_msv_RShG2"];
_u = _u + ["rhs_msv_machinegunner"];
_u = _u + ["rhs_msv_machinegunner"];
_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Infantry Mi-8 Squadron (Rockets)"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[true,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamUpgrades = _aiTeamUpgrades + [[2,0,0,1]];

_u = ["RHS_Ka52_vvs"];
_u = _u + ["RHS_Ka52_UPK23_vvs"];
_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Ka-52 Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,false,true]];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,0,3]];

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]