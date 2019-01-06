private ["_vehicle"];

_vehicle = _this select 0;
sleep 1;
_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 0.5];
_vehicle setVelocity [0,0,-0.5];
sleep 6;
_vehicle allowDamage true;