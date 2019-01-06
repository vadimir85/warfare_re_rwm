if ((daytime > 20) || (daytime < 4)) then {
Private ['_location', '_fireSky'];
_location = _this select 0;
_fireSky = selectRandom ["F_20mm_White","F_20mm_Green","F_20mm_Red","F_20mm_Yellow"] createVehicle [(_location getPos [400 * sqrt random 1, random 360] select 0),(_location getPos [400 * sqrt random 1, random 360] select 1),200];
_fireSky setVelocity [0,0,-10];
};