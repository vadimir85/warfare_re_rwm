//--- Global Init, first file called.
diag_log Format["[WFRE (INIT)][frameno:%1 | ticktime:%2] Init.sqf: Executing the JIP script..",diag_frameno,diag_tickTime];

//--- Client Init.
if (!isServer || local player) then {
	diag_log Format["[WFRE (INIT)][frameno:%1 | ticktime:%2] Init.sqf: Client detected... waiting for non null result...",diag_frameno,diag_tickTime];
	waitUntil {!isNull(player)};
	diag_log Format["[WFRE (INIT)][frameno:%1 | ticktime:%2] Init.sqf: Client is not null...",diag_frameno,diag_tickTime];
	/* Client Init - Begin the blackout on Layer 1 */
	12452 cutText [(localize 'STR_WF_Loading'),"BLACK FADED",50000];
	isHostedServer = if (!isMultiplayer || (isServer && local player)) then {true} else {false};
	isClient = true;
	player enableStamina false;
	player forceWalk false;
	
} else {
	if (isNil 'EastMHQ' || isNil 'WestMHQ') exitWith {};
	isHostedServer = if (!isMultiplayer || (isServer && local player)) then {true} else {false};
	diag_log Format["[WFRE (INIT)][frameno:%1 | ticktime:%2] Init.sqf: Server detected...",diag_frameno,diag_tickTime];
	isClient = false;
};

//--- Server & Client default View Distance.
if (worldName == "tanoa") then {setViewDistance 3000} else {setViewDistance 5000};

gameOver = false;
towns = [];
NuclearStrike = false;
antiAirRadarInRange = false; //bug fix
//--- Define which 'part' of the game to run.
#include "version.sqf"

//---Fast rope
#include "Addon\SHK_Fastrope.sqf"

//---Field repair
[] execVM "Addon\zlt_fieldrepair.sqf";

//--- US-KD verschiedene Aufrufe
[] execVM "Addon\uskd\scripts\uskd.sqf";

//---Changelog
[] execVM "Addon\changelog.sqf";

//----Welcome
[] execVM "Addon\custom\welcome.sqf";

//--Drag and drop
attached = false;
0 = execVM "Client\Functions\Externals\BDD\Greifer.sqf";

//--Advanced Towing
execVM "Client\Functions\Externals\AdvancedTowing\fn_advancedTowingInit.sqf";

//--Advanced Sling Loading
execVM "Client\Functions\Externals\AdvancedSlingLoad\fn_advancedSlingLoadingInit.sqf";

//--Advanced Rapel
execVM "Client\Functions\Externals\AdvancedRappel\fn_advancedRappellingInit.sqf";

//--Advanced Urban Rapel
execVM "Client\Functions\Externals\AdvancedUrbanRapel\functions\fn_advancedUrbanRappellingInit.sqf";

//---cmEARPLUGS
call compile preProcessFileLineNumbers "Client\Functions\Externals\cmEarplugs\config.sqf";

//---Igiload script
_igiload = execVM "Client\Functions\Externals\IgiLoad\IgiLoadInit.sqf";

WF_A2_Vanilla = false;
WF_A2_Arrowhead = false;
WF_A2_CombinedOps = true;

#ifdef WF_CAMO
if (worldName == "tanoa" || worldName == "altis") then {WF_Camo = true} else {WF_Camo = false};
#endif

//--- Special, require a clipboard handler on windows (available on dev-heaven).
mysql = false;
#ifdef MYSQL
	mysql =	if (isMultiplayer) then {true} else {false};
#endif

//--Editor Content/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ifdef WF_DEBUG
	WF_Debug = false;
#endif

if (worldName == "noe") then {player addAction ["Restore The Bridge","nogova_bridge_restore.sqf",[],80,true,true,"","(player distance excavator1 < 15) or (player distance excavator2 < 15)"]};

WF_Extend_RPT_LOG = true;
#ifdef WF_Extend_RPT_LOG
	WF_Extend_RPT_LOG = true;
