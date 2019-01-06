private ["_vehicle_group", "_vehicle", "_position", "_enemy_inf"];

_vehicle = _this select 0;
_position = getPos _vehicle;
_vehicle_group = createGroup resistance;
{_x setskill 1; [_x] join _vehicle_group} forEach crew _vehicle;

while {(alive _vehicle) OR (player in _vehicle) OR (alive driver _vehicle)} do {
{
	if (side _x == WEST || side _x == EAST) then {
		if !(isNull _x) then {_vehicle doWatch _x; _vehicle move position _x; _vehicle doTarget _x;_vehicle doFire _x;};
	};
} forEach nearestObjects [_vehicle, ["Man","Car","Tank","Air"], 1200];

if (isNull assignedTarget _vehicle) then {_vehicle doWatch objNull; _vehicle doTarget objNull; _vehicle move _position;};
sleep 5;
};