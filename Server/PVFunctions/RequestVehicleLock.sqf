Private["_client","_locked","_side","_vehicle"];

_vehicle = _this select 0;
_locked = _this select 1;

[[_vehicle, _locked], "lock", true, true] call BIS_fnc_MP;

WFBE_SetVehicleLock = [_vehicle,_locked] Call CLTFNCSETVEHICLELOCK;
publicVariable 'WFBE_SetVehicleLock';

if (isHostedServer) then {[nil,'CLTFNCSETVEHICLELOCK',[_vehicle,_locked]] Spawn HandlePVF};