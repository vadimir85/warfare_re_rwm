Private ["_ItemsMass","_currentContainerListCargo","_currentContainerCount"];

_display = _this select 0;
_currentContainer = _this select 1;
_currentContainerListCargo = _this select 2;
_currentContainerCount = _this select 3;
_loadIDC = _this select 4;

_maxLoad = getContainerMaxLoad _currentContainer;
_loadContainer = 0;

if (_maxLoad > 0) then {
	_ItemsMass = 0;
	{
		for "_i" from 0 to (_currentContainerCount select _forEachIndex)-1 do {
		_ItemsMass = _ItemsMass + ((_x Call GetNamespace) select 16);
	};

} foreach _currentContainerListCargo;

_loadContainer = (_ItemsMass/_maxLoad);

	if (_loadContainer <= 1) then {
		_display DisplayCtrl _loadIDC ctrlSetTextColor [0.9,0.9,0.9,0.9];
		_display DisplayCtrl _loadIDC progressSetPosition _loadContainer;
	};
	if (_loadContainer > 1) then {
		_display DisplayCtrl _loadIDC ctrlSetTextColor [0.9,0,0,0.9];
		_display DisplayCtrl _loadIDC progressSetPosition 1;
	};
	
} else {

	if (count _currentContainerListCargo == 0) then {
		_display DisplayCtrl _loadIDC ctrlSetTextColor [0.9,0.9,0.9,0.9];
		_display DisplayCtrl _loadIDC progressSetPosition 0;
	} else {
		_display DisplayCtrl _loadIDC ctrlSetTextColor [0.9,0,0,0.9];
		_display DisplayCtrl _loadIDC progressSetPosition 1;
	};
};