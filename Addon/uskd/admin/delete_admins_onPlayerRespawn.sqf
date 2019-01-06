_unit = _this select 0;
_corpse = _this select 1;

//Test mit Pause,. Menüs kommen sporadisch doppelt
sleep 1;

if (local _unit) then {

	_corpse removeAction 0;
	execVM "uskd\admin\admins.sqf";

};
