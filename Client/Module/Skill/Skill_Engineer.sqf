/*
	Script: Engineer Skill System by Rubber
	Description: Add special skills to the defined classes.
	Based on ZTL script with some improvement
*/

#define DEFAULT_FIELDREPAIR_EACH_PART_TIME 20
#define DEFAULT_FIELDREPAIR_EACH_HARDPART_TIME 40
#define DEFAULT_FULLREPAIR_LENGTH 60

#define STR_CANCEL_ACTION "Cancel action"

#define STR_REPAIR_CONDITIONS "Bad conditions for repair"
#define STR_ANOTHER_ACTION "Another action in progress"

#define STR_REPAIR_INTERRUPTED "Repair interrupted"
#define STR_REPAIR_FINISHED "Vehicle is now operative, repair completed!"
#define STR_REPAIR_MSG_STRING "- %2 - will be repaired in %1 seconds."

Private ['_dammages','_sorted','_vehicle','_vehicles','_z'];

_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],5];
if (count _vehicles < 1) exitWith {};

_sorted = [player,_vehicles] Call SortByDistance;
_vehicle = _sorted select 0;

rub_fnc_fullrepair = {
	private "_veh";
	_veh = [_this, 0] call BIS_fnc_param;
	_veh setDamage 0;
	WFBE_SK_V_LastUse_Repair = time;
};

rub_repair_hps = ["HitLFWheel","HitLBWheel","HitLMWheel","HitLF2Wheel","HitRFWheel","HitRBWheel","HitRMWheel","HitRF2Wheel" ,"HitEngine", "HitLTrack","HitRTrack","HitHull"] + ["HitFuel","HitAvionics","HitVRotor","HitHRotor"];
rub_hardRepairParts = ["HitEngine", "HitLTrack","HitRTrack","HitHull"] + ["HitFuel","HitAvionics","HitHRotor"];

if (isDedicated) exitWith {};
waitUntil {player == player};

rub_fnc_vehicledamaged = {
	private ["_veh","_vehtype","_flag"];
	_veh =  [_this, 0] call BIS_fnc_param;
	if (isNil {_veh}) exitWith {false};
	_vehtype = typeOf _veh;
	_flag = false;
	if (true) then {
		{
			_cdmg = _veh getHitPointDamage (_x);
			if (not isNil {_cdmg} ) then {
				if (_cdmg > 0.14) exitWith {_flag = true};
			};
		}  forEach rub_repair_hps;
	};
	_flag;
};

rub_frpr_getPartsRepairTime = {
	private ["_veh","_vehtype","_flag"];
	_veh =  [_this, 0] call BIS_fnc_param;
	if (isNil {_veh}) exitWith {1};
	_rprTime = 0;
	{
		_cdmg = _veh getHitPointDamage (_x);
		if (not isNil {_cdmg} ) then {
			diag_log str ["REPAIR ", _x, _cdmg];
			if (_cdmg > 0.45) exitWith {_rprTime = _rprTime + ( if (_x in rub_hardRepairParts) then {DEFAULT_FIELDREPAIR_EACH_HARDPART_TIME} else {DEFAULT_FIELDREPAIR_EACH_PART_TIME}); };
		};
	}  forEach rub_repair_hps;
	_rprTime;
};

rub_mutexAction = false;

rub_fnc_notify = {
	 [ format["<t size='0.75' color='#ffe37f'>%1</t>",_this], 0,1,5,0,0,301] spawn bis_fnc_dynamicText;
};

	// Repair part
	
	_veh = _vehicle;
	if (isNil {_veh}) exitWith {};
	if (rub_mutexAction) exitWith {
		STR_ANOTHER_ACTION call rub_fnc_notify;
	};
	if (not alive player or (player distance _veh) > 7 or (vehicle player != player) or speed _veh > 3) exitWith {STR_REPAIR_CONDITIONS call rub_fnc_notify;};
	
	_repairFinished = false;
	rub_mutexAction = true;  
	_lastPlayerState = animationState player;
	player playActionNow "medicStartRightSide";
	sleep 0.5;
		
	_maxlength = _veh getVariable["rub_longrepair",[_veh] call rub_frpr_getPartsRepairTime];
	
	if (_veh isKindOf "Car") then {_maxlength = _maxlength + 20;};
	if (_veh isKindOf "Tank") then {_maxlength = _maxlength + 30;};
	if (_veh isKindOf "Air") then {_maxlength = _maxlength + 40;};
	
	_progress = (_veh getVariable["rub_longrepair",0]);
	if (_progress > 0) then { _maxlength = _progress;};
	
	_vehname = getText ( configFile >> "CfgVehicles" >> typeOf(_veh) >> "displayName");
	_length = _maxlength;
	_cycle = 0;
	
	while {alive player and (player distance _veh) < 7 and (vehicle player == player) and speed _veh < 3 and not _repairFinished and rub_mutexAction and (_cycle < 3 or (["medic",animationState player] call BIS_fnc_inString))} do {		
	
		(format[STR_REPAIR_MSG_STRING, _length, _vehname] ) call rub_fnc_notify;
		if (_length <= 0) then {_repairFinished = true;};
		_length = _length - 1;
		sleep 1;
		_cycle = _cycle + 1;
	};
	
		if (_repairFinished) then {
		STR_REPAIR_FINISHED call rub_fnc_notify;
		[_veh,"rub_fnc_fullrepair", _veh] call bis_fnc_MP;
		
		STR_REPAIR_FINISHED call rub_fnc_notify;
		
		_veh setVariable["rub_longrepair",nil, true];
		_veh setVariable["rub_longrepair_times", (_veh getVariable ["rub_longrepair_times",0]) + 1 , true ];
		playsound "beep";
		sleep 0.5;
		playsound "beep";
	} else {
		STR_REPAIR_INTERRUPTED call rub_fnc_notify;
		_veh setVariable["rub_longrepair",_length, true];
	};
	rub_mutexAction = false;  
	player playActionNow "medicstop";


if (isNil "rub_cancelActionId") then {
	rub_cancelActionId = player addAction["<t color='#0000ff'>"+STR_CANCEL_ACTION+"</t>", {rub_mutexAction = false}, [], 10, false, true, '',' rub_mutexAction  '];
};
player addEventHandler ["Respawn", {
	rub_cancelActionId = player addAction["<t color='#0000ff'>"+STR_CANCEL_ACTION+"</t>", {rub_mutexAction = false}, [], 10, false, true, '',' rub_mutexAction  '];
}];