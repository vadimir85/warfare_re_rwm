(vehicle player) removeAllEventHandlers "handleDamage";
(vehicle player) removeAllEventHandlers "hit";
(vehicle player) removeAllEventHandlers "dammaged";
(vehicle player) allowDamage true;
(vehicle player) addEventHandler ["handleDamage", { true }];

//titleText ["Gott Modus ist jetzt AUS...","PLAIN DOWN"]; titleFadeOut 3;
