/* Player KEH. */

if (playerDead) exitWith {};
enableRadio false;
playerDead = true;
//deathcounter = deathcounter +1; - this is not working on JIP
//player addScore -3; - this is not working in multiplayer

/////-----US-KD beginning (*US-EDIT-KD*)
////------ Tweaked a bit from Hoshi cause I don't want that kamikaze have more reward than people that use more brain...



_score = score player;
if (_score <= 49 ) then {
		[sideJoined,- 10] Call ChangeSideSupply;
		[playerSide, "HQ"] commandChat "We lost 10 SUPPLY due to casualties!";
		player groupChat "You lost 2 points and your side 10 supply, life is precious!";
		WFBE_RequestChangeScore = ['SRVFNCREQUESTCHANGESCORE',[player,score player - 2 ]];
		publicVariable 'WFBE_RequestChangeScore';
		if (isHostedServer) then {['SRVFNCREQUESTCHANGESCORE',[player,score player - 2]] Spawn HandleSPVF};
};
	
if ((_score <= 99 )&&(_score > 49)) then {
	[sideJoined,- 20] Call ChangeSideSupply;
	[playerSide, "HQ"] commandChat "We lost 20 SUPPLY due to Veteran casualties!";
	player groupChat "You lost 5 points and your side 20 supply, pay more attention!";
	WFBE_RequestChangeScore = ['SRVFNCREQUESTCHANGESCORE',[player,score player - 5 ]];
				publicVariable 'WFBE_RequestChangeScore';
				if (isHostedServer) then {['SRVFNCREQUESTCHANGESCORE',[player,score player - 5]] Spawn HandleSPVF};
};
if (_score >= 100) then {
		[sideJoined,- 30] Call ChangeSideSupply;
		[playerSide, "HQ"] commandChat "We lost 30 SUPPLY due to Officers casualties!";
		player groupChat "You lost 10 points and your side 30 supply, use your experience!";
		WFBE_RequestChangeScore = ['SRVFNCREQUESTCHANGESCORE',[player,score player - 10 ]];
		publicVariable 'WFBE_RequestChangeScore';
		if (isHostedServer) then {['SRVFNCREQUESTCHANGESCORE',[player,score player - 10]] Spawn HandleSPVF};
};



	
/////-----US-KD end (*US-EDIT-KD*)
sleep 1;

//--Call Earplugs on death
call WFBE_CL_FNC_EarPlugsDeath;

{player removeAction 0} forEach [0,1,2,3,4,5];
if !(isNil "HQAction") then {player removeAction HQAction};
player removeAction Options;

// Valhalla HUD 
/* injury reset */
Dialog_LegsHit=false;
Dialog_HandsHit=false;
Dialog_BodyHit=false;
Dialog_HeadHit=false;
//-- end injury

deathLocation = getPos player;

if (mysql) then {
	Private ['_isInertObject','_isTKFriendly','_killer'];
	_killer = _this select 1;
	_isTKFriendly = if (side _killer == sideJoined && !isPlayer(_killer)) then {true} else {false};
	_isInertObject = false;
	if (vehicle _killer == _killer) then {
		_isInertObject = if (count(crew _killer) == 0) then {true} else {false};
	};
	
	if (_this select 0 == _killer || _isTKFriendly || _isInertObject) then {
		WF_Logic setVariable ["WF_MYSQL_CLIENT",(WF_Logic getVariable "WF_MYSQL_CLIENT") + [Format ["MYSQLDATA§WFBE_Update§%1§%2§suicide§%3",getPlayerUID(player),name player,worldName]],true];
	};
};

closeDialog 0;

//sleep 0.11; // Markus - Removed useless sleep

"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [1];
"dynamicBlur" ppEffectCommit 0.1;  
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.1, 0.0, 0.0, 1], [1.0, 0.8, 0.5, 0.1], [0.199, 0.587, 0.114, 0.0]];
"colorCorrections" ppEffectCommit 0.1;
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.1, 0.0, 0.0, 0.5], [1.0, 0.9, 0.5, 0.1], [0.199, 0.587, 0.114, 0.0]];
"colorCorrections" ppEffectCommit 0.3;

DeathCamera = "camera" camCreate deathLocation;
DeathCamera SetDir 0; //camsetdir
DeathCamera camSetFov 1;
DeathCamera cameraEffect["Internal","TOP"];

DeathCamera camSetTarget deathLocation;
DeathCamera camSetPos [deathLocation select 0,(deathLocation select 1) + 2,5];
DeathCamera camCommit 0;

waitUntil {camCommitted DeathCamera};

DeathCamera camSetPos [deathLocation select 0,(deathLocation select 1) + 2,7];
DeathCamera camCommit ('WFBE_RESPAWNDELAY' Call GetNamespace)+2+respawnMalus;

createDialog "RscMenu_Respawn";