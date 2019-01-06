Private ["_buildings","_charge","_funds","_loadDefault","_listbp","_mode","_price","_skip","_spawn","_spawnInside","_temp","_unit","_weaps"];

_unit = _this select 0;
_spawn = _this select 1;
_loadDefault = true;

//--- Respawn.
_spawnInside = false;
_spawnInFarp = false;

if ((typeOf _spawn) in (Format ["WFBE_%1AMBULANCES",sideJoinedText] Call GetNamespace) && alive _spawn) then {
	if (_spawn emptyPositions "cargo" > 0 && (locked _spawn == 0)) then {_unit moveInCargo _spawn; _spawnInside = true};
};
if ((typeOf _spawn) == (Format ["WFBE_%1FARP",sideJoinedText] Call GetNamespace) && alive _spawn) then {
	_unit setPos ([getPos _spawn,1,1] Call GetRandomPosition);
	_spawnInFarp = true;
};

if (!(_spawnInside) && !(_spawnInFarp)) then {_unit setPos ([getPos _spawn,27,30] Call GetRandomPosition)};

//--- Player names for CREWLIST:
player setVariable ["playernames",Local_PlayerName,true];
Local_PlayerVehicle=player;
//--- Loadout.
if (!isNil "respawnWeapons" && !WFBE_RespawnDefaultGear) then {
	_mode = 'WFBE_RESPAWNPENALTY' Call GetNamespace;
	
	if (_mode in [0,2,3,4,5]) then {
		//--- Calculate the price/funds.
		_skip = false;
		if (_mode != 0) then {
			_price = 0;
			
			//--- Get the mode pricing.
			switch (_mode) do {
				case 2: {_price = respawnGearCost};
				case 3: {_price = round(respawnGearCost/2)};
				case 4: {_price = round(respawnGearCost/4)};
				case 5: {_price = respawnGearCost};
			};
			//--- Are we charging only on mobile respawn?
			_charge = true;
			if (_mode == 5) then {
				_buildings = (sideJoinedText) Call GetSideStructures;
				if (_spawn in _buildings || _spawn == ((sideJoinedText) Call GetSideHQ)) then {_charge = false};
			};
			
			//--- Charge if possible.
			_funds = Call GetPlayerFunds;
			if (_funds >= _price && _charge) then {
				-(_price) Call ChangePlayerFunds;
				(Format[localize 'STR_WF_CHAT_Gear_RespawnCharge',_price]) Call GroupChatMessage;
			};
			
			//--- Check that the player has enough funds.
			if (_funds < _price) then {_skip = true};
		};
		
		//--- Use the respawn loadout.
		if !(_skip) then {
			_temp = +(respawnWeapons);
			_listbp = 'WFBE_BACKPACKS' Call GetNamespace; //?
			{if (_x in _listbp) then {_temp = _temp - [_x]}} forEach respawnWeapons;
			_weaps = _temp;
//			[_unit,_weaps,respawnAmmo] Call EquipLoadout;
//			if !(WF_A2_Vanilla) then {Call RespawningBag};
			[_unit,_weaps,respawnUniform,respawnVest,respawnBackpack,respawnHeadgear,respawnGoggles,respawnHmd,respawnBinocular,
			respawnPrimaryAcc,respawnSecondaryAcc,respawnSidearmAcc,
			respawnAmmo,respawnSecondaryMagazine,respawnSidearmMagazine,
			respawnUniformListCargo,respawnVestListCargo,respawnBackpackListCargo,
			respawnItems
			] execVM "Common\Functions\Common_EquipLoadout.sqf";
			_loadDefault = false;
		};
	};
};

//--- Load the default loadout.
if (_loadDefault) then {
	[_unit,
	Format ["WFBE_%1DEFAULTWEAPONS",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULTUNIFORM",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULTVEST",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULTBACKPACK",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULTHEADGEAR",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULTGOOGLES",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULTHMD",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULTBINOCULAR",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_PRIMARYWEAPONITEMS",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_SECONDARYWEAPONITEMS",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_HANDGUNWEAPONITEMS",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_PRIMARYWEAPONMAGAZINES",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_SECONDARYWEAPONMAGAZINE",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_HANDGUNWEAPONMAGAZINE",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_ITEMSINUNIFORM",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_ITEMSINVEST",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_ITEMSINBACKPACK",sideJoinedText] Call GetNamespace,
	Format ["WFBE_%1DEFAULT_ITEMS",sideJoinedText] Call GetNamespace] Call EquipLoadout;
};

//--- Murcielago - TNT Respawn Delay (Min:30s/Max:100s)
//If ('WFBE_RESPAWN_30TNT' Call GetNamespace) Then
	//{
	Null = [] ExecVM "Client\Respawn_30TNT.sqf";
	//};
//if (gearsaver) then {[] execVM "Client\gearsaver\weaponrespawn.sqf";};
player enableStamina false;
player forceWalk false;
enableRadio true;
WestSlot1 setSpeaker "Male01ENG";
WestSlot2 setSpeaker "Male02ENG";
WestSlot3 setSpeaker "Male03ENG";
WestSlot4 setSpeaker "Male04ENG";
WestSlot5 setSpeaker "Male05ENG";
WestSlot6 setSpeaker "Male06ENG";
WestSlot7 setSpeaker "Male07ENG";
WestSlot8 setSpeaker "Male08ENG";
WestSlot9 setSpeaker "Male09ENG";
WestSlot10 setSpeaker "Male10ENG";
WestSlot11 setSpeaker "Male11ENG";
WestSlot12 setSpeaker "Male12ENG";
WestSlot13 setSpeaker "Male01ENG";
WestSlot14 setSpeaker "Male02ENG";
WestSlot15 setSpeaker "Male03ENG";
WestSlot16 setSpeaker "Male04ENG";
EastSlot1 setSpeaker "RHS_MALE01RUS";
EastSlot2 setSpeaker "RHS_MALE02RUS";
EastSlot3 setSpeaker "RHS_MALE03RUS";
EastSlot4 setSpeaker "RHS_MALE04RUS";
EastSlot5 setSpeaker "RHS_MALE05RUS";
EastSlot6 setSpeaker "RHS_MALE01RUS";
EastSlot7 setSpeaker "RHS_MALE02RUS";
EastSlot8 setSpeaker "RHS_MALE03RUS";
EastSlot9 setSpeaker "RHS_MALE04RUS";
EastSlot10 setSpeaker "RHS_MALE05RUS";
EastSlot11 setSpeaker "RHS_MALE01RUS";
EastSlot12 setSpeaker "RHS_MALE02RUS";
EastSlot13 setSpeaker "RHS_MALE03RUS";
EastSlot14 setSpeaker "RHS_MALE04RUS";
EastSlot15 setSpeaker "RHS_MALE05RUS";
EastSlot16 setSpeaker "RHS_MALE01RUS";