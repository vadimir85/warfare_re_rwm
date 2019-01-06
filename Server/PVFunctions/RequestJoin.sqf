
_uid = _this select 0;
_side = _this select 1;
_name = _this select 2;
_varname = _this select 3;

_canJoin = true;

_get = Format["WFBE_JIP_USER%1",_uid] Call GetNamespace;
//[[GetNamespace], {_get = [Format["WFBE_JIP_USER%1",_uid]]}] call BIS_fnc_call; //не работает


if !(isNil '_get') then {
	_sideOrigin = _get select 3;

	if (_sideOrigin != _side) then {
		if !(paramShowUID) then {_uid = "xxxxxxx"};
//		WFBE_LocalizeMessage = [nil,'CLTFNCLOCALIZEMESSAGE',['Teamswap',_name,_uid,_sideOrigin,_side]]; //not working in arma3?!
		WFBE_LocalizeMessage = ['Teamswap',_name,_uid,_sideOrigin,_side] Call CLTFNCLOCALIZEMESSAGE; //fix
		publicVariable 'WFBE_LocalizeMessage';
		_canJoin = false;
		diag_log Format["[WFRE (INFORMATION)][frameno:%4 | ticktime:%5] RequestJoin: Player %1 <%2> (%3) has been sent back to the lobby for teamswapping.",_name,_varname,_get select 0,diag_frameno,diag_tickTime];
	};
};
WFBE_CanJoin = [_varname,_canJoin] remoteExecCall ["CLTFNCCANJOIN", 0];
publicVariable 'WFBE_CanJoin';
