/*
	description:
	 - New network system handler.
	note:
	 - addPublicVariableEventHandler is triggered everywhere BUT on the caller.
	usage:
	 - [server PVF to run, parameters]
*/

Private ["_parameters","_publicVar","_script"];
//_publicVar = _this;

_script = _this select 0;
_parameters = if (count _this > 1) then {_this select 1} else {[]};

_parameters Spawn (Call Compile _script);