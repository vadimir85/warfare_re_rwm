RadioTrigger_1 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_1 setTriggerArea       [0, 0, 0, false];
RadioTrigger_1 setTriggerActivation ["ALPHA", "NOT PRESENT", true];
RadioTrigger_1 setTriggerStatements ["this", "[""AdminTools""] execVM ""uskd\scripts\menu_admins\create.sqf"";", ""];
RadioTrigger_1 setTriggerText "Menü Admin Tools (Super Admins)";

RadioTrigger_2 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_2 setTriggerArea       [0, 0, 0, false];
RadioTrigger_2 setTriggerActivation ["BRAVO", "NOT PRESENT", true];
RadioTrigger_2 setTriggerStatements ["this", "[""Teleport""] execVM ""uskd\admin\tools\teleport.sqf"";", ""];
RadioTrigger_2 setTriggerText "Teleport";

RadioTrigger_3 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_3 setTriggerArea       [0, 0, 0, false];
RadioTrigger_3 setTriggerActivation ["CHARLIE", "NOT PRESENT", true];
RadioTrigger_3 setTriggerStatements ["this", "[""GodModOn""] execVM ""uskd\admin\tools\god_on.sqf"";", ""];
RadioTrigger_3 setTriggerText "God Mod On";

RadioTrigger_4 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_4 setTriggerArea       [0, 0, 0, false];
RadioTrigger_4 setTriggerActivation ["DELTA", "NOT PRESENT", true];
RadioTrigger_4 setTriggerStatements ["this", "[""GodModOff""] execVM ""uskd\admin\tools\god_off.sqf"";", ""];
RadioTrigger_4 setTriggerText "God Mod Off";

RadioTrigger_5 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_5 setTriggerArea       [0, 0, 0, false];
RadioTrigger_5 setTriggerActivation ["ECHO", "NOT PRESENT", true];
RadioTrigger_5 setTriggerStatements ["this", "[""Unsichtbar""] execVM ""uskd\admin\tools\unsichtbar.sqf"";", ""];
RadioTrigger_5 setTriggerText "Unsichtbar";

RadioTrigger_6 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_6 setTriggerArea       [0, 0, 0, false];
RadioTrigger_6 setTriggerActivation ["FOXTROT", "NOT PRESENT", true];
RadioTrigger_6 setTriggerStatements ["this", "[""Sichtbar""] execVM ""uskd\admin\tools\sichtbar.sqf"";", ""];
RadioTrigger_6 setTriggerText "Sichtbar";

RadioTrigger_7 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_7 setTriggerArea       [0, 0, 0, false];
RadioTrigger_7 setTriggerActivation ["GOLF", "NOT PRESENT", true];
RadioTrigger_7 setTriggerStatements ["this", "[""AdminGuns""] execVM ""uskd\admin\tools\admin_guns.sqf"";", ""];
RadioTrigger_7 setTriggerText "Admin Guns";

RadioTrigger_8 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_8 setTriggerArea       [0, 0, 0, false];
RadioTrigger_8 setTriggerActivation ["HOTEL", "NOT PRESENT", true];
RadioTrigger_8 setTriggerStatements ["this", "[""Heilung""] execVM ""uskd\admin\tools\heal.sqf"";", ""];
RadioTrigger_8 setTriggerText "Heilung";

RadioTrigger_9 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_9 setTriggerArea       [0, 0, 0, false];
RadioTrigger_9 setTriggerActivation ["INDIA", "NOT PRESENT", true];
RadioTrigger_9 setTriggerStatements ["this", "[""Reparatur""] execVM ""uskd\admin\tools\repair.sqf"";", ""];
RadioTrigger_9 setTriggerText "Reparatur";
