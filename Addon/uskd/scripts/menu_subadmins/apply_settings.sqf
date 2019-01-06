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
		case "Teleport (0-0-2)": {execVM "uskd\admin\tools\teleport.sqf";};
		case "Carmagedon (10m Umkreis)": {execVM "uskd\admin\tools\carmagedon10m.sqf";};
	};


	// Close the dialog, we don't need the controls anymore
	closeDialog 0;
	sleep 2;
	hint "";

};