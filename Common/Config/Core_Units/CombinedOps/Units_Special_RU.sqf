//--- Radio Announcer (Vanilla worlds).
['WFBE_EASTANNOUNCERS',['WFHQ_RU1'],true] Call SetNamespace;

//--- Crew model.
['WFBE_EASTCREW','RWM_S_Crew_Ak74',false] Call SetNamespace;

//--- Pilot model.
['WFBE_EASTPILOT','rhs_pilot',false] Call SetNamespace;

//--- Soldier model.
['WFBE_EASTSOLDIER','RWM_S_Driver_Ak74',false] Call SetNamespace;

//--- Ambulances.
['WFBE_EASTAMBULANCES',['rhs_gaz66_ap2_msv','rhsgref_ins_gaz66_ap2','rhs_gaz66_ap2_vv','rhs_gaz66_ap2_vdv','rhs_gaz66_ap2_vmf','Rwm_GAZ_233011_ambu','Rwm_GAZ_233011_ambu_camo','O_Lifeboat','Rwm_Ka_60_ambu'],true] Call SetNamespace;

//--- Engineer Trucks.
['WFBE_EASTREPAIRTRUCKS',['Rwm_Ural_4320_enginer','O_Truck_03_device_F'],true] Call SetNamespace;

//--- Service Trucks.
['WFBE_EASTSERVICETRUCKS',['O_Truck_03_fuel_F','Rwm_Ural_4320_service'],true] Call SetNamespace;

//--- Salvage Trucks.
['WFBE_EASTSALVAGETRUCK',['WarfareSalvageTruck_RU'],true] Call SetNamespace;

//--- Supply Trucks.
['WFBE_EASTSUPPLYTRUCKS',['Rwm_Gaz_66_supply','Rwm_Kamaz_63968_supply','Rwm_kamaz5350_supply','RHS_Mi8AMT_vdv','O_CargoNet_01_ammo_F','CargoNet_01_barrels_F'],true] Call SetNamespace;

//--- UAV.
['WFBE_EASTUAV','rhs_pchela1t_vvs',true] Call SetNamespace;

if (isServer) then {
	//--- Base Patrols.
	if (paramBasePatrols) then {
		['WFBE_EASTBASEPATROLS_0',['rhsgref_ins_squadleader','rhs_msv_rifleman','rhs_msv_rifleman','rhs_msv_arifleman','rhs_msv_grenadier','rhs_msv_machinegunner'],true] Call SetNamespace;
		['WFBE_EASTBASEPATROLS_1',['rhsgref_ins_squadleader','rhs_msv_rifleman','rhs_msv_rifleman','rhs_msv_machinegunner','rhs_msv_RShG2','rhs_msv_medic'],true] Call SetNamespace;
		['WFBE_EASTBASEPATROLS_2',['rhsgref_ins_squadleader','rhs_msv_rifleman','rhs_msv_rifleman','rhs_msv_grenadier_rpg','rhs_msv_aa','rhs_msv_marksman'],true] Call SetNamespace;
		['WFBE_EASTBASEPATROLS_3',['rhsgref_ins_squadleader','rhs_msv_rifleman','rhs_msv_arifleman','rhs_msv_grenadier_rpg','rhs_msv_RShG2','rhs_msv_grenadier'],true] Call SetNamespace;
	};

	//--- Paratroopers.
	['WFBE_EASTPARACHUTELEVEL1',['RWM_S_Parachute_vss','RWM_S_Parachute_asval','RWM_S_Parachute_vss','RWM_S_Parachute_rshg2','RWM_S_Parachute_ak74m_gp25','RWM_S_Parachute_pkp','RWM_S_Parachute_ak103','RWM_S_Parachute_RPG7','RWM_S_Parachute_Svdp'],true] Call SetNamespace;
	['WFBE_EASTPARACHUTELEVEL2',['RWM_S_Parachute_vss','RWM_S_Parachute_asval','RWM_S_Parachute_vss','RWM_S_Parachute_rshg2','RWM_S_Parachute_ak74m_gp25','RWM_S_Parachute_pkp','RWM_S_Parachute_ak103','RWM_S_Parachute_RPG7','RWM_S_Parachute_Svdp'],true] Call SetNamespace;
	['WFBE_EASTPARACHUTELEVEL3',['RWM_S_Parachute_vss','RWM_S_Parachute_asval','RWM_S_Parachute_vss','RWM_S_Parachute_rshg2','RWM_S_Parachute_ak74m_gp25','RWM_S_Parachute_pkp','RWM_S_Parachute_ak103','RWM_S_Parachute_RPG7','RWM_S_Parachute_Svdp'],true] Call SetNamespace;
	
	//--- Paratroopers, Vehicle.
	['WFBE_EASTPARACARGO','RHS_Mi8AMT_vvsc',true] Call SetNamespace;
	
	//--- HQ Repair Truck model.
	['WFBE_EASTREPAIRTRUCK','rhsgref_BRDM2_HQ_msv',false] Call SetNamespace;
	
	//--- Starting Vehicles.
	['WFBE_EASTSTARTINGVEHICLES',if (WF_Camo) then {['Rwm_GAZ_233011_ambu','rhs_kamaz5350_msv','RHS_UAZ_MSV_01']} else {['Rwm_GAZ_233011_ambu','rhs_kamaz5350_open_msv','rhs_uaz_open_MSV_01']},true] Call SetNamespace;

	//--- Supply Paradropping, Dropped Ammunition.
	['WFBE_EASTPARAAMMO',['rhs_bmd2m'],true] Call SetNamespace;

	//--- Supply Paradropping, Dropped Vehicle.
	['WFBE_EASTPARAVEHICARGO','rhs_bmd2m',true] Call SetNamespace;

	//--- Supply Paradropping, Vehicle.
	['WFBE_EASTPARAVEHI','RHS_Mi8AMT_vvsc',true] Call SetNamespace;

	//--- Supply Paradropping, Parachute Model.
	['WFBE_EASTPARACHUTE','O_Parachute_02_F',true] Call SetNamespace;
	
	//--- Supply Truck model.
	['WFBE_EASTSUPPLYTRUCK',['Rwm_Gaz_66_supply','Rwm_Kamaz_63968_supply','Rwm_Ural_4320_supply','Rwm_kamaz5350_supply','RHS_Mi8AMT_vdv','O_CargoNet_01_ammo_F','CargoNet_01_barrels_F'],false] Call SetNamespace;
};

if (local player) then {
	//--- Default Faction (Buy Menu), this is the faction name defined in core_xxx.sqf files.
	['WFBE_EASTDEFAULTFACTION','Russia',true] Call SetNamespace;
};