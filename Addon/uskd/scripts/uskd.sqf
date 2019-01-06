//--- US-KD MOTD
execVM "Addon\uskd\scripts\motd.sqf";

//--- US-KD Blockierung des Respawn Buttons
execVM "Addon\uskd\scripts\respawnblock.sqf";

//--- Admin Tools
//*Erstellen des Menüs beim Spawn
//*execVM "uskd\admin\admins.sqf";
//*Neu erstellen des Menüs nach Respawn
//*player addMPEventHandler ["MPRespawn", {_this execVM "uskd\scripts\onPlayerRespawn.sqf"}];
