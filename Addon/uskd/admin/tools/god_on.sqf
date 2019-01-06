(vehicle player) removeAllEventHandlers "handleDamage";
(vehicle player) addEventHandler ["handleDamage", { false }];
(vehicle player) addEventHandler ["hit", {player setdammage 0}];
(vehicle player) addEventHandler ["dammaged", {player setdammage 0}];
(vehicle player) allowDamage false;

//titleText ["Gott Modus ist jetzt AN...","PLAIN DOWN"]; titleFadeOut 3;
