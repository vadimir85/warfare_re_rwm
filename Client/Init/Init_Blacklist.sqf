Private ["_blackListID","_id"];
_id = getPlayerUID (_this select 0);

//--- Griefers ID.
_blackListID = [];

if (_id in _blackListID) then {true} else {false};