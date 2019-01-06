
Private ['_add','_currentGearUpgr','_count','_get','_i','_listBox','_listNames','_u'];
_listNames = _this select 0;
_count = _this select 1;
_listBox = _this select 2;
_i = _this select 3;
_u = _this select 3;

_get = [];

_currentGearUpgr = ((sideJoinedText) Call GetSideUpgrades) select 0;

{
	/* Get */
	_get = _x Call GetNamespace;

	if !(isNil '_get') then {
		if ((_get select QUERYGEARUPGRADE) <= _currentGearUpgr) then {
			_add = true;
			if (paramGearRestriction && !gearInRange) then {
				if !(_get select QUERYGEARALLOWED) then {_add = false};
			};
			if (_add) then {
				lnbAddRow [_listBox,[(_get select QUERYGEARLABEL),str(_count select _forEachIndex)]];
				lnbSetPicture [_listBox,[_i,0],_get select QUERYGEARPICTURE];
				lnbSetValue [_listBox,[_i,0],_u];
				Call Compile Format ['(findDisplay 16000 displayCtrl %1) lbSetTooltip [%2, "$%3 [%4]"]',_listBox,_i*2,(_get select QUERYGEARCOST) * (_count select _forEachIndex),_x];
				_i = _i + 1;
			};
		};
	};
	_u = _u + 1;
} forEach _listNames;