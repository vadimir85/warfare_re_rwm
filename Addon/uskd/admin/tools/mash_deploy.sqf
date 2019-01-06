/*
	Script: Officer Skill System by Benny.
	Description: Add special skills to the defined officer.
*/
Private ['_array','_exist','_skip','_tent','_toWorld','_markerName','_type','_z','_side'];
_side = sideJoined;

if (side player != sideJoined) exitWith {
hint "\nRENEGADE\n\nCannot Deploy Mash\n\nBe aware of TEAM KILL !\n ";
};

_type = Format ["WFBE_%1FARP",sideJoinedText] Call GetNamespace;
_exist = WF_Logic getVariable Format ["%1MASH",sideJoinedText];
if !(isNull _exist) then {deleteVehicle _exist};

WFBE_SK_V_LastUse_MASH = time;

_skip = false;
for [{_z = 0},{_z < 2},{_z = _z + 1}] do {
	sleep 0.5;
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 0.5;
	waitUntil {animationState player == "ainvpknlmstpslaywrfldnon_amovpknlmstpsraswrfldnon" || !alive player || vehicle player != player};
	if (!alive player || vehicle player != player) exitWith {_skip = true};
};

if (!_skip) then {
	_array = [((player worldToModel (getPos player)) select 0),((player worldToModel (getPos player)) select 1) + 5];
	_toWorld = player modelToWorld _array;
	_tent = _type createVehicle _toWorld;
	_tent addEventHandler ["Killed",{_this select 0 Spawn TrashObject}];
	WF_Logic setVariable [Format["%1MASH",sideJoinedText],_tent,true];
	
	//Marker
	_tent setVehicleInit Format["[this, %1] execVM 'Client\Functions\Client_Mash.sqf';",_side];
	processInitCommands;
	
	_tent addAction ["<t color='#dc143c'>Undeploy Respawn</t>", "uskd\admin\tools\mash_undeploy.sqf", [], 75, false, true, "", "alive _target && time - WFBE_SK_V_LastUse_MASH > 10"];
	} else {
	WF_Logic setVariable [Format["%1MASH",sideJoinedText],objNull,true];
};