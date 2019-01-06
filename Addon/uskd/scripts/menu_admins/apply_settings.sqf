/*
 * Author:      Sinky (edit by Hoshi 01/2013)
 * Date:        1st February 2011
 * Last Edited: 3rd February 2011
 * Version:     1.0
 */

#include "dialog\defines.sqf"
disableSerialization;

if (local player) then {

	// Grab access to the controls
	_dialog = findDisplay ADMINTOOLS_DIALOG;
	_AdminTools = _dialog displayCtrl ADMINTOOLS_TOOLS;

	// Get the Admin Tools selection
	_AdminTools = lbCurSel _AdminTools;

	// Get the text representation of the selection made
	_AdminTools = lbText[ADMINTOOLS_TOOLS, _AdminTools];

	// Load Admin Tools
	switch (_AdminTools) do {
		case "GCam": {execVM "uskd\admin\gcam\gcam.sqf";};
		case "2D Map": {execVM "uskd\admin\tools\2dmap.sqf";};
		case "God Mod On (0-0-3)": {execVM "uskd\admin\tools\god_on.sqf";};
		case "God Mod Off (0-0-4)": {execVM "uskd\admin\tools\god_off.sqf";};
		case "Unsichtbar (0-0-5)": {execVM "uskd\admin\tools\unsichtbar.sqf";};
		case "Sichtbar (0-0-6)": {execVM "uskd\admin\tools\sichtbar.sqf";};
		case "Reparatur (0-0-9)": {execVM "uskd\admin\tools\repair.sqf";};
		case "Heilung (0-0-8)": {execVM "uskd\admin\tools\heal.sqf";};
		case "Teleport (0-0-2)": {execVM "uskd\admin\tools\teleport.sqf";};
		case "Admin Guns": {execVM "uskd\admin\tools\admin_guns.sqf";};
		case "Create AH64": {execVM "uskd\admin\tools\create_ah64.sqf";};
		case "Create AH1Z": {execVM "uskd\admin\tools\create_ah1z.sqf";};
		case "Create A10": {execVM "uskd\admin\tools\create_a10.sqf";};
		case "Create Ka-52": {execVM "uskd\admin\tools\create_ka52.sqf";};
		case "Create Su-34": {execVM "uskd\admin\tools\create_su34.sqf";};
		case "MagicBox": {execVM "uskd\admin\tools\magicbox.sqf";};
		case "Einheit spawnen (US)": {execVM "uskd\admin\tools\einheitenspawn_us.sqf";};
		case "Einheit spawnen (RUS)": {execVM "uskd\admin\tools\einheitenspawn_rus.sqf";};
		case "Carmagedon (10m Umkreis)": {execVM "uskd\admin\tools\carmagedon10m.sqf";};
		//case "Respawnzelt aufbauen": {execVM "uskd\admin\tools\mash_deploy.sqf";};
		case "Respawnzelt aufbauen": {execVM "Client\Module\Skill\Skill_Medic.sqf";};
		case "Geld +100k": {execVM "uskd\admin\tools\money.sqf";};
	};


	// Close the dialog, we don't need the controls anymore
	closeDialog 0;
	sleep 2;
	hint "";

};