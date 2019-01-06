Private ["_get","_position","_side","_skill","_team","_type","_unit","_DieSoundOrigin"];
_type = _this select 0;
_team = _this select 1;
_position = _this select 2;
_side = _this select 3;

_get = _type Call GetNamespace;
_skill = if !(isNil '_get') then {_get select QUERYUNITSKILL} else {'WFBE_AISKILL' Call GetNamespace};
_unit = _team createUnit [_type,_position,[],0,"FORM"];
_unit setSkill _skill;

//speaker fix
if ((faction _unit == "rhsgref_faction_nationalist") OR (faction _unit == "IND_C_F")) then {
_speech = selectRandom ['Male01FRE','Male02FRE','Male03FRE','Male01ENGFRE','Male02ENGFRE'];
_unit setSpeaker _speech;

_unit addEventHandler ["FiredMan", "if (random 100 > 90) then {nul = [_this select 0, (selectRandom ['allahu_akbar01','allahu_akbar02','allahu_akbar03','allahu_akbar04','allahu_akbar05','allahu_akbar06','allahu_akbar07','allahu_akbar08','allahu_akbar09','allahu_akbar10','allahu_akbar11','allahu_akbar12','allahu_akbar13','allahu_akbar14','allahu_akbar15','allahu_akbar16','allahu_akbar17','allahu_akbar18','allahu_akbar19','allahu_akbar20','allahu_akbar21','allahu_akbar22','allahu_akbar23','allahu_akbar24','allahu_akbar25','allahu_akbar26','allahu_akbar27','allahu_akbar28','allahu_akbar29','allahu_akbar30','allahu_akbar31','allahu_akbar32','allahu_akbar33','allahu_akbar34','allahu_akbar35','allahu_akbar36','allahu_akbar37','allahu_akbar38','allahu_akbar39','allahu_akbar40','allahu_akbar41','allahu_akbar42','allahu_akbar43','allahu_akbar44','allahu_akbar45','allahu_akbar46','allahu_akbar47','allahu_akbar48','allahu_akbar49','allahu_akbar50','allahu_akbar51','allahu_akbar52','allahu_akbar53','allahu_akbar54','allahu_akbar55','allahu_akbar56','allahu_akbar57','allahu_akbar58','allahu_akbar59','allahu_akbar60','allahu_akbar64','res_scream1_1','res_scream1_2','res_scream1_3','res_scream1_4','res_scream1_5','res_scream1_6','res_scream1_7','res_scream1_8','res_scream1_9','res_scream1_10','res_scream1_11','res_scream1_12','res_scream1_13','res_scream1_14','res_scream1_15','res_scream1_16','res_scream1_17','res_scream1_18','res_scream1_19','res_scream1_20','res_scream1_21','res_scream1_22','res_scream1_23','res_scream1_24','res_scream1_25','res_scream1_26','res_scream1_27','res_scream1_28','res_scream1_29','res_scream1_30','res_scream1_31','res_scream1_32','res_scream1_33','res_scream1_34','res_scream1_35','res_scream1_36','res_scream1_37','res_scream1_38','res_scream1_39','res_scream1_40','res_scream1_41','res_scream1_42','res_scream1_43','res_scream1_44','res_scream1_45','res_scream1_46','res_scream1_47','res_scream1_48','res_scream1_49','res_scream1_50','res_scream1_51','res_scream1_52','res_scream1_53','res_scream1_54','res_scream1_55','res_scream1_56','res_scream1_57','res_scream1_58','res_scream1_59','res_scream1_60','res_scream1_61','res_scream1_62','res_scream1_63','res_scream1_64','res_scream1_65','res_scream1_66','res_scream1_67','res_scream1_68'])] call fn_netSay3D}"];
_unit addEventHandler ["FiredNear", "if (random 100 > 90) then {nul = [_this select 0, (selectRandom ['res_tolk1_1','res_tolk1_2','res_tolk1_3','res_tolk1_4','res_tolk1_5','res_tolk1_6','res_tolk1_7','res_tolk1_8','res_tolk1_9','res_tolk1_10','res_tolk1_11','res_tolk1_12','res_tolk1_13','res_tolk1_14','res_tolk1_15','res_tolk1_16','res_tolk1_17','res_tolk1_18','res_tolk1_19','res_tolk1_20','res_tolk1_21','res_tolk1_22','res_tolk1_23','res_tolk1_24','res_tolk1_25','res_tolk1_26','res_tolk1_27','res_tolk1_28','res_tolk1_29','res_tolk1_30','res_tolk1_31','res_tolk1_32','res_tolk1_33','res_tolk1_34','res_tolk1_35','res_tolk1_36','res_tolk1_37','res_tolk1_38','res_tolk1_39','res_tolk1_40','res_tolk1_41','res_tolk1_42','res_tolk1_43','res_tolk1_44','res_tolk1_45','res_tolk1_46','res_tolk1_47','res_tolk1_49','res_tolk1_50','res_tolk1_51'])] call fn_netSay3D}"];
_unit addEventHandler ["Hit", "if (random 100 > 80) then {nul = [_this select 0, (selectRandom ['die_scream1_1','die_scream1_2','die_scream1_3','die_scream1_4','die_scream1_5','die_scream1_6','die_scream1_7','die_scream1_8','die_scream1_9','die_scream1_10','die_scream1_11','die_scream1_12','die_scream1_13','die_scream1_14','die_scream1_15','die_scream1_16','die_scream1_17','die_scream1_18','die_scream1_19','die_scream1_20','die_scream1_21','die_scream1_22','die_scream1_23','die_scream1_24','die_scream1_25','die_scream1_26','die_scream1_27','die_scream1_28','die_scream1_29','die_scream1_30','die_scream1_31','die_scream1_32','die_scream1_33','die_scream1_34','die_scream1_35','die_scream1_36','die_scream1_37','die_scream1_38','die_scream1_39','die_scream1_40','die_scream1_41','die_scream1_42','die_scream1_43','die_scream1_44','die_scream1_45','die_scream1_46','die_scream1_47','die_scream1_48','die_scream1_49','die_scream1_50','die_scream1_51','die_scream1_52','die_scream1_53','allahu_akbar61','allahu_akbar62','allahu_akbar63'])] call fn_netSay3D}"];
_unit addEventHandler ["Killed", "_DieSoundOrigin = 'Land_HelipadEmpty_F' createVehicle getpos (_this select 0);_DieSoundOrigin setPos getpos (_this select 0); nul = [_DieSoundOrigin, (selectRandom ['die_scream1_1','die_scream1_2','die_scream1_3','die_scream1_4','die_scream1_5','die_scream1_6','die_scream1_7','die_scream1_8','die_scream1_9','die_scream1_10','die_scream1_11','die_scream1_12','die_scream1_13','die_scream1_14','die_scream1_15','die_scream1_16','die_scream1_17','die_scream1_18','die_scream1_19','die_scream1_20','die_scream1_21','die_scream1_22','die_scream1_23','die_scream1_24','die_scream1_25','die_scream1_26','die_scream1_27','die_scream1_28','die_scream1_29','die_scream1_30','die_scream1_31','die_scream1_32','die_scream1_33','die_scream1_34','die_scream1_35','die_scream1_36','die_scream1_37','die_scream1_38','die_scream1_39','die_scream1_40','die_scream1_41','die_scream1_42','die_scream1_43','die_scream1_44','die_scream1_45','die_scream1_46','die_scream1_47','die_scream1_48','die_scream1_49','die_scream1_50','die_scream1_51','die_scream1_52','die_scream1_53','allahu_akbar61','allahu_akbar62','allahu_akbar63'])] call fn_netSay3D;[[[_DieSoundOrigin], 'Common\Functions\Common_ResistanceUnitKilled.sqf'], 'BIS_fnc_execVM', true, true] call BIS_fnc_MP"];
_unit addEventHandler ["Init", "if (rating (_this select 0) > 0) then {nul = [_this select 0, (selectRandom ['allahu_akbar33','res_tolk1_48'])] call fn_netSay3D}"];

//_unit addEventHandler ["FiredMan", "if (random 100 > 90) then {nul = [_this select 0, (selectRandom [])] call fn_netSay3D}"];
};

