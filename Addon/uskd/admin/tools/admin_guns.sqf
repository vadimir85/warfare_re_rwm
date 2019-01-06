removeAllWeapons player; 
player removeWeapon "ItemGPS";
player removeWeapon "ItemMap";
player removeWeapon "ItemCompass";
player removeWeapon "ItemRadio";
player removeWeapon "ItemWatch";
////////

titleText ["alte Waffen gelöscht...","PLAIN DOWN"]; titleFadeOut 3;

sleep 3;

//////////////////////////////////////////////////

player addweapon "Binocular_Vector";
player addweapon "NVGoggles";
player addweapon "ItemGPS";
player addweapon "ItemMap";
player addweapon "ItemCompass";
player addweapon "ItemRadio";
player addweapon "ItemWatch";
///
{player addMagazine "10Rnd_127x99_m107";} forEach [1,2,3,4,5,6,7,8];
player addweapon "BAF_AS50_TWS";
///
{player addMagazine "SMAW_HEAA";} forEach [1,2,3,4,5,6,7,8];
{player addMagazine "SMAW_HEDP";} forEach [1,2,3,4,5,6,7,8];
player addweapon "SMAW";
///
{player addMagazine "30Rnd_9x19_UZI_SD";} forEach [1,2,3,4,5,6,7,8];
player addweapon "UZI_SD_EP1";
///
{player addMagazine "HandGrenade_West";} forEach [1,2,3,4,5,6];
{player addMagazine "PipeBomb";} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];
{player addMagazine "Mine";} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
{player addMagazine "SmokeShell";} forEach [1,2,3,4,5];
{player addMagazine "SmokeShellGreen";} forEach [1,2,3,4,5];
{player addMagazine "SmokeShellYellow";} forEach [1,2,3,4,5];
{player addMagazine "SmokeShellOrange";} forEach [1,2,3,4,5];
{player addMagazine "SmokeShellPurple";} forEach [1,2,3,4,5];
{player addMagazine "SmokeShellBlue";} forEach [1,2,3,4,5];
{player addMagazine "SmokeShellRed";} forEach [1,2,3,4,5];
////////
{player addMagazine "1904Rnd_30mmAA_2A38M";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "2A38M";
///
{player addMagazine "2000Rnd_23mm_AZP85";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "AZP85";
///
{player addMagazine "1200Rnd_30x113mm_m789_HEDP";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "M230";
///
{player addMagazine "1350Rnd_30mmAP_A10";} forEach [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
player addweapon "GAU8";
///
{player addMagazine "1470Rnd_127x108_YakB";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "YakB";
///
{player addMagazine "230Rnd_30mmHE_2A42";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "2A42";
///
{player addMagazine "38Rnd_FFAR";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "FFARLauncher";
///
{player addMagazine "40Rnd_80mm";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "80mmLauncher";
///
{player addMagazine "8Rnd_Hellfire";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "HellfireLauncher";
///
{player addMagazine "12Rnd_Vikhr_KA50";} forEach [1,2,3,4,5,6,7,8,9,10];
player addweapon "VikhrLauncher";

titleText ["Viel Spass mit den Admin Tools...","PLAIN DOWN"]; titleFadeOut 3;
