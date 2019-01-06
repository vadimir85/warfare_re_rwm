private["_UsedAT","_Added"];
_Added = [];
while {true} do {
_UsedArray = nearestObjects [player,["ACE_UsedTubes"],150];
//hint format ["_Added: %1",_Added];
{

if !(isNull _x || _x in _Added) then {
		_Added = _Added + [_x];
		_UsedAT = (WF_Logic getVariable "UsedAT") + [_x];
		WF_Logic setVariable ["UsedAT",_UsedAT,true];
		
};

{
	if !(_x in (WF_Logic getVariable "UsedAT")) then {
	_Added = _Added - [_x];
	};
}forEach _Added;

} forEach _UsedArray;
sleep 5;
};