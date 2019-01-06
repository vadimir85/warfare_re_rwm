Private ["_lock","_vehicle"];

_vehicle = _this select 0;
_lock = if (locked _vehicle == 2) then {0} else {2};

[_vehicle,_lock] Call CLTFNCSetVehicleLock;
playsound "lock";