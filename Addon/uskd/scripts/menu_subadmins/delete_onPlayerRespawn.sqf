/*
 * Author:      Sinky (edit by Hoshi 01/2013)
 * Date:        2nd February 2011
 * Last Edited: 2nd February 2011
 * Version:     1.0
 */

_unit = _this select 0;
_corpse = _this select 1;

if (local _unit) then {

	_corpse removeAction 0;
	
	_unit addAction [
		("<t color='#ff4040'>" + ">>>>> Admin Tools" + "</t>"), 
		"uskd\scripts\menu_subadmins\create.sqf", [], 0, false
	];

};
