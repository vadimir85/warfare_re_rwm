_vehicle = _this select 0;
_lock = _this select 1;
[[_vehicle, _lock], "lock", true, true] call BIS_fnc_MP;