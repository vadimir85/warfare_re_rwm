/*
	Script: Officer Skill System by Benny.
	Description: Add special skills to the defined officer.
*/

Private ['_array','_exist','_skip','_tent','_toWorld','_markerName','_type','_z','_side'];
_side = sideJoined;

if (side player != sideJoined) exitWith {
hint "\nRENEGADE\n\nCannot Deploy MASH\n\nBe aware of TEAM KILL !\n ";
};
_type = Format ["WFBE_%1FARP",sideJoinedText] Call GetNamespace;
//_exist = WF_Logic getVariable Format ["%1MASH",sideJoinedText];
//if !(isNull _exist) then {deleteVehicle _exist};

WFBE_SK_V_LastUse_MASH = time;

_skip = false;
for [{_z = 0},{_z < 2},{_z = _z + 1}] do {
	sleep 0.5;
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 2;
	waitUntil {animationState player == "AinvPknlMstpSlayWrflDnon_medic" || !alive player || vehicle player != player};
	if (!alive player || vehicle player != player) exitWith {_skip = true};
};

if (!_skip) then {
	_array = [((player worldToModel (getPos player)) select 0),((player worldToModel (getPos player)) select 1) + 5];
	_toWorld = player modelToWorld _array;
	_tent = _type createVehicle _toWorld;
	_tent setposATL [(getPosATL _tent select 0),(getPosATL _tent select 1),(getPosATL player select 2)];
	_tent addEventHandler ["Killed",{_this select 0 Spawn TrashObjectCl}];
	_tent addEventHandler ['Killed',{[_this select 0,_this select 1,sideJoined] Spawn UnitKilled}];
	//WF_Logic setVariable [Format["%1MASH",sideJoinedText],_tent,true];
	//Marker
	[[[_tent, _side], "Client\Functions\Client_Mash.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP;
	_tent addAction [("<t color='#ffffff'><img image='images\mash.paa'/> " + (localize "STR_WF_ACTION_UndeployMASH") + "</t>"), "Client\Module\Skill\Actions\Officer_Undeploy_MASH.sqf", [], 75, false, true, "", "alive _target && time - WFBE_SK_V_LastUse_MASH > 10"];



//"<t color='#ffffff'>STR_WF_ACTION_UndeployMASH</t>"
/*} else {
	WF_Logic setVariable [Format["%1MASH",sideJoinedText],objNull,true];*/
};