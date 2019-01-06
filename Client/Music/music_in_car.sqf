_car = _this select 0;

_track = selectRandom["empty","empty","empty","empty","empty","bad_boys","kurwa"];

while {(alive _car) && !(player in _car)} do {
if (_track == "bad_boys") then {nul = [_car,"bad_boys"] call fn_netSay3D; sleep 12;};
if (_track == "kurwa") then {nul = [_car,"kurwa"] call fn_netSay3D; sleep 11;};
if (_track == "empty") exitWith {};
};