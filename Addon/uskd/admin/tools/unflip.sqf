_vehicle = vehicle player;
if (player != _vehicle) then {
	if (getPos _vehicle select 2 > 3 && !surfaceIsWater (getPos _x)) then {
		[_vehicle, getPos _vehicle, 15] Call PlaceSafe;
	} else {
		_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 0.5];
		_vehicle setVelocity [0,0,-0.5];
	};
};
if (player == _vehicle) then {
	_objects = player nearEntities[["Car","Motorcycle","Tank"],10];
	if (count _objects > 0) then {		
		{
			if (getPos _x select 2 > 3 && !surfaceIsWater (getPos _x)) then {
				[_x, getPos _x, 15] Call PlaceSafe;
			} else {
				_x setPos [getPos _x select 0, getPos _x select 1, 0.5];
				_x setVelocity [0,0,-0.5];
			};
		} forEach _objects;
	};
};
