objMYPlayer = (vehicle player);
publicVariable "objMYPlayer";


strExecCode = 'objMYPlayer hideObject true;';

player setVehicleInit strExecCode;
processInitCommands;
clearVehicleInit player;	
strExecCode = nil;

//titleText ["Du bist jetzt Unsichtbar (Sichtbarkeit = AUS)","PLAIN DOWN"]; titleFadeOut 3;
