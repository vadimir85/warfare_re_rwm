//--- Nuke launching.
Private ['_cruise','_dropPosition','_dropPosX','_dropPosY','_dropPosZ','_misFlare','_nukeMarker','_nukeMarker2','_path','_pathS','_planespawnpos','_target','_type'];
_target = _this select 0;
_nukeMarker = _this select 1;
_nukeMarker2 = _this select 2;

WFBE_LocalizeMessage = [nil,'CLTFNCLOCALIZEMESSAGE',['TacticalLaunch']];
publicVariable 'WFBE_LocalizeMessage';
if (isHostedServer || local player) then {[nil,'CLTFNCLOCALIZEMESSAGE',['TacticalLaunch']] Spawn HandlePVF};

sleep 5;

//_path = "\ca\air2\cruisemissile\"; //";
//_pathS = _path + "data\scripts\"; //";

_dropPosition = getpos _target;
_type = 'I_UAV_01_F';
_cruise = createVehicle [_type,_dropPosition,[], 0, "FLY"];
_cruise setVectorDir [ 0.1,- 1,+ 0.5];
_cruise setPos [(getPos _cruise select 0),(getPos _cruise select 1),570];
_cruise setVelocity [0,2,0];
_cruise flyInHeight 570;
_cruise setSpeedMode "FULL";

WFBE_RequestSpecial = ['SRVFNCREQUESTSPECIAL',["ICBM",sideJoined,_target,_cruise,clientTeam]];
publicVariable 'WFBE_RequestSpecial';
if (isHostedServer) then {['SRVFNCREQUESTSPECIAL',["ICBM",sideJoined,_target,_cruise,clientTeam]] Spawn HandleSPVF};

sleep 1.5;

WFBE_DisplayICBM = [sideJoined,'CLTFNCDISPLAYICBM',[_target,_cruise]];
publicVariable 'WFBE_DisplayICBM';
if (isHostedServer || local player) then {[sideJoined,'CLTFNCDISPLAYICBM',[_target,_cruise]] Spawn HandlePVF};

sleep 7;

waitUntil {!alive _cruise};

sleep 5;
deleteVehicle _cruise;

sleep 50;
deleteMarkerLocal _nukeMarker;
deleteMarker _nukeMarker2;