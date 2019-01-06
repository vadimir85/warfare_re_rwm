/*
 * Author:      Sinky
 * Date:        3rd February 2011
 * Last Edited: 3rd February 2011
 * Version:     1.0
 */
 
//Test mit Pause,. Menüs kommen sporadisch doppelt
sleep 1;

// Add the action for the settings dialog
player addAction [
	("<t color='#42b6ff'>" + (localize "STR_WF_USKD_ViewDistanceSettings") + "</t>"), 
	"uskd\scripts\view_settings_admins\create.sqf", [], 0, false
];

// Used to re-add the settings action after respawn
player addMPEventHandler ["MPRespawn", {_this execVM "uskd\scripts\view_settings_admins\onPlayerRespawn.sqf"}];
