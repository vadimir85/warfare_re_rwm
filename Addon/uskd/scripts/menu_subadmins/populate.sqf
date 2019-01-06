/*
 * Author:      Sinky (edit by Hoshi 01/2013)
 * Date:        1st February 2011
 * Last Edited: 1st February 2011
 * Version:     1.0
 */

#include "dialog\defines.sqf";
disableSerialization;

if (local player) then {

	// Grab access to the controls
	_dialog = findDisplay ADMINTOOLS_DIALOG;
	_AdminTools = _dialog displayCtrl ADMINTOOLS_TOOLS;

	// Admin Tools list box
	_AdminToolsIndex = _AdminTools lbAdd "GCam";
	_AdminToolsIndex = _AdminTools lbAdd "2D Map";
	_AdminToolsIndex = _AdminTools lbAdd "Teleport (0-0-2)";
	_AdminToolsIndex = _AdminTools lbAdd "Carmagedon (10m Umkreis)";
	
};