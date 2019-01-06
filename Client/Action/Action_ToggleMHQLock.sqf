Private ["_lock","_MHQ"];

_MHQ = _this select 0;

_lock = if (locked _MHQ == 2) then {0} else {2};

WFBE_RequestVehicleLock = ['SRVFNCREQUESTVEHICLELOCK',[_MHQ,_lock]];
publicVariable 'WFBE_RequestVehicleLock';
if (isHostedServer) then {['SRVFNCREQUESTVEHICLELOCK',[_MHQ,_lock]] Spawn HandleSPVF};