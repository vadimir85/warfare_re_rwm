objMYPlayer = (vehicle player);
publicVariable "objMYPlayer";


strExecCode = 'objMYPlayer hideObject false;';

player setVehicleInit strExecCode;
processInitCommands;
clearVehicleInit player;	
strExecCode = nil;

//titleText ["Du bist jetzt Sichtbar (Sichtbarkeit = AN)","PLAIN DOWN"]; titleFadeOut 3;
