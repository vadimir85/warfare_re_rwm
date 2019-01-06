private ["_indexMagazines","_currentGear","_getItemDataByConfigType", "_data", "_item", "_W","_get", "_inventoryToGear", "_ret", "_unit", "_backwep", "_current", "_ruckmags", "_ruckweapons","_gear","_renderGear", "_pic", "_itemIndex", "_specialIndex", "_mainMagIndex", "_sideMagIndex", "_ifakCount", "_isIFAK", "_wob", "_weaponUIState", "_magazineUIState", "_magazineSpace", "_forEachIndex","_tempACE","_type"];

//ctrlEnable [3400,false];

_indexMagazines = 0;
_currentUpgrades = (sideJoinedText) Call GetSideUpgrades;
_currentRow1 = 0;
/* Important, use +array if you plan to use Setters */
_primary = +(WF_Logic getVariable 'primaryClasses');
_secondary = +(WF_Logic getVariable 'secondaryClasses');// + (WF_Logic getVariable 'backcontentClasses');
_sidearm = +(WF_Logic getVariable 'sidearmClasses');
_accessories = +(WF_Logic getVariable 'accessoriesClasses');
_uniform = +(WF_Logic getVariable 'uniformClasses');
_vest = +(WF_Logic getVariable 'vestClasses');
_backpackA3 = +(WF_Logic getVariable 'backpackClasses');
_headgear = +(WF_Logic getVariable 'headgearClasses');
_goggles = +(WF_Logic getVariable 'goggleClasses');
_hmd = +(WF_Logic getVariable 'hmdClasses');
_binocular = +(WF_Logic getVariable 'binocularClasses');
_cargo_put = +(WF_Logic getVariable 'cargo_putClasses');
_cargo_throw = +(WF_Logic getVariable 'cargo_throwClasses');
_misc = +(WF_Logic getVariable 'miscClasses');
_magazine = +(WF_Logic getVariable 'magazineClasses');

_ItemsFilter = ['ItemCompass','ItemGPS','ItemMap','ItemRadio','ItemWatch','O_UavTerminal','B_UavTerminal'];

_template = +(WF_Logic getVariable 'templateClasses');
_templateCosts = +(WF_Logic getVariable 'templateCosts');
_templatePictures = +(WF_Logic getVariable 'templatePictures');
_templateNames = +(WF_Logic getVariable 'templateNames');	
_templateMags1 = +(WF_Logic getVariable 'templateMags1');
_templateMags2 = +(WF_Logic getVariable 'templateMags2');
_templateMags3 = +(WF_Logic getVariable 'templateMags3');
_templateItems = +(WF_Logic getVariable 'templateItems');
_templateSpecs = +(WF_Logic getVariable 'templateSpecs');
_templateUpgrades = +(WF_Logic getVariable 'templateUpgrades');
_templateAllowed = +(WF_Logic getVariable 'templateAllowed');
_templatePrimaryItems = +(WF_Logic getVariable 'templatePrimaryItems');
_templateSecondaryItems = +(WF_Logic getVariable 'templateSecondaryItems');
_templateSidearmItems = +(WF_Logic getVariable 'templateSidearmItems');

_currentUnit = player;

_indevidualItem = []; //?
_ignoreMiscItems = []; //?
/* Backpack management - Init */ //transportVehiclesMass
_backpackloadout = []; //?

_all = _primary + _secondary + _sidearm + _misc;

WF_Logic setVariable ['lbChange',false];
WF_Logic setVariable ['lbMainAction',''];
WF_Logic setVariable ['WF_GEAR_Swap',false];
//WF_Logic setVariable ['WF_Gear_Action',''];
WF_Logic setVariable ['currentContainerRow',''];
WF_Logic setVariable ['currentContainerRow1',''];
WF_Logic setVariable ['Slot',''];

primClicked = false;
SlotPrimaryMuzzleClicked = false;
SlotPrimaryUnderBarrelClicked = false;
SlotPrimaryFlashlightClicked = false;
SlotPrimaryOpticsClicked = false;
SlotPrimaryMagazineGLClicked = false;
SlotPrimaryMagazineClicked = false;
secoClicked = false;
SlotSecondaryMuzzleClicked = false;
SlotSecondaryUnderBarrelClicked = false;
SlotSecondaryFlashlightClicked = false;
SlotSecondaryOpticsClicked = false;
SlotSecondaryMagazineClicked = false;
sideClicked = false;
SlotSidearmMuzzleClicked = false;
SlotSidearmUnderBarrelClicked = false;
SlotSidearmFlashlightClicked = false;
SlotSidearmOpticsClicked = false;
SlotSidearmMagazineClicked = false;
UniformSlotClicked = false;
VestSlotClicked = false;
BackpackSlotClicked = false;
SlotHeadgearClicked = false;
SlotGogglesClicked = false;
SlotHMDClicked = false;
SlotBinocularsClicked = false;
SlotMapClicked = false;
SlotGPSClicked = false;
SlotCompassClicked = false;
SlotRadioClicked = false;
SlotWatchClicked = false;
deleteLoadout = false;
saveLoadout = false;
buyLoadout = false;
dropInVehicle = false;

_displayInv = false;
_GearUpgradeInfo = true;
_updateUnit = true;
_updateFiller = false;
//_updateinfo = false;
//_changedBP = false;
//_manageBackpack = false;
//_updateBackpack = false;

disableSerialization;
_lb = 3700;
_lbm = 3701;
_lbAccessoriesMuzzle = 3702;
_lbAccessoriesOptics = 3703;
_lbAccessoriesFlashlight = 3704;
_lbAccessoriesUnderBarrel = 3705;
_lbMagazineGL = 3706;
_primaryIDC = 3500;
_secondaryIDC = 3501;
_sidearmIDC = 3502;
_headgearIDC = 6240;
_gogglesIDC = 6216;
_hmdIDC = 6217;
_binocularIDC = 6238;

_uniformIDC = 6331;
_vestIDC = 6381;
_backpackA3IDC = 6191;

_PrimaryMuzzleIDC = 620;
_PrimaryUnderBarrelIDC = 641;
_PrimaryFlashlightIDC = 622;
_PrimaryOpticsIDC = 621;
_PrimaryMagazineGLIDC = 644;
_PrimaryMagazineIDC = 623;

_SecondaryMuzzleIDC = 624;
_SecondaryUnderBarrelIDC = 642;
_SecondaryFlashlightIDC = 626;
_SecondaryOpticsIDC = 625;
_SecondaryMagazineIDC = 627;

_sidearmMuzzleIDC = 628;
_sidearmUnderBarrelIDC = 643;
_sidearmFlashlightIDC = 630;
_sidearmOpticsIDC = 629;
_sidearmMagazineIDC = 631;

_ItemMapIDC = 6211;
_ItemGPSIDC = 6215;
_O_UavTerminalIDC = 6215;
_B_UavTerminalIDC = 6215;
_ItemCompassIDC = 6212;
_ItemRadioIDC = 6214;
_ItemWatchIDC = 6213;
_MineDetectorIDC = -1;
_MediKitIDC = -1;
_ToolKitIDC = -1;

_specialIDC = _binocularIDC;
_display = _this select 0;

_picPrimary = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_primary_gs.paa';
_picSecondary = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_secondary_gs.paa';
_picSidearm = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_hgun_gs.paa';
_picUniform = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_uniform_gs.paa';
_picVest = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_vest_gs.paa';
_picBackpackA3 = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_backpack_gs.paa';
_picHeadgear = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_helmet_gs.paa';
_picGoggles = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_glasses_gs.paa';
_picHMD = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_nvg_gs.paa';
_picBinocular = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_binocular_gs.paa';
_picMuzzle = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa';
_picFlashlight = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_side_gs.paa';
_picOptics = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_top_gs.paa';
_picUnderBarrel = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa';
_picMagazineGL = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_magazineGL_gs.paa';
_picMagazine = 'a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_magazine_gs.paa';
_picItemMap = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_map_gs.paa";
_picItemGPS = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_gps_gs.paa";
_picItemCompass = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_compass_gs.paa";
_picItemRadio = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_radio_gs.paa";
_picItemWatch = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_watch_gs.paa";

_totalWeapons = count _primary + count _secondary + count _sidearm;

_fillerIDC = [3400,3402,3403,3404,3405,3413,3407,3408,3409,3410,3411,3412,3406,3414];
_fillerTypes = ['template','primary','secondary','sidearm','uniform','vest','backpackA3','headgear','goggles','hmd','binocular','cargo_throw','cargo_put','misc'];
_inventorySlots = [];
_lastFiller = 'nil';
_id = _fillerTypes find 'primary';
_list = [];
_listPictures = [];
_listMagazines = [];
_miscItemSlots = []; //?
_sidearmInventorySlots = [];
(_display DisplayCtrl (_fillerIDC select _id)) ctrlSetTextColor [1,1,1,1];
{(_display DisplayCtrl _x) ctrlSetTextColor [1,1,1,0.1]} forEach [6332,6382,6192,6193,6194,6195];
ctrlShow [633,false];
ctrlShow [638,false];
ctrlShow [619,false];
if (uniform _currentUnit != '') then {(_display DisplayCtrl 6332) ctrlSetTextColor [0.2588,0.7137,1,1];ctrlShow [633,true];WF_Logic setVariable ['Slot','Uniform'];};

_slotIDC = 633;
_loadIDC = 6304;
_currentSlot = '';
_currentContainerListCargo = [];
_currentContainerCount = [];
_currentContainerCost = 0;
_currentUniformListCargo = [];
_currentVestListCargo = [];
_currentBackpackA3ListCargo = [];
_currentUniformListCargoCount = [];
_currentVestListCargoCount = [];
_currentBackpackA3ListCargoCount = [];
_currentUniformListCargoCost = 0;
_currentVestListCargoCost = 0;
_currentBackpackA3ListCargoCost = 0;
_currentUniformLoad = 0;
_currentVestLoad = 0;
_currentBackpackA3Load = 0;
_currentVehicleListCargo = [];
_currentVehicleListCargoCount = [];
_currentVehicleListCargoCost = 0;
_selectedMagazine = '';
_ItemForVehicle = '';
_vehicleLoad = 0;

_currentItem = '';
_currentMags = [];
_currentData = '';
_currentValue = '';
_currentCost = 0;
_cost = 0;

_get = '';
_currentPrimary = '';
_currentSecondary = '';
_currentSidearm = '';
_currentUniform = '';
_currentVest = '';
_currentBackpackA3 = '';
_currentHeadgear = '';
_currentGoggles = '';
_currentHmd = '';
_currentBinocular = '';
_currentPrimaryMuzzle = '';
_currentPrimaryUnderBarrel = '';
_currentPrimaryFlashlight = '';
_currentPrimaryOptics = '';
_currentPrimaryMagazine = '';
_currentPrimaryMagazineGL = '';
_currentSidearmMuzzle = '';
_currentSidearmUnderBarrel = '';
_currentSidearmFlashlight = '';
_currentSidearmOptics = '';
_currentSidearmMagazine = '';
_currentSecondaryMuzzle = '';
_currentSecondaryUnderBarrel = '';
_currentSecondaryFlashlight = '';
_currentSecondaryOptics = '';
_currentSecondaryMagazine = '';
_currentItemMap = '';
_currentItemGPS = '';
_currentItemRadio = '';
_currentItemCompass = '';
_currentItemWatch = '';
_currentB_UavTerminal = '';
_currentO_UavTerminal = '';
_currentPrimaryCost = 0;
_currentSecondaryCost = 0;
_currentSidearmCost = 0;
_currentHeadgearCost = 0;
_currentGogglesCost = 0;
_currentHmdCost = 0;
_currentBinocularCost = 0;
_currentUniformCost = 0;
_currentVestCost = 0;
_currentBackpackA3Cost = 0;
_currentPrimaryMuzzleCost = 0;
_currentPrimaryUnderBarrelCost = 0;
_currentPrimaryFlashlightCost = 0;
_currentPrimaryOpticsCost = 0;
_currentPrimaryMagazineCost = 0;
_currentPrimaryMagazineGLCost = 0;
_currentSidearmMuzzleCost = 0;
_currentSidearmUnderBarrelCost = 0;
_currentSidearmFlashlightCost = 0;
_currentSidearmOpticsCost = 0;
_currentSidearmMagazineCost = 0;
_currentSecondaryMuzzleCost = 0;
_currentSecondaryUnderBarrelCost = 0;
_currentSecondaryFlashlightCost = 0;
_currentSecondaryOpticsCost = 0;
_currentSecondaryMagazineCost = 0;
_currentItemMapCost = 0;
_currentItemGPSCost = 0;
_currentItemRadioCost = 0;
_currentItemCompassCost = 0;
_currentItemWatchCost = 0;
_currentB_UavTerminalCost = 0;
_currentO_UavTerminalCost = 0;

_LauncherMagazine = false;

_old = '';
//_currentGear = [ [], [], "", [], [], "", "", "" ]; //?
_currentWeapons = [];
_currentItems = [];
_currentMagazines = [];
_slistMagazines = [];

//display
_disp = (findDisplay 16000) displayAddEventHandler ['KeyDown','_this Call WF_Gear_Hotkeys'];
_buygearfrom = missionNamespace getVariable "WFBE_TOWNGEAR";

//--- Fill the available units list.
_unitList = [];
_buildings = (sideJoinedText) Call GetSideStructures;
_i = 0;
{
	_check = ['BARRACKSTYPE',_buildings,'WFBE_PURCHASEGEARRANGE' Call GetNamespace,sideJoined,_x] Call BuildingInRange;
	_inRange = if (isNull _check) then {false} else {true};
	
	if (!_inRange && _buygearfrom in [1,2,3]) then {
		_lookfor = switch (_buygearfrom) do { case 1:{WFCAMP}; case 2:{WFDepot}; case 3:{WFCAMP + WFDepot}; default{[]}};
		_nObjects = nearestObjects [_x, _lookfor, 25];
		_nObject = if (count _nObjects > 0) then {_nObjects select 0} else {objNull};
		if !(isNull _nObject) then {
			_sideID = _nObject getVariable "sideID";
			if !(isNil "_sideID") then {
				if (_sideID == sideID) then {_inRange = true};
			};
		};
	};

	if (_inRange) then {
		_txt = (_x) Call GetAIDigit;
		_unitList = _unitList + [_x];

		_type = [typeOf _x, 'displayName'] Call GetConfigInfo;
		lbAdd [3854,Format["[%1] %2 (%3)",_txt,name _x,_type]];
		
		if (_currentUnit == _x) then {lbSetCurSel[3854,_i]};
		_i = _i + 1;
	};
} forEach units(group player);