if (typeOf _unit == "rhsgref_nat_crew" || typeOf _unit == "rhsgref_nat_pmil_crew") then {for "_i" from 0 to 2 do {_unit addMagazine "rhs_30Rnd_545x39_AK"}; _unit addWeapon "rhs_weap_aks74u";};
if (typeOf _unit == "I_C_Soldier_Bandit_7_F" || typeOf _unit == "I_C_Soldier_Bandit_4_F") then {for "_i" from 0 to 2 do {_unit addMagazine "100Rnd_65x39_caseless_mag_Tracer"}; _unit addWeapon "rhs_weap_m84";};
if (typeOf _unit == "I_C_Soldier_Bandit_8_F" || typeOf _unit == "I_C_Soldier_Para_7_F") then {for "_i" from 0 to 2 do {_unit addMagazine "rhs_mag_30Rnd_556x45_M855_Stanag"}; _unit addWeapon "rhs_weap_m16a4_carryhandle";};
if (typeOf _unit == "I_C_Soldier_Bandit_1_F" || typeOf _unit == "I_C_Soldier_Bandit_2_F") then {for "_i" from 0 to 2 do {_unit addMagazine "rhs_30Rnd_762x39mm_Savz58"}; _unit addWeapon "rhs_weap_savz58p_rail";};
if (typeOf _unit == "I_C_Soldier_Bandit_5_F" || typeOf _unit == "I_C_Soldier_Para_3_F") then {for "_i" from 0 to 2 do {_unit addMagazine "rhs_30Rnd_545x39_AK"}; _unit addWeapon "rhs_weap_ak74_gp25";};
if (typeOf _unit == "I_C_Soldier_Para_1_F" || typeOf _unit == "I_C_Soldier_Para_2_F") then {for "_i" from 0 to 2 do {_unit addMagazine "rhs_100Rnd_762x54mmR"}; _unit addWeapon "rhs_weap_pkm";};

