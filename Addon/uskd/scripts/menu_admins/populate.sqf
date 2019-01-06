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
	_AdminToolsIndex = _AdminTools lbAdd "God Mod On (0-0-3)";
	_AdminToolsIndex = _AdminTools lbAdd "God Mod Off (0-0-4)";
	_AdminToolsIndex = _AdminTools lbAdd "Unsichtbar (0-0-5)";
	_AdminToolsIndex = _AdminTools lbAdd "Sichtbar (0-0-6)";
	_AdminToolsIndex = _AdminTools lbAdd "Reparatur (0-0-9)";
	_AdminToolsIndex = _AdminTools lbAdd "Heilung (0-0-8)";
	_AdminToolsIndex = _AdminTools lbAdd "Teleport (0-0-2)";
	_AdminToolsIndex = _AdminTools lbAdd "Admin Guns";
	_AdminToolsIndex = _AdminTools lbAdd "Create AH64";
	_AdminToolsIndex = _AdminTools lbAdd "Create AH1Z";
	_AdminToolsIndex = _AdminTools lbAdd "Create A10";
	_AdminToolsIndex = _AdminTools lbAdd "Create Ka-52";
	_AdminToolsIndex = _AdminTools lbAdd "Create Su-34";
	_AdminToolsIndex = _AdminTools lbAdd "MagicBox";
	_AdminToolsIndex = _AdminTools lbAdd "Einheit spawnen (US)";
	_AdminToolsIndex = _AdminTools lbAdd "Einheit spawnen (RUS)";
	_AdminToolsIndex = _AdminTools lbAdd "Carmagedon (10m Umkreis)";
	_AdminToolsIndex = _AdminTools lbAdd "Respawnzelt aufbauen";
	_AdminToolsIndex = _AdminTools lbAdd "Geld +100k";
	
};