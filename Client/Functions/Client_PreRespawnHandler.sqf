Private ["_hq","_unit"];

_unit = _this;

(_unit) Call WFBE_SK_FNC_Apply;
[] ExecFSM "Client\FSM\updateactions.fsm";

Options = _unit addAction ["<img image='images\wfmenu.paa'/><t color='#69ceea'> " + (localize "STR_WF_Options") + "</t>","Client\Action\Action_Menu.sqf", "", 1, false, true, "", "_target == player"];
//---Valhala.
[] call Func_Client_UpdateUserActions;

if (!isNull commanderTeam) then {
	_hq = (sideJoinedText) Call GetSideHQ;
	if (commanderTeam == group _unit) then {HQAction = _unit addAction ["<t color='#e04433'><img image='images\coin.paa'/> " + (localize "STR_WF_BuildMenu") + "</t>","Client\Action\Action_Build.sqf", [_hq], 100, false, true, "", "hqInRange && canBuildWHQ && (_target == player)"]};
    //if (commanderTeam == group _unit) then {HQAction = _unit addAction [localize "STR_WF_BuildMenu","Client\Action\Action_Build.sqf", [_hq], 100, false, true, "", "hqInRange && canBuildWHQ && (_target == player)"]};
	};

[sideJoinedText,'UnitsCreated',1] Call UpdateStatistics;