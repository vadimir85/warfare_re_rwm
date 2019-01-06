Private ["_ainumber","_amount","_color","_finalNumber","_isMan","_markerName","_numbers","_params","_side","_size","_text","_txt","_type","_unit","_val","_val2"];
_unit = _this select 0;
_side = _this select 1;

if (isNull _unit) exitWith {};

waitUntil {!isNil 'commonInitComplete'};

if !(local player) exitWith {};

sideJoined = playerSide;

//sleep 2;

_isMan = if (_unit isKindOf "Man") then {true} else {false};

if !(_isMan) then {
	if (('WFBE_INCOMINGMISSILEMAXRANGE' Call GetNamespace) != 0) then {_unit addEventHandler ['IncomingMissile', {_this Spawn HandleIncomingMissile}]};
	if ('WFBE_THERMALIMAGING' Call GetNamespace < 2) then {Call Compile '_unit disableTIEquipment true;'};
};

//if !(isServer) then { // If it's not on the server, then care about marker updates

if (sideJoined != _side) exitWith {};
_type = "mil_dot";
_uavmrk = "o_uav";
_color = "ColorRed";
_size = [1.0,1.0];
_txt = "";
_namemrk = getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName");
if (sideJoined == west) then {_color = "ColorBlue"; _uavmrk = "b_uav";};

if (_unit isKindOf "Air") then {_size=[1.25,1.25];_txt = "" + _namemrk;};
if (_unit isKindOf "Car") then {_size=[1,1];_txt = "" + _namemrk;};
if (_unit isKindOf "Tank") then {_size=[1.25,1.25];_txt = "" + _namemrk;};
if (_unit isKindOf "Ship") then {_size=[1.25,1.25];_txt = "" + _namemrk;};
if (_unit isKindOf "StaticWeapon") then {_type = "mil_triangle";_size=[0.5,0.5];_txt = ""};
if ((typeOf _unit) == 'B_UAV_05_F') then {_type = _uavmrk;_size = [0.5,0.5]};
if ((typeOf _unit) in (Format['WFBE_%1SUPPLYTRUCKS',str _side] Call GetNamespace)) then {_type = "o_support";_size = [0.55,0.55];_txt = localize "STR_WF_UPGRADE_Supply";};
if ((typeOf _unit) in (Format['WFBE_%1REPAIRTRUCKS',str _side] Call GetNamespace)) then {_type = "o_maint";_txt = " Engineer";_size = [0.55,0.55]};
if ((typeOf _unit) in (Format['WFBE_%1SERVICETRUCKS',str _side] Call GetNamespace)) then {_type = "n_service";_size=[0.55,0.55];_txt = " Service";_color = "ColorOrange";};
if ((typeOf _unit) in (Format['WFBE_%1AMBULANCES',str _side] Call GetNamespace)) then {_type = "n_med";_size=[0.55,0.55];_color = "ColorYellow";};
if ((typeOf _unit) in (Format['WFBE_%1SALVAGETRUCK',str _side] Call GetNamespace)) then {_type = "n_maint";_size=[0.55,0.55];_txt = " Salvage";_color = "ColorPink";};

unitMarker = unitMarker + 1;

_markerName = Format ["unitMarker%1",unitMarker];
_params = [];

if (_isMan) then {
//if ((leader group _unit in ('WFBE_EASTSLOTNAMES' Call GetNamespace)) OR (leader group _unit in ('WFBE_WESTSLOTNAMES' Call GetNamespace))) then {_txt = " [" + name leader group _unit +"'s AI soldier]"};
if (sideJoined == west) then {
		_color = "ColorBlue"
		} else {
		_color = "ColorRed"
		};
	_type = "mil_dot";
	_size = [0.5,0.5];
	if (group _unit == group player) then {
		_color = "ColorYellow";
		_txt = (_unit) Call GetAIDigit;
	};
	_params = [_type,_color,_size,_txt,_markerName,_unit,1,true,"KIA","ColorBlack",false,_side,[0.6,0.6]];
} else {
	//if (local _unit && isMultiplayer) then {_color = "ColorBlack"};
	_params = [_type,_color,_size,_txt,_markerName,_unit,1,true,"KIA","ColorBlack",false,_side,[0.8,0.8]];
};
//MarkerUpdate = Compile preprocessFile "Common\Common_MarkerUpdate.sqf";
_params execVM "Common\Common_MarkerUpdate.sqf";//spawn MarkerUpdate;

//}; // Markus