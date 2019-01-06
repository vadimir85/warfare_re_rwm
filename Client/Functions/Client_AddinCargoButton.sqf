if (count (nearestObjects [player, ["Car","Tank","Air"], 20]) == 0) exitWith {closeDialog 0};

private ["_veh","_veh_displayName","_find","_find_display_name","_cfg_name","_primary"];

drop_primary = false;
_veh = nearestObjects [player, ["Car","Tank","Air"], 20] select 0;
_veh_displayName = getText(configFile >> "CfgVehicles" >> typeOf _veh >> "displayName");
_primary = "";
_find_display_name = "";
_cfg_name = "";

/*
for "_i" from 1 to 100000 do {
diag_log format ["%1, %2", _i, ctrlText (findDisplay -1 displayCtrl _i)];
player sideChat format ["%1", ctrlText (findDisplay -1 displayCtrl _i)];
};
*/

while {dialog} do {
sleep 0.1;
_find = ctrlText(findDisplay -1 displayCtrl 24516);


if (!(_find == _find_display_name)) then {
ctrlEnable [10002,false];

{_cfg = (configFile >> _x);
for "_i" from 0 to (count _cfg)-1 do
{
	_entry = _cfg select _i;
	if( isClass _entry ) then
	{
		_config_name = configName _entry;
		if (getText (configFile/_x/_config_name/"displayName") == _find) then
		{
			_i = count _cfg - 1; //нашел, что искал и счетчик в конец
			//playsound "beep";
			_primary = _config_name;
			_find_display_name = getText (configFile/_x/_config_name/"displayName");
			_cfg_name = _x;
		};
	};
if (isNull ( uiNamespace getVariable [ "BIS_fnc_arsenal_cam", objNull])) then {closeDialog 0};
};

} foreach ['CfgVehicles','CfgWeapons','CfgGlasses','CfgMagazines'];
};

if ((drop_primary) && !(_primary == "")) then {
	if (_cfg_name == "CfgVehicles") then {_veh addBackpackCargoGlobal [_primary, 1]};
	if (_cfg_name == "CfgWeapons" || _cfg_name == "CfgGlasses") then {_veh addItemCargoGlobal [_primary, 1];};
	if (_cfg_name == "CfgMagazines") then {_veh addMagazineCargoGlobal [_primary, 1]};
_find = "";
_primary = "";
_find_display_name = "";
drop_primary = false;
};

if (_primary == "") then {ctrlShow [10002,false]; (findDisplay 100010 displayCtrl 10002) ctrlSetText "";} else {ctrlEnable [10002,true]; ctrlShow [10002,true]; (findDisplay 100010 displayCtrl 10002) ctrlSetText format ["'%1'   >>>   '%2'", _find_display_name, _veh_displayName]};

if (isNull ( uiNamespace getVariable [ "BIS_fnc_arsenal_cam", objNull])) then {closeDialog 0};
};