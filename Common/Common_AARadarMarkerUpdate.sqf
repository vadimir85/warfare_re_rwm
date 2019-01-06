Private ["_height","_object","_markerName","_side","_zOffset"];

waitUntil {!isNil 'commonInitComplete'};
//sleep 2;

_object = _this select 0;
_side = _this select 1;

if (_side == side player || isNull _object ||!(alive _object)) exitWith {};

unitMarker = unitMarker + 1;
_markerName = Format ["unitMarker%1",unitMarker];

createMarkerLocal [_markerName,[0,0,0]];
_markerName setMarkerTypeLocal "o_plane";
_markerName setMarkerColorLocal "ColorGreen";
if (_side == east) then {_markerName setMarkerColorLocal "ColorRed"};
if (_side == west) then {_markerName setMarkerColorLocal "ColorBlue"};
_markerName setMarkerSizeLocal [0.75,0.75];
_markerName setMarkerAlphaLocal 0.0;
_txt = "" + ([typeOf _object,'displayName'] Call GetConfigInfo);
_markerName setMarkerTextLocal _txt;
_height = 'WFBE_ANTIAIRRADARDETECTION' Call GetNamespace;

while {alive _object && !(isNull _object)} do {
	if (antiAirRadarInRange) then {
		_zOffset = (getPos _object) select 2;
		if (_zOffset > _height) then {
			_markerName setMarkerAlphaLocal 1;
			_markerName setMarkerPosLocal (getPos _object);
		} else {
			_markerName setMarkerAlphaLocal 0;
		};
	};
	sleep 1;
};

deleteMarkerLocal _markerName;