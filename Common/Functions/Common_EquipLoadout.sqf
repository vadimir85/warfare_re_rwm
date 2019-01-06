Private['_unit','_use','_weapons','_uniform','_vest','_backpack','_headgear','_goggles','_hmd','_binocular'];

_unit = _this select 0;
_weapons = _this select 1;
_uniform = _this select 2;
_vest = _this select 3;
_backpack = _this select 4;
_headgear = _this select 5;
_goggles = _this select 6;
_hmd = _this select 7;
_binocular = _this select 8;
_primary_weapon_items = _this select 9;
_secondary_weapon_items = _this select 10;
_handgun_weapon_items = _this select 11;
_primary_weapon_magazines = _this select 12;
_secondary_weapon_magazine = _this select 13;
_handgun_weapon_magazine = _this select 14;
_itemsInUniform = _this select 15;
_itemsInVest = _this select 16;
_itemsInBackpack = _this select 17;
_items = _this select 18;

_use = weaponState _unit select 0;
_unit enableSimulation false;

removeAllAssignedItems _unit; //new
removeAllItems _unit; //new
removeAllWeapons _unit; //new
{_unit removeMagazines _x;} forEach _weapons;

removeUniform _unit; if (_uniform != "") then {_unit forceAddUniform _uniform;}; //new
removeVest _unit; if (_vest != "") then {_unit addVest _vest;}; //new
removeBackpack _unit;_unit addBackpack "B_Bergen_mcamo_F";
if (_primary_weapon_magazines select 0 != '') then {_unit addMagazine (_primary_weapon_magazines select 0)};
if (_primary_weapon_magazines select 1 != '') then {_unit addMagazine (_primary_weapon_magazines select 1)};
if (_secondary_weapon_magazine != '') then { _unit addMagazine _secondary_weapon_magazine};
if (_handgun_weapon_magazine != '') then {_unit addMagazine _handgun_weapon_magazine};
{_unit addWeapon _x} forEach _weapons;

removeBackpack _unit; if (_backpack != "") then {_unit addBackpack _backpack;}; //new
removeHeadgear _unit; if (_headgear != "") then {_unit addHeadgear _headgear}; //new
removeGoggles _unit; if (_goggles != "") then {_unit addgoggles _goggles; _unit linkitem _goggles;}; //new
_unit unassignItem hmd _unit;_unit removeItem hmd _unit; if (_hmd != "") then {_unit addItem _hmd;_unit assignItem _hmd;}; //new
_unit removeWeapon binocular _unit; if (_binocular != "") then {_unit addWeapon _binocular;}; //new

removeAllPrimaryWeaponItems _unit;{_unit addPrimaryWeaponItem _x} forEach _primary_weapon_items;
{if (_x != "") then {_unit addSecondaryWeaponItem _x}} forEach _secondary_weapon_items;
removeAllHandgunItems _unit;{_unit addHandgunItem _x} forEach _handgun_weapon_items;

{if (_x != "") then {_unit addItem _x; _unit assignItem _x; _unit linkItem _x}} forEach _items;
{if (_x != "") then {_unit addItemToUniform _x}} forEach _itemsInUniform;
{if (_x != "") then {_unit addItemToVest _x}} forEach _itemsInVest;
{if (_x != "") then {_unit addItemToBackpack _x}} forEach _itemsInBackpack;

_unit selectWeapon _use;
_unit enableSimulation true;