_remove = nearestObjects [player, ["Car","Air","Bicycle","Motorcycle","Tank","Thing"], 10];
{deleteVehicle _x} forEach _remove;

titleText ["Alle Fahrzeuge im Umkreis vom 10m entfernt...","PLAIN DOWN"]; titleFadeOut 3;
