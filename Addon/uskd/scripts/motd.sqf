motdwaittime1 = 30;
motdwaittime2 = 60;
motdwaittime3 = 120;
motdwaittime4 = 900;
motdwaittime5 = 1200;

/// Message to Rubber (need UID)
sleep motdwaittime1;
_RubberUID = getPlayerUID player;
_validUIDList = [
"0815XXXXXX"
];
if (_RubberUID in _validUIDList) then {
	execVM "Addon\uskd\msg\msgtorubber.sqf";
};

//sleep motdwaittime2;
//execVM "Addon\uskd\msg\msgtestversion.sqf";

//sleep motdwaittime1;
//execVM "Addon\uskd\msg\msg1.sqf";

sleep motdwaittime1;
execVM "Addon\uskd\msg\msg2.sqf";

sleep motdwaittime1;
execVM "Addon\uskd\msg\msg3.sqf";

sleep motdwaittime1;
execVM "Addon\uskd\msg\msg_info.sqf";

sleep motdwaittime1;
execVM "Addon\uskd\msg\msg5.sqf";

sleep motdwaittime1;
execVM "Addon\uskd\msg\msg6.sqf";

while {true} do
{
	sleep motdwaittime5;
	execVM "Addon\uskd\msg\msg_info2.sqf";
};
