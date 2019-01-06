Private ["_location"];
_location = _this select 0;

waitUntil {!isNil 'commonInitComplete'};

if (isNil "Airfields") then {Airfields = []};
Airfields = Airfields + [_location];

if (isServer) then {

if !(isNil "shangar") then {shangar addEventHandler ["handleDamage", {false}];};
if !(isNil "nhangar") then {nhangar addEventHandler ["handleDamage", {false}];};

	if (worldName == "altis" || worldName == "tanoa") then {
		hangar1 addEventHandler ["handleDamage", {false}];
		hangar2 addEventHandler ["handleDamage", {false}];
		hangar3 addEventHandler ["handleDamage", {false}];
		if (worldName == "altis") then {
		hangar4 addEventHandler ["handleDamage", {false}];
		};
	};
};

diag_log Format["[UWFRE (INIT)][frameno:%4 | ticktime:%5] Init_Airfield: Airfield initialization (position: %1 - item: %2 (%3)) - [Done]",getPos _location,_location,typeOf _location,diag_frameno,diag_tickTime];