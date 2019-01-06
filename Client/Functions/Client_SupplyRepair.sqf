{if
 (( typeOf vehicle _x == 'Rwm_Gaz_66_supply'
 || typeOf vehicle _x == 'Rwm_Kamaz_63968_supply'
 || typeOf vehicle _x == 'Rwm_kamaz5350_supply'
 || typeOf vehicle _x == 'Rwm_hemt_suply_truck'
 || typeOf vehicle _x == 'Rwm_M107_supply_truck'
 || typeOf vehicle _x == 'O_Truck_03_ammo_F') and alive _x) then {vehicle _x setDamage 0};} foreach units group player;
 
ctrlEnable [11023,false];
sleep 2;
ctrlEnable [11023,true];