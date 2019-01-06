Private['_ammo','_unit','_use','_weapon','_weapons'];

_unit = _this select 0;
_weapons = _this select 1;
_ammo = _this select 2;
_backpack = _this select 3;
_ItemToBackpack = _this select 4;
_PrimaryWeaponItem = _this select 5;

removeAllWeapons _unit;
removeAllItems _unit;
removeBackpack _unit;

_unit addBackpack _backpack;
{_unit addItemToBackpack _x} forEach _ItemToBackpack;
{_unit addMagazine _x} forEach _ammo;
{_unit addWeapon _x} forEach _weapons;
{_unit addPrimaryWeaponItem _x} forEach _PrimaryWeaponItem;

//_unit addItemToUniform "MiniGrenade"; 
//_unit addItemToVest "30Rnd_762x39_AKM";
//_unit addItemToBackpack "Medikit";


_use = primaryWeapon _unit;
if (_use == "") then {
	Private ["_kind"];
	{
		_kind = getNumber(configFile >> 'CfgWeapons' >> _x >> "type");
		if (_kind in [1,2,4,5]) exitWith {_use = _x};
	} forEach _weapons;
};

if (_use != "") then {
	Private ["_muzzles"];
	_muzzles = getArray (configFile >> "CfgWeapons" >> _use >> "muzzles"); 
	if !("this" in _muzzles) then {_unit selectWeapon (_muzzles select 0)} else {_unit selectWeapon _use}; 
};