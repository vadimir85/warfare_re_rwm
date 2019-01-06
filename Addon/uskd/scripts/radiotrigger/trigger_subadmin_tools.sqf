RadioTrigger_1 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_1 setTriggerArea       [0, 0, 0, false];
RadioTrigger_1 setTriggerActivation ["ALPHA", "NOT PRESENT", true];
RadioTrigger_1 setTriggerStatements ["this", "[""GCam""] execVM ""uskd\admin\gcam\gcam.sqf"";", ""];
RadioTrigger_1 setTriggerText "GCam";

RadioTrigger_2 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_2 setTriggerArea       [0, 0, 0, false];
RadioTrigger_2 setTriggerActivation ["BRAVO", "NOT PRESENT", true];
RadioTrigger_2 setTriggerStatements ["this", "[""2D Map""] execVM ""uskd\admin\tools\2dmap.sqf"";", ""];
RadioTrigger_2 setTriggerText "2D Map";

RadioTrigger_3 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_3 setTriggerArea       [0, 0, 0, false];
RadioTrigger_3 setTriggerActivation ["CHARLIE", "NOT PRESENT", true];
RadioTrigger_3 setTriggerStatements ["this", "[""Teleport""] execVM ""uskd\admin\tools\teleport.sqf"";", ""];
RadioTrigger_3 setTriggerText "Teleport";

RadioTrigger_4 = createTrigger      ["EmptyDetector", [0,0,0]];
RadioTrigger_4 setTriggerArea       [0, 0, 0, false];
RadioTrigger_4 setTriggerActivation ["DELTA", "NOT PRESENT", true];
RadioTrigger_4 setTriggerStatements ["this", "[""Fahrzeuge entfernen (10m Umkreis)""] execVM ""uskd\admin\tools\carmagedon10m.sqf"";", ""];
RadioTrigger_4 setTriggerText "Fahrzeuge entfernen (10m Umkreis)";
