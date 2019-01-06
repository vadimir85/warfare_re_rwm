Private ['_currentContainerListCargo','_currentContainerCount','_get'];

_currentContainerListCargo = _this select 0;
_currentSlot = _this select 1;
_currentContainerCount = _this select 2;
_currentLoad = _this select 3;
_maxLoad = _this select 4;
_maxLoad = getContainerMaxLoad _currentSlot;
_get = "";

{for "_i" from 1 to (_currentContainerCount select _forEachIndex) do {
	_get = _x Call GetNamespace;
	_currentLoad = _currentLoad + (_get select 16);
}} forEach _currentContainerListCargo;

if (_maxLoad > 0) then {_currentLoad = ((_currentLoad*100)/getContainerMaxLoad _currentSlot)/100};