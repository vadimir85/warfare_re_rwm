Private ["_unit","_deathMarkerColor","_deathMarkerSize","_deathMarkerType","_delete","_deletePrevious","_markerColor","_markerName","_markerSize","_markerType","_markerText","_refreshRate","_trackDeath","_tracked","_side"];

waitUntil {!isNil 'commonInitComplete'};

_markerType = _this select 0;
_markerColor = _this select 1;
_markerSize = _this select 2;
_markerText = _this select 3;
_markerName = _this select 4;
_tracked = _this select 5;
_refreshRate = _this select 6;
_trackDeath = _this select 7;
_deathMarkerType = _this select 8;
_deathMarkerColor = _this select 9;
_deletePrevious = _this select 10;
_side = _this select 11;

_deathMarkerSize = [1,1];
// Markus - Override for marker refresh rate
Private ["_OverrideRefreshRate"];
_OverrideRefreshRate = 2;
if (_refreshRate < _OverrideRefreshRate) then {_refreshRate = _OverrideRefreshRate};
/// Markus
if (count _this > 12) then {_deathMarkerSize = _this select 12};

if (_side != side player || isNull _tracked || !(alive _tracked)) exitWith {};
if (_deletePrevious) then {deleteMarkerLocal _markerName};

createMarkerLocal [_markerName,getPos _tracked];
//if (_markerText != "") then {_markerName setMarkerTextLocal _markerText};
_markerName setMarkerTypeLocal _markerType;
_markerName setMarkerColorLocal _markerColor;
_markerName setMarkerSizeLocal _markerSize;

while {alive _tracked && !(isNull _tracked)} do {
	if (_markerText != "") then {_markerName setMarkerTextLocal _markerText};
	
	if (_tracked isKindOf "Man") then {
	//если бот человек и лидер группы не игрок, тогда поменять цвета и указать имя владельца игрока
	if (group _tracked != group player) then {
		if (sideJoined == west) then {_markerColor = "ColorWEST"} else {_markerColor = "ColorEAST"};
		if (typeOf vehicle _tracked == typeOf _tracked) then {
			_markerText = "";
			if (((str leader group _tracked in ('WFBE_EASTSLOTNAMES' Call GetNamespace)) OR (str leader group _tracked in ('WFBE_WESTSLOTNAMES' Call GetNamespace))) && alive leader group _tracked) then {_markerText = name leader group _tracked +"'s AI [" + ((_tracked) Call GetAIDigit) +"]"};
			_markerName setMarkerTextLocal _markerText;
			_markerName setMarkerColorLocal _markerColor;
			_markerName setMarkerTypeLocal _markerType;
		};
	};
	
	//если бот человек и лидер группы игрок, тогда поменять цвет и получить номер
	if ((group _tracked == group player) AND (_markerColor != "ColorYellow")) then {
		_markerColor = "ColorYellow";
		_markerName setMarkerColorLocal _markerColor;
		_markerText = (_tracked) Call GetAIDigit;
	};

	//если бот человек и эти боты в технике, тогда спрятать маркеры бота
	if (vehicle _tracked != _tracked) then {
	_markerName setMarkerTypeLocal "empty";
	} else {
	_markerName setMarkerTypeLocal _markerType;
	};
	
	};
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	if ((_tracked iskindOf "Air") OR (_tracked iskindOf "Car") OR (_tracked isKindOf "Tank") OR (_tracked isKindOf "Ship")) then {
	//если это техника и бот игрока в этой технике
	if (group _tracked == group player) then {
	_txt = "";
	if (alive (crew _tracked select 0)) then {_txt = (crew _tracked select 0) Call GetAIDigit};
	if (count crew _tracked > 1) then {
		for "_i" from 1 to ((count crew _tracked)-1) do {
			if (alive (crew _tracked select _i)) then {_txt = _txt + ',' + ((crew _tracked select _i) Call GetAIDigit)};
		};
	};
	_markerName setMarkerColorLocal "ColorWhite";
	_markerName setMarkerTextLocal _markerText + ' [' + _txt + ']';
	} else {
	_markerName setMarkerColorLocal _markerColor;
	_markerName setMarkerTextLocal _markerText;
	};
	
	//если это техника и кто-нибудь в этой технике, тогда прицепить список игроков и ботов к технике
	if ((count crew _tracked > 0) AND (group _tracked != group player)) then {
	_players_names = [];
	_playersDisplayNames = '';
	_ai_names = [];
	_aiDisplayNames = '';
	{
		if (alive _x) then {
			if (isPlayer _x) then {
				_players_names = _players_names + [name _x];
			} else {
				_ai_names = _ai_names + [name _x];
			};
		};
	} forEach crew _tracked;
	
	if (count _players_names > 0) then {
		_playersDisplayNames = _players_names select 0;
			if (count _players_names > 1) then {
				{_playersDisplayNames = _playersDisplayNames + ', ' + _x} forEach (_players_names - [_players_names select 0]);
			};
		if (count _ai_names > 0) then {_aiDisplayNames = ' & ' + str (count _ai_names) + ' AI'};
	_markerName setMarkerTextLocal _markerText + ' [' + _playersDisplayNames + _aiDisplayNames + ']';
	} else {
	_markerName setMarkerTextLocal _markerText;
	};
	};


	};
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	_markerName setMarkerPosLocal (getPos _tracked);
	sleep _refreshRate;
};

if (_trackDeath) then {
	_markerName setMarkerTypeLocal _deathMarkerType;
	_markerName setMarkerColorLocal _deathMarkerColor;
	_markerName setMarkerSizeLocal _deathMarkerSize;
	sleep ('WFBE_MARKERDEADDELAY' Call GetNamespace);
};

if (_markerName != "HQUndeployed") then {deleteMarkerLocal _markerName;};