#endif
//--- Gameplay variables.
paramMobileRespawn = true;
paramBalancing = false;
paramAI = true;
paramAIcom = true;
paramShowUID = true;
paramArty = true;
paramArtyUI = false;
paramTrackAI = true;
paramTrackPlayer = true;
paramRes = true;
paramOccup = true;
paramGearRespawn = true;
paramGearRestriction = false;
paramHangars = true;
paramAARadar = false;
paramCounterMeasures = false;
paramVolumClouds = false;
paramICBM = true;
paramHighCommand = false;
paramBaseArea = true;
paramSpawnRestriction = true;
paramUpgradesEast = true;
paramUpgradesWest = true;
paramKickTeamswappers = true;
paramRespawnMASH = true;
paramResReinf = false;
paramOccReinf = false;
paramPurchaseInfDepot = true;
paramHandleFF = false;
paramBoundaries = false;
paramBasePatrols = false;
paramAlice = false;
paramEASA = true;
paramBounty = true;
paramResVehLock = 0;
paramExtendedInventory = false;
paramSecondaryMissions = false;
paramUPSMON = true;
paramDefenseCollide = true;
paramKeepCamps = true;
paramUseWorkers = false;
paramMoneyOnly = false;
parmAddAIbyRank = false;

//--- Multiplayers Parameter, the order it the same as Parameters.hpp
if !(isNil "paramsArray") then {
	Private['_u'];
	_u = 0;
	missionNamespace setVariable ['WFBE_VICTORYCONDITION',(paramsArray select _u)];_u = _u + 1;
	_u = _u + 1; //--- Town Amount System, leave blank.
	missionNamespace setVariable ['WFBE_TOWNTOWIN', (paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_TOWNCAPTUREFREEZE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_TIMEOUT',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_MAXGROUPSIZEAI',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_MAXGROUPSIZE',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramKeepAI = false} else {paramKeepAI = true};_u = _u + 1; //--- Keep AI Units over JIP.
	if ((paramsArray select _u) == 0) then {paramAI = false} else {paramAI = true};_u = _u + 1; //--- AI Enabled.
	if ((paramsArray select _u) == 0) then {paramArty = false} else {paramArty = true};_u = _u + 1; //--- Enable Artillery.
	//if !(WF_A2_Vanilla) then {}
	missionNamespace setVariable ['WFBE_ARTILLERYCOMPUTER',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramArtyUI = false} else {paramArtyUI = true};_u = _u + 1; //--- Enable Artillery Interface (Artillery Module).
	missionNamespace setVariable ['WFBE_ARTILLERYMAXRANGE',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramAIcom = false} else {paramAIcom = true};_u = _u + 1; //--- AI Commander Enabled.
	//if !(WF_A2_Arrowhead) then {}
	missionNamespace setVariable ['WFBE_ALLIES',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramAARadar = false} else {paramAARadar = true};_u = _u + 1; //--- Anti Air Radar.
	if ((paramsArray select _u) == 0) then {paramBaseArea = false} else {paramBaseArea = true};_u = _u + 1; //--- Base Area.
	missionNamespace setVariable ['WFBE_BASEAREAMAX',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_AIDEFENSE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_DEFENSEMANRANGE',(paramsArray select _u)];_u = _u + 1;
	//--- Building Limits.
	missionNamespace setVariable ['WFBE_BUILDINGMAXBARRACKS',(paramsArray select _u)];
	missionNamespace setVariable ['WFBE_BUILDINGMAXLIGHT',(paramsArray select _u)];
	missionNamespace setVariable ['WFBE_BUILDINGMAXCOMMANDCENTER',(paramsArray select _u)];
	missionNamespace setVariable ['WFBE_BUILDINGMAXHEAVY',(paramsArray select _u)];
	missionNamespace setVariable ['WFBE_BUILDINGMAXAIRCRAFT',(paramsArray select _u)];
	missionNamespace setVariable ['WFBE_BUILDINGMAXFIELDHOSPITAL',(paramsArray select _u)];
	missionNamespace setVariable ['WFBE_BUILDINGMAXSERVICEPOINT',(paramsArray select _u)+1];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramUseWorkers = false} else {paramUseWorkers = true};_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramDefenseCollide = false} else {paramDefenseCollide = true};_u = _u + 1;
	missionNamespace setVariable ['WFBE_HQDEPLOYPRICE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_HQDEPLOYRANGE',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramBasePatrols = false} else {paramBasePatrols = true};_u = _u + 1; //--- Base patrols.
	if ((paramsArray select _u) == 0) then {paramSpawnRestriction = false} else {paramSpawnRestriction = true};_u = _u + 1; //--- Restrict the Spawn logic to 2km within a town.
	missionNamespace setVariable ['WFBE_SIDESTARTINGDISTANCE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_STARTINGLOCATIONMODE',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramMoneyOnly = false} else {paramMoneyOnly = true};_u = _u + 1;
	missionNamespace setVariable ['WFBE_INCOMEINTERVAL',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_INCOMESYSTEM',(paramsArray select _u)];_u = _u + 1;
	//--- Funds.
	missionNamespace setVariable ['WFBE_EASTSTARTINGMONEY',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_WESTSTARTINGMONEY',(paramsArray select _u)];_u = _u + 1;
	//--- Supply.
	EastSupplies = (paramsArray select _u);_u = _u + 1;
	WestSupplies = (paramsArray select _u);_u = _u + 1;
	missionNamespace setVariable ['WFBE_SUPPLYSYSTEM',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_FASTTIMERATE', paramsArray select _u];_u = _u + 1;
	if (time < 2) then {setDate [(date select 0),(date select 1),(date select 2),(paramsArray select _u),(date select 3)]};_u = _u + 1; //--- Time of Day.
	missionNamespace setVariable ['WFBE_WEATHER',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramAlice = false} else {paramAlice = true};_u = _u + 1; //--- Ambient Civilians.
	if ((paramsArray select _u) == 0) then {paramHangars = false} else {paramHangars = true};_u = _u + 1; //--- Airport Hangars.
	missionNamespace setVariable ['WFBE_UNITREMOVEDLAY',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_ABANDONVEHICLETIMER', paramsArray select _u];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramExtendedInventory = false} else {paramExtendedInventory = true};_u = _u + 1;
	missionNamespace setVariable ['WFBE_FASTTRAVEL',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramHandleFF = false} else {paramHandleFF = true};_u = _u + 1; //--- Base Friendly Fire.
	missionNamespace setVariable ['WFBE_MAXCLUTTERDISTANCE',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramKickTeamswappers = false} else {paramKickTeamswappers = true};_u = _u + 1; //--- Kick teamswappers.
	if ((paramsArray select _u) == 0) then {paramBoundaries = false} else {paramBoundaries = true};_u = _u + 1; //--- Prevent players from going outside of the map, they're killed after x seconds.
	missionNamespace setVariable ['WFBE_MAPCOLORATION',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_INCOMINGMISSILEMAXRANGE',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramSecondaryMissions = false} else {paramSecondaryMissions = true};_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramShowUID = false} else {paramShowUID = true};_u = _u + 1; //--- Show User ID.
	missionNamespace setVariable ['WFBE_BALANCEPRICE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_THERMALIMAGING',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramTrackAI = false} else {paramTrackAI = true};_u = _u + 1; //--- Track AI (Yellow dots) on map.
	if ((paramsArray select _u) == 0) then {paramTrackPlayer = false} else {paramTrackPlayer = true};_u = _u + 1; //--- Track players.
	if ((paramsArray select _u) == 0) then {paramBalancing = false} else {paramBalancing = true};_u = _u + 1; //--- Balance the given units weapon loadout.
	if ((paramsArray select _u) == 0) then {paramBounty = false} else {paramBounty = true};_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramUpgradesEast = false} else {paramUpgradesEast = true};_u = _u + 1; //--- Upgrades.
	if ((paramsArray select _u) == 0) then {paramUpgradesWest = false} else {paramUpgradesWest = true};_u = _u + 1; //--- Upgrades.
	missionNamespace setVariable ['WFBE_MAXVIEWDISTANCE',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {parmAddAIbyRank = false} else {parmAddAIbyRank = true};_u = _u + 1; //--- EASA.	
	//if (WF_A2_Vanilla) then {if ((paramsArray select _u) == 0) then {paramCounterMeasures = false} else {paramCounterMeasures = true};_u = _u + 1}; //--- Countermeasures.
	if ((paramsArray select _u) == 0) then {paramEASA = false} else {paramEASA = true};_u = _u + 1; //--- EASA.
	if ((paramsArray select _u) == 0) then {paramICBM = false} else {paramICBM = true};_u = _u + 1; //--- ICBM.
	missionNamespace setVariable ['WFBE_ISIS',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramUPSMON = false} else {paramUPSMON = true};_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramVolumClouds = false} else {paramVolumClouds = true};_u = _u + 1; //--- Volumetric Clouds.
	missionNamespace setVariable ['WFBE_RESPAWNCAMPSMODE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_RESPAWNCAMPSRULEMODE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_RESPAWNDELAY',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramRespawnMASH = false} else {paramRespawnMASH = true};_u = _u + 1; //--- MASH respawn's enabled.
	if ((paramsArray select _u) == 0) then {paramMobileRespawn = false} else {paramMobileRespawn = true};_u = _u + 1; //--- Mobile respawn's enabled.
	missionNamespace setVariable ['WFBE_RESPAWNPENALTY',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_RESPAWNRANGE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_RESTRICTIONADVAIR',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramGearRestriction = false} else {paramGearRestriction = true};_u = _u + 1; //--- Player have a gear restriction in camps.
	missionNamespace setVariable ['WFBE_RESSTRIKER',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramKeepCamps = false} else {paramKeepCamps = true};_u = _u + 1;
	missionNamespace setVariable ['WFBE_TOWNCAPTUREMODE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_CIVILIANFACTION',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_TOWNCONQUESTMODE',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_TOWNGEAR',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramOccup = false} else {paramOccup = true};_u = _u + 1; //--- Town Occupation.
	missionNamespace setVariable ['WFBE_TOWNOCCUPATIONDIFFICULTY',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_OCCUPATIONEASTFACTION',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_OCCUPATIONWESTFACTION',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramOccReinf = false} else {paramOccReinf = true};_u = _u + 1; //--- Town Occupation Reinforcement.
	missionNamespace setVariable ['WFBE_RESPATROL',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_TOWNBUILDPROTECTIONRANGE',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramPurchaseInfDepot = false} else {paramPurchaseInfDepot = true};_u = _u + 1; //--- Town Milita Purchase.
	if ((paramsArray select _u) == 0) then {paramRes = false} else {paramRes = true};_u = _u + 1; //--- Town Resistance.
	missionNamespace setVariable ['WFBE_TOWNRESISTANCEDIFFICULTY',(paramsArray select _u)];_u = _u + 1;
	missionNamespace setVariable ['WFBE_RESISTANCEFACTION',(paramsArray select _u)];_u = _u + 1;
	if ((paramsArray select _u) == 0) then {paramResReinf = false} else {paramResReinf = true};_u = _u + 1; //--- Town Resistance Reinforcement.
	if ((paramsArray select _u) == 0) then {paramResVehLock = 0} else {paramResVehLock = 2};_u = _u + 1; //--- Town Resistance Vehicles Lock.
	missionNamespace setVariable ['WFBE_TOWNSTARTINGMODE',(paramsArray select _u)];_u = _u + 1;
};

//--- Debug.
if (WF_Debug) then {
	//paramUpgradesEast = false;
	//paramUpgradesWest = false;
	paramRes = true;
	paramOccup = true;
	//--- Respawn Delay
	missionNamespace setVariable ['WFBE_RESPAWNDELAY',10];
	missionNamespace setVariable ['WFBE_BALANCEPRICE',0];
	missionNamespace setVariable ['WFBE_TOWNSTARTINGMODE',0];
	paramAIcom = true;
	//--- Money
	missionNamespace setVariable ['WFBE_EASTSTARTINGMONEY',990000];
	missionNamespace setVariable ['WFBE_WESTSTARTINGMONEY',990000];
	//--- Supply.
	EastSupplies = 80000;
	WestSupplies = 80000;
	//--- Peace Time
	missionNamespace setVariable ['WFBE_TOWNCAPTUREFREEZE',20];
	
};

//--- All parameters are set and ready.
initJIP = true;

//---- Server store the groups once in for all.
if (isServer) then {
	//--- BUG workaround: "attempt" to ensure that the client is really a client and not a server
	if !(isNil "WFBE_EASTTEAMS") exitWith {};
    WFBE_EASTTEAMS = [Group EastSlot1,Group EastSlot2,Group EastSlot3,Group EastSlot4,Group EastSlot5,Group EastSlot6,Group EastSlot7,Group EastSlot8,Group EastSlot9,Group EastSlot10,Group EastSlot11,Group EastSlot12,Group EastSlot13,Group EastSlot14,Group EastSlot15,Group EastSlot16];
	WFBE_WESTTEAMS = [Group WestSlot1,Group WestSlot2,Group WestSlot3,Group WestSlot4,Group WestSlot5,Group WestSlot6,Group WestSlot7,Group WestSlot8,Group WestSlot9,Group WestSlot10,Group WestSlot11,Group WestSlot12,Group WestSlot13,Group WestSlot14,Group WestSlot15,Group WestSlot16];
	
	/*for '_i' from 0 to count(WFBE_EASTTEAMS)-1 do {
		if (isNil {WFBE_WESTTEAMS select _i}) then {WFBE_WESTTEAMS set [_i, grpNull]};
		if (isNil {WFBE_EASTTEAMS select _i}) then {WFBE_EASTTEAMS set [_i, grpNull]};
	};*/
	
	publicVariable "WFBE_EASTTEAMS";
	publicVariable "WFBE_WESTTEAMS";
	
	diag_log format ["server broadcasted teams!"];
};


//--- Cli Exec - Wait for sync.
if (!isServer) then {
	diag_log format ["client waiting for broadcasted teams!"];
	waitUntil{!isNil 'WFBE_EASTTEAMS' && !isNil 'WFBE_WESTTEAMS'};
	//diag_log Format["[WFRE (INIT)][frameno:%1 | ticktime:%2] Init.sqf: Received Teams West %3",diag_frameno,diag_tickTime,WFBE_WESTTEAMS];
	//diag_log Format["[WFRE (INIT)][frameno:%1 | ticktime:%2] Init.sqf: Received Teams East %3",diag_frameno,diag_tickTime,WFBE_EASTTEAMS];
};

missionNamespace setVariable ['WFBE_EASTTEAMS', WFBE_EASTTEAMS];
missionNamespace setVariable ['WFBE_WESTTEAMS', WFBE_WESTTEAMS];

//--- Slot names.
{
	Private ["_temp"];
	_temp = [];
	{_temp = _temp + [vehicleVarName (leader _x)]} forEach (_x select 0);
	missionNamespace setVariable [_x select 1, _temp];
} forEach [[WFBE_EASTTEAMS,"WFBE_EASTSLOTNAMES"],[WFBE_WESTTEAMS,"WFBE_WESTSLOTNAMES"]];

//--- Maximum players, try to keep the same amount of player on east & west.
maxPlayers = count (missionNamespace getVariable 'WFBE_EASTTEAMS');

//--- Execute the common files.
ExecVM "Common\Init\Init_Common.sqf";
//--- Execute the towns file.
ExecVM "Common\Init\Init_Towns.sqf";
//--- Run the client's part.
if (isClient) then {
	diag_log Format["[WFRE (INIT)][frameno:%1 | ticktime:%2] Init.sqf: Executing Client Initialization...",diag_frameno,diag_tickTime];
	ExecVM "Client\Init\Init_Client.sqf";
};
//--- Run the server's part.
if (isServer) then {
	if (isNil 'EastMHQ' || isNil 'WestMHQ') exitWith {diag_log Format["[WFRE (FATAL ERROR)][frameno:%1 | ticktime:%2] Init.sqf: The client has attempted to trigger the server part!",diag_frameno,diag_tickTime];};
	diag_log Format["[WFRE (INIT)][frameno:%1 | ticktime:%2] Init.sqf: Executing Server Initialization...",diag_frameno,diag_tickTime];
	ExecVM "Server\Init\Init_Server.sqf";
};

//--- Fast Get/Set.
_i = 1;
{if !(isNil '_x') then {_x setVariable ["identification", Format["EastSlot%1",_i]]};_i = _i + 1} forEach (missionNamespace getVariable 'WFBE_EASTTEAMS');
_i = 1;
{if !(isNil '_x') then {_x setVariable ["identification", Format["WestSlot%1",_i]]};_i = _i + 1} forEach (missionNamespace getVariable 'WFBE_WESTTEAMS');
//View distance
CHVD_allowNoGrass = true;
//CHVD_maxView = 2500;
//CHVD_maxObj = 2500;

///////////////////////// DEBUGING STUFF //////////////////////////

CHVD_fnc_drawDebug = {

	hintSilent format ["
		VD: %1
		OVD: %2
		TG: %3
	", viewDistance, getObjectViewDistance select 0, getTerrainGrid];

};

[] spawn {
	for "_i" from 0 to 1 step 0 do {
		_currentVD = viewDistance;			
		waitUntil {_currentVD != viewDistance};
		call CHVD_fnc_drawDebug;
	};
};

[] spawn {
	for "_i" from 0 to 1 step 0 do {
		_currentVD = getObjectViewDistance select 0;			
		waitUntil {_currentVD != getObjectViewDistance select 0};
		call CHVD_fnc_drawDebug;
	};
};

[] spawn {
	for "_i" from 0 to 1 step 0 do {
		_currentVD = getTerrainGrid;			
		waitUntil {_currentVD != getTerrainGrid};
		call CHVD_fnc_drawDebug;
	};
};
fn_netSay3D = compile preprocessFileLineNumbers "Common\Functions\fn_netSay3D.sqf";
if (isNil "PVEH_netSay3D") then {PVEH_NetSay3D = [objNull,0];};
"PVEH_netSay3D" addPublicVariableEventHandler {
	private["_array"];
	_array = _this select 1;
	(_array select 0) say3D (_array select 1);
	};