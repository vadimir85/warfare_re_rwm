/*
	Script: Skill Application System by Benny.
	Description: Skill Application.
*/

Private ["_unit"];

_unit = _this;

switch (WFBE_SK_V_Type) do {
	
	case 'Officer': {
		/* Repair Ability */
		_unit addAction [
			("<t color='#ff9933'><img image='images\repair.paa'/> Emergency Repair!</t>"),
			(WFBE_SK_V_Root + 'Engineer' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - WFBE_SK_V_LastUse_Repair > WFBE_SK_V_Reload_Repair) and (vehicle player == player) and (count (nearestObjects [player, ['Air','Car','Tank','Ship'], 6]) > 0) and (alive _target);"
		];
		_unit addAction [
			("<t color='#8365b2'><img image='images\lockpick.paa'/> " + localize 'STR_WF_ACTION_Lockpick'+ "</t>"),
			(WFBE_SK_V_Root + 'SpecOps' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - WFBE_SK_V_LastUse_Lockpick > WFBE_SK_V_Reload_Lockpick) and (vehicle player == player) and (count (nearestObjects [player, ['Air','Car','Tank','Ship'], 6]) > 0) and (alive _target);"
		];
	};
	case 'Engineer': {
		/* Repair Ability */
		_unit addAction [
			("<t color='#ff9933'><img image='images\repair.paa'/> - Emergency Repair!</t>"),
			(WFBE_SK_V_Root + 'Engineer' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - WFBE_SK_V_LastUse_Repair > WFBE_SK_V_Reload_Repair) and (vehicle player == player) and (count (nearestObjects [player, ['Air','Car','Tank','Ship'], 6]) > 0) and (alive _target);"
		];
	};
	case 'Medic': {
		/* MASH Ability require that the MASH parameter is enabled */
		if (paramRespawnMASH) then {
			/* MASH Ability */
			_unit addAction [
				("<t color='#fcf394'><img image='images\mash.paa'/> " + (localize "STR_WF_DeployRespawn") + "</t>"),
				(WFBE_SK_V_Root + 'Medic' + '.sqf'), 
				[], 
				80, 
				false, 
				true, 
				"", 
				"(time - WFBE_SK_V_LastUse_MASH > WFBE_SK_V_Reload_MASH) and (vehicle player == player) and (alive _target);"
			];
		};
	};
	case 'SpecOps': {
		/* Lockpicking Ability */
		_unit addAction [
			("<t color='#8365b2'><img image='images\lockpick.paa'/> " + localize 'STR_WF_ACTION_Lockpick'+ "</t>"),
			(WFBE_SK_V_Root + 'SpecOps' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - WFBE_SK_V_LastUse_Lockpick > WFBE_SK_V_Reload_Lockpick) and (vehicle player == player) and (count (nearestObjects [player, ['Air','Car','Tank','Ship'], 6]) > 0) and (alive _target);"
		];
	};
	case 'Spotter': {
		/* Spotting Ability */
		_unit addAction [
			("<t color='#6dffc0'><img image='images\spot.paa'/> " + localize 'STR_WF_ACTION_Spot'+ "</t>"),
			(WFBE_SK_V_Root + 'Sniper' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"(time - WFBE_SK_V_LastUse_Spot > WFBE_SK_V_Reload_Spot) and (vehicle player == player) and (alive _target);"
		];
	};
};