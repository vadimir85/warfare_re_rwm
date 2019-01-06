Warfare_MenuAction = -1;
_exited = false;
_timer = 3;
WFBE_ForceUpdate = true;
_GearUpgradeInfo = true;
_currentUnit = player;
_currentUpgrades = (sideJoinedText) Call GetSideUpgrades;

while {alive player && dialog} do {
	//--- Build Units.
	_enable = false;
	if (barracksInRange || lightInRange || heavyInRange || aircraftInRange || hangarInRange || DepotInRange) then {_enable = true};
	ctrlEnable [11001,_enable];
	ctrlEnable [11002,gearInRange];
	if (WF_Debug) then {ctrlEnable [11002,true]};

	_timer = _timer + 0.1;

	sleep 0.1;

	if (Side player != sideJoined) exitWith {
	closeDialog 0;
"Watch your fire!" hintC [ 
"You are a Teamkiller!",
"Now you can't use all Warfare Functions.", 
"This state remains until your death.",
"Does this happen more often, you can be kicked or banned!" ];
	};
	if (!dialog || _exited) exitWith {};

	//--- Buy Units.
	if (Warfare_MenuAction == 1) then {
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_BuyUnits";
		_exited = true;	
	};

	//--- Buy Gear.
	if (Warfare_MenuAction == 2) then {
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_BuyGear";
		_exited = true;
	};

	//--- Team Menu.
	if (Warfare_MenuAction == 3) then {
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Team";
		_exited = true;
	};
	
	//--- Voting Menu.
	if (Warfare_MenuAction == 4) then {
		Warfare_MenuAction = -1;
		_skip = false;
		_voteTime = WF_Logic getVariable Format["%1CommanderVoteTime",sideJoinedText];
		if (_voteTime <= 0) then {_skip = true};
		if (!_skip) then {
			CloseDialog 0;
			CreateDialog "RscMenu_Voting";
			if !(_skip) exitWith {};
		};
		WFBE_RequestCommanderVote = ['SRVFNCREQUESTCOMMANDERVOTE',sideJoined];
		publicVariable 'WFBE_RequestCommanderVote';
		if (isHostedServer) then {['SRVFNCREQUESTCOMMANDERVOTE',sideJoined] Spawn HandleSPVF};
		voted = true;
		waitUntil {((WF_Logic getVariable Format ["%1CommanderVoteTime",sideJoinedText])>0) || !dialog || !alive player};
		if (!alive player || !dialog) exitWith {_exited = true};
		closeDialog 0;
		createDialog "RscMenu_Voting";
		_exited = true;
	};
	//--- Unflip Vehicle.
	if (Warfare_MenuAction == 10) then { //added-MrNiceGuy
		Warfare_MenuAction = -1;

		_vehicle = vehicle player;
		if (player != _vehicle) then {
			if (getPos _vehicle select 2 > 3 && !surfaceIsWater (getPos _vehicle)) then {
				[_vehicle, getPos _vehicle, 15] Call PlaceSafe;
			} else {
				_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 0.5];
				_vehicle setVelocity [0,0,-0.5];
			};
		};
		if (player == _vehicle) then {
			_objects = player nearEntities[["Car","Motorcycle","Tank"],10];
			if (count _objects > 0) then {		
				{
					if (getPos _x select 2 > 3 && !surfaceIsWater (getPos _x)) then {
						[_x, getPos _x, 15] Call PlaceSafe;
					} else {
						_x setPos [getPos _x select 0, getPos _x select 1, 0.5];
						_x setVelocity [0,0,-0.5];
					};
				} forEach _objects;
			};
		};
	};
	
	//--- Headbug Fix.
	if (Warfare_MenuAction == 11) then { //added-MrNiceGuy
		Warfare_MenuAction = -1;
		
		closeDialog 0;
		titleCut["","BLACK FADED",0];
		_pos = position player;
		_vehi = "Lada1" createVehicle [0,0,0];
		player moveInCargo _vehi;
		deleteVehicle _vehi;
		player setPos _pos;
		titleCut["","BLACK IN",5];
	};
	//--- virtual ammobox button
	if (Warfare_MenuAction == 13) exitWith {
		Warfare_MenuAction = -1;
		closeDialog 0;
//
//		_handle = player execVM "Client\gearsaver\vrext.sqf";
//		execVM "Client\gearsaver\weaponsave.sqf";

		if(side player == west) then
		{
			["Open",true] spawn BIS_fnc_arsenal; execVM "Client\gearsaver\weaponsave.sqf";
		}else{
			["Open",true] spawn BIS_fnc_arsenal; execVM "Client\gearsaver\weaponsave.sqf";
		};

	};
	//--- Display Parameters.
	if (Warfare_MenuAction == 12) exitWith { //added-MrNiceGuy
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscDisplay_Parameters";
	};
	//--- MHQ Fix 
	if (Warfare_MenuAction == 31) exitWith  { //-----added-NG23
		Warfare_MenuAction = -1;
		closeDialog 0;
		[] ExecVM "NG23\Debug\Common_MHQ_Despawn_Fix.sqf";
	};
	//--- Help Menu
	if (Warfare_MenuAction == 32) exitWith { //------added-NG23
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Help";
	};
	if (Warfare_MenuAction == 14) then {
		Warfare_MenuAction = -1;
		[] ExecVM "Client\gearsaver\weaponsave.sqf";
	};
	if (Warfare_MenuAction == 15) then { //added-Rubber
		Warfare_MenuAction = -1;
	if (RUBHUD) then { RUBHUD = false } else { RUBHUD = true };
	};
	if (Warfare_MenuAction == 16) then { //added-Rubber
		Warfare_MenuAction = -1;
	if (RUBOSD == 1) then { 
	RUBGPS = 0;
	RUBHUD = false;
	RUBOSD = 0;} else { 
	RUBGPS = 1;
	RUBHUD = true;
	RUBOSD = 1;};
	};
	/*if (Warfare_MenuAction == 17) then { //added-Rubber
		Warfare_MenuAction = -1;
	if ( zoomgps < 1 ) then { zoomgps = (zoomgps + 0.025); hint "zoom OUT";} else { zoomgps = 1; hint "GPS Zoom: \n MAX Value";_handled = true;};
	};
	if (Warfare_MenuAction == 18) then { //added-Rubber
		Warfare_MenuAction = -1;
	if ( zoomgps >= 0.025) then { zoomgps = (zoomgps - 0.025); hint "zoom IN";} else { zoomgps = 0.025; hint "GPS Zoom: \n MIN Value";_handled = true;};
	};
	if (Warfare_MenuAction == 19) then { //added-Rubber
		Warfare_MenuAction = -1;
	if ( zoomauto == 1 ) then { zoomauto = 2; hint "GPS zoom \nMANUAL"; ctrlSetText [11021,"\rwm_core_ui\Images\gui\zauto.paa"];} else { zoomauto = 1; hint "GPS Zoom: \nAUTO";ctrlSetText [11021,"\rwm_core_ui\Images\gui\zman.paa"];};
	};*/
	
	//--- Uptime.
	_uptime = Call GetTime; //added-MrNiceGuy
	ctrlSetText [11015,Format[localize 'STR_WF_MAIN_Uptime',_uptime select 0,_uptime select 1,_uptime select 2, _uptime select 3]];

	_MHQ = (sideJoined) Call GetSideHQ; //added-NG23
	_enable = false; //added-MrNiceGuy
	_enable2 = false; 
	
	if (!isNull(commanderTeam)) then {if (commanderTeam == group player) then {_enable = true}};
	if (_enable) then {if (isNull _MHQ) then {_enable2 = true}}; //added-NG23
	
	ctrlShow [11027,_enable2];
	ctrlEnable [11005,_enable]; //--- Team Orders
	ctrlEnable [11008,_enable]; //--- Commander Menu
	ctrlEnable [11006,commandInRange]; //--- Special Menu
	ctrlEnable [11007,commandInRange]; //--- Upgrade Menu

	//--- Command Menu.
	if (Warfare_MenuAction == 5) exitWith { //added-MrNiceGuy
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Command";
	};
	
	//--- Tactical Menu.
	if (Warfare_MenuAction == 6) exitWith { //added-MrNiceGuy
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Tactical";
	};

	//--- Upgrade Menu.
	if (Warfare_MenuAction == 7) exitWith { //added-MrNiceGuy
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Upgrade";
	};	
	
	//--- Economy Menu.
	if (Warfare_MenuAction == 8) exitWith { //added-MrNiceGuy
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Economy";
	};

	//--- Service Menu.
	if (Warfare_MenuAction == 9) exitWith { //added-MrNiceGuy
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Service";
	};

	//--- Advanced View Distance settings.
	if (Warfare_MenuAction == 38) exitWith { //added-Misak/Vadimir
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "CHVD_dialog";
	};
	
	//--- Upgrade info
	_upgrades = (sideJoinedText) Call GetSideUpgrades;
	
	if (_GearUpgradeInfo) then {
		// Get upgrade levels from array
		_levelB = _upgrades select 0; 
		_levelLF = _upgrades select 1;
		_levelHF = _upgrades select 2;
		_levelAF = _upgrades select 3;
		
		// Update picture for each factory
		switch (_levelB) do {
		case 1 : {ctrlSetText [90014,'\rwm_core_ui\Images\gui\upglevel1.paa'];};
		case 2 : {ctrlSetText [90014,'\rwm_core_ui\Images\gui\upglevel2.paa'];};
		case 3 : {ctrlSetText [90014,'\rwm_core_ui\Images\gui\upglevel3.paa'];};
		};
		switch (_levelLF) do {
		case 1 : {ctrlSetText [90016,'\rwm_core_ui\Images\gui\upglevel1.paa'];};
		case 2 : {ctrlSetText [90016,'\rwm_core_ui\Images\gui\upglevel2.paa'];};
		case 3 : {ctrlSetText [90016,'\rwm_core_ui\Images\gui\upglevel3.paa'];};
		};
		switch (_levelHF) do {
		case 1 : {ctrlSetText [90018,'\rwm_core_ui\Images\gui\upglevel1.paa'];};
		case 2 : {ctrlSetText [90018,'\rwm_core_ui\Images\gui\upglevel2.paa'];};
		case 3 : {ctrlSetText [90018,'\rwm_core_ui\Images\gui\upglevel3.paa'];};
		};
		switch (_levelAF) do {
		case 1 : {ctrlSetText [90020,'\rwm_core_ui\Images\gui\upglevel1.paa'];};
		case 2 : {ctrlSetText [90020,'\rwm_core_ui\Images\gui\upglevel2.paa'];};
		case 3 : {ctrlSetText [90020,'\rwm_core_ui\Images\gui\upglevel3.paa'];};
		};
	};
};