/// für SuperAdmins
_SuperAdminUID = getPlayerUID player;
_validUIDList = [
"675906",
"0815XXXXXX"
];
if (_SuperAdminUID in _validUIDList) then {
	/////
	//--- Menü für Sichtweite und Grass erstellen (Scroll Menü - für Admins)
	// Dialog Einstellungen beim Spawn
	player addAction [("<t color='#42b6ff'>" + (localize "STR_WF_USKD_ViewDistanceSettings") + "</t>"), "uskd\scripts\view_settings_admins\create.sqf", [], 0, false];

	//--- Menü für die Admin Tools (Menü - für Admin Tools)
	player addAction [("<t color='#ff4040'>" + ">>>>> Admin Tools" + "</t>"), "uskd\scripts\menu_admins\create.sqf", [], 0, false];
	//player addAction [("<t color='#ff4040'>" + ">>> Admin Guns" + "</t>"), "uskd\admin\tools\admin_guns.sqf", [], 0, false];
	//player addAction [("<t color='#ff4040'>" + ">>> Heilung" + "</t>"), "uskd\admin\tools\heal.sqf", [], 0, false];
	player addAction [("<t color='#ff4040'>" + ">>> Teleport" + "</t>"), "uskd\admin\tools\teleport.sqf", [], 0, false];
	//player addAction [("<t color='#d9d9d9'>" + ">>> unflip Vehicle" + "</t>"), "uskd\admin\tools\unflip.sqf", [], 0, false];
	//player addAction [("<t color='#d9d9d9'>" + ">>> Testscript" + "</t>"), "uskd\admin\tools\testscript.sqf", [], 0, false];

	// Trigger Menü
	execVM "uskd\scripts\radiotrigger\trigger_admin_tools.sqf";
	/////
	}
	else {
		
		////////////////////////
		
		/// für SubAdmins
		_SubAdminUID = getPlayerUID player;
		_validUIDList = [
		"511106",
		"876738",
		"511298",
		"9645894",
		"504578"
		];
		if (_SubAdminUID in _validUIDList) then {
			/////
			//--- Menü für Sichtweite und Grass erstellen (Scroll Menü - für SubAdmins)
			// Dialog Einstellungen beim Spawn
			player addAction [("<t color='#42b6ff'>" + (localize "STR_WF_USKD_ViewDistanceSettings") + "</t>"), "uskd\scripts\view_settings_admins\create.sqf", [], 0, false];

			//--- Menü für die SubAdmin Tools (Menü - für SubAdmin Tools)
			//player addAction [("<t color='#ff4040'>" + ">>>>> Admin Tools" + "</t>"), "uskd\scripts\menu_subadmins\create.sqf", [], 0, false];
			player addAction [("<t color='#ff4040'>" + ">>> GCam" + "</t>"), "uskd\admin\gcam\gcam.sqf", [], 0, false];
			//player addAction [("<t color='#ff4040'>" + ">>> 2D Map" + "</t>"), "uskd\admin\tools\2dmap.sqf", [], 0, false];
			//player addAction [("<t color='#ff4040'>" + ">>> Teleport" + "</t>"), "uskd\admin\tools\teleport.sqf", [], 0, false];
			//player addAction [("<t color='#d9d9d9'>" + ">>> unflip Vehicle" + "</t>"), "uskd\admin\tools\unflip.sqf", [], 0, false];

			// Trigger Menü
			execVM "uskd\scripts\radiotrigger\trigger_subadmin_tools.sqf";
			/////
			}
			else {
				//--- Menü für Sichtweite und Grass erstellen (Scroll Menü - für Gäste)
				// Dialog Einstellungen beim Spawn
				player addAction [("<t color='#42b6ff'>" + (localize "STR_WF_USKD_ViewDistanceSettings") + "</t>"), "uskd\scripts\view_settings\create.sqf", [], 0, false];
				//player addAction [("<t color='#d9d9d9'>" + ">>> unflip Vehicle" + "</t>"), "uskd\admin\tools\unflip.sqf", [], 0, false];
			};
		};

/////////////////////////////////////////////////////////////////////////////////////////////////////////////



////////////////////////
// Admins
// 675906 //Hoshi

// SubAdmins
// 511106 //Bierchen
// 876738 //modi
// 511298 //Betafighter
// 4172550 //Melekai
// 9645894 //Maddoc
// 504578 //Takeru

// 000000 //Rubber
