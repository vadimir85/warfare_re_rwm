private ["_xpos", "_ypos", "_vehicles", "_airs", "_objects", "_distance", "_damage",
         "_wave_radius", "_speed", "_vel"];

_xpos = _this select 0;
_ypos = _this select 1;

_wave_radius = argt_nuclear_radius * 0.7;
_vehicles = nearestobjects [[_xpos, _ypos , 0], ["Car", "Motorcycle", "Tank", "Air", "Ship"], argt_nuclear_radius * 1.3];
_objects = nearestobjects [[_xpos, _ypos, 0], [], _wave_radius];

sleep 4;

{
  if ( ! (_x iskindof "Land_nav_pier_m_2") ) then
  {
    {deleteVehicle _x} foreach (crew _x); //setdammage 1
	deleteVehicle _x; //setdammage 1;
  };
} foreach ([_xpos, _ypos, 0] nearobjects ["All", 200]);

[_xpos, _ypos] execVM "Client\Module\Nuke\scripts\damage2.sqf";

_airs = nearestobjects [[_xpos, _ypos , 0], ["Air"], argt_nuclear_radius];
{
  _distance = [_xpos, _ypos, 0] distance _x;
  _dir = asin (((getpos _x select 1) - _ypos) / _distance);
  if ( getpos _x select 0 < _xpos ) then {_dir = 180 - _dir};
  _vel = velocity _x;
  _damage = 1 - _distance / argt_nuclear_radius;
  _damage = _damage * _damage;
  _speed = 4 * (_damage + random (_damage / 4));
  _speed = _speed * argt_nuclear_blow_speed;
  _x setvelocity [(_vel select 0) + (_speed * cos _dir),
                  (_vel select 1) + (_speed * sin _dir),
                  _speed / 3];
  _x setdammage ((getdammage _x) + _damage);
} foreach _airs;

{[_x] execVM "Client\Module\Nuke\scripts\electro_pulse.sqf"} foreach _vehicles;

{
  if ( ! (_x iskindof "All") ) then {_x setdammage 1}
  else
  {
    if ( _x iskindof "Man" || _x iskindof "Car" || _x iskindof "Motorcycle" ||
         _x iskindof "Tank" || _x iskindof "Ship" ) then
    {
      _distance = [_xpos, _ypos, 0] distance _x;
      _dir = asin (((getpos _x select 1) - _ypos) / _distance);
      if ( getpos _x select 0 < _xpos ) then {_dir = 180 - _dir};
      _vel = velocity _x;
      _damage = 1 - _distance / argt_nuclear_radius;
      _damage = _damage * _damage;
      _speed = _damage + random (_damage / 4);
      if ( _x iskindof "Man" ) then {_speed = _speed * 2}
        else {[_x, _speed * 2] execVM "Client\Module\Nuke\scripts\rotate.sqf"};
      _speed = _speed * argt_nuclear_blow_speed;
      _x setvelocity [(_vel select 0) + (_speed * cos _dir),
                      (_vel select 1) + (_speed * sin _dir),
                      _speed / 3];
      //_x setdammage ((getdammage _x) + _damage);
    };
  };
//_x setObjectTexture [0, "#(rgb,0,0,0)color(0,0,0,0)"];
} foreach _objects;