if (typeOf _unit == "rhs_msv_strelok_rpg_assist") then {for "_i" from 0 to 1 do {_unit addMagazine "Vorona_HEAT"}; _unit addWeapon "launch_O_Vorona_green_F";};

/*
if (faction _unit == "rhs_faction_msv" || faction _unit == "ChDKZ") then {_speech = selectRandom ['D_Male01_RU','D_Male02_RU','D_Male03_RU','D_Male04_RU','D_Male05_RU'];_unit setSpeaker _speech;};
if (faction _unit == "B_GB") then {_speech = selectRandom ['D_Male01_GB_US','D_Male02_GB_US','D_Male03_GB_US','D_Male04_GB_US','D_Male05_GB_US'];_unit setSpeaker _speech;};
if (faction _unit == "B_CZ") then {_speech = selectRandom ['D_Male01_CZ_ACR','D_Male02_CZ_ACR','D_Male03_CZ_ACR','D_Male04_CZ_ACR','D_Male05_CZ_ACR'];_unit setSpeaker _speech;};
if (faction _unit == "I_PMC_ION") then {_speech = selectRandom ['D_Male01_GB_PMC','D_Male02_GB_PMC','D_Male03_GB_PMC','D_Male04_GB_PMC','D_Male05_GB_PMC'];_unit setSpeaker _speech;};
if (faction _unit == "B_US" || faction _unit == "B_USMC" || faction _unit == "B_US_Army" || faction _unit == "B_US_Navy") then {_speech = selectRandom ['Male02ENG','Male03ENG','Male04ENG','Male05ENG','Male06ENG','Male07ENG','Male08ENG','Male09ENG','Male10ENG','Male11ENG','Male12ENG'];_unit setSpeaker _speech;};
if (faction _unit == "I_UN") then {_speech = selectRandom ['Male01ENGB','Male02ENGB','Male03ENGB','Male04ENGB','Male05ENGB'];_unit setSpeaker _speech;};
if (faction _unit == "B_GER") then {_speech = selectRandom ['Male01ENGFRE','Male02ENGFRE'];_unit setSpeaker _speech;};
if (faction _unit == "O_SLA" || faction _unit == "I_RACS" || faction _unit == "B_CDF") then {_speech = selectRandom ['Male01GRE','Male02GRE','Male03GRE','Male04GRE','Male05GRE','Male06GRE'];_unit setSpeaker _speech;};
*/


if (_side != resistance) then {
	if (paramTrackAI) then {
		//ok _unit setVehicleInit Format["[this,%1] ExecVM 'Common\Common_InitUnit.sqf';",_side];
		//processInitCommands;
		[[[_unit,_side], "Common\Common_InitUnit.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP;

	} else {
		if (isPlayer leader _team) then {[_unit,_side] ExecVM 'Common\Common_InitUnit.sqf'};
	};
	Call Compile Format ["_unit addEventHandler ['Killed',{[_this select 0,_this select 1,%1] Spawn UnitKilled}];",_side];
	
} else {
	//--- Note To be optimized, 1.03 BIS BUG, cannot add resistance side via call compile format.
	_unit addEventHandler ['Killed',{[_this select 0,_this select 1,resistance] Spawn UnitKilled}];
		// Special Unit Init for all Resistance 
//*if(_type == "I_C_Soldier_Bandit_7_F")then{_unit setVehicleInit "this setObjectTexture [0,""Textures\Units\ita1.paa""]",_unit setVehicleInit "this setObjectTexture [1,""Textures\Units\SCb.paa""]",_unit setVehicleInit "this setObjectTexture [2,""Textures\Units\vest.paa""]"};	
//*if(_type == "I_C_Soldier_Bandit_4_F")then{_unit setVehicleInit "this setObjectTexture [0,""Textures\Units\ita1.paa""]"};
};

if (('WFBE_ISIS' Call GetNamespace) == 2) then {_unit addEventHandler['handleDamage',{_this Call ISIS_Wound}]};
	if (WF_Extend_RPT_LOG) then {
		diag_log Format["[WFRE (INFORMATION)][frameno:%5 | ticktime:%6] Common_CreateUnit: A '%1' unit was created (position: %2) and has joined the %3 %4 Team",_type,_position,str _side,_team,diag_frameno,diag_tickTime];
	};
_unit