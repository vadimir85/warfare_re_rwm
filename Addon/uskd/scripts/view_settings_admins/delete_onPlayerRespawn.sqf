/*
 * Author:      Sinky
 * Date:        2nd February 2011
 * Last Edited: 2nd February 2011
 * Version:     1.0
 */

_unit = _this select 0;
_corpse = _this select 1;

//Test mit Pause,. Menüs kommen sporadisch doppelt
sleep 1;

if (local _unit) then {

	_corpse removeAction 0;
	
	_unit addAction [
		("<t color='#42b6ff'>" + (localize "STR_WF_USKD_ViewDistanceSettings") + "</t>"), 
		"uskd\scripts\view_settings_admins\create.sqf", [], 0, false
	];

};
