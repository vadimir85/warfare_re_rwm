private ["_repairTarget"];
_repairTarget = cursorTarget;
if (vehicle player != player) then{
	_repairTarget = vehicle player
};

_repairTarget setdammage 0;
sleep 0.5;
_repairTarget setvehicleammo 1;
sleep 0.5;
_repairTarget setfuel 1;
sleep 0.5;

//titleText ["Fahrzeug wurde aufmunitioniert, repariert bzw. aufgefüllt...","PLAIN DOWN"]; titleFadeOut 3;
