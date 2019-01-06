{if ((vehicle _x isKindOf 'LandVehicle') and alive _x) then {

vehicle _x setPos [getPos vehicle _x select 0, getPos vehicle _x select 1, 0.5];
vehicle _x setVelocity [0,0,-0.5];

}} foreach units group player;

ctrlEnable [11022,false];
sleep 2;
ctrlEnable [11022,true];