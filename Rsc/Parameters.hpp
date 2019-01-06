/* Parameters */

class Params {
	class gameplayVictoryConditions {
		title = "$STR_WF_PARAMETER_VictoryConditionTitle";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_PARAMETER_Victory_Annihilation","$STR_WF_PARAMETER_Victory_Assassination","$STR_WF_PARAMETER_Victory_Supremacy","TNT Towns"};
		default = 3;
	};
	class townsAmount {
		title = "$STR_WF_PARAMETER_TownsAmountTitle";
		values[] = {4};
		texts[] = {"Full Stratis"};
		default = 4;
	};
	class gameplayVictoryTown {
		title = "$STR_WF_PARAMETER_VictoryTownTitle";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34};
		texts[] = {"1","2","3","4","5","6","7","8","9","10 TNT","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34"};
		default = 9;
	};
	class PeaceTimer {
		title = "$STR_WF_PARAMETER_PeaceTimerTitle";
		values[] = {-360,300,600,1000,1200,1800,3600,7200};
		texts[] = {"$STR_WF_Disabled","5 min","10 min","16 min (TnT)","20 min","30 min","1 hour","2 hours"};
		default = 1200;
	};	
	class timeOut {
		title = "$STR_WF_PARAMETER_TimeoutTitle";
		values[] = {0,900,1800,3600,7200,10800,14400,18000,21600,25200,28800,32400,36000};
		texts[] = {"$STR_WF_Disabled","15 min","30 min","1h","2h","3h","4h","5h","6h","7h","8h","9h","10h"};
		default = 0;
	};		
	class aiGroupSizeAI {
		title = "$STR_WF_PARAMETER_GroupSizeAI";
		values[] = {2,3,4,6,8,10,12,14,16,18,20,22,24,26,28,30,35,40,45,50,60,70,80,90,100};
		texts[] = {"2","3","4","6","8","10","12","14","16","18","20","22","24","26","28","30","35","40","45","50","60","70","80","90","100"};
		default = 3;
	};
	class aiGroupSizePlayer {
		title = "$STR_WF_PARAMETER_GroupSizePlayer";
		values[] = {2,3,4,5,6,7,8,10,12,14,16,18,20,22,24,26,28,30,35,40,45,50,60,70,80,90,100};
		texts[] = {"2","3","4","5","6","7","8","10","12","14","16","18","20","22","24","26","28","30","35","40","45","50","60","70","80","90","100"};
		default = 3;
	};
	class aiKeepUnits {
		title = "$STR_WF_PARAMETER_KeepAI";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_No","$STR_WF_PARAMETER_Yes"};
		default = 1;
	};
	class aiTeams {
		title = "$STR_WF_PARAMETER_AI";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class artilleryCalls {
		title = "$STR_WF_PARAMETER_Arty";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	#ifndef VANILLA
		class artilleryComputer {
			title = "$STR_WF_PARAMETER_ArtilleryComputer";
			values[] = {0,1,2};
			texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_Enabled_Upgrade","$STR_WF_Enabled"};
			default = 2;
		};	
	#endif
	class artilleryUI {
		title = "$STR_WF_PARAMETER_ArtilleryUI";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class artilleryRange {
		title = "$STR_WF_PARAMETER_Artillery";
		values[] = {1,2,3};
		texts[] = {"$STR_WF_PARAMETER_Short","$STR_WF_PARAMETER_Medium","$STR_WF_PARAMETER_Long"};
		default = 3;
	};
	class baseAICommander {
		title = "$STR_WF_PARAMETER_AICommander";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_No","$STR_WF_PARAMETER_Yes"};
		default = 0;
	};
	//--- OA has no suitable allies for both side (yet).
	#ifndef ARROWHEAD
		class baseAllies {
			title = "$STR_WF_PARAMETER_Allies";
			values[] = {0,1,2,3};
			texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_Side_West","$STR_WF_PARAMETER_Side_East","$STR_WF_PARAMETER_Both"};
			default = 0;
		};
	#endif
	class baseAAR {
		title = "$STR_WF_PARAMETER_AntiAirRadar";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class baseArea {
		title = "$STR_WF_PARAMETER_BaseArea";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_No","$STR_WF_PARAMETER_Yes"};//{"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class baseAreaLimit {
		title = "$STR_WF_PARAMETER_BaseArea_Limit";
		values[] = {1,2,3,4,5,6,7,8,9,10,12,14,16,18,20,22,24};
		texts[] = {"1","2","3","4","5","6","7","8","9","10","12","14","16","18","20","22","24"};
		default = 3;
	};
	class baseAutoDefenses {
		title = "$STR_WF_PARAMETER_AutoMannedDefense";
		values[] = {0,5,10,15,20};
		texts[] = {"$STR_WF_Disabled","5","10","20"};
		default = 15;
	};
	class baseAutoDefensesRange {
		title = "$STR_WF_PARAMETER_AutoDefense_Range";
		values[] = {50,100,150,200,250,300,350,400,600,800,1000};
		texts[] = {"50m","100m","150m","200m","250m","300m","350m","400m","600","800","1000"};
		default = 400;
	};
	class baseBuildingsLimit {
		title = "$STR_WF_PARAMETER_BuildingsLimit";
		values[] = {1,2,3,4,5,6,7,8,9,10};
		texts[] = {"1","2","3","4","5","6","7","8","9","10"};
		default = 2;
	};
	class baseConstructionMode {
		title = "$STR_WF_PARAMETER_ConstructionMode";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_Time","$STR_WF_PARAMETER_HQWorkers"};
		default = 0;
	};
	class baseDefensePlacement {
		title = "$STR_WF_PARAMETER_DefensePlacement";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_Collide_No","$STR_WF_PARAMETER_Collide"};
		default = 0;
	};
	class baseHQDeploycost {
		title = "$STR_WF_PARAMETER_HQDeployCost";
		values[] = {100,200,300,400,500,600,700,800,900,1000,1500,2000,2500,3000,3500,4000,5000,6000,7000,8000,9000,10000};
		texts[] = {"S 100","S 200","S 300","S 400","S 500","S 600","S 700","S 800","S 900","S 1000","S 1500","S 2000","S 2500","S 3000","S 3500","S 4000","S 5000","S 6000","S 7000","S 8000","S 9000","S 10000"};
		default = 500;
	};
	class baseHQDeployRange {
		title = "$STR_WF_PARAMETER_HQDeployRange";
		values[] = {50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,220,240,260,280,300,320,340,360,380,400};
		texts[] = {"50m","60m","70m","80m","90m","100m","110m","120m","130m","140m","150m","160m","170m","180m","190m","200m","220m","240m","260m","280m","300m","320m","340m","360m","380m","400m"};
		default = 180;
	};
	class basePatrols {
		title = "$STR_WF_PARAMETER_BasePatrols";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class baseSpawnSystemRestrict {
		title = "$STR_WF_PARAMETER_SpawnSystemRestrict";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_No","$STR_WF_PARAMETER_Yes"};//{"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class baseStartingDistance {
		title = "$STR_WF_PARAMETER_StartingDistance";
		values[] = {-1,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000};
		texts[] = {"$STR_WF_PARAMETER_StartingLocations_Random","1000m","1500m","2000m","2500m","3000m","3500m","4000m","4500m","5000m","5500m","6000m","6500m","7000m","7500m","8000m","8500m","9000m"};
		default = -1;
	};
	class baseStartingLocations {
		title = "$STR_WF_PARAMETER_StartingLocations";
		values[] = {0,1,2};
		texts[] = {"$STR_WF_PARAMETER_StartingLocations_WestNorth","$STR_WF_PARAMETER_StartingLocations_WestSouth","$STR_WF_PARAMETER_StartingLocations_Random"};
		default = 2;
	};
	class economyCurrency {
		title = "$STR_WF_PARAMETER_Currency";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_Money_Supply","$STR_WF_PARAMETER_Money"};
		default = 0;
	};
	class economyIncomeInterval {
		title = "$STR_WF_PARAMETER_IncomeInterval";
		values[] = {90,120,180,240,300,360,420,480,540,600};
		texts[] = {"1.30 Minute","2 Minutes","3 Minutes","4 Minutes","5 Minutes","6 Minutes","7 Minutes","8 Minutes","9 Minutes","10 Minutes"};
		default = 90;
	};
	class economyIncomeSystem {
		title = "$STR_WF_PARAMETER_IncomeSystem";
		values[] = {1,2,3,4,5};
		texts[] = {"$STR_WF_PARAMETER_IncomeSystem_Full","$STR_WF_PARAMETER_IncomeSystem_Half","$STR_WF_PARAMETER_Income_Sys_Param","$STR_WF_PARAMETER_Income_Sys_Param_Full","2K19"};
		default = 5;
	};
	class economyStartingFundsEast {
		title = "$STR_WF_PARAMETER_Funds_East";
		values[] = {800,1600,2400,3200,4000,5000,6400,8000,12800,25600,51200,102400,204800,409600,819200};
		texts[] = {"$ 800","$ 1600","$ 2400","$ 3200","$ 4000","$ 5000","$ 6400","$ 8000","$ 12800","$ 25600","$ 51200","$ 102400","$ 204800","$ 409600","$ 819200"};
		default = 6400; 
	};
	class economyStartingFundsWest {
		title = "$STR_WF_PARAMETER_Funds_West";
		values[] = {800,1600,2400,3200,4000,5000,6400,8000,12800,25600,51200,102400,204800,409600,819200};
		texts[] = {"$ 800","$ 1600","$ 2400","$ 3200","$ 4000","$ 5000","$ 6400","$ 8000","$ 12800","$ 25600","$ 51200","$ 102400","$ 204800","$ 409600","$ 819200"};
		default = 6400; 
	};
	class economyStartingSupplyEast {
		title = "$STR_WF_PARAMETER_Supply_East";
		values[] = {1200,2700,3000,4800,5100,7200,8400,9600,19200,38400,76800};
		texts[] = {"S 1200","S 2700","S 3000","S 4800","S 5100","S 7200","S 8400","S 9600","S 19200","S 38400","S 76800"};
		default = 5100;
	};
	class economyStartingSupplyWest {
		title = "$STR_WF_PARAMETER_Supply_West";
		values[] = {1200,2700,3000,4800,5100,7200,8400,9600,19200,38400,76800};
		texts[] = {"S 1200","S 2700","S 3000","S 4800","S 5100","S 7200","S 8400","S 9600","S 19200","S 38400","S 76800"};
		default = 5100;
	};
	class economySupplySystem {
		title = "$STR_WF_PARAMETER_SupplySystem";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_SupplySystem_Truck","$STR_WF_PARAMETER_Time"};
		default = 0;
	};
	class environmentFastTime {
		title = "$STR_WF_PARAMETER_FastTime";
		values[] = {0,1,2,3,4,5,6,7,8,9};
		texts[] = {"$STR_WF_Disabled","x2","x3","x4","x5","x10","x15","x20","x25","x30"};
		default = 0;
	};
	class environmentTimeOfDay {
		title = "$STR_WF_PARAMETER_TimeOfDay";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23};
		texts[] = {"00:00","01:00","02:00","03:00","04:00 Sunrise","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00 Sunshine","19:00","20:00","21:00","22:00","23:00"};
		default = 6;
	};
	class environmentWeather {
		title = "$STR_WF_PARAMETER_Weather";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_PARAMETER_Weather_Clear","$STR_WF_PARAMETER_Weather_Cloudy","$STR_WF_PARAMETER_Weather_Rainy","$STR_WF_PARAMETER_Weather_Dynamic"};
		default = 0;
	};
	class gameplayAlice {
		title = "$STR_WF_PARAMETER_Alice";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class gameplayHangars {
		title = "$STR_WF_PARAMETER_Hangars";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplayBodiesTimeout {
		title = "$STR_WF_PARAMETER_BodiesTimeout";
		values[] = {60,120,180,240,300,360,420,600,1200,1800,2400,3000,3600};
		texts[] = {"1 Minute","2 Minutes","3 Minutes","4 Minutes","5 Minutes","7 Min. TNT","10 Minutes","20 Minutes","30 Minutes","40 Minutes","50 Minutes","1 Hour"};
		default = 180;
	};
	class gameplayVehiclesTimeout {
		title = "$STR_WF_PARAMETER_VehicleDelay";
		values[] = {15,60,120,180,240,300,600,1200,1500,1800,2400,3000,3600};
		texts[] = {"15s","1 Minute","2 Minutes","3 Minutes","4 Minutes","5 Minutes","10 Minutes","20 Minutes","25 Minutes","30 Minutes","40 Minutes","50 Minutes","1 Hour"};
		default = 1200;
	};
	class gameplayExtendedInventory {
		title = "$STR_WF_PARAMETER_Extended_Inventory";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplayFastTravel {
		title = "$STR_WF_PARAMETER_FastTravel";
		values[] = {0,1,2};
		texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_Free","$STR_WF_PARAMETER_Fee"};
		default = 0;
	};
	class gameplayFriendlyFire {
		title = "$STR_WF_PARAMETER_FriendlyFire";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class gameplayGrass {
		title = "$STR_WF_PARAMETER_Grass";
		values[] = {10,27,30,33,50};
		texts[] = {"10","27","30","Toggleable"};
		default = 30;
	};
	class gameplayKickTeamswap {
		title = "$STR_WF_PARAMETER_KickTeamswapper";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplayLimitedBoundaries {
		title = "$STR_WF_PARAMETER_LimitedBoundaries";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class gameplayMapColoration {
		title = "$STR_WF_PARAMETER_Coloration";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_Default","$STR_WF_PARAMETER_NATO_Coloration"};
		default = 1;
	};
	class gameplayMissileRange {
		title = "$STR_WF_PARAMETER_MissileRange";
		values[] = {0,500,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000,9500,10000};
		texts[] = {"$STR_WF_Disabled","500m","1000m","1500m","2000m","2500m","3000m","3500m","4000m","4500m","5000m","5500m","6000m","6500m","7000m","7500m","8000m","8500m","9000m","9500m","10000m"};
		default = 0;
	};
	class gameplaySecondaryMissions {
		title = "$STR_WF_PARAMETER_SecondaryMissions";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class gameplayShowUID {
		title = "$STR_WF_PARAMETER_ShowUID";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplaySpecialization {
		title = "$STR_WF_PARAMETER_Specialization";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_PARAMETER_None","$STR_WF_PARAMETER_Infantry","$STR_WF_PARAMETER_LandVehicles","$STR_WF_PARAMETER_Aircraft"};
		default = 1;
	};
	class gameplayThermalImaging {
		title = "$STR_WF_PARAMETER_ThermalImaging";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_Weapons","$STR_WF_PARAMETER_Vehicles","$STR_WF_Enabled"};
		default = 2;
	};
	class gameplayTrackAI {
		title = "$STR_WF_PARAMETER_TrackAI";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplayTrackPlayers {
		title = "$STR_WF_PARAMETER_TrackPlayers";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplayUnitsBalancing {
		title = "$STR_WF_PARAMETER_Balance";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class gameplayUnitsBounty {
		title = "$STR_WF_PARAMETER_UnitsBounty";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplayUpgradesEast {
		title = "$STR_WF_PARAMETER_Upgrades_East";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplayUpgradesWest {
		title = "$STR_WF_PARAMETER_Upgrades_West";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class gameplayViewDistance {
		title = "$STR_WF_PARAMETER_ViewDistance";
		values[] = {200,500,800,1000,1500,2000,2500,3000,3500,4000,4500,5000,6000,7000,8000,9000,10000};
		texts[] = {"200m","500m","800m","1000m","1500m","2000m","2500m","3000m","3500m","4000m","4500m","5000m","6000m","7000m","8000m","9000m","10k"};
		default = 6000;
	};
	class gameplayAlloAigrousizeByRank {
		title = "$STR_WF_PARAMETER_AIGroupSize_RANK";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	#ifdef VANILLA
		class moduleCM {
			title = "$STR_WF_PARAMETER_Countermeasures";
			values[] = {0,1};
			texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
			default = 0;
		};
	#endif
	class moduleEASA {
		title = "$STR_WF_PARAMETER_EASA";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class moduleICBM {
		title = "$STR_WF_PARAMETER_ICBM";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class moduleISIS {
		title = "$STR_WF_PARAMETER_ISIS";
		values[] = {0,1,2};
		texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_Leader","$STR_WF_PARAMETER_All"};
		default = 0;
	};
	class moduleUPSMON {
		title = "$STR_WF_PARAMETER_UPSMON";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class moduleVC {
		title = "$STR_WF_PARAMETER_Clouds";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class respawnCamps {
		title = "$STR_WF_PARAMETER_Camp";
		values[] = {0,1,2,3,4};
		texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_Classic","$STR_WF_PARAMETER_Respawn_CampsNearby","$STR_WF_PARAMETER_Respawn_Defender","Respawn DEPOT"};
		default = 4;
	};
	class respawnCampsRule {
		title = "$STR_WF_PARAMETER_CampRespawnRule";
		values[] = {0,1,2};
		texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_Respawn_CampsRule_WestEast","$STR_WF_PARAMETER_Respawn_CampsRule_WestEastRes"};
		default = 1;
	};
	class respawnDelay {
		title = "$STR_WF_PARAMETER_Respawn";
		values[] = {10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90};
		texts[] = {"10 Seconds","15 Seconds","20 Seconds","25 Seconds","30 Seconds TNT","35 Seconds","40 Seconds","45 Seconds","50 Seconds",
		"55 Seconds","60 Seconds","65 Seconds","70 Seconds","75 Seconds","80 Seconds","85 Seconds","90 Seconds"};
		default = 20;
	};
	class respawnMASH {
		title = "$STR_WF_PARAMETER_Respawn_MASH";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class respawnMobile {
		title = "$STR_WF_PARAMETER_MobileRespawn";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class respawnPenalty {
		title = "$STR_WF_PARAMETER_Respawn_Penalty";
		values[] = {0,1,2,3,4,5};
		texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_Respawn_Penalty_Remove","$STR_WF_PARAMETER_Respawn_Penalty_Full","$STR_WF_PARAMETER_Respawn_Penalty_OneHalf","$STR_WF_PARAMETER_Respawn_Penalty_OneFourth","$STR_WF_PARAMETER_Respawn_Penalty_Mobile"};
		default = 5;
	};
	class respawnTownsRange {
		title = "$STR_WF_PARAMETER_TownRespawnRange";
		values[] = {50,100,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850,900,950,1000,1500,2000,2500,3000,3500,4000};
		texts[] = {"50m","100m","150m","200m","250m","300m","350m","400m","450m","500m","550m","600m","650m","700m","750m","800m","850m","900m","950m","1000m","1500m","2000m","2500m","3000m","3500m","4000m"};
		default = 500;
	};
	class restrictionAdvancedAir {
		title = "$STR_WF_PARAMETER_AdvancedAir";
		values[] = {0,1,2};
		texts[] = {"$STR_WF_PARAMETER_FullModernAirWar","$STR_WF_PARAMETER_NoAdvancedPlanes","$STR_WF_PARAMETER_OnlyTransportHelicopters"};
		default = 0;
	};
	class restrictionGear {
		title = "$STR_WF_PARAMETER_GearRestriction";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class townsStrikerMax {
		title = "$STR_WF_PARAMETER_MaxResStriker";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,24,26,28,30,32,34,36,38,40,50,60,70,80,90,100};
		texts[] = {"$STR_WF_Disabled","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","22","24","26","28","30","32","34","36","38","40","50","60","70","80","90","100"};
		default = 0;
	};
	class townsCamps {
		title = "$STR_WF_PARAMETER_TownsCamps";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class townsCaptureMode {
		title = "$STR_WF_PARAMETER_TownsCaptureMode";
		values[] = {0,1,2};
		texts[] = {"$STR_WF_PARAMETER_Classic","$STR_WF_PARAMETER_TownsCaptureMode_Threshold","$STR_WF_PARAMETER_TownsCaptureMode_AllCamps"};
		default = 2;
	};
		class townsCivilians {
			title = "$STR_WF_PARAMETER_TownCivilians";
			values[] = {0,1,2};
			texts[] = {"$STR_WF_Disabled","Chernarus Civilians","Civilians"};
			default = 0;
		};
	class townsConquestMode {
		title = "$STR_WF_PARAMETER_TownsConquestMode";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_Classic","$STR_WF_PARAMETER_Territorial"};
		default = 1;
	};
	class townsGear {
		title = "$STR_WF_PARAMETER_TownsGear";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_Disabled","$STR_WF_PARAMETER_CampSel","$STR_WF_PARAMETER_Depot","$STR_WF_PARAMETER_CampnDepot"};
		default = 2;
	};
	class townsOccupation {
		title = "$STR_WF_PARAMETER_Occupation";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class townsOccupDifficulty {
		title = "$STR_WF_PARAMETER_Difficulty_Occupation";
		values[] = {1,2,3};
		texts[] = {"Hard","Normal (Default TNT)","LITE (less Server Load)"};
		default = 2;
	};
	class townsOccupationFactionEast {
		title = "$STR_WF_PARAMETER_Occupation_Type_East";
		values[] = {0,1,2};
		texts[] = {"Chernarussian Movement of the Red Star (ChDKZ)","Russian Armed Forces","Takistan Army"};
		default = 1;
	};
	class townsOccupationFactionWest {
		title = "$STR_WF_PARAMETER_Occupation_Type_West";
		values[] = {0,1,2,3};
		texts[] = {"Chernarussian Defence Force","United States Army","United States Marine Corps","British Armed Force"};
		default = 1;
	};
	class townsOccupReinforcement {
		title = "$STR_WF_PARAMETER_Reinforcement_Occupation";
		values[] = {0};
		texts[] = {"$STR_WF_Disabled"};
		default = 0;
	};
	class townsMaxPatrol {
		title = "$STR_WF_PARAMETER_MaxResPatrols";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,22,24,26,28,30,32,34,36,38,40,50,60,70,80,90,100};
		texts[] = {"$STR_WF_Disabled","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","22","24","26","28","30","32","34","36","38","40","50","60","70","80","90","100"};
		default = 0;
	};
	class townsProtectionRange {
		title = "$STR_WF_PARAMETER_TownProtectionRange";
		values[] = {0,50,100,150,200,250,300,350,400,450,500,600,1000,1500,2000,2500};
		texts[] = {"0m","50m","100m","150m","200m","250m","300m","350m","400m","450m","500m","600","1000m","1500m","2000m","2500"};
		default = 500;
	};
	class townsPurchaseInfantry {
		title = "$STR_WF_PARAMETER_TownsPurchaseMilita";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class townsResistance {
		title = "$STR_WF_PARAMETER_Resistance";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class townsResistanceDifficulty {
		title = "$STR_WF_PARAMETER_Difficulty_Resistance";
		values[] = {1,2,3};
		texts[] = {"Hard","Normal (Default TNT)","LITE (less Server Load)"};
		default = 2;
	};
	class townsResistanceFaction {
		title = "$STR_WF_PARAMETER_Reinforcement_Type";
		values[] = {0,1,2,3};
		texts[] = {"AAF","Syndikat","Nationalist Troops","Insurgency ChDKZ"};
		default = 3;
	};
	class townsResistanceReinforcement {
		title = "$STR_WF_PARAMETER_Reinforcement_Resistance";
		values[] = {0};
		texts[] = {"$STR_WF_Disabled"};
		default = 0;
	};
	class townsResistanceVehicleLock {
		title = "$STR_WF_PARAMETER_Resistance_VehLock";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class townsStartingMode {
		title = "$STR_WF_PARAMETER_StartingMode";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_PARAMETER_None","$STR_WF_PARAMETER_Divided_Towns","$STR_WF_PARAMETER_Nearby_Town","$STR_WF_PARAMETER_StartingLocations_Random"};
		default = 0;
	};
	
};