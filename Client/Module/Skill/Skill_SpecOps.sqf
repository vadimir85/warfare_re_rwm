/*
	Script: Spec Ops Skill System by Benny.
	Description: Add special skills to the defined spec ops unit.
*/
Private ['_min','_ran','_skip','_sorted','_vehicle','_vehicles','_z'];

_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air"],5];
if (count _vehicles < 1) exitWith {};

if (isNil "WFBE_SK_V_LockpickChance") then {WFBE_SK_V_LockpickChance = 0};

_sorted = [player,_vehicles] Call SortByDistance;
_vehicle = _sorted select 0;

if (locked _vehicle == 0) exitWith {Hint (localize "STR_WF_SpecOpVehiclealreadyOpen");};

WFBE_SK_V_LastUse_Lockpick = time;

_skip = false;
for [{_z = 0},{_z < 1},{_z = _z + 1}] do {
	sleep 0.5;
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 0.5;
	waitUntil {animationState player == "AinvPknlMstpSlayWrflDnon_medic" || !alive player || vehicle player != player || !alive _vehicle || _vehicle distance player > 5};
	if (!alive player || vehicle player != player || !alive _vehicle || _vehicle distance player > 5) exitWith {_skip = true};
};

if (locked _vehicle == 0) exitWith {Hint (localize "STR_WF_SpecOpVehicleOpen");};

if (!_skip) then {
	_min = 70;
	switch (typeOf _vehicle) do {
		case "Motorcycle": {_min = 95};
		case "Car": {_min = 90};
		case "Tank": {_min = 85};
		case "Ship": {_min = 80};
		case "Air": {_min = 75};
	};
	_ran = ((random 100)-WFBE_SK_V_LockpickChance);
	if (_ran <= _min) then {
		//--- Unlocked, gain experience.
		if (WFBE_SK_V_LockpickChance > -51) then {WFBE_SK_V_LockpickChance = WFBE_SK_V_LockpickChance - 2};
		//WFBE_RequestVehicleLock = ['SRVFNCREQUESTVEHICLELOCK',[_vehicle,false]]; //not working in arma3?!
		WFBE_RequestVehicleLock = [_vehicle,0] call SRVFNCREQUESTVEHICLELOCK; //fix
		publicVariable 'WFBE_RequestVehicleLock';
		if (isHostedServer) then {['SRVFNCREQUESTVEHICLELOCK',[_vehicle,0]] Spawn HandleSPVF};

		null = [1]ExecVM "Hint\lockpick.sqf";
		[[[_vehicle,side player], "Common\Common_InitUnit.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP;
		if (side player == east) then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
		if (side player == west) then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
		//player sidechat (localize "STR_WF_INFO_Lockpick_Succeed");
	} else {
		null = [2]ExecVM "Hint\lockpick.sqf";
		//player sidechat (localize "STR_WF_INFO_Lockpick_Failed");
	};
};