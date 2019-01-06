_remove = nearestObjects [player, ["Car","Air","Bicycle","Motorcycle","Tank","Thing"], 50];
{deleteVehicle _x} forEach _remove;

titleText ["Alle Fahrzeuge im Umkreis vom 50m entfernt...","PLAIN DOWN"]; titleFadeOut 3;
