Private ['_aiTeamTemplateRequires','_aiTeamTemplateName','_aiTeamTemplates','_aiTeamTypes','_aiTeamUpgrades','_return','_u'];

//--- Overall Dump.
_return = ["East", "INS"] Call Compile preprocessFile "Common\Config\Core_Squads\Squads_GetFactionGroups.sqf";
_aiTeamTemplates = _return select 0;
_aiTeamTemplateName = _return select 1;
_aiTeamTemplateRequires = _return select 2;
_aiTeamTypes = _return select 3;
_aiTeamUpgrades = _return select 4;

//--- Custom Groups.
_u		= ["rhsgref_ins_bmp2"];
_u = _u + ["rhsgref_ins_bmp2"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - APC Platoon"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,true,false]];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,2,0]];

_u		= ["rhsgref_ins_zsu234"];
_u = _u + ["rhsgref_ins_zsu234"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Armor - AA Platoon"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTypes = _aiTeamTypes + [2];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,true,false]];
_aiTeamUpgrades = _aiTeamUpgrades + [[0,0,1,0]];

_u		= ["rhsgref_ins_Mi8amt"];
_u = _u + ["rhsgref_ins_medic"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_sniper"];
_u = _u + ["rhsgref_ins_rifleman"];

_aiTeamTemplateName = _aiTeamTemplateName + ["Air - Mi-8 Infantry Squadron"];
_aiTeamTemplates = _aiTeamTemplates + [_u];
_aiTeamTypes = _aiTeamTypes + [3];
_aiTeamTemplateRequires = _aiTeamTemplateRequires + [[false,false,false,true]];
_aiTeamUpgrades = _aiTeamUpgrades + [[1,0,0,0]];

[_aiTeamTemplates,_aiTeamTemplateRequires,_aiTeamTypes,_aiTeamUpgrades,_aiTeamTemplateName]