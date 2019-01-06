/*
 * Author:      Sinky (edit by Hoshi 01/2013)
 * Date:        3rd February 2011
 * Last Edited: 3rd February 2011
 * Version:     1.0
 */
 
// Add the action for the settings dialog
player addAction [
	("<t color='#ff4040'>" + ">>>>> Admin Tools" + "</t>"), 
	"uskd\scripts\menu_subadmins\create.sqf", [], 0, false
];

// Used to re-add the settings action after respawn
player addMPEventHandler ["MPRespawn", {_this execVM "uskd\scripts\menu_subadmins\onPlayerRespawn.sqf"}];