_veh = nearestObjects [_currentUnit, ["Car","Tank","Air","Ship"], 20] select 0;
if !(isNil '_veh') then {
_get = (typeOf _veh) Call GetNamespace;
//get vehicle load items/magazines/weapons mass
_currentVehicleListCargo = [];
_currentVehicleListCargoCount = [];
_vehicleItemsMass = 0;
{_currentVehicleListCargo append (_x select 0);_currentVehicleListCargoCount append (_x select 1)} forEach [getWeaponCargo _veh,getMagazineCargo _veh,getItemCargo _veh];
{
for "_i" from 1 to (_currentVehicleListCargoCount select _forEachIndex) do {
_vehicleItemsMass = _vehicleItemsMass + (getNumber(configfile >> "CfgWeapons" >> _x >> "WeaponSlotsInfo" >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")) + (getNumber(configfile >> "CfgMagazines" >> _x >> "mass"));
};
} forEach _currentVehicleListCargo;

_vehicleLoad = _vehicleItemsMass/(getNumber (configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad"));
_display DisplayCtrl 6196 progressSetPosition _vehicleLoad;
Call Compile Format ['_display displayCtrl 6197 ctrlSetTooltip "%1"', _get select QUERYGEARLABEL];
};

while {alive player && dialog} do {
	if ((rating (player)) < 0) exitWith {closeDialog 0};
	if (!dialog) exitWith {};

	//--- Something changed since the last time?
	_filler = WF_Logic getVariable 'filler';
	_changed = WF_Logic getVariable 'lbChange';
	_mainAction = WF_Logic getVariable 'lbMainAction';
	_unitSwap = WF_Logic getVariable 'WF_GEAR_Swap';
//	_actionSE = WF_Logic getVariable 'WF_Gear_Action';

	//--- Filter Changed.
	if (_filler != _lastFiller || _updateFiller) then {
		_updateFiller = false;

		_list = Call Compile Format ['_%1',_filler];
		lnbClear _lb;

		if (_filler != 'template') then {
			{ctrlEnable [_x,false]} forEach [3902,3903,3904];
			{ctrlShow [_x,true]} forEach [5004,6193,6194,6195,6197,6196,39041,39042,39043];
			if !(isNil '_veh') then {
				ctrlEnable [3904,if (_vehicleLoad <= 1) then {true} else {false}];
				ctrlSetText [39041,((typeOf _veh) Call GetNamespace) select QUERYUNITPICTURE];
				ctrlSetText [39043,'\rwm_core_uiImages\gui\gear_menu_yes_ca.paa'];
				ctrlShow [6196,true];
			} else {
				ctrlSetText [39041,'\rwm_core_ui\Images\gui\zebra_co.paa'];
				ctrlSetText [39042,'\rwm_core_ui\Images\gui\zebra_co.paa'];
				ctrlSetText [39043,'\rwm_core_ui\Images\gui\gear_menu_no_ca.paa'];
				ctrlShow [6196,false];
			};
			_currentItem1 = '';
			if (_filler == "primary") then {if(_currentPrimary == '') then {_currentPrimary = primaryWeapon _currentUnit}; _currentItem1 = _currentPrimary;};
			if (_filler == "secondary") then {if(_currentSecondary == '') then {_currentSecondary = secondaryWeapon _currentUnit};_currentItem1 = _currentSecondary};
			if (_filler == "sidearm") then {if(_currentSidearm == '') then {_currentSidearm = primaryWeapon _currentUnit};_currentItem1 = _currentSidearm};
			if (_filler == "uniform") then {_currentItem1 = _currentUniform;WF_Logic setVariable ['lbMainAction','SlotActivate'];WF_Logic setVariable ['Slot','Uniform'];};
			if (_filler == "vest") then {_currentItem1 = _currentVest;WF_Logic setVariable ['lbMainAction','SlotActivate'];WF_Logic setVariable ['Slot','Vest'];};
			if (_filler == "backpackA3") then {_currentItem1 = _currentBackpackA3;WF_Logic setVariable ['lbMainAction','SlotActivate'];WF_Logic setVariable ['Slot','BackpackA3'];};
			if (_filler == "headgear") then {_currentItem1 = _currentHeadgear};
			if (_filler == "goggles") then {_currentItem1 = _currentGoggles};
			if (_filler == "hmd") then {_currentItem1 = _currentHmd};
			if (_filler == "binocular") then {_currentItem1 = _currentBinocular};
			if (_filler != 'misc') then {[_list,_filler,_lb,_currentItem1] Call UIGearFillList;
			}else{_list = _list - _ignoreMiscItems;[_list,_filler,_lb,_currentItem1] Call UIGearFillList;};
		} else {
			ctrlEnable [3904,false];
			{ctrlEnable [_x,true]} forEach [3902,3903];
			{ctrlShow [_x,false]} forEach [5004,6193,6194,6195,6196,6197,39041,39042,39043];
			_ItemForVehicle = '';
			[_templateCosts,_templateNames,_templatePictures,_templateUpgrades,_templateAllowed,_filler,_lb] Call UIGearFillTemplateList;
			WF_Logic setVariable ['lbMainAction','SlotActivate'];
			WF_Logic setVariable ['Slot','Uniform'];
		};
		_id = _fillerTypes find _filler;
		{(_display displayCtrl _x) ctrlSetTextColor [0.7490, 0.7490, 0.7490, 0.7]} forEach _fillerIDC;
		(_display displayCtrl (_fillerIDC select _id)) ctrlSetTextColor [1, 1, 1, 1];
		//--- Update the list since the filler changed.
		_changed = true;
	};

	//--- List Selection Changed.
	if (_changed) then {
			WF_Logic setVariable ['lbChange',false];
			_currentRow1 = lnbCurSelRow _lb;
			_currentData = lnbData[_lb,[_currentRow1,0]];
			_currentValue = lnbValue[_lb,[_currentRow1,0]];
			_currentItem = _list select _currentValue;
			lnbClear _lbm;
			lnbClear _lbAccessoriesMuzzle;
			lnbClear _lbAccessoriesOptics;
			lnbClear _lbAccessoriesFlashlight;
			lnbClear _lbAccessoriesUnderBarrel;
			lnbClear _lbMagazineGL;

			_get = [];			
			/* Get */
		if (_filler != 'template') then {
			if (_filler == 'secondary') then {
				_get = (_currentItem+'_W') Call GetNamespace;
				if (isNil '_get') then {_get = _currentItem Call GetNamespace};
			} else {
				_get = _currentItem Call GetNamespace;
			};
				if !(isNil '_get') then {
					_currentMags = _get select QUERYGEARMAGAZINES;
					_currentAccessoriesMuzzle = _get select 11;
					_currentAccessoriesOptics = _get select 12;
					_currentAccessoriesFlashlight = _get select 13;
					_currentAccessoriesUnderBarrel = _get select 14;
					_currentAccessoriesMagazineGL = _get select 15;

					if (typeName _currentMags != 'SCALAR') then {
						if (count _currentMags > 0) then {
							if !(_currentItem in _indevidualItem) then {
							[_currentMags,'magazine',_lbm,_currentItem] Call UIGearFillList;
							if (_filler != 'binocular') then {
								lnbAddRow [_lbAccessoriesMuzzle, ["<no muzzle>"]];[_currentAccessoriesMuzzle,'Muzzle',_lbAccessoriesMuzzle] Call UIGearFillList2;
								lnbAddRow [_lbAccessoriesOptics, ["<no optics>"]];[_currentAccessoriesOptics,'Optics',_lbAccessoriesOptics] Call UIGearFillList2;
								lnbAddRow [_lbAccessoriesFlashlight, ["<no flashlight>"]];[_currentAccessoriesFlashlight,'Flashlight',_lbAccessoriesFlashlight] Call UIGearFillList2;
								lnbAddRow [_lbAccessoriesUnderBarrel, ["<no under barrel>"]];[_currentAccessoriesUnderBarrel,'UnderBarrel',_lbAccessoriesUnderBarrel] Call UIGearFillList2;
								[_currentAccessoriesMagazineGL,'MagazineGL',_lbMagazineGL,_currentItem] Call UIGearFillList;
								{if (_x == _currentUnit weaponAccessories _currentItem select 0) then {lbSetCurSel [_lbAccessoriesMuzzle, _forEachIndex+1]}} forEach _currentAccessoriesMuzzle;
								{if (_x == _currentUnit weaponAccessories _currentItem select 1) then {lbSetCurSel [_lbAccessoriesFlashlight, _forEachIndex+1]}} forEach _currentAccessoriesFlashlight;
								{if (_x == _currentUnit weaponAccessories _currentItem select 2) then {lbSetCurSel [_lbAccessoriesOptics, _forEachIndex+1]}} forEach _currentAccessoriesOptics;
								{if (_x == _currentUnit weaponAccessories _currentItem select 3) then {lbSetCurSel [_lbAccessoriesUnderBarrel, _forEachIndex+1]}} forEach _currentAccessoriesUnderBarrel;
								{if (_x == _currentUnit weaponAccessories _currentItem select 4) then {lbSetCurSel [_lbMagazineGL, _forEachIndex]}} forEach _currentAccessoriesMagazineGL;
							};
								{if (_x == primaryWeaponMagazine _currentUnit select 0) then {lbSetCurSel [_lbm, _forEachIndex]}} forEach _currentMags;
							} else {
							_currentMags = [];
							if (count _currentMags > 0) then {[_currentMags,'magazine',_lbm,_currentItem] Call UIGearFillList;};
							};};
					if (count (_get select 8) > 0) then {_changedMAG = true};
					};
					ctrlSetText [39042,_get select QUERYUNITPICTURE];
					_ItemForVehicle = _currentItem;
				};
			};
			WF_Logic setVariable ['lbChange',false];
		};

	//--- Player have clicked on one of the listbox.
	if (_mainAction != '') then {
		switch (_mainAction) do {
			case 'addMainItem': {
				_skip = true;
				_sskip = false;
				_get = [];
				
				if (_filler != 'template') then {
					_get = (_currentItem+"_W") Call GetNamespace;
					if (isNil '_get') then {
						_get = _currentItem Call GetNamespace;
					};
				};
				_tfil = _filler;
				if (_tfil == 'primary' || _tfil == 'secondary' || _tfil == 'sidearm') then {
					//if (_currentItem in _misc || _currentItem in _explosiv) then {_skip = false;_currentValue = _currentValue - _totalWeapons};
					if (_skip) then {
						_slist = Call Compile Format ['_%1',_currentData];
						_index = _slist find _currentItem;
						if (_index != -1) then {
						//	if (_filler == 'all') then {
						//		if (_currentItem in _primary) then {_currentData = 'primary'} else {
						//			if (_currentItem in _secondary) then {_currentData = 'secondary'} else {
						//				if (_currentItem in _sidearm) then {_currentData = 'sidearm'};
						//			};
						//		};
						//	};
							/* Handle the extended inventory system if disabled */
							_isSecoAllowTwo = true;
							_isPrimAllowTwo = true;
							if (paramExtendedInventory && (_tfil == 'primary' || _tfil == 'secondary')) then { //?
								_getpp = [];
								_getss = [];
								
								_query = if (_currentData == 'primary') then {_currentItem} else {_currentPrimary};
								if (_query != '') then {
									_getpp = (_query+"_W") Call GetNamespace;
									if (isNil '_getpp') then {
										_getpp = _query Call GetNamespace;
									};
								};
								if (_query != '') then {_isPrimAllowTwo = _getpp select QUERYGEARALLOWTWO};

								_query = if (_currentData == 'secondary') then {_currentItem} else {_currentSecondary};
								if (_query != '') then {
									_getss = (_query+"_W") Call GetNamespace;
									if (isNil '_getss') then {
										_getss = _query Call GetNamespace;
									};
								};
								if (_query != '') then {_isSecoAllowTwo = _getss select QUERYGEARALLOWTWO};

								if (!_isSecoAllowTwo && !_isPrimAllowTwo) then {
									_sskip = true;
									hint parseText (localize 'STR_WF_INFO_Gear_AllowTwo');
								};
							};
							if !(_sskip) then {
								Call Compile Format ['_old = _current%1;_currentWeapons = _currentWeapons - [_current%1]; _current%1Cost = %2; _current%1 = "%3";ctrlSetText[_%1IDC,"%4"]; findDisplay 16000 displayCtrl _%1IDC ctrlSetTooltip "%5 [%3]"',_currentData,_get select QUERYGEARCOST,_currentItem,_get select QUERYGEARPICTURE, _get select QUERYGEARLABEL];
							};
						};
						if (!_sskip) then {
							_currentWeapons = _currentWeapons + [_currentItem];
							_displayInv = true;
						};
						//replace all magazines [in uniform, vest and backpack] if primary weapon was changed
						if (_tfil == 'primary') then {
							_currentMags = _get select QUERYGEARMAGAZINES;
							_currentUniformListCargoNEW = _currentUniformListCargo;
							_currentVestListCargoNEW = _currentVestListCargo;
							_currentBackpackA3ListCargoNEW = _currentBackpackA3ListCargo;
							{if (!(_x in _currentMags) AND (_x Call GetNamespace select 3 == "magazine") AND !("1Rnd_HE_Grenade_shell" in ([(configFile >> "CfgMagazines" >> _x),true] call BIS_fnc_returnParents))) then {_currentUniformListCargoNEW set [_forEachIndex,_currentMags select 0]}} forEach _currentUniformListCargo;
							{if (!(_x in _currentMags) AND (_x Call GetNamespace select 3 == "magazine") AND !("1Rnd_HE_Grenade_shell" in ([(configFile >> "CfgMagazines" >> _x),true] call BIS_fnc_returnParents))) then {_currentVestListCargoNEW set [_forEachIndex,_currentMags select 0]}} forEach _currentVestListCargo;
							{if (!(_x in _currentMags) AND (_x Call GetNamespace select 3 == "magazine") AND !("CA_LauncherMagazine" in ([(configFile >> "CfgMagazines" >> _x),true] call BIS_fnc_returnParents)) AND !("1Rnd_HE_Grenade_shell" in ([(configFile >> "CfgMagazines" >> _x),true] call BIS_fnc_returnParents))) then {_currentBackpackA3ListCargoNEW set [_forEachIndex,_currentMags select 0]}} forEach _currentBackpackA3ListCargo;
							{lnbClear _x} forEach [633,638,619];
							[_currentUniformListCargoNEW,_currentUniformListCargoCount,633,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
							[_currentVestListCargoNEW,_currentVestListCargoCount,638,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
							[_currentBackpackA3ListCargoNEW,_currentBackpackA3ListCargoCount,619,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
							[_display,_currentUniform,_currentUniformListCargoNEW,_currentUniformListCargoCount,6304] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
							[_display,_currentVest,_currentVestListCargoNEW,_currentVestListCargoCount,6305] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
							[_display,_currentBackpackA3,_currentBackpackA3ListCargoNEW,_currentBackpackA3ListCargoCount,6306] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
						};
					};
				};

				if (_tfil == 'uniform' || _tfil == 'vest' || _tfil == 'backpackA3' || _tfil == 'headgear' || _tfil == 'goggles' || _tfil == 'hmd' || _tfil == 'binocular') then {
					Call Compile Format ['_current%1 = _currentItem',_tfil];
					Call Compile Format ['ctrlSetText[_%1IDC,"%2"]',_tfil, _get select QUERYGEARPICTURE];
					Call Compile Format ['findDisplay 16000 displayCtrl _%1IDC ctrlSetTooltip "%2"',_tfil, _get select QUERYGEARLABEL];
					Call Compile Format ['_current%1Cost = %2',_tfil,_get select QUERYGEARCOST];

					if (_tfil == 'uniform') then {
						ctrlSetText[5001,""];ctrlSetText[5001,format["%1",getContainerMaxLoad _currentUniform]];
						[_display,_currentUniform,_currentUniformListCargo,_currentUniformListCargoCount,6304] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
					};
					if (_tfil == 'vest') then {
						ctrlSetText[5002,""];ctrlSetText[5002,format["%1",getContainerMaxLoad _currentVest]];
						[_display,_currentVest,_currentVestListCargo,_currentVestListCargoCount,6305] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
					};
					if (_tfil == 'backpackA3') then {
						ctrlSetText[5003,""];ctrlSetText[5003,format["%1",getContainerMaxLoad _currentBackpackA3]];
						[_display,_currentBackpackA3,_currentBackpackA3ListCargo,_currentBackpackA3ListCargoCount,6306] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
					};
				_displayInv = true;
				};
				if (_tfil == 'cargo_put' || _tfil == 'cargo_throw' || _tfil == 'misc') then {

					if (_tfil == 'misc' AND (_currentItem in _ItemsFilter)) then {
						Call Compile Format ['_current%1 = _currentItem',_misc select (lbCurSel 3700)];
						Call Compile Format ['ctrlSetText[_%1IDC,"%2"]',_misc select (lbCurSel 3700), _get select QUERYGEARPICTURE];
						Call Compile Format ['findDisplay 16000 displayCtrl _%1IDC ctrlSetTooltip "%2"',_misc select (lbCurSel 3700), _get select QUERYGEARLABEL];
						Call Compile Format ['_current%1Cost = %2',_misc select (lbCurSel 3700),_get select QUERYGEARCOST];
							if ((_currentItem == 'B_UavTerminal') OR (_currentItem == 'O_UavTerminal')) then {_currentItemGPS = '';_currentItemGPSCost = 0};
							if (_currentItem == 'ItemGPS') then {_currentB_UavTerminal = '';_currentO_UavTerminal = '';_currentB_UavTerminalCost = 0};
							_displayInv = true;
					} else {
							_slot = WF_Logic getVariable 'Slot';
							if (_slot == "Uniform") then {_slotIDC = 633; _loadIDC = 6304;_currentSlot = _currentUniform;_currentContainerListCargo = _currentUniformListCargo;_currentContainerCount = _currentUniformListCargoCount;_currentContainerCost = _currentUniformListCargoCost};
							if (_slot == "Vest") then {_slotIDC = 638; _loadIDC = 6305;_currentSlot = _currentVest;_currentContainerListCargo = _currentVestListCargo;_currentContainerCount = _currentVestListCargoCount;_currentContainerCost = _currentVestListCargoCost};
							if (_slot == "BackpackA3") then {_slotIDC = 619;_loadIDC = 6306;_currentSlot = _currentBackpackA3;_currentContainerListCargo = _currentBackpackA3ListCargo;_currentContainerCount = _currentBackpackA3ListCargoCount;_currentContainerCost = _currentBackpackA3ListCargoCost};

							//get item mass with 0 value
							if ((_get select 16) == 0) then {
								_get set [16,getNumber(configfile >> "CfgWeapons" >> _currentItem >> "ItemInfo" >> "mass")];
							};
						if ((_currentSlot != '') AND ((progressPosition (_display DisplayCtrl _loadIDC) + ((_get select 16)/getContainerMaxLoad _currentSlot)) <= 1)) then {
							if (_currentItem in _currentContainerListCargo) then {
								{
									if (_x == _currentItem) then {_currentContainerCount set [_forEachIndex,(_currentContainerCount select _forEachIndex)+1];};
								} forEach _currentContainerListCargo;
							} else {
								_currentContainerListCargo = _currentContainerListCargo + [_currentItem];
								_currentContainerCount = _currentContainerCount + [1];
							};
							_currentContainerCost = _currentContainerCost + (_get select QUERYGEARCOST);
							lnbClear _slotIDC;
							[_currentContainerListCargo,_currentContainerCount,_slotIDC,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
				
							_maxLoad = getContainerMaxLoad _currentSlot;
							_loadAddMagazine = 0;
							{
								for "_i" from 1 to (_currentContainerCount select _forEachIndex) do {_loadAddMagazine = _loadAddMagazine + (_x Call GetNamespace select 16);};
							} forEach _currentContainerListCargo;

							if (_slot == "Uniform") then {
								_loadUniform = _loadAddMagazine/_maxLoad;
								_display DisplayCtrl 6304 progressSetPosition _loadUniform;
								_currentUniformListCargo = _currentContainerListCargo;
								_currentUniformListCargoCount = _currentContainerCount;
							};
							if (_slot == "Vest") then {
								_loadVest = _loadAddMagazine/_maxLoad;
								_display DisplayCtrl 6305 progressSetPosition _loadVest;
								_currentVestListCargo = _currentContainerListCargo;
								_currentVestListCargoCount = _currentContainerCount;
							};
							if (_slot == "BackpackA3") then {
								_loadBackpackA3 = _loadAddMagazine/_maxLoad;
								_display DisplayCtrl 6306 progressSetPosition _loadBackpackA3;
								_currentBackpackA3ListCargo = _currentContainerListCargo;
								_currentBackpackA3ListCargoCount = _currentContainerCount;
							};
						};
						_displayInv = true;
					};
				};
				//кликаем по 'template'
				if (_tfil == 'template') then {
					_tempWeapons = _template select _currentValue;
					_tempItems = _templateItems select _currentValue;
					_tempMags1 = _templateMags1 select _currentValue;
					_tempMags2 = _templateMags2 select _currentValue;
					_tempMags3 = _templateMags3 select _currentValue;
					_tempSpecs = _templateSpecs select _currentValue;
					_tempPrimaryItems = _templatePrimaryItems select _currentValue;
					_tempSecondaryItems = _templateSecondaryItems select _currentValue;
					_tempSidearmItems = _templateSidearmItems select _currentValue;

					_currentPrimary = '';
					_currentSecondary = '';
					_currentSidearm = '';
					_currentPrimaryCost = 0;
					_currentSecondaryCost = 0;
					_currentSidearmCost = 0;
					_currentHeadgearCost = 0;
					_currentGogglesCost = 0;
					_currentHmdCost = 0;
					_currentBinocularCost = 0;
					_currentUniformCost = 0;
					_currentVestCost = 0;
					_currentBackpackA3Cost = 0;
					_currentPrimaryMuzzleCost = 0;
					_currentPrimaryUnderBarrelCost = 0;
					_currentPrimaryFlashlightCost = 0;
					_currentPrimaryOpticsCost = 0;
					_currentPrimaryMagazineCost = 0;
					_currentPrimaryMagazineGLCost = 0;
					_currentSidearmMuzzleCost = 0;
					_currentSidearmUnderBarrelCost = 0;
					_currentSidearmFlashlightCost = 0;
					_currentSidearmOpticsCost = 0;
					_currentSidearmMagazineCost = 0;
					_currentSecondaryMuzzleCost = 0;
					_currentSecondaryUnderBarrelCost = 0;
					_currentSecondaryFlashlightCost = 0;
					_currentSecondaryOpticsCost = 0;
					_currentSecondaryMagazineCost = 0;
					_currentItemMapCost = 0;
					_currentItemGPSCost = 0;
					_currentItemRadioCost = 0;
					_currentItemCompassCost = 0;
					_currentItemWatchCost = 0;
					_currentWeapons = [];
					_currentItems = [];
					_currentB_UavTerminalCost = 0;
					_currentO_UavTerminalCost = 0;
					_currentUniformListCargoCost = 0;
					_currentVestListCargoCost = 0;
					_currentBackpackA3ListCargoCost = 0;

					//вставляет цены и иконки оружия
					{
						_cwep = _x;
						_get = (_x+"_W") Call GetNamespace;
						if (isNil '_get') then {
							_get = _x Call GetNamespace;
						};
						
						if (({_x == _cwep} count _primary) > 0) then {_currentWeapons = _currentWeapons + [_x];_currentPrimary = _x;_currentPrimaryCost = _get select QUERYGEARCOST;ctrlSetText[_primaryIDC,_get select QUERYGEARPICTURE];findDisplay 16000 displayCtrl _primaryIDC ctrlSetTooltip (_get select QUERYGEARLABEL)} else {
							if (({_x == _cwep} count _secondary) > 0) then {_currentWeapons = _currentWeapons + [_x];_currentSecondary = _x;_currentSecondaryCost = _get select QUERYGEARCOST;ctrlSetText[_secondaryIDC,_get select QUERYGEARPICTURE];findDisplay 16000 displayCtrl _secondaryIDC ctrlSetTooltip (_get select QUERYGEARLABEL)} else {
								if (({_x == _cwep} count _sidearm) > 0) then {_currentWeapons = _currentWeapons + [_x];_currentSidearm = _x;_currentSidearmCost = _get select QUERYGEARCOST;ctrlSetText[_sidearmIDC,_get select QUERYGEARPICTURE];findDisplay 16000 displayCtrl _sidearmIDC ctrlSetTooltip (_get select QUERYGEARLABEL)};
							};
						};
					} forEach _tempWeapons;

					//сбрасываем все иконки 
					{lnbClear _x} forEach [633,638,619,618];
					if (_currentPrimary == '') then  {ctrlSetText [_primaryIDC,_picPrimary]};
					if (_currentSecondary == '') then  {ctrlSetText [_secondaryIDC,_picSecondary]};
					if (_currentSidearm == '') then  {ctrlSetText [_sidearmIDC,_picSidearm]};

					ctrlSetText [_PrimaryMuzzleIDC,_picMuzzle];findDisplay 16000 displayCtrl _PrimaryMuzzleIDC ctrlSetTooltip "";_currentPrimaryMuzzle = '';
					ctrlSetText [_PrimaryFlashlightIDC,_picFlashlight];findDisplay 16000 displayCtrl _PrimaryFlashlightIDC ctrlSetTooltip "";_currentPrimaryFlashlight = '';
					ctrlSetText [_PrimaryOpticsIDC,_picOptics];findDisplay 16000 displayCtrl _PrimaryOpticsIDC ctrlSetTooltip "";_currentPrimaryOptics = '';
					ctrlSetText [_PrimaryUnderBarrelIDC,_picUnderBarrel];findDisplay 16000 displayCtrl _PrimaryUnderBarrelIDC ctrlSetTooltip "";_currentPrimaryUnderBarrel = '';
					ctrlSetText [_PrimaryMagazineGLIDC,_picMagazineGL];findDisplay 16000 displayCtrl _PrimaryMagazineGLIDC ctrlSetTooltip "";_currentPrimaryMagazineGL = '';
					ctrlSetText [_PrimaryMagazineIDC,_picMagazine];findDisplay 16000 displayCtrl _PrimaryMagazineIDC ctrlSetTooltip "";_currentPrimaryMagazine = '';

					ctrlSetText [_SecondaryMuzzleIDC,_picMuzzle];findDisplay 16000 displayCtrl _SecondaryMuzzleIDC ctrlSetTooltip "";_currentSecondaryMuzzle = '';
					ctrlSetText [_SecondaryFlashlightIDC,_picFlashlight];findDisplay 16000 displayCtrl _SecondaryFlashlightIDC ctrlSetTooltip "";_currentSecondaryFlashlight = '';
					ctrlSetText [_SecondaryOpticsIDC,_picOptics];findDisplay 16000 displayCtrl _SecondaryOpticsIDC ctrlSetTooltip "";_currentSecondaryOptics = '';
					ctrlSetText [_SecondaryUnderBarrelIDC,_picUnderBarrel];findDisplay 16000 displayCtrl _SecondaryUnderBarrelIDC ctrlSetTooltip "";_currentSecondaryUnderBarrel = '';
					ctrlSetText [_SecondaryMagazineIDC,_picMagazine];findDisplay 16000 displayCtrl _SecondaryMagazineIDC ctrlSetTooltip "";_currentSecondaryMagazine = '';

					ctrlSetText [_SidearmMuzzleIDC,_picMuzzle];findDisplay 16000 displayCtrl _SidearmMuzzleIDC ctrlSetTooltip "";_currentSidearmMuzzle = '';
					ctrlSetText [_SidearmFlashlightIDC,_picFlashlight];findDisplay 16000 displayCtrl _SidearmFlashlightIDC ctrlSetTooltip "";_currentSidearmFlashlight = '';
					ctrlSetText [_SidearmOpticsIDC,_picOptics];findDisplay 16000 displayCtrl _SidearmOpticsIDC ctrlSetTooltip "";_currentSidearmOptics = '';
					ctrlSetText [_SidearmUnderBarrelIDC,_picUnderBarrel];findDisplay 16000 displayCtrl _SidearmUnderBarrelIDC ctrlSetTooltip "";_currentSidearmUnderBarrel = '';
					ctrlSetText [_SidearmMagazineIDC,_picMagazine];findDisplay 16000 displayCtrl _SidearmMagazineIDC ctrlSetTooltip "";_currentSidearmMagazine = '';

					ctrlSetText [_ItemMapIDC,_picItemMap];findDisplay 16000 displayCtrl _ItemMapIDC ctrlSetTooltip "";_currentItemMap = '';
					ctrlSetText [_ItemGPSIDC,_picItemGPS];findDisplay 16000 displayCtrl _ItemGPSIDC ctrlSetTooltip "";_currentItemGPS = '';
					ctrlSetText [_B_UavTerminalIDC,_picItemGPS];findDisplay 16000 displayCtrl _B_UavTerminalIDC ctrlSetTooltip "";_currentB_UavTerminal = '';
					ctrlSetText [_O_UavTerminalIDC,_picItemGPS];findDisplay 16000 displayCtrl _O_UavTerminalIDC ctrlSetTooltip "";_currentO_UavTerminal = '';
					ctrlSetText [_ItemCompassIDC,_picItemCompass];findDisplay 16000 displayCtrl _ItemCompassIDC ctrlSetTooltip "";_currentItemCompass = '';
					ctrlSetText [_ItemRadioIDC,_picItemRadio];findDisplay 16000 displayCtrl _ItemRadioIDC ctrlSetTooltip "";_currentItemRadio = '';
					ctrlSetText [_ItemWatchIDC,_picItemWatch];findDisplay 16000 displayCtrl _ItemWatchIDC ctrlSetTooltip "";_currentItemWatch = '';
					
					ctrlSetText [_headgearIDC,_picHeadgear];findDisplay 16000 displayCtrl _headgearIDC ctrlSetTooltip "";_currentHeadgear = '';
					ctrlSetText [_gogglesIDC,_picGoggles];findDisplay 16000 displayCtrl _gogglesIDC ctrlSetTooltip "";_currentGoggles = '';;
					ctrlSetText [_UniformIDC,_picUniform];findDisplay 16000 displayCtrl _UniformIDC ctrlSetTooltip "";_currentUniform = '';_display DisplayCtrl 6304 progressSetPosition 0;ctrlSetText[5001,""];
					ctrlSetText [_VestIDC,_picVest];findDisplay 16000 displayCtrl _VestIDC ctrlSetTooltip "";_currentVest = '';_display DisplayCtrl 6305 progressSetPosition 0;ctrlSetText[5002,""];
					ctrlSetText [_BackpackA3IDC,_picBackpackA3];findDisplay 16000 displayCtrl _BackpackA3IDC ctrlSetTooltip "";_currentBackpackA3 = '';_display DisplayCtrl 6306 progressSetPosition 0;ctrlSetText[5003,""];
					ctrlSetText [_hmdIDC,_picHMD];findDisplay 16000 displayCtrl _hmdIDC ctrlSetTooltip "";_currentHmd = '';
					ctrlSetText [_binocularIDC,_picBinocular];findDisplay 16000 displayCtrl _binocularIDC ctrlSetTooltip "";_currentBinocular = '';

					//вставляем цены и иконки обвесов оружия + заряженного магазина, ПНВ и бинокля
					_tempWeaponsItems = [_tempPrimaryItems,_tempSecondaryItems,_tempSidearmItems,_tempItems,_tempSpecs];
					for "_i" from 0 to (count _tempWeaponsItems)-1 do {
						{
							_cwep = _x;
							_get = (_cwep+"_W") Call GetNamespace;
							if (isNil '_get') then {_get = _cwep Call GetNamespace;};
							if !(isNil '_get') then {
								_ItemType = "";
								if (_i == 0) then {
									if ((_currentPrimary Call GetNamespace select 8) find _x >= 0) then {_ItemType = "PrimaryMagazine";};
									if ((_currentPrimary Call GetNamespace select 11) find _x >= 0) then {_ItemType = "PrimaryMuzzle"};
									if ((_currentPrimary Call GetNamespace select 12) find _x >= 0) then {_ItemType = "PrimaryOptics"};
									if ((_currentPrimary Call GetNamespace select 13) find _x >= 0) then {_ItemType = "PrimaryFlashlight"};
									if ((_currentPrimary Call GetNamespace select 14) find _x >= 0) then {_ItemType = "PrimaryUnderBarrel"};
									if ((_currentPrimary Call GetNamespace select 15) find _x >= 0) then {_ItemType = "PrimaryMagazineGL"};
								};
								if (_i == 1) then {
									if ((_currentSecondary Call GetNamespace select 8) find _x >= 0) then {_ItemType = "SecondaryMagazine"};
									if ((_currentSecondary Call GetNamespace select 11) find _x >= 0) then {_ItemType = "SecondaryMuzzle"};
									if ((_currentSecondary Call GetNamespace select 12) find _x >= 0) then {_ItemType = "SecondaryOptics"};
									if ((_currentSecondary Call GetNamespace select 13) find _x >= 0) then {_ItemType = "SecondaryFlashlight"};
									if ((_currentSecondary Call GetNamespace select 14) find _x >= 0) then {_ItemType = "SecondaryUnderBarrel"};
								};
								if (_i == 2) then {
									if ((_currentSidearm Call GetNamespace select 8) find _x >= 0) then {_ItemType = "sidearmMagazine"};
									if ((_currentSidearm Call GetNamespace select 11) find _x >= 0) then {_ItemType = "sidearmMuzzle"};
									if ((_currentSidearm Call GetNamespace select 12) find _x >= 0) then {_ItemType = "sidearmOptics"};
									if ((_currentSidearm Call GetNamespace select 13) find _x >= 0) then {_ItemType = "sidearmFlashlight"};
									if ((_currentSidearm Call GetNamespace select 14) find _x >= 0) then {_ItemType = "sidearmUnderBarrel"};
								};
								if (_i == 3) then {
									if ("B_UavTerminal" == _x) then {_ItemType = "B_UavTerminal"};
									if ("O_UavTerminal" == _x) then {_ItemType = "O_UavTerminal"};
									if ("ItemCompass" == _x) then {_ItemType = "ItemCompass"};
									if ("ItemGPS" == _x) then {_ItemType = "ItemGPS"};
									if ("ItemMap" == _x) then {_ItemType = "ItemMap"};
									if ("ItemRadio" == _x) then {_ItemType = "ItemRadio"};
									if ("ItemWatch" == _x) then {_ItemType = "ItemWatch"};
								};
								if (_i == 4) then {
									if (isClass(configFile >> "CfgGlasses" >> _x)) then {_ItemType = "Goggles"};
									if ("NVGoggles" in ([(configFile >> "CfgWeapons" >> _x),true] call BIS_fnc_returnParents)) then {_ItemType = "hmd"} else {
									if ("Binocular" in ([(configFile >> "CfgWeapons" >> _x),true] call BIS_fnc_returnParents)) then {_ItemType = "binocular"}};
									if ("Uniform_Base" in ([(configFile >> "CfgWeapons" >> _x),true] call BIS_fnc_returnParents)) then {_ItemType = "Uniform"};
									if ("Bag_Base" in ([(configFile >> "CfgVehicles" >> _x),true] call BIS_fnc_returnParents)) then {_ItemType = "BackpackA3"};
									if ("H_HelmetB" in ([(configFile >> "CfgWeapons" >> _x),true] call BIS_fnc_returnParents) OR "HelmetBase" in ([(configFile >> "CfgVehicles" >> _x),true] call BIS_fnc_returnParents)) then {_ItemType = "Headgear"};
									if ("Vest_Camo_Base" in ([(configFile >> "CfgWeapons" >> _x),true] call BIS_fnc_returnParents) OR "Vest_NoCamo_Base" in ([(configFile >> "CfgWeapons" >> _x),true] call BIS_fnc_returnParents)) then {_ItemType = "Vest"};
								};
								if (_ItemType != "") then {
									Call Compile Format ['_current%1 = "%2"',_ItemType,_x];
									Call Compile Format ['_current%1Cost = %2',_ItemType,_get select QUERYGEARCOST];
									Call Compile Format ['ctrlSetText[_%1IDC,"%2"]',_ItemType,_get select QUERYGEARPICTURE];
									Call Compile Format ['findDisplay 16000 displayCtrl _%1IDC ctrlSetTooltip "%2 [%3]"',_ItemType,_get select QUERYGEARLABEL,_x];
								};
							};
						} forEach (_tempWeaponsItems select _i);
					};
					
					{_x sort true} forEach [_tempMags1,_tempMags2,_tempMags3];
					_currentSpecials = _tempSpecs; //delete?

					//заполняем снаряжение предметами инвентаря
					if (_currentUniform != '') then {
						_currentListCargoItemsTemp = [];
						_currentListCargoCountTemp = [];
						{_currentListCargoItemsTemp pushBackUnique _x} forEach _tempMags1;

						for "_i" from 0 to (count _currentListCargoItemsTemp)-1 do {
							_currentListCargoCountTemp pushBack ({_x == _currentListCargoItemsTemp select _i} count _tempMags1);
						};
						[_currentListCargoItemsTemp,_currentListCargoCountTemp,633,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
						_currentUniformListCargo = _currentListCargoItemsTemp;
						_currentUniformListCargoCount = _currentListCargoCountTemp;
						
						{for "_i" from 1 to (_currentUniformListCargoCount select _forEachIndex) do {
						_get = _x Call GetNamespace;
						_currentUniformListCargoCost = _currentUniformListCargoCost + (_get select QUERYGEARCOST);
						};
						if ((_get select 16) == 0) then {_get set [16,(getNumber(configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> _x >> "WeaponSlotsInfo" >> "mass"))];};} forEach _currentUniformListCargo;
						[_display,_currentUniform,_currentUniformListCargo,_currentUniformListCargoCount,6304] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
						ctrlSetText[5001,""];ctrlSetText[5001,format["%1",getContainerMaxLoad _currentUniform]];
					};
					if (_currentVest != '') then {
						_currentListCargoItemsTemp = [];
						_currentListCargoCountTemp = [];
						{_currentListCargoItemsTemp pushBackUnique _x} forEach _tempMags2;

						for "_i" from 0 to (count _currentListCargoItemsTemp)-1 do {
							_currentListCargoCountTemp pushBack ({_x == _currentListCargoItemsTemp select _i} count _tempMags2);
						};
						[_currentListCargoItemsTemp,_currentListCargoCountTemp,638,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
						_currentVestListCargo = _currentListCargoItemsTemp;
						_currentVestListCargoCount = _currentListCargoCountTemp;
						{for "_i" from 1 to (_currentVestListCargoCount select _forEachIndex) do {
						_get = _x Call GetNamespace;
						_currentVestListCargoCost = _currentVestListCargoCost + (_get select QUERYGEARCOST);
						};
						if ((_get select 16) == 0) then {_get set [16,(getNumber(configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> _x >> "WeaponSlotsInfo" >> "mass"))];};} forEach _currentVestListCargo;
						[_display,_currentVest,_currentVestListCargo,_currentVestListCargoCount,6305] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
						ctrlSetText[5002,""];ctrlSetText[5002,format["%1",getContainerMaxLoad _currentVest]];
					};
					if (_currentBackpackA3 != '') then {
						_currentListCargoItemsTemp = [];
						_currentListCargoCountTemp = [];
						{_currentListCargoItemsTemp pushBackUnique _x} forEach _tempMags3;

						for "_i" from 0 to (count _currentListCargoItemsTemp)-1 do {
							_currentListCargoCountTemp pushBack ({_x == _currentListCargoItemsTemp select _i} count _tempMags3);
						};
						[_currentListCargoItemsTemp,_currentListCargoCountTemp,619,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
						_currentBackpackA3ListCargo = _currentListCargoItemsTemp;
						_currentBackpackA3ListCargoCount = _currentListCargoCountTemp;
						{for "_i" from 1 to (_currentBackpackA3ListCargoCount select _forEachIndex) do {
						_get = _x Call GetNamespace;
						_currentBackpackA3ListCargoCost = _currentBackpackA3ListCargoCost + (_get select QUERYGEARCOST);
						} forEach _currentBackpackA3ListCargo;
						if ((_get select 16) == 0) then {_get set [16,(getNumber(configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> _x >> "WeaponSlotsInfo" >> "mass"))];};} forEach _currentBackpackA3ListCargo;
						[_display,_currentBackpackA3,_currentBackpackA3ListCargo,_currentBackpackA3ListCargoCount,6306] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
						ctrlSetText[5003,""];ctrlSetText[5003,format["%1",getContainerMaxLoad _currentBackpackA3]];
					};
				_displayInv = true;
				};

				if (_filler == 'primary' || _filler == 'secondary' || _filler == 'sidearm') then {
				Call Compile Format ['_current = _current%1',_filler];
				_array = [];
				if (_filler == 'primary') then {_array = ["Muzzle","Flashlight","Optics","UnderBarrel","MagazineGL"]} else {_array = ["Muzzle","Flashlight","Optics","UnderBarrel"]};
				{
				Call Compile Format ['ctrlSetText [_%1%2IDC,_pic%3]',_filler,_x,_x];
				Call Compile Format ['findDisplay 16000 displayCtrl _%1%2IDC ctrlSetTooltip ""',_filler,_x];
				Call Compile Format ['_index = %1 find _current%2%3',_accessories,_filler,_x];
				Call Compile Format ['_current%1%2Cost = 0',_filler,_x];
				Call Compile Format ['_current%1%2 = ""',_filler,_x];
				} forEach _array;
				
				_getWeap = _current Call GetNamespace;
				_currentMagazine = _getWeap select 8;
				_currentAccessoriesMuzzle = _getWeap select 11;
				_currentAccessoriesOptics = _getWeap select 12;
				_currentAccessoriesFlashlight = _getWeap select 13;
				_currentAccessoriesUnderBarrel = _getWeap select 14;
				_currentMagazineGL = _getWeap select 15;
				_lbAcc = [_lbm,_lbMagazineGL];
				_currentAcc = [_currentMagazine,_currentMagazineGL];
				{
					if (count (_currentAcc select _forEachIndex) > 0) then {
						_currentRowAcc = lnbCurSelRow (_lbAcc select _forEachIndex);
						_currentItemAcc = (_currentAcc select _forEachIndex) select _currentRowAcc;
						_accGet = _currentItemAcc Call GetNamespace;
						Call Compile Format ['_current%1%2 = _currentItemAcc',_filler,_x];
						Call Compile Format ['ctrlSetText[_%1%2IDC,"%3"]',_filler,_x,_accGet select QUERYGEARPICTURE];
						Call Compile Format ['findDisplay 16000 displayCtrl _%1%2IDC ctrlSetTooltip "%3 [%4]"',_filler,_x,_accGet select QUERYGEARLABEL,_currentItemAcc];
						Call Compile Format ['_current%1%2Cost = %3',_filler,_x,_accGet select QUERYGEARCOST];
				};
				} forEach ["Magazine","MagazineGL"];

				_lbAcc2 = [_lbAccessoriesUnderBarrel,_lbAccessoriesFlashlight,_lbAccessoriesOptics,_lbAccessoriesMuzzle];
				_currentAcc2 = [_currentAccessoriesUnderBarrel,_currentAccessoriesFlashlight,_currentAccessoriesOptics,_currentAccessoriesMuzzle];
				{
					if (count (_currentAcc2 select _forEachIndex) > 1) then {
						_currentRowAcc = lnbCurSelRow (_lbAcc2 select _forEachIndex);
						if !(_currentRowAcc == 0) then {
							_currentItemAcc = (_currentAcc2 select _forEachIndex) select _currentRowAcc - 1;
							_accGet = _currentItemAcc Call GetNamespace;
							Call Compile Format ['_current%1%2 = _currentItemAcc',_filler,_x];
							Call Compile Format ['ctrlSetText[_%1%2IDC,"%3"]',_filler,_x,_accGet select QUERYGEARPICTURE];
							Call Compile Format ['findDisplay 16000 displayCtrl _%1%2IDC ctrlSetTooltip "%3"',_filler,_x,_accGet select QUERYGEARLABEL];
							Call Compile Format ['_current%1%2Cost = %3',_filler,_x,_accGet select QUERYGEARCOST];
						};
					};
				} forEach ["UnderBarrel","Flashlight","Optics","Muzzle"];
				};
			};
			case 'addMagazine': {
				_slot = WF_Logic getVariable 'Slot';
				_currentContainerRow = WF_Logic getVariable 'currentContainerRow1';
				if (_slot == "Uniform") then {_slotIDC = 633; _loadIDC = 6304;_currentSlot = _currentUniform;_currentContainerListCargo = _currentUniformListCargo;_currentContainerCount = _currentUniformListCargoCount;_currentContainerCost = _currentUniformListCargoCost};
				if (_slot == "Vest") then {_slotIDC = 638; _loadIDC = 6305;_currentSlot = _currentVest;_currentContainerListCargo = _currentVestListCargo;_currentContainerCount = _currentVestListCargoCount;_currentContainerCost = _currentVestListCargoCost};
				if (_slot == "BackpackA3") then {_slotIDC = 619;_loadIDC = 6306;_currentSlot = _currentBackpackA3;_currentContainerListCargo = _currentBackpackA3ListCargo;_currentContainerCount = _currentBackpackA3ListCargoCount;_currentContainerCost = _currentBackpackA3ListCargoCost};

				if (_filler == 'primary') then {_current = _currentPrimary};
				if (_filler == 'secondary') then {_current = _currentSecondary};
				if (_filler == 'sidearm') then {_current = _currentSidearm};
				if (_filler == 'binocular') then {_current = _currentBinocular};
				_getWeap = _current Call GetNamespace;
				//3701 = поле с магазинами
				//3706 = поле с подствольными гранатами
				if (str(_currentContainerRow select 0) == "Control #3701") then {_selectedMagazine = ((_getWeap select 8) select (_currentContainerRow select 1));};
				if (str(_currentContainerRow select 0) == "Control #3706") then {_selectedMagazine = ((_getWeap select 15) select (_currentContainerRow select 1));};

				//добавляем ракеты только в рюкзак
				if ("CA_LauncherMagazine" in ([(configFile >> "CfgMagazines" >> _selectedMagazine),true] call BIS_fnc_returnParents)) then {
					_slot = "BackpackA3";
					_slotIDC = 619;
					_loadIDC = 6306;
					_currentSlot = _currentBackpackA3;
					_currentContainerListCargo = _currentBackpackA3ListCargo;
					_currentContainerCount = _currentBackpackA3ListCargoCount;
					_currentContainerCost = _currentBackpackA3ListCargoCost;
					_LauncherMagazine = true;
				};
				_get = _selectedMagazine Call GetNamespace;
				
				//get item mass with 0 value
				if ((_get select 16) == 0) then {
					//hint format ["WARNING: %1 have 0 mass value!",(_currentContainerListCargo select (_currentContainerRow select 1))];
					_get set [16,(getNumber(configfile >> "CfgMagazines" >> (_currentContainerListCargo select (_currentContainerRow select 1)) >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> (_currentContainerListCargo select (_currentContainerRow select 1)) >> "WeaponSlotsInfo" >> "mass"))];
				};

				if (getContainerMaxLoad _currentSlot > 0) then {
				if ((_currentSlot != '') AND ((progressPosition (_display DisplayCtrl _loadIDC) + ((_get select 16)/getContainerMaxLoad _currentSlot)) <= 1)) then {
					if (_selectedMagazine in _currentContainerListCargo) then {
						{
						if (_x == _selectedMagazine) then {
							_currentContainerCount set [_forEachIndex,(_currentContainerCount select _forEachIndex)+1];
							};
						} forEach _currentContainerListCargo;
					} else {
					_currentContainerListCargo = _currentContainerListCargo + [_selectedMagazine];
					_currentContainerCount = _currentContainerCount + [1];
					};
					if (_slot == "Uniform") then {
						_currentUniformListCargoCount = _currentContainerCount;
						_currentUniformListCargo = _currentContainerListCargo;
						_currentUniformListCargoCost = _currentContainerCost;
						[_display,_currentUniform,_currentUniformListCargo,_currentUniformListCargoCount,6304] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
					};
					if (_slot == "Vest") then {
						_currentVestListCargoCount = _currentContainerCount;
						_currentVestListCargo = _currentContainerListCargo;
						_currentVestListCargoCost = _currentContainerCost;
						[_display,_currentVest,_currentVestListCargo,_currentVestListCargoCount,6305] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
					};
					if (_slot == "BackpackA3") then {
						_currentBackpackA3ListCargoCount = _currentContainerCount;
						_currentBackpackA3ListCargo = _currentContainerListCargo;
						_currentBackpackA3ListCargoCost = _currentContainerCost;
						[_display,_currentBackpackA3,_currentBackpackA3ListCargo,_currentBackpackA3ListCargoCount,6306] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
					};
					lnbClear _slotIDC;
					[_currentContainerListCargo,_currentContainerCount,_slotIDC,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
					_currentContainerCost = _currentContainerCost + (_get select QUERYGEARCOST);
				};
				_displayInv = true;
			};
			};
			case 'addAccessories': {
				if ((_filler == 'primary' AND !(_currentPrimary == '')) || (_filler == 'secondary' AND !(_currentSecondary == '')) || (_filler == 'sidearm' AND !(_currentSidearm == ''))) then {
					if (_filler == 'primary') then {_current = _currentPrimary};
					if (_filler == 'secondary') then {_current = _currentSecondary};
					if (_filler == 'sidearm') then {_current = _currentSidearm};
					_lbAccessories = '';
					_currentAccessories = [];
					_lbAcc = WF_Logic getVariable 'lbAcc';
					_getWeap = _current Call GetNamespace;

					if (_lbAcc == "Magazine") then {_lbAccessories = _lbm;_currentAccessories = _getWeap select 8};
					if (_lbAcc == "Muzzle") then {_lbAccessories = _lbAccessoriesMuzzle;_currentAccessories = _getWeap select 11};
					if (_lbAcc == "Optics") then {_lbAccessories = _lbAccessoriesOptics;_currentAccessories = _getWeap select 12};
					if (_lbAcc == "Flashlight") then {_lbAccessories = _lbAccessoriesFlashlight;_currentAccessories = _getWeap select 13};
					if (_lbAcc == "UnderBarrel") then {_lbAccessories = _lbAccessoriesUnderBarrel;_currentAccessories = _getWeap select 14};
					if (_lbAcc == "MagazineGL") then {_lbAccessories = _lbMagazineGL;_currentAccessories = _getWeap select 15};
					if (count _currentAccessories > 0) then {
					_currentRow = lnbCurSelRow _lbAccessories;
					_currentValue = lnbValue[_lbAccessories,[_currentRow,0]];
					_currentRowAcc = lnbCurSelRow _lbAccessories;
					if !((_lbAcc == "Magazine") || (_lbAcc == "MagazineGL")) then {_currentRowAcc = _currentRowAcc - 1};
					_currentItem2 = "";
					_currentItem2 = _currentAccessories select _currentValue;
					_accGet = _currentItem2 Call GetNamespace;
					Call Compile Format ['_current%1%2 = _currentItem2',_filler,_lbAcc];
					Call Compile Format ['ctrlSetText[_%1%2IDC,"%3"]',_filler,_lbAcc,_accGet select QUERYGEARPICTURE];
					Call Compile Format ['findDisplay 16000 displayCtrl _%1%2IDC ctrlSetTooltip "%3 [%4]"',_filler,_lbAcc,_accGet select QUERYGEARLABEL,_currentItem2];
					Call Compile Format ['_current%1%2Cost = %3',_filler,_lbAcc,_accGet select QUERYGEARCOST];
					if !(_currentRowAcc == -1) then {ctrlSetText [39042,_accGet select QUERYUNITPICTURE];_ItemForVehicle = _currentItem2} else {ctrlSetText [39042,'Images\gui\zebra_co.paa']; _ItemForVehicle = ''};

					//copy to clipboard for quick accessories fix :)
					//if (WF_Debug) then {CopyToClipboard str _accGet};
					if (!((_lbAcc == "Magazine") || (_lbAcc == "MagazineGL")) AND (_currentRow == 0)) then {Call Compile Format ['Slot%1%2Clicked = %3',_filler,_lbAcc,true]};
					_displayInv = true;
					};
				};
			};
			case 'SlotActivate': {
				_id1 = [633,638,619,618]; //список
				_id2 = [6332,6382,6192,6194]; //синий задник
				_slot = WF_Logic getVariable 'Slot';

				if !(isNil '_veh' AND _slot == "Vehicle") then {{ctrlShow [_x,false]} forEach _id1;};
				_slots = ['Uniform','Vest','BackpackA3','Vehicle'];
				_id = _slots find _slot;
				if (_slot == "Uniform") then {_slotIDC = 633;_currentSlot = _currentUniform;_currentContainerListCargo = _currentUniformListCargo;_currentContainerCount = _currentUniformListCargoCount;_currentContainerCost = _currentUniformListCargoCost};
				if (_slot == "Vest") then {_slotIDC = 638;_currentSlot = _currentVest;_currentContainerListCargo = _currentVestListCargo;_currentContainerCount = _currentVestListCargoCount;_currentContainerCost = _currentVestListCargoCost};
				if (_slot == "BackpackA3") then {_slotIDC = 619;_currentSlot = _currentBackpackA3;_currentContainerListCargo = _currentBackpackA3ListCargo;_currentContainerCount = _currentBackpackA3ListCargoCount;_currentContainerCost = _currentBackpackA3ListCargoCost};
				if (_slot == "Vehicle") then {if !(isNil '_veh') then {_slotIDC = 618;_currentSlot = typeOf _veh;_currentContainerListCargo = _currentVehicleListCargo;_currentContainerCount = _currentVehicleListCargoCount;_currentContainerCost = _currentVehicleListCargoCost} else {_currentSlot = ''};};

				if (_currentSlot != '') then {
					{(_display DisplayCtrl _x) ctrlSetTextColor [1,1,1,0.1]} forEach _id2;
					if (_slot == "Vehicle") then {(_display DisplayCtrl 39041) ctrlSetTextColor [0,0,0,0.8]} else {(_display DisplayCtrl 39041) ctrlSetTextColor [0.75,0.75,0.75,1]};
					(_display DisplayCtrl (_id2 select _id)) ctrlSetTextColor [0.2588,0.7137,1,1];
					ctrlShow [(_id1 select _id),true];
					_LauncherMagazine = false;
				};
			};
			case 'RemoveItem': {
			_slot = WF_Logic getVariable 'Slot';
			if (_slot == "Uniform") then {_currentContainerCount = _currentUniformListCargoCount;_currentContainerListCargo = _currentUniformListCargo;	_currentContainerCost = _currentUniformListCargoCost;};
			if (_slot == "Vest") then {_currentContainerCount = _currentVestListCargoCount;_currentContainerListCargo = _currentVestListCargo;_currentContainerCost = _currentVestListCargoCost;};
			if (_slot == "BackpackA3") then {_currentContainerCount = _currentBackpackA3ListCargoCount;_currentContainerListCargo = _currentBackpackA3ListCargo;_currentContainerCost = _currentBackpackA3ListCargoCost;};
			if (_slot == "Vehicle") then {_currentContainerCount = _currentVehicleListCargoCount;_currentContainerListCargo = _currentVehicleListCargo};

			_currentContainerRow = WF_Logic getVariable 'currentContainerRow';
			_currentContainerCount set [(_currentContainerRow select 1),(_currentContainerCount select (_currentContainerRow select 1))-1];
			_get = (_currentContainerListCargo select (_currentContainerRow select 1)) Call GetNamespace;

			if (_currentContainerCount select (_currentContainerRow select 1) == 0) then {
				findDisplay 16000 displayCtrl _slotIDC lnbDeleteRow (_currentContainerRow select 1);
				_currentContainerListCargo = _currentContainerListCargo - [_currentContainerListCargo select (_currentContainerRow select 1)];
				_currentContainerCount = _currentContainerCount - [0];
			};
			lnbClear _slotIDC;
			[_currentContainerListCargo,_currentContainerCount,_slotIDC,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
			_currentContainerCost =  _currentContainerCost - (_get select QUERYGEARCOST);

			if (_slot == "Uniform") then {
				_currentUniformListCargoCount = _currentContainerCount;
				_currentUniformListCargo = _currentContainerListCargo;
				_currentUniformListCargoCost = _currentContainerCost;
				[_display,_currentUniform,_currentUniformListCargo,_currentUniformListCargoCount,6304] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
			};
			if (_slot == "Vest") then {
				_currentVestListCargoCount = _currentContainerCount;
				_currentVestListCargo = _currentContainerListCargo;
				_currentVestListCargoCost = _currentContainerCost;
				[_display,_currentVest,_currentVestListCargo,_currentVestListCargoCount,6305] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
			};
			if (_slot == "BackpackA3") then {
				_currentBackpackA3ListCargoCount = _currentContainerCount;
				_currentBackpackA3ListCargo = _currentContainerListCargo;
				_currentBackpackA3ListCargoCost = _currentContainerCost;
				[_display,_currentBackpackA3,_currentBackpackA3ListCargo,_currentBackpackA3ListCargoCount,6306] execVM "Client\Functions\Client_UIUpdateLoad.sqf";
			};
			if (_slot == "Vehicle") then {
				_maxLoad = getNumber (configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad");
				//get item mass with 0 value
				if ((_get select 16) == 0) then {
					//hint format ["WARNING: %1 have 0 mass value!",(_currentContainerListCargo select (_currentContainerRow select 1))];
					_get set [16,(getNumber(configfile >> "CfgMagazines" >> (_currentContainerListCargo select (_currentContainerRow select 1)) >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> (_currentContainerListCargo select (_currentContainerRow select 1)) >> "WeaponSlotsInfo" >> "mass"))];
				};
				_vehicleLoad = _vehicleLoad - ((_get select 16)/_maxLoad);
				_display DisplayCtrl 6196 progressSetPosition _vehicleLoad;
				//stupid access to vehicle trunk, thanks BIS for this :)
				_getWeaponCargo = getWeaponCargo _veh; clearWeaponCargoGlobal _veh;
				_getMagazineCargo = getMagazineCargo _veh; clearMagazineCargoGlobal _veh;
				_getItemCargo = getItemCargo _veh; clearItemCargoGlobal _veh;
				{
					if (_x in (_getWeaponCargo select 0)) then {_veh addWeaponCargoGlobal [_x, _currentContainerCount select _forEachIndex];};
					if (_x in (_getMagazineCargo select 0)) then {_veh addMagazineCargoGlobal [_x, _currentContainerCount select _forEachIndex];};
					if (_x in (_getItemCargo select 0)) then {_veh addItemCargoGlobal [_x, _currentContainerCount select _forEachIndex];};
				} forEach _currentContainerListCargo;
				_currentVehicleListCargoCount = _currentContainerCount;
				_currentVehicleListCargo = _currentContainerListCargo;
			};
			_displayInv = true;
			};
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		};
		WF_Logic setVariable ['lbMainAction',''];
		if (_filler == 'secondary' AND _LauncherMagazine) then {
			WF_Logic setVariable ['lbMainAction','SlotActivate'];
			WF_Logic setVariable ['Slot','BackpackA3'];
		};
	};
	//--- Remove a weapon by clicking on it.
	if (primClicked) then {SlotPrimaryMuzzleClicked = true; SlotPrimaryOpticsClicked = true; SlotPrimaryFlashlightClicked = true; SlotPrimaryUnderBarrelClicked = true; SlotPrimaryMagazineGLClicked = true; SlotPrimaryMagazineClicked = true; primClicked = false;if (_currentPrimary != '') then  {ctrlSetText [_primaryIDC,_picPrimary];findDisplay 16000 displayCtrl _primaryIDC ctrlSetTooltip "";_index = _primary find _currentPrimary;_currentPrimaryCost = 0;_currentWeapons = _currentWeapons - [_currentPrimary];_currentPrimary = '';_displayInv = true;}};
	if (secoClicked) then {SlotSecondaryMuzzleClicked = true; SlotSecondaryOpticsClicked = true; SlotSecondaryFlashlightClicked = true; SlotSecondaryUnderBarrelClicked = true; SlotSecondaryMagazineClicked = true; secoClicked = false;if (_currentSecondary != '') then  {ctrlSetText [_secondaryIDC,_picSecondary];findDisplay 16000 displayCtrl _secondaryIDC ctrlSetTooltip "";_index = _secondary find _currentSecondary;_currentSecondaryCost = 0;_currentWeapons = _currentWeapons - [_currentSecondary];_currentSecondary = '';_displayInv = true;_backpackloadout = [[],[]];}};
	if (sideClicked) then {SlotSidearmMuzzleClicked = true; SlotSidearmOpticsClicked = true; SlotSidearmFlashlightClicked = true; SlotSidearmUnderBarrelClicked = true; SlotSidearmMagazineClicked = true; sideClicked = false;if (_currentSidearm != '') then {ctrlSetText [_sidearmIDC,_picSidearm];findDisplay 16000 displayCtrl _sidearmIDC ctrlSetTooltip "";_index = _sidearm find _currentSidearm;_currentSidearmCost = 0;_currentWeapons = _currentWeapons - [_currentSidearm];_currentSidearm = '';_displayInv = true;}};
	if (SlotHeadgearClicked) then {SlotHeadgearClicked = false;if (_currentHeadgear != '') then  {ctrlSetText [_headgearIDC,_picHeadgear];findDisplay 16000 displayCtrl _headgearIDC ctrlSetTooltip "";_index = _headgear find _currentHeadgear;_currentHeadgearCost = 0;_currentHeadgear = '';_displayInv = true;}};
	if (SlotGogglesClicked) then {SlotGogglesClicked = false;if (_currentGoggles != '') then  {ctrlSetText [_gogglesIDC,_picGoggles];findDisplay 16000 displayCtrl _gogglesIDC ctrlSetTooltip "";_index = _goggles find _currentGoggles;_currentGogglesCost = 0;_currentGoggles = '';_displayInv = true;}};
	if (SlotHMDClicked) then {SlotHMDClicked = false;if (_currentHmd != '') then  {ctrlSetText [_hmdIDC,_picHMD];findDisplay 16000 displayCtrl _hmdIDC ctrlSetTooltip "";_index = _hmd find _currentHmd;_currentHmdCost = 0;_currentHmd = '';_displayInv = true;}};
	if (SlotBinocularsClicked) then {SlotBinocularsClicked = false;if (_currentBinocular != '') then  {ctrlSetText [_binocularIDC,_picBinocular];findDisplay 16000 displayCtrl _binocularIDC ctrlSetTooltip "";_index = _binocular find _currentbinocular;_currentbinocularCost = 0;_currentBinocular = '';_displayInv = true;}};
	if (UniformSlotClicked) then {UniformSlotClicked = false;if (_currentUniform != '') then  {ctrlSetText [_UniformIDC,_picUniform];findDisplay 16000 displayCtrl _UniformIDC ctrlSetTooltip "";_index = _Uniform find _currentUniform;_currentUniformCost = 0;_currentUniformListCargoCost = 0;_currentUniformListCargo = [];_currentUniform = '';ctrlShow [633,false];lnbClear 633;(_display DisplayCtrl 6332) ctrlSetTextColor [1,1,1,0.1];_display DisplayCtrl 6304 progressSetPosition 0;ctrlSetText[5001,""];_displayInv = true;}};
	if (VestSlotClicked) then {VestSlotClicked = false;if (_currentVest != '') then  {ctrlSetText [_VestIDC,_picVest];findDisplay 16000 displayCtrl _VestIDC ctrlSetTooltip "";_index = _Vest find _currentVest;_currentVestCost = 0;_currentVestListCargoCost;_currentVestListCargo = [];_currentVest = '';ctrlShow [638,false];lnbClear 638;(_display DisplayCtrl 6382) ctrlSetTextColor [1,1,1,0.1];_display DisplayCtrl 6305 progressSetPosition 0;ctrlSetText[5002,""];_displayInv = true;}};
	if (BackpackSlotClicked) then {BackpackSlotClicked = false;if (_currentBackpackA3 != '') then  {ctrlSetText [_BackpackA3IDC,_picBackpackA3];findDisplay 16000 displayCtrl _BackpackA3IDC ctrlSetTooltip "";_index = _BackpackA3 find _currentBackpackA3;_currentBackpackA3Cost = 0;_currentBackpackA3ListCargoCost = 0;_currentBackpackA3ListCargo = [];_currentBackpackA3 = '';ctrlShow [619,false];lnbClear 619;(_display DisplayCtrl 6192) ctrlSetTextColor [1,1,1,0.1];_display DisplayCtrl 6306 progressSetPosition 0;ctrlSetText[5003,""];_displayInv = true;}};
	if (SlotPrimaryMuzzleClicked) then {SlotPrimaryMuzzleClicked = false;if (_currentPrimaryMuzzle != '') then  {ctrlSetText [_PrimaryMuzzleIDC,_picMuzzle];findDisplay 16000 displayCtrl _PrimaryMuzzleIDC ctrlSetTooltip "";_index = _accessories find _currentPrimaryMuzzle;_currentPrimaryMuzzleCost = 0;_currentPrimaryMuzzle = '';_displayInv = true;}};
	if (SlotPrimaryFlashlightClicked) then {SlotPrimaryFlashlightClicked = false;if (_currentPrimaryFlashlight != '') then  {ctrlSetText [_PrimaryFlashlightIDC,_picFlashlight];findDisplay 16000 displayCtrl _PrimaryFlashlightIDC ctrlSetTooltip "";_index = _accessories find _currentPrimaryFlashlight;_currentPrimaryFlashlightCost = 0;_currentPrimaryFlashlight = '';_displayInv = true;}};
	if (SlotPrimaryOpticsClicked) then {SlotPrimaryOpticsClicked = false;if (_currentPrimaryOptics != '') then  {ctrlSetText [_PrimaryOpticsIDC,_picOptics];findDisplay 16000 displayCtrl _PrimaryOpticsIDC ctrlSetTooltip "";_index = _accessories find _currentPrimaryOptics;_currentPrimaryOpticsCost = 0;_currentPrimaryOptics = '';_displayInv = true;}};
	if (SlotPrimaryUnderBarrelClicked) then {SlotPrimaryUnderBarrelClicked = false;if (_currentPrimaryUnderBarrel != '') then  {ctrlSetText [_PrimaryUnderBarrelIDC,_picUnderBarrel];findDisplay 16000 displayCtrl _PrimaryUnderBarrelIDC ctrlSetTooltip "";_index = _accessories find _currentPrimaryUnderBarrel;_currentPrimaryUnderBarrelCost = 0;_currentPrimaryUnderBarrel = '';_displayInv = true;}};
	if (SlotPrimaryMagazineGLClicked) then {SlotPrimaryMagazineGLClicked = false;if (_currentPrimaryMagazineGL != '') then  {ctrlSetText [_PrimaryMagazineGLIDC,_picMagazineGL];findDisplay 16000 displayCtrl _PrimaryMagazineGLIDC ctrlSetTooltip "";_index = _accessories find _currentPrimaryMagazineGL;_currentPrimaryMagazineGLCost = 0;_currentPrimaryMagazineGL = '';_displayInv = true;}};
	if (SlotPrimaryMagazineClicked) then {SlotPrimaryMagazineClicked = false;if (_currentPrimaryMagazine != '') then  {ctrlSetText [_PrimaryMagazineIDC,_picMagazine];findDisplay 16000 displayCtrl _PrimaryMagazineIDC ctrlSetTooltip "";_index = _accessories find _currentPrimaryMagazine;_currentPrimaryMagazineCost = 0;_currentPrimaryMagazine = '';_displayInv = true;}};
	if (SlotSecondaryMuzzleClicked) then {SlotSecondaryMuzzleClicked = false;if (_currentSecondaryMuzzle != '') then  {ctrlSetText [_SecondaryMuzzleIDC,_picMuzzle];findDisplay 16000 displayCtrl _SecondaryMuzzleIDC ctrlSetTooltip "";_index = _accessories find _currentSecondaryMuzzle;_currentSecondaryMuzzleCost = 0;_currentSecondaryMuzzle = '';_displayInv = true;}};
	if (SlotSecondaryFlashlightClicked) then {SlotSecondaryFlashlightClicked = false;if (_currentSecondaryFlashlight != '') then  {ctrlSetText [_SecondaryFlashlightIDC,_picFlashlight];findDisplay 16000 displayCtrl _SecondaryFlashlightIDC ctrlSetTooltip "";_index = _accessories find _currentSecondaryFlashlight;_currentSecondaryFlashlightCost = 0;_currentSecondaryFlashlight = '';_displayInv = true;}};
	if (SlotSecondaryOpticsClicked) then {SlotSecondaryOpticsClicked = false;if (_currentSecondaryOptics != '') then  {ctrlSetText [_SecondaryOpticsIDC,_picOptics];findDisplay 16000 displayCtrl _SecondaryOpticsIDC ctrlSetTooltip "";_index = _accessories find _currentSecondaryOptics;_currentSecondaryOpticsCost = 0;_currentSecondaryOptics = '';_displayInv = true;}};
	if (SlotSecondaryUnderBarrelClicked) then {SlotSecondaryUnderBarrelClicked = false;if (_currentSecondaryUnderBarrel != '') then  {ctrlSetText [_SecondaryUnderBarrelIDC,_picUnderBarrel];findDisplay 16000 displayCtrl _SecondaryUnderBarrelIDC ctrlSetTooltip "";_index = _accessories find _currentSecondaryUnderBarrel;_currentSecondaryUnderBarrelCost = 0;_currentSecondaryUnderBarrel = '';_displayInv = true;}};
	if (SlotSecondaryMagazineClicked) then {SlotSecondaryMagazineClicked = false;if (_currentSecondaryMagazine != '') then  {ctrlSetText [_SecondaryMagazineIDC,_picMagazine];findDisplay 16000 displayCtrl _SecondaryMagazineIDC ctrlSetTooltip "";_index = _accessories find _currentSecondaryMagazine;_currentSecondaryMagazineCost = 0;_currentSecondaryMagazine = '';_displayInv = true;}};
	if (SlotSidearmMuzzleClicked) then {SlotSidearmMuzzleClicked = false;if (_currentSidearmMuzzle != '') then  {ctrlSetText [_SidearmMuzzleIDC,_picMuzzle];findDisplay 16000 displayCtrl _SidearmMuzzleIDC ctrlSetTooltip "";_index = _accessories find _currentSidearmMuzzle;_currentSidearmMuzzleCost = 0;_currentSidearmMuzzle = '';_displayInv = true;}};
	if (SlotSidearmFlashlightClicked) then {SlotSidearmFlashlightClicked = false;if (_currentSidearmFlashlight != '') then  {ctrlSetText [_SidearmFlashlightIDC,_picFlashlight];findDisplay 16000 displayCtrl _SidearmFlashlightIDC ctrlSetTooltip "";_index = _accessories find _currentSidearmFlashlight;_currentSidearmFlashlightCost = 0;_currentSidearmFlashlight = '';_displayInv = true;}};
	if (SlotSidearmOpticsClicked) then {SlotSidearmOpticsClicked = false;if (_currentSidearmOptics != '') then  {ctrlSetText [_SidearmOpticsIDC,_picOptics];findDisplay 16000 displayCtrl _SidearmOpticsIDC ctrlSetTooltip "";_index = _accessories find _currentSidearmOptics;_currentSidearmOpticsCost = 0;_currentSidearmOptics = '';_displayInv = true;}};
	if (SlotSidearmUnderBarrelClicked) then {SlotSidearmUnderBarrelClicked = false;if (_currentSidearmUnderBarrel != '') then  {ctrlSetText [_SidearmUnderBarrelIDC,_picUnderBarrel];findDisplay 16000 displayCtrl _SidearmUnderBarrelIDC ctrlSetTooltip "";_index = _accessories find _currentSidearmUnderBarrel;_currentSidearmUnderBarrelCost = 0;_currentSidearmUnderBarrel = '';_displayInv = true;}};
	if (SlotSidearmMagazineClicked) then {SlotSidearmMagazineClicked = false;if (_currentSidearmMagazine != '') then  {ctrlSetText [_SidearmMagazineIDC,_picMagazine];findDisplay 16000 displayCtrl _SidearmMagazineIDC ctrlSetTooltip "";_index = _accessories find _currentSidearmMagazine;_currentSidearmMagazineCost = 0;_currentSidearmMagazine = '';_displayInv = true;}};
	if (SlotMapClicked) then {SlotMapClicked = false;if (_currentItemMap != '') then {ctrlSetText [_ItemMapIDC,_picItemMap];findDisplay 16000 displayCtrl _ItemMapIDC ctrlSetTooltip "";_index = _accessories find _currentItemMap;_currentItemMapCost = 0;_currentItemMap = '';_displayInv = true;}};
	if (SlotGPSClicked) then {SlotGPSClicked = false;if (_currentItemGPS != '') then {ctrlSetText [_ItemGPSIDC,_picItemGPS];findDisplay 16000 displayCtrl _ItemGPSIDC ctrlSetTooltip "";_index = _accessories find _currentItemGPS;_currentItemGPSCost = 0;_currentItemGPS = '';_displayInv = true;}; if (_currentB_UavTerminal != '') then {ctrlSetText [_B_UavTerminalIDC,_picItemGPS];findDisplay 16000 displayCtrl _B_UavTerminalIDC ctrlSetTooltip "";_index = _accessories find _currentB_UavTerminal;_currentB_UavTerminalCost = 0;_currentB_UavTerminal = '';_displayInv = true;}};
	if (SlotCompassClicked) then {SlotCompassClicked = false;if (_currentItemCompass != '') then  {ctrlSetText [_ItemCompassIDC,_picItemCompass];findDisplay 16000 displayCtrl _ItemCompassIDC ctrlSetTooltip "";_index = _accessories find _currentItemCompass;_currentItemCompassCost = 0;_currentItemCompass = '';_displayInv = true;}};
	if (SlotRadioClicked) then {SlotRadioClicked = false;if (_currentItemRadio != '') then  {ctrlSetText [_ItemRadioIDC,_picItemRadio];findDisplay 16000 displayCtrl _ItemRadioIDC ctrlSetTooltip "";_index = _accessories find _currentItemRadio;_currentItemRadioCost = 0;_currentItemRadio = '';_displayInv = true;}};
	if (SlotWatchClicked) then {SlotWatchClicked = false;if (_currentItemWatch != '') then  {ctrlSetText [_ItemWatchIDC,_picItemWatch];findDisplay 16000 displayCtrl _ItemWatchIDC ctrlSetTooltip "";_index = _accessories find _currentItemWatch;_currentItemWatchCost = 0;_currentItemWatch = '';_displayInv = true;}};

	if (_unitSwap) then {
		WF_Logic setVariable ['WF_GEAR_Swap',false];
		if (count _unitList > 0) then {_currentUnit = _unitList select (lbCurSel 3854)} else {_currentUnit = player};
		_updateUnit = true;
	};
	
	if (_updateUnit) then {
		{Call Compile Format ['_current%1 = "",ctrlSetText[_%1IDC,_pic%1],findDisplay 16000 displayCtrl _%1IDC ctrlSetTooltip ""',_x]} forEach ["Primary","Secondary","Sidearm","Uniform","Vest","BackpackA3","Headgear","Goggles","Hmd","Binocular","ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch"];
		{Call Compile Format ['_currentPrimary%1 = "",ctrlSetText[_Primary%1IDC,_pic%1],findDisplay 16000 displayCtrl _Primary%1IDC ctrlSetTooltip ""',_x]} forEach ["Muzzle","Flashlight","Optics","UnderBarrel","Magazine","MagazineGL"];
		{Call Compile Format ['_currentSecondary%1 = "",ctrlSetText[_Secondary%1IDC,_pic%1],findDisplay 16000 displayCtrl _Secondary%1IDC ctrlSetTooltip ""',_x]} forEach ["Muzzle","Flashlight","Optics","UnderBarrel","Magazine"];
		{Call Compile Format ['_currentSidearm%1 = "",ctrlSetText[_Sidearm%1IDC,_pic%1],findDisplay 16000 displayCtrl _Sidearm%1IDC ctrlSetTooltip ""',_x]} forEach ["Muzzle","Flashlight","Optics","UnderBarrel","Magazine"];
		{lnbClear _x} forEach [633,638,619,618];
		_currentWeapons = weapons _currentUnit;
		_currentUniform = uniform _currentUnit;
		_currentHeadgear = headgear _currentUnit;
		_currentHmd = hmd _currentUnit;
		_currentVest = vest _currentUnit;
		_currentBackpackA3 = backpack _currentUnit;
		_currentGoggles = goggles _currentUnit;
		_currentBinocular = binocular _currentUnit;
		_currentPrimaryMuzzle = primaryWeaponItems _currentUnit select 0;
		_currentPrimaryFlashlight = primaryWeaponItems _currentUnit select 1;
		_currentPrimaryOptics = primaryWeaponItems _currentUnit select 2;
		_currentPrimaryUnderBarrel = primaryWeaponItems _currentUnit select 3;
		_currentPrimaryMagazine = primaryWeaponMagazine _currentUnit select 0;
		if (count primaryWeaponMagazine _currentUnit == 2) then {_currentPrimaryMagazineGL = primaryWeaponMagazine _currentUnit select 1};
		if (isNil '_currentPrimaryMagazine') then {_currentPrimaryMagazine = ''};

		_get = (primaryWeapon _currentUnit) Call GetNamespace;

		if (_currentPrimaryMagazine != '') then {
			if (("1Rnd_HE_Grenade_shell" in ([(configFile >> "CfgMagazines" >> _currentPrimaryMagazine),true] call BIS_fnc_returnParents) OR "UGL_FlareWhite_F" in ([(configFile >> "CfgMagazines" >> _currentPrimaryMagazine),true] call BIS_fnc_returnParents)) AND count (_get select 8) > 0 AND count (_get select 15) > 0) then {
				_currentPrimaryMagazine = '';
				_currentPrimaryMagazineGL = primaryWeaponMagazine _currentUnit select 0;
			};
		};

		_currentSecondaryMuzzle = secondaryWeaponItems _currentUnit select 0;
		_currentSecondaryFlashlight = secondaryWeaponItems _currentUnit select 1;
		_currentSecondaryOptics = secondaryWeaponItems _currentUnit select 2;
		_currentSecondaryUnderBarrel = secondaryWeaponItems _currentUnit select 3;
		if !(secondaryWeaponMagazine _currentUnit select 0 == '') then {_currentSecondaryMagazine = secondaryWeaponMagazine _currentUnit select 0};

		_currentSidearmMuzzle = handgunItems _currentUnit select 0;
		_currentSidearmFlashlight = handgunItems _currentUnit select 1;
		_currentSidearmOptics = handgunItems _currentUnit select 2;
		_currentSidearmUnderBarrel = handgunItems _currentUnit select 3;
		if !(handgunMagazine _currentUnit select 0 == '') then {_currentSidearmMagazine = handgunMagazine _currentUnit select 0} else {_currentSidearmMagazine = ''};
		if ("ItemMap" in assignedItems _currentUnit) then {_currentItemMap = "ItemMap"};
		if ("ItemRadio" in assignedItems _currentUnit) then {_currentItemRadio = "ItemRadio"};
		if ("ItemCompass" in assignedItems _currentUnit) then {_currentItemCompass = "ItemCompass"};
		if ("ItemWatch" in assignedItems _currentUnit) then {_currentItemWatch = "ItemWatch"};
		if ("ItemGPS" in assignedItems _currentUnit) then {_currentItemGPS = "ItemGPS"} ;
		if ("O_UavTerminal" in assignedItems _currentUnit) then {_currentO_UavTerminal = "O_UavTerminal"};
		if ("B_UavTerminal" in assignedItems _currentUnit) then {_currentB_UavTerminal = "B_UavTerminal"};

		_currentCost = 0;
		_currentMagazines = magazines _currentUnit;
		_slistMagazines = [];

		{_get = _x Call GetNamespace;
			if (_get select QUERYGEARUPGRADE > _currentUpgrades select 0 ) then // Markus - If the magazine's gear level is higher than what's upgraded, then remove.
			{
				_currentMagazines = _currentMagazines - [_x];
				//diag_log format ["[CORE] Weapon found level is too high for current gear level, Req: %1. Current: %2. Name: %3", _get select QUERYGEARUPGRADE, _currentUpgrades select 0, _get select QUERYGEARLABEL];
				hint parseText(Format ["The %1 requires a gear level of %2. The current gear level is %3.", _get select QUERYGEARLABEL, _get select QUERYGEARUPGRADE, _currentUpgrades select 0]);
			};
			//diag_log format ["[CORE] Current mags: %1, level: %2", _x, _get select QUERYGEARUPGRADE];
		} forEach _currentMagazines;

		_currentPrimary = '';
		_currentSecondary = '';
		_currentSidearm = '';
		_sideGear = _currentWeapons;
		{if (!(_x in _all)) then {_sideGear = _sideGear - [_x]}} forEach _currentWeapons;
		_currentWeapons = _sideGear;

		_sideGear = _currentMagazines;
		_currentUpgrades = (sideJoinedText) Call GetSideUpgrades;
		{
			if (!(_x in _misc) && !(_x in _magazine)) then //&& !(_x in _explosiv)
			{
				_sideGear = _sideGear - [_x];
			};
		} forEach _currentMagazines; // Markus - If the magazine exists in the system, then keep it, otherwise don't display it.

		_currentMagazines = _sideGear;
		_currentPrimaryCost = 0;
		_currentSecondaryCost = 0;
		_currentSidearmCost = 0;
		_currentHeadgearCost = 0;
		_currentGogglesCost = 0;
		_currentHmdCost = 0;
		_currentBinocularCost = 0;
		_currentUniformCost = 0;
		_currentVestCost = 0;
		_currentBackpackA3Cost = 0;
		_currentPrimaryMuzzleCost = 0;
		_currentPrimaryUnderBarrelCost = 0;
		_currentPrimaryFlashlightCost = 0;
		_currentPrimaryOpticsCost = 0;
		_currentPrimaryMagazineCost = 0;
		_currentPrimaryMagazineGLCost = 0;
		_currentSidearmMuzzleCost = 0;
		_currentSidearmUnderBarrelCost = 0;
		_currentSidearmFlashlightCost = 0;
		_currentSidearmOpticsCost = 0;
		_currentSidearmMagazineCost = 0;
		_currentSecondaryMuzzleCost = 0;
		_currentSecondaryUnderBarrelCost = 0;
		_currentSecondaryFlashlightCost = 0;
		_currentSecondaryOpticsCost = 0;
		_currentSecondaryMagazineCost = 0;
		_currentItemMapCost = 0;
		_currentItemGPSCost = 0;
		_currentItemRadioCost = 0;
		_currentItemCompassCost = 0;
		_currentItemWatchCost = 0;
		_currentB_UavTerminalCost = 0;
		_currentO_UavTerminalCost = 0;
		_currentUniformListCargoCost = 0;
		_currentVestListCargoCost = 0;
		_currentBackpackA3ListCargoCost = 0;
//////////////////////////////////////////////////////////////////////////////////////ОТКРЫТО В ПЕРВЫЙ РАЗ//////////////////////////////////////////////////////////////
		{
			_cwep = _x;
			_get = (_cwep+"_W") Call GetNamespace;
			if (isNil '_get') then {
				_get = _cwep Call GetNamespace;
			};
			// Markus - Disallow buying gear outside of current gear level

			if (_get select QUERYGEARUPGRADE > _currentUpgrades select 0) then
			{
				diag_log format ["[CORE] Weapon found level is too high for current gear level, Req: %1. Current: %2. Name: %3", _get select QUERYGEARUPGRADE, _currentUpgrades select 0, _get select QUERYGEARLABEL];
				hint parseText(Format ["The %1 requires a gear level of %2. The current gear level is %3.", _get select QUERYGEARLABEL, _get select QUERYGEARUPGRADE, _currentUpgrades select 0]);
				_currentWeapons = _currentWeapons - [_x];
			} else {
				if !(isNil '_get') then {
					_found = false;
					_index = {_x == _cwep} count _primary;

					if (_index > 0) then {_currentPrimary = _cwep;_currentPrimaryCost = _get select QUERYGEARCOST;findDisplay 16000 displayCtrl _primaryIDC ctrlSetTooltip (_get select QUERYGEARLABEL) + " ["+ _currentPrimary + "]";ctrlSetText[_primaryIDC,_get select QUERYGEARPICTURE];_found = true};
					
					if !(_found) then {
						_index = {_x == _cwep} count _secondary;
						if (_index > 0) then {_currentSecondary = _cwep;_currentSecondaryCost = _get select QUERYGEARCOST;findDisplay 16000 displayCtrl _secondaryIDC ctrlSetTooltip (_get select QUERYGEARLABEL) + " ["+ _currentSecondary + "]";ctrlSetText[_secondaryIDC,_get select QUERYGEARPICTURE];_found = true};
						if !(_found) then {
							_index = {_x == _cwep} count _sidearm;
							if (_index > 0) then {_currentSidearm = _cwep;_currentSidearmCost = _get select QUERYGEARCOST;findDisplay 16000 displayCtrl _sidearmIDC ctrlSetTooltip (_get select QUERYGEARLABEL) + " ["+ _currentSidearm + "]";ctrlSetText[_sidearmIDC,_get select QUERYGEARPICTURE];_found = true};
						};
					};
				};
			};
		} forEach _currentWeapons;

//////////////////////////////////////////////////////////////////////////////////////ОТКРЫТО В ПЕРВЫЙ РАЗ//////////////////////////////////////////////////////////////
_array1 = ["Uniform","Vest","BackpackA3","Headgear","Goggles","Hmd","Binocular","PrimaryMuzzle","PrimaryFlashlight","PrimaryOptics","PrimaryUnderBarrel","SecondaryMuzzle","SecondaryFlashlight","SecondaryOptics","SecondaryUnderBarrel","sidearmMuzzle","sidearmFlashlight","sidearmOptics","sidearmUnderBarrel","PrimaryMagazine","ItemMap","ItemGPS","ItemRadio","ItemCompass",if (side player == west) then {"B_UavTerminal"} else {"O_UavTerminal"},"SecondaryMagazine","sidearmMagazine","PrimaryMagazineGL","ItemWatch"];
_array2 = [_uniform,_vest,_backpackA3,_headgear,_goggles,_hmd,_binocular,_accessories,_accessories,_accessories,_accessories,_accessories,_accessories,_accessories,_accessories,_accessories,_accessories,_accessories,_accessories,_magazine,_misc,_misc,_misc,_misc,_misc,_magazine,_magazine,_magazine,_misc];
for "_i" from 0 to (count _array1)-1 do {
if !(Call Compile Format ['_current%1',_array1 select _i] == "") then {
		_found = false;
		{
			_cwep = _x;
			_get = (_cwep+"_W") Call GetNamespace;
			if (isNil '_get') then {_get = _cwep Call GetNamespace;};
			//if (_get select QUERYGEARUPGRADE > _currentUpgrades select 0) then
			//{
			//	diag_log format ["[CORE] Weapon or Item found level is too high for current gear level, Req: %1. Current: %2. Name: %3", _get select QUERYGEARUPGRADE, _currentUpgrades select 0, _get select QUERYGEARLABEL];
			//	hint parseText(Format ["The %1 requires a gear level of %2. The current gear level is %3.", _get select QUERYGEARLABEL, _get select QUERYGEARUPGRADE, _currentUpgrades select 0]);
			//	_array2 select _i = _array2 select _i - [_x];
			//} else {
				if !(isNil '_get') then {
					if !(_found) then {
						if (Call Compile Format ['_current%1',_array1 select _i] == _x) then {
							//Call Compile Format ['_current%1 = %2',_array1 select _i,_cwep];
							Call Compile Format ['_current%1Cost = %2',_array1 select _i,_get select QUERYGEARCOST];
							Call Compile Format ['ctrlSetText[_%1IDC,"%2"]',_array1 select _i,_get select QUERYGEARPICTURE];
							Call Compile Format ['findDisplay 16000 displayCtrl _%1IDC ctrlSetTooltip "%2 [%3]"',_array1 select _i,_get select QUERYGEARLABEL,_x];
							_found = true;
						};
					};
				};
			//};
		} forEach (_array2 select _i);
	};
};
		if (_currentUniform != '') then {
			_uniformItemCargo = getItemCargo uniformContainer _currentUnit;
			_uniformMagazineCargo = getMagazineCargo uniformContainer _currentUnit;
			_currentUniformListCargo = (_uniformItemCargo select 0) + (_uniformMagazineCargo select 0);
			_currentUniformListCargoCount = (_uniformItemCargo select 1) + (_uniformMagazineCargo select 1);
			{for "_i" from 1 to (_currentUniformListCargoCount select _forEachIndex) do {
			_get = _x Call GetNamespace;
			_currentUniformListCargoCost = _currentUniformListCargoCost + (_get select QUERYGEARCOST);
			//get item mass with 0 value
			if ((_get select 16) == 0) then {
				//hint format ["WARNING: %1 have 0 mass value!",_x];
				_get set [16,(getNumber(configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> _x >> "WeaponSlotsInfo" >> "mass"))];
			};
			}} forEach _currentUniformListCargo;
			[_currentUniformListCargo,_currentUniformListCargoCount,633,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
			_currentSlot = _currentUniform;
			_currentContainerListCargo = _currentUniformListCargo;
			_currentContainerCost = _currentUniformListCargoCost;			
			_currentContainerCount = _currentUniformListCargoCount;
			ctrlSetText[5001,""];ctrlSetText[5001,format["%1",(getContainerMaxLoad _currentUniform)]];
		};
		if (_currentVest != '') then {
			_vestItemCargo = getItemCargo vestContainer _currentUnit;
			_vestMagazineCargo = getMagazineCargo vestContainer _currentUnit;
			_currentVestListCargo = (_vestItemCargo select 0) + (_vestMagazineCargo select 0);
			_currentVestListCargoCount = (_vestItemCargo select 1) + (_vestMagazineCargo select 1);
			{for "_i" from 1 to (_currentVestListCargoCount select _forEachIndex) do {
			_get = _x Call GetNamespace;
			_currentVestListCargoCost = _currentVestListCargoCost + (_get select QUERYGEARCOST);
			//get item mass with 0 value
			if ((_get select 16) == 0) then {
				//hint format ["WARNING: %1 have 0 mass value!",_x];
				_get set [16,(getNumber(configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> _x >> "WeaponSlotsInfo" >> "mass"))];
			};
			}} forEach _currentVestListCargo;
			[_currentVestListCargo,_currentVestListCargoCount,638,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
			ctrlSetText[5002,""];ctrlSetText[5002,format["%1",(getContainerMaxLoad _currentVest)]];
		};
		if (_currentBackpackA3 != '') then {
			_backpackA3ItemCargo = getItemCargo backpackContainer _currentUnit;
			_backpackA3MagazineCargo = getMagazineCargo backpackContainer _currentUnit;	
			_currentBackpackA3ListCargo = (_backpackA3ItemCargo select 0) + (_backpackA3MagazineCargo select 0);
			_currentBackpackA3ListCargoCount = (_backpackA3ItemCargo select 1) + (_backpackA3MagazineCargo select 1);
			{for "_i" from 1 to (_currentBackpackA3ListCargoCount select _forEachIndex) do {
			_get = _x Call GetNamespace;
			_currentBackpackA3ListCargoCost = _currentBackpackA3ListCargoCost + (_get select QUERYGEARCOST);
			//get item mass with 0 value
			if ((_get select 16) == 0) then {
				//hint format ["WARNING: %1 have 0 mass value!",_x];
				_get set [16,(getNumber(configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> _x >> "WeaponSlotsInfo" >> "mass"))];
			};
			}} forEach _currentBackpackA3ListCargo;
			[_currentBackpackA3ListCargo,_currentBackpackA3ListCargoCount,619,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
			ctrlSetText[5003,""];ctrlSetText[5003,format["%1",(getContainerMaxLoad _currentBackpackA3)]];
		};
		if !(isNil '_veh') then {
			_currentVehicleListCargo = [];
			_currentVehicleListCargoCount = [];
			{_currentVehicleListCargo append (_x select 0);_currentVehicleListCargoCount append (_x select 1)} forEach [getWeaponCargo _veh,getMagazineCargo _veh,getItemCargo _veh];
			[_currentVehicleListCargo,_currentVehicleListCargoCount,618,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
			ctrlSetText[5004,format["%1",getNumber(configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad")]];
		};
			_display DisplayCtrl 6304 progressSetPosition loadUniform _currentUnit;_display DisplayCtrl 6304 ctrlSetTextColor [0.9,0.9,0.9,0.9];
			_display DisplayCtrl 6305 progressSetPosition loadVest _currentUnit;_display DisplayCtrl 6305 ctrlSetTextColor [0.9,0.9,0.9,0.9];
			_display DisplayCtrl 6306 progressSetPosition loadBackpack _currentUnit;_display DisplayCtrl 6306 ctrlSetTextColor [0.9,0.9,0.9,0.9];
			_display DisplayCtrl 6308 progressSetPosition load _currentUnit;
		{
			_get = _x Call GetNamespace;
			if (_get select QUERYGEARUPGRADE > _currentUpgrades select 0 ) then // Markus - If the magazine's gear level is higher than what's upgraded, then remove.
			{
				_currentMagazines = _currentMagazines - [_x];
				//diag_log format ["[CORE]2 Weapon found level is too high for current gear level, Req: %1. Current: %2. Name: %3", _get select QUERYGEARUPGRADE, _currentUpgrades select 13, _get select QUERYGEARLABEL];
				hint parseText(Format ["The %1 requires a gear level of %2. The current gear level is %3.", _get select QUERYGEARLABEL, _get select QUERYGEARUPGRADE, _currentUpgrades select 0]);
			};
			//diag_log format ["[CORE]2 Current mags: %1, level: %2", _x, _get select QUERYGEARUPGRADE];
		} forEach _currentMagazines;

		_currentWeapons = _currentWeapons - _misc;
		_data = [_currentMagazines] Call DisplayInventory;
		_inventorySlots = _data select 0;
		_sidearmInventorySlots = _data select 1;
		_miscItemSlots = _data select 2; //?
		_currentCost = _currentCost + (_data select 3) + _currentPrimaryCost + _currentSecondaryCost + _currentSidearmCost + _currentHeadgearCost + _currentGogglesCost + _currentHmdCost + _currentBinocularCost + _currentUniformCost + _currentVestCost + _currentBackpackA3Cost + _currentPrimaryMuzzleCost + _currentPrimaryUnderBarrelCost + _currentPrimaryFlashlightCost + _currentPrimaryOpticsCost + _currentPrimaryMagazineCost + _currentPrimaryMagazineGLCost + _currentSidearmMuzzleCost + _currentSidearmUnderBarrelCost + _currentSidearmFlashlightCost + _currentSidearmOpticsCost + _currentSidearmMagazineCost + _currentSecondaryMuzzleCost + _currentSecondaryUnderBarrelCost + _currentSecondaryFlashlightCost + _currentSecondaryOpticsCost + _currentSecondaryMagazineCost + _currentUniformListCargoCost + _currentVestListCargoCost + _currentBackpackA3ListCargoCost + _currentItemMapCost + _currentItemGPSCost + _currentItemRadioCost + _currentItemCompassCost + _currentItemWatchCost + _currentO_UavTerminalCost + _currentB_UavTerminalCost;
		_cost = 0;
		_updateUnit = false;
		//select active slot again (bug fix)
		_slot = WF_Logic getVariable 'Slot';
		WF_Logic setVariable ['lbMainAction','SlotActivate'];
		if (_slot == "Uniform" ) then {WF_Logic setVariable ['Slot','Uniform']};
		if (_slot == "Vest") then {WF_Logic setVariable ['Slot','Vest']};
		if (_slot == "BackpackA3") then {WF_Logic setVariable ['Slot','BackpackA3']};
		if (_slot == "Vehicle") then {WF_Logic setVariable ['Slot','Vehicle']};
		};
	/* _updateUnit END */
	//--- Show inventory (Icons).
	if (_displayInv) then {
		_displayInv = false;
		_upgradeCost = 0;
		//_data = [_currentMagazines] Call DisplayInventory;
		//_inventorySlots = _data select 0;
		//_sidearmInventorySlots = _data select 1;
		//_miscItemSlots = _data select 2;
		//_upgradeCost = _upgradeCost + (_data select 3);

		if (_currentPrimary != '') then  {_upgradeCost = _upgradeCost + _currentPrimaryCost};
		if (_currentSecondary != '') then  {_upgradeCost = _upgradeCost + _currentSecondaryCost};
		if (_currentSidearm != '') then  {_upgradeCost = _upgradeCost + _currentSidearmCost};
		if (_currentHeadgear != '') then  {_upgradeCost = _upgradeCost + _currentHeadgearCost};
		if (_currentGoggles != '') then  {_upgradeCost = _upgradeCost + _currentGogglesCost};
		if (_currentHmd != '') then  {_upgradeCost = _upgradeCost + _currentHmdCost};
		if (_currentBinocular != '') then  {_upgradeCost = _upgradeCost + _currentBinocularCost};
		if (_currentUniform != '') then  {_upgradeCost = _upgradeCost + _currentUniformCost; _upgradeCost = _upgradeCost + _currentUniformListCargoCost;/*[_currentUniform,_currentUniformListCargo,_currentUniformListCargoCount,6304] execVM "Client\Functions\Client_UIUpdateLoad.sqf";*/};
		if (_currentVest != '') then  {_upgradeCost = _upgradeCost + _currentVestCost; _upgradeCost = _upgradeCost + _currentVestListCargoCost;/*[_currentVest,_currentVestListCargo,_currentVestListCargoCount,6305] execVM "Client\Functions\Client_UIUpdateLoad.sqf";*/};
		if (_currentBackpackA3 != '') then  {_upgradeCost = _upgradeCost + _currentBackpackA3Cost; _upgradeCost = _upgradeCost + _currentBackpackA3ListCargoCost;/*[_currentBackpackA3,_currentBackpackA3ListCargo,_currentBackpackA3ListCargoCount,6306] execVM "Client\Functions\Client_UIUpdateLoad.sqf";*/};
		if (_currentPrimaryMuzzle != '') then  {_upgradeCost = _upgradeCost + _currentPrimaryMuzzleCost};
		if (_currentPrimaryUnderBarrel != '') then  {_upgradeCost = _upgradeCost + _currentPrimaryUnderBarrelCost};
		if (_currentPrimaryFlashlight != '') then  {_upgradeCost = _upgradeCost + _currentPrimaryFlashlightCost};
		if (_currentPrimaryOptics != '') then  {_upgradeCost = _upgradeCost + _currentPrimaryOpticsCost};
		if (_currentPrimaryMagazine != '') then  {_upgradeCost = _upgradeCost + _currentPrimaryMagazineCost};
		if (_currentPrimaryMagazineGL != '') then  {_upgradeCost = _upgradeCost + _currentPrimaryMagazineGLCost};
		if (_currentSecondaryMuzzle != '') then  {_upgradeCost = _upgradeCost + _currentSecondaryMuzzleCost};
		if (_currentSecondaryUnderBarrel != '') then  {_upgradeCost = _upgradeCost + _currentSecondaryUnderBarrelCost};
		if (_currentSecondaryFlashlight != '') then  {_upgradeCost = _upgradeCost + _currentSecondaryFlashlightCost};
		if (_currentSecondaryOptics != '') then  {_upgradeCost = _upgradeCost + _currentSecondaryOpticsCost};
		if (_currentSecondaryMagazine != '') then  {_upgradeCost = _upgradeCost + _currentSecondaryMagazineCost};
		if (_currentSidearmMuzzle != '') then  {_upgradeCost = _upgradeCost + _currentSidearmMuzzleCost};
		if (_currentSidearmUnderBarrel != '') then  {_upgradeCost = _upgradeCost + _currentSidearmUnderBarrelCost};
		if (_currentSidearmFlashlight != '') then  {_upgradeCost = _upgradeCost + _currentSidearmFlashlightCost};
		if (_currentSidearmOptics != '') then  {_upgradeCost = _upgradeCost + _currentSidearmOpticsCost};
		if (_currentSidearmMagazine != '') then  {_upgradeCost = _upgradeCost + _currentSidearmMagazineCost};
		if (_currentItemMap != '') then  {_upgradeCost = _upgradeCost + _currentItemMapCost};
		if (_currentItemGPS != '') then  {_upgradeCost = _upgradeCost + _currentItemGPSCost};
		if (_currentItemRadio != '') then  {_upgradeCost = _upgradeCost + _currentItemRadioCost};
		if (_currentItemCompass != '') then  {_upgradeCost = _upgradeCost + _currentItemCompassCost};
		if (_currentItemWatch != '') then  {_upgradeCost = _upgradeCost + _currentItemWatchCost};
		if (_currentO_UavTerminal != '') then  {_upgradeCost = _upgradeCost + _currentO_UavTerminalCost};
		if (_currentB_UavTerminal != '') then  {_upgradeCost = _upgradeCost + _currentB_UavTerminalCost};
		_cost = _upgradeCost - _currentCost;
		//if (_cost < 0) then {_cost = 0};
	};
	
	//--- Buy a loadout.
	if (buyLoadout) then {
		buyLoadout = false;
		_funds = Call GetPlayerFunds;
		if (_funds >= _cost) then {
			//if (_cost < 0) then {_cost = 0};
			(-_cost) Call ChangePlayerFunds;
			//--- Player's respawn loadout.
				_currentUniformListCargoFinal = [];
				_currentVestListCargoFinal = [];
				_currentBackpackA3ListCargoFinal = [];
				{for "_i" from 1 to (_currentUniformListCargoCount select _forEachIndex) do {_currentUniformListCargoFinal = _currentUniformListCargoFinal + [_x]};} forEach _currentUniformListCargo;
				{for "_i" from 1 to (_currentVestListCargoCount select _forEachIndex) do {_currentVestListCargoFinal = _currentVestListCargoFinal + [_x]};} forEach _currentVestListCargo;
				{for "_i" from 1 to (_currentBackpackA3ListCargoCount select _forEachIndex) do {_currentBackpackA3ListCargoFinal = _currentBackpackA3ListCargoFinal + [_x]};} forEach _currentBackpackA3ListCargo;

			if (_currentUnit == player && (vehicleVarName player == clientIdentification)) then {
				respawnWeapons = _currentWeapons;
				respawnUniform = _currentUniform;
				respawnVest = _currentVest;
				respawnBackpack = _currentBackpackA3;
				respawnHeadgear = _currentHeadgear;
				respawnGoggles = _currentGoggles;
				respawnHMD = _currentHmd;
				respawnBinocular = _currentBinocular;
				respawnPrimaryAcc = [_currentPrimaryMuzzle, _currentPrimaryUnderBarrel, _currentPrimaryFlashlight, _currentPrimaryOptics];
				respawnSecondaryAcc = [_currentSecondaryMuzzle,_currentSecondaryUnderBarrel,_currentSecondaryFlashlight,_currentSecondaryOptics];
				respawnSidearmAcc = [_currentSidearmMuzzle,_currentSidearmUnderBarrel,_currentSidearmFlashlight,_currentSidearmOptics];
				respawnAmmo = [_currentPrimaryMagazine,_currentPrimaryMagazineGL];
				respawnSecondaryMagazine = _currentSecondaryMagazine;
				respawnSidearmMagazine = _currentSidearmMagazine;
				respawnUniformListCargo = _currentUniformListCargoFinal;
				respawnVestListCargo = _currentVestListCargoFinal;
				respawnBackpackListCargo = _currentBackpackA3ListCargoFinal;
				respawnItems = [_currentItemMap, _currentItemGPS, _currentItemRadio, _currentItemCompass, _currentItemWatch, _currentB_UavTerminal, _currentO_UavTerminal];
				respawnBag = nil;//?
				respawnBagContent = [[],[]];//?
			};

			/* Equip the core before the backpack */
			[_currentUnit,_currentWeapons,_currentUniform,_currentVest,_currentBackpackA3,_currentHeadgear,_currentGoggles,_currentHmd,_currentBinocular,
			[_currentPrimaryMuzzle,_currentPrimaryUnderBarrel,_currentPrimaryFlashlight,_currentPrimaryOptics],
			[_currentSecondaryMuzzle,_currentSecondaryUnderBarrel,_currentSecondaryFlashlight,_currentSecondaryOptics],
			[_currentSidearmMuzzle,_currentSidearmUnderBarrel,_currentSidearmFlashlight,_currentSidearmOptics],
			[_currentPrimaryMagazine,_currentPrimaryMagazineGL],_currentSecondaryMagazine,_currentSidearmMagazine,
			_currentUniformListCargoFinal,_currentVestListCargoFinal,_currentBackpackA3ListCargoFinal,
			[_currentItemMap,_currentItemGPS,_currentItemRadio,_currentItemCompass,_currentItemWatch,_currentB_UavTerminal,_currentO_UavTerminal]
			] execVM "Common\Functions\Common_EquipLoadout.sqf";
			_data = [_currentMagazines] Call DisplayInventory;
			_inventorySlots = _data select 0;
			_sidearmInventorySlots = _data select 1;
			_miscItemSlots = _data select 2; //?
			_currentCost = (_data select 3) + _currentPrimaryCost + _currentSecondaryCost + _currentSidearmCost + _currentHeadgearCost + _currentGogglesCost + _currentHmdCost + _currentBinocularCost + _currentUniformCost + _currentVestCost + _currentBackpackA3Cost + _currentPrimaryMuzzleCost + _currentPrimaryUnderBarrelCost + _currentPrimaryFlashlightCost + _currentPrimaryOpticsCost + _currentPrimaryMagazineCost + _currentPrimaryMagazineGLCost + _currentSidearmMuzzleCost + _currentSidearmUnderBarrelCost + _currentSidearmFlashlightCost + _currentSidearmOpticsCost + _currentSidearmMagazineCost + _currentSecondaryMuzzleCost + _currentSecondaryUnderBarrelCost + _currentSecondaryFlashlightCost + _currentSecondaryOpticsCost + _currentSecondaryMagazineCost + _currentItemMapCost + _currentItemGPSCost + _currentItemRadioCost + _currentItemCompassCost + _currentItemWatchCost + _currentB_UavTerminalCost + _currentO_UavTerminalCost + _currentUniformListCargoCost + _currentVestListCargoCost + _currentBackpackA3ListCargoCost;
			respawnGearCost = _currentCost;
			_cost = 0;
		} else {
			hint parseText(Format [localize "STR_WF_INFO_Funds_Missing_Gear",_cost - _funds]);
		};
	sleep 0.5;
	_changed = true;
	_updateUnit = true;
	};
	//--- Remove an existing template.
	if (deleteLoadout) then {
		deleteLoadout = false;
		//--- Behave only on template filler.
		if (_filler == 'template') then {
			_currentRow1 = lnbCurSelRow _lb;
			_currentValue = lnbValue[_lb,[_currentRow1,0]];
			//--- Update the templates.
			_template set [_currentValue, "DELETE"];
			_template = _template - ["DELETE"];
			WF_Logic setVariable["templateClasses",_template];
			_templateCosts set [_currentValue, "DELETE"];
			_templateCosts = _templateCosts - ["DELETE"];
			WF_Logic setVariable["templateCosts",_templateCosts];
			_templatePictures set [_currentValue, "DELETE"];
			_templatePictures = _templatePictures - ["DELETE"];
			WF_Logic setVariable["templatePictures",_templatePictures];
			_templateNames set [_currentValue, "DELETE"];
			_templateNames = _templateNames - ["DELETE"];
			WF_Logic setVariable["templateNames",_templateNames];
			_templateMags1 set [_currentValue, "DELETE"];
			_templateMags1 = _templateMags1 - ["DELETE"];
			WF_Logic setVariable["templateMags1",_templateMags1];
			_templateMags2 set [_currentValue, "DELETE"];
			_templateMags2 = _templateMags2 - ["DELETE"];
			WF_Logic setVariable["templateMags2",_templateMags2];
			_templateMags3 set [_currentValue, "DELETE"];
			_templateMags3 = _templateMags3 - ["DELETE"];
			WF_Logic setVariable["templateMags3",_templateMags3];
			_templateItems set [_currentValue, "DELETE"];
			_templateItems = _templateItems - ["DELETE"];
			WF_Logic setVariable["templateItems",_templateItems];
			_templateSpecs set [_currentValue, "DELETE"];
			_templateSpecs = _templateSpecs - ["DELETE"];
			WF_Logic setVariable["templateSpecs",_templateSpecs];
			_templateUpgrades set [_currentValue, "DELETE"];
			_templateUpgrades = _templateUpgrades - ["DELETE"];
			WF_Logic setVariable["templateUpgrades",_templateUpgrades];
			_templateAllowed set [_currentValue, "DELETE"];
			_templateAllowed = _templateAllowed - ["DELETE"];
			WF_Logic setVariable["templateAllowed",_templateAllowed];
			_templatePrimaryItems set [_currentValue, "DELETE"];
			_templatePrimaryItems = _templatePrimaryItems - ["DELETE"];
			WF_Logic setVariable['templatePrimaryItems',_templatePrimaryItems];
			_templateSecondaryItems set [_currentValue, "DELETE"];
			_templateSecondaryItems = _templateSecondaryItems - ["DELETE"];
			WF_Logic setVariable['templateSecondaryItems',_templateSecondaryItems];
			_templateSidearmItems set [_currentValue, "DELETE"];
			_templateSidearmItems = _templateSidearmItems - ["DELETE"];
			WF_Logic setVariable['templateSidearmItems',_templateSidearmItems];
			_updateFiller = true;
		};
	};
	
	if (saveLoadout) then {
		saveLoadout = false;
		//--- Behave only on template filler.
		if (_filler == 'template') then {
			//--- Update the templates.
			_desc = '';
			_pict = '';
			_temp = [];
			_temp1 = []; //PrimaryItems
			_temp2 = []; //SecondaryItems
			_temp3 = []; //SidearmItems
			_cAllow = true;
			_upgr = 0;
			_pallow = true;
			_sallow = true;
			_currentSpecials = [_currentHmd,_currentBinocular,_currentUniform,_currentVest,_currentBackpackA3,_currentGoggles,_currentHeadgear];
			_currentItems = [_currentItemMap,_currentItemRadio,_currentItemCompass,_currentItemWatch,_currentItemGPS,_currentO_UavTerminal,_currentB_UavTerminal];

			_tempMags1 = [];
			_tempMags2 = [];
			_tempMags3 = [];
			{for "_i" from 1 to (_currentUniformListCargoCount select _forEachIndex) do {_tempMags1 = _tempMags1 + [_x]};} forEach _currentUniformListCargo;
			{for "_i" from 1 to (_currentVestListCargoCount select _forEachIndex) do {_tempMags2 = _tempMags2 + [_x]};} forEach _currentVestListCargo;
			{for "_i" from 1 to (_currentBackpackA3ListCargoCount select _forEachIndex) do {_tempMags3 = _tempMags3 + [_x]};} forEach _currentBackpackA3ListCargo;

			if (_currentPrimary != '') then {
				_get = _currentPrimary Call GetNamespace;
				_temp = _temp + [_currentPrimary];
				_desc = _desc + (_get select QUERYGEARLABEL);
				_pict = (_get select QUERYGEARPICTURE);
				if !(_get select QUERYGEARALLOWED) then {_cAllow = false};
				_upgr = _get select QUERYGEARUPGRADE;
				_pallow = _get select QUERYGEARALLOWTWO;
				{
				if !(_x == "") then {_temp1 = _temp1 + [_x]};
				} forEach [_currentPrimaryMuzzle,_currentPrimaryUnderBarrel,_currentPrimaryFlashlight,_currentPrimaryOptics,_currentPrimaryMagazine,_currentPrimaryMagazineGL];
			};
			if (_currentSecondary != '') then {
				_get = (_currentSecondary+"_W") Call GetNamespace;
				if (isNil '_get') then {
					_get = _currentSecondary Call GetNamespace;
				};
				_temp = _temp + [_currentSecondary];
				if (_desc != '') then { _desc = _desc + "/"};
				//--- Needless to check if the primary is prohibed.
				_desc = _desc + (_get select QUERYGEARLABEL);
				if (_pict == '') then {_pict = _get select QUERYGEARPICTURE};
				if (_cAllow) then {if !(_get select QUERYGEARALLOWED) then {_cAllow = false}};
				if ((_get select QUERYGEARUPGRADE) > _upgr) then {_upgr = (_get select QUERYGEARUPGRADE)};
				_sallow = _get select QUERYGEARALLOWTWO;
				{
				if !(_x == "") then {_temp2 = _temp2 + [_x]};
				} forEach [_currentSecondaryMuzzle,_currentSecondaryUnderBarrel,_currentSecondaryFlashlight,_currentSecondaryOptics,_currentSecondaryMagazine];
			};
			if (_currentSidearm != '') then {
				_get = _currentSidearm Call GetNamespace;
				_temp = _temp + [_currentSidearm];
				if (_desc != '') then { _desc = _desc + "/"};
				//--- Needless to check if the secondary is prohibed.
				_desc = _desc + (_get select QUERYGEARLABEL);
				if (_pict == '') then {_pict = _get select QUERYGEARPICTURE};
				if (_cAllow) then {if !(_get select QUERYGEARALLOWED) then {_cAllow = false}};
				if ((_get select QUERYGEARUPGRADE) > _upgr) then {_upgr = (_get select QUERYGEARUPGRADE)};
				{
				if !(_x == "") then {_temp3 = _temp3 + [_x]};
				} forEach [_currentSidearmMuzzle,_currentSidearmUnderBarrel,_currentSidearmFlashlight,_currentSidearmOptics,_currentSidearmMagazine];				
			};
			if (_pallow || _sallow || !paramExtendedInventory) then {
				_template = _template + [_temp];
				WF_Logic setVariable["templateClasses",_template];
				_templateCosts = _templateCosts + [(_cost + _currentCost)];
				WF_Logic setVariable["templateCosts",_templateCosts];
				_templatePictures = _templatePictures + [_pict];
				WF_Logic setVariable["templatePictures",_templatePictures];
				_templateNames = _templateNames + [_desc];
				WF_Logic setVariable["templateNames",_templateNames];
				_templateMags1 = _templateMags1 + [_tempMags1];
				WF_Logic setVariable["templateMags1",_templateMags1];
				_templateMags2 = _templateMags2 + [_tempMags2];
				WF_Logic setVariable["templateMags2",_templateMags2];
				_templateMags3 = _templateMags3 + [_tempMags3];
				WF_Logic setVariable["templateMags3",_templateMags3];
				_templateItems = _templateItems + [_currentItems];
				WF_Logic setVariable["templateItems",_templateItems];
				_templateSpecs = _templateSpecs + [_currentSpecials];
				WF_Logic setVariable["templateSpecs",_templateSpecs];
				_templateUpgrades = _templateUpgrades + [_upgr];
				WF_Logic setVariable["templateUpgrades",_templateUpgrades];
				_templateAllowed = _templateAllowed + [_cAllow];
				WF_Logic setVariable["templateAllowed",_templateAllowed];
				_templatePrimaryItems = _templatePrimaryItems + [_temp1];
				WF_Logic setVariable['templatePrimaryItems',_templatePrimaryItems];
				_templateSecondaryItems = _templateSecondaryItems + [_temp2];
				WF_Logic setVariable['templateSecondaryItems',_templateSecondaryItems];
				_templateSidearmItems = _templateSidearmItems + [_temp3];
				WF_Logic setVariable['templateSidearmItems',_templateSidearmItems];
				_updateFiller = true;
			} else {
				hint parseText (localize 'STR_WF_INFO_Gear_AllowTwo');
			};
		};
	};
	
	if (dropInVehicle) then {
		dropInVehicle = false;
		(-((_ItemForVehicle Call GetNamespace) select 4)) Call ChangePlayerFunds;
		_cfg_name = (_ItemForVehicle Call GetNamespace) select 2;
		if (_cfg_name == "CfgVehicles") then {_veh addBackpackCargoGlobal [_ItemForVehicle, 1]};
		if (_cfg_name == "CfgWeapons" || _cfg_name == "CfgGlasses") then {_veh addItemCargoGlobal [_ItemForVehicle, 1];};
		if (_cfg_name == "CfgMagazines") then {_veh addMagazineCargoGlobal [_ItemForVehicle, 1]};

		_currentVehicleListCargo = [];
		_currentVehicleListCargoCount = [];
		_vehicleItemsMass = 0;
		{_currentVehicleListCargo append (_x select 0);_currentVehicleListCargoCount append (_x select 1)} forEach [getWeaponCargo _veh,getMagazineCargo _veh,getItemCargo _veh];
			{
				for "_i" from 0 to (_currentVehicleListCargoCount select _forEachIndex)-1 do {
					_vehicleItemsMass = _vehicleItemsMass + (getNumber(configfile >> "CfgWeapons" >> _x >> "WeaponSlotsInfo" >> "mass")) + (getNumber(configfile >> "CfgWeapons" >> _x >> "ItemInfo" >> "mass")) + (getNumber(configfile >> "CfgMagazines" >> _x >> "mass"));
				};
			} forEach _currentVehicleListCargo;
		_vehicleLoad = _vehicleItemsMass/getNumber (configFile >> "CfgVehicles" >> (typeOf _veh) >> "maximumLoad");
		lnbClear 618;
		[_currentVehicleListCargo,_currentVehicleListCargoCount,618,0] execVM "Client\Functions\Client_UIContainerFillList.sqf";
		_display DisplayCtrl 6196 progressSetPosition _vehicleLoad;
	};

	if (_GearUpgradeInfo) then {
		_GearUpgradeInfo = false;
		_upgrades = (sideJoinedText) Call GetSideUpgrades;
		_level = _upgrades select 0;
		switch (_level) do {
			case 1 : {ctrlSetText [90014,'\rwm_core_ui\Images\gui\upglevel1.paa']};
			case 2 : {ctrlSetText [90014,'\rwm_core_ui\Images\gui\upglevel2.paa']};
			case 3 : {ctrlSetText [90014,'\rwm_core_ui\Images\gui\upglevel3.paa']};
		};
		_type = [typeOf _currentUnit, 'displayName'] Call GetConfigInfo;
		ctrlSetText [3852, localize 'STR_WF_GEAR_MenuEquip' + Format[": %1",name _currentUnit]];
	};
	//--- Loadout Cost. 90009
	ctrlSetText[3850,Format[localize 'STR_WF_GEAR_Cost',_currentCost]];
	//--- Player's Cash.
	ctrlSetText[3851,Format["$ %1",Call GetPlayerFunds]]; //---changes-MrNiceGuy
	ctrlSetText[90009,Format[localize 'STR_WF_GEAR_Cost2',_currentCost + _cost,_cost]];
	_lastFiller = _filler;
	sleep 0.05;
	
	//--- Back Button.
	if (Warfare_MenuAction == 1) exitWith { //---added-MrNiceGuy
		Warfare_MenuAction = -1;
		closeDialog 0;
		createDialog "WF_Menu";
	};
	if (Call GetPlayerFunds > 0 AND _filler != 'template' AND _vehicleLoad <= 1 AND !isNil '_veh') then {ctrlEnable [3904,true];ctrlSetText [39043,'\rwm_core_ui\Images\gui\gear_menu_yes_ca.paa'];} else {ctrlEnable [3904,false];ctrlSetText [39043,'\rwm_core_ui\Images\gui\gear_menu_no_ca.paa'];};
};

//--- Variables destruction.
WF_Logic setVariable ['lbChange',nil];
WF_Logic setVariable ['lbMainAction',nil];
WF_Gear_Hotkeys = nil;
primClicked = nil;
secoClicked = nil;
sideClicked = nil;
buyLoadout = nil;
saveLoadout = nil;
deleteLoadout = nil;
dropInVehicle = nil;

(findDisplay 16000) displayRemoveEventHandler ['KeyDown',_disp];