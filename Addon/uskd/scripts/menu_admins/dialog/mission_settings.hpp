/*
 * Author:      Sinky (edit by Hoshi 01/2013)
 * Date:        1st February 2011
 * Last Edited: 1st February 2011
 * Version:     1.0
 */

#include "defines.sqf"

class MissionSettingsAdminTools {

	idd = ADMINTOOLS_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM 'uskd\scripts\menu_admins\populate.sqf'";
	
	class controlsBackground {
		
		class MainBG : AdminTools_RscPicture {
		
			idc = -1;
			text = "\ca\ui\data\ui_background_controlers_ca.paa";
			
			moving = true;
			
			x = 0.325; y = 0.1;
			w = 0.55; h = 0.3;
		
		};
		
		class MainTitle : AdminTools_RscText {
		
			idc = -1;
			text = "Admin Tools (Super Admins)";
			
			x = 0.33; y = 0.105;
			w = 0.3; h = 0.05;
		
		};
		
		class CreatorText : AdminTools_RscText {
		
			idc = -1;
			text = "";
			sizeEx = 0.02;
			
			x = 0.65; y = 0.4;
			w = 0.3; h = 0.05;
		
		};
		
	};
	
	class controls {
		
		class AdminToolsTitle : AdminTools_RscText {
		
			idc = -1;
			text = "Auswahl Admin Tool";
			sizeEx = 0.02;
			
			x = 0.33; y = 0.22;
			w = 0.3; h = 0.05;
		
		};
		
		class AdminToolsSelection : AdminTools_RscCombo {
		
			idc = ADMINTOOLS_TOOLS;
			
			x = 0.50; y = 0.235;
			w = 0.22; h = 0.023;
		
		};
		
		class CloseButton : AdminTools_RscButton {
			
			text = "abbrechen";
			onButtonClick = "closeDialog 0;";
			
			x = 0.34; y = 0.345;
			w = 0.125; h = 0.05;
			
		};
		
		class AcceptButton : AdminTools_RscButton {
		
			text = "anwenden";
			onButtonClick = "[] execVM 'uskd\scripts\menu_admins\apply_settings.sqf';";
			
			x = 0.59; y = 0.345;
			w = 0.125; h = 0.05;
			
		};
		
	};

};
