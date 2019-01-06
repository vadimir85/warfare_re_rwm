_distance = 50;
		
if ((typeName _distance) == (typeName (1234))) then {
		
		player groupchat format["Starte Carmagedon mit einer Reichweite von 50 Metern", _distance];
		
		{
			{		
				if ({alive _x} count crew _x == 0) then {
						deleteVehicle _x;
					};
			} foreach((getpos player) nearObjects [_x, _distance]);
		} forEach ["LandVehicle", "Air", "Car", "Motorcycle", "Bicycle", "UAV", "Wreck", "Wreck_Base", "HelicopterWreck", "UH1Wreck", "UH1_Base", "UH1H_base", "AH6_Base_EP1","CraterLong", "Ka60_Base_PMC", "Ka137_Base_PMC", "A10"];
	} else {
		hint "ERROR: expected number";
	};

titleText ["Alle Fahrzeuge im Umkreis vom 50m entfernt...","PLAIN DOWN"]; titleFadeOut 3;
