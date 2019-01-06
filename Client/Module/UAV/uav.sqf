Private ['_add','_buildings','_built','_checks','_closest','_cw','_d','_dir','_driver','_group','_gunner','_id','_lastWP','_lastWPpos','_logic','_logicMARTA','_pos','_radius','_sorted','_spawn','_step','_uav','_varname','_waypoints','_wp','_wpcount'];

_buildings = (sideJoinedText) Call GetSideStructures;
_checks = [sideJoined,Format ["WFBE_%1COMMANDCENTERTYPE",sideJoinedText] Call GetNamespace,_buildings] Call GetFactories;
_closest = objNull;
if (count _checks > 0) then {
	_sorted = [player,_checks] Call SortByDistance;
	_closest = _sorted select 0;
};

if (isNull _closest) exitWith {};

_uav = createVehicle [Format ["WFBE_%1UAV",sideJoinedText] Call GetNamespace, getPos _closest, [], 0, "FLY"];
[_uav,sideJoined] ExecVM 'Common\Common_InitUnit.sqf';
if (_uav isKindOf "B_UAV_05_F") then {_uav removeWeapon "AGM114K_Hellfire_II_Launcher_W"; _uav removeMagazine "8Rnd_AGM114K_Hellfire_II_M"; _uav selectWeapon "Laserdesignator_mounted"}; 
createVehicleCrew _uav;
playerUAV = _uav;
_uav flyinheight 1000;
_uav enableUAVWaypoints true;
_wp = (group _uav) addWaypoint [_closest, 0];
_wp waypointAttachObject _closest;

player unassignItem "ItemGPS";
if (sideJoined == west) then {player assignItem "B_UavTerminal";} else {player assignItem "O_UavTerminal";};

player connectTerminalToUAV _uav;

[sideJoinedText,'VehiclesCreated',1] Call UpdateStatistics;
-20000 Call ChangePlayerFunds;