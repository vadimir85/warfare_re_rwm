//--- Radio Announcer (Vanilla worlds).
['WFBE_WESTANNOUNCERS',['WFHQ_EN1'],true] Call SetNamespace;

//--- Crew model.
['WFBE_WESTCREW',if (WF_Camo) then {'rhsusf_army_ocp_combatcrewman'} else {'rhsusf_army_ucp_combatcrewman'},false] Call SetNamespace;

//--- Pilot model.
['WFBE_WESTPILOT',if (WF_Camo) then {'rhsusf_army_ocp_helipilot'} else {'rhsusf_army_ucp_helipilot'},false] Call SetNamespace;

//--- Soldier model.
['WFBE_WESTSOLDIER',if (WF_Camo) then {'rhsusf_army_ocp_rifleman'} else {'rhsusf_army_ucp_rifleman'},false] Call SetNamespace;

//--- Ambulances.
['WFBE_WESTAMBULANCES',['RWM_oshkosh_M_ATV_ambu_d','rhsusf_M1230a1_usarmy_d','rhsusf_M1230a1_usarmy_wd','rhsusf_m998_ambu_d','rhsusf_m113_usarmy_medical','rhsusf_m113d_usarmy_medical','RHS_UH60M_MEV','RHS_UH60M_MEV2','B_T_Lifeboat','Rwm_Lav_25_ambu'],true] Call SetNamespace;

//--- Repair (Engineer) Trucks.
['WFBE_WESTREPAIRTRUCKS',['rhsusf_M977A4_enginer_truck_M2_usarmy_d'],true] Call SetNamespace;

//--- Service Trucks.
['WFBE_WESTSERVICETRUCKS',['rhsusf_M978A4_Service_Truck_d'],true] Call SetNamespace;

//--- Salvage Trucks.
['WFBE_WESTSALVAGETRUCK',['WarfareSalvageTruck_USMC'],true] Call SetNamespace;

//--- Supply Trucks.
['WFBE_WESTSUPPLYTRUCKS',['Rwm_hemt_suply_truck','Rwm_M107_supply_truck','Land_Cargo10_military_green_F','CargoNet_01_barrels_F','B_CargoNet_01_ammo_F'],true] Call SetNamespace;

//--- UAV.
['WFBE_WESTUAV','B_UAV_05_F',true] Call SetNamespace;

if (isServer) then {
	//--- Base Patrols.
	if (paramBasePatrols) then {
		['WFBE_WESTBASEPATROLS_0',['rhsusf_army_ucp_teamleader','rhsusf_army_ucp_rifleman','rhsusf_army_ucp_rifleman','rhsusf_army_ucp_autorifleman','rhsusf_army_ucp_sniper_m107','rhsusf_army_ucp_machinegunner'],true] Call SetNamespace;
		['WFBE_WESTBASEPATROLS_1',['rhsusf_army_ucp_teamleader','rhsusf_army_ucp_rifleman','rhsusf_army_ucp_rifleman','rhsusf_army_ucp_machinegunner','rhsusf_army_ucp_riflemanat','rhsusf_socom_marsoc_sarc'],true] Call SetNamespace;
		['WFBE_WESTBASEPATROLS_2',['rhsusf_army_ucp_teamleader','rhsusf_army_ucp_rifleman','rhsusf_army_ucp_rifleman','rhsusf_army_ucp_riflemanat','rhsusf_army_ucp_aa','rhsusf_army_ucp_jfo'],true] Call SetNamespace;
		['WFBE_WESTBASEPATROLS_3',['rhsusf_army_ucp_teamleader','rhsusf_army_ucp_rifleman','rhsusf_army_ucp_autorifleman','rhsusf_army_ucp_javelin','rhsusf_army_ucp_riflemanat','rhsusf_army_ucp_sniper_m107'],true] Call SetNamespace;
	};
	
	//--- Paratroopers.
	['WFBE_WESTPARACHUTELEVEL1',['Rwm_Parachute_ns_m249','Rwm_Parachute_ns_m4a1_medic','Rwm_Parachute_ns_sr25','Rwm_Parachute_ns_m4a1','Rwm_Parachute_ns_sr25','Rwm_Parachute_ns_m4a1_medic','Rwm_Parachute_ns_m4a1','Rwm_Parachute_ns_m4a1_GL','Rwm_Parachute_ns_m249'],true] Call SetNamespace;
	['WFBE_WESTPARACHUTELEVEL2',['Rwm_Parachute_ns_m249','Rwm_Parachute_ns_m4a1_medic','Rwm_Parachute_ns_sr25','Rwm_Parachute_ns_m4a1','Rwm_Parachute_ns_sr25','Rwm_Parachute_ns_m4a1_medic','Rwm_Parachute_ns_m4a1','Rwm_Parachute_ns_m4a1_GL','Rwm_Parachute_ns_m249'],true] Call SetNamespace;
	['WFBE_WESTPARACHUTELEVEL3',['Rwm_Parachute_ns_m249','Rwm_Parachute_ns_m4a1_medic','Rwm_Parachute_ns_sr25','Rwm_Parachute_ns_m4a1','Rwm_Parachute_ns_sr25','Rwm_Parachute_ns_m4a1_medic','Rwm_Parachute_ns_m4a1','Rwm_Parachute_ns_m4a1_GL','Rwm_Parachute_ns_m249'],true] Call SetNamespace;

	//--- Paratroopers, Vehicle.
	['WFBE_WESTPARACARGO','RHS_CH_47F',true] Call SetNamespace;

	//--- HQ Repair Truck model.
	['WFBE_WESTREPAIRTRUCK','rhsusf_m113d_usarmy_supply',false] Call SetNamespace;

	//--- Starting Vehicles.
	['WFBE_WESTSTARTINGVEHICLES',if (WF_Camo) then {['rhsusf_M1230a1_usarmy_wd','rhsusf_M1083A1P2_wd_fmtv_usarmy','rhsusf_m998_w_4dr']} else {['RWM_oshkosh_M_ATV_ambu_d','rhsusf_M1083A1P2_d_fmtv_usarmy','rhsusf_m998_d_4dr']},true] Call SetNamespace;

	//--- Supply Paradropping, Dropped Ammunition.
	['WFBE_WESTPARAAMMO',['B_CargoNet_01_ammo_F','CargoNet_01_barrels_F','CargoNet_01_box_F'],true] Call SetNamespace;
	
	//--- Supply Paradropping, Dropped Vehicle.
	['WFBE_WESTPARAVEHICARGO','rhsusf_m113d_usarmy_supply',true] Call SetNamespace;
	
	//--- Supply Paradropping, Vehicle.
	['WFBE_WESTPARAVEHI','RHS_CH_47F',true] Call SetNamespace;
	
	//--- Supply Paradropping, Parachute Model.
	['WFBE_WESTPARACHUTE','B_Parachute_02_F',true] Call SetNamespace;
	
	//--- Supply Truck model.
	['WFBE_WESTSUPPLYTRUCK',['Rwm_hemt_suply_truck','Rwm_M107_supply_truck','Land_Cargo10_military_green_F','CargoNet_01_barrels_F','B_CargoNet_01_ammo_F'],false] Call SetNamespace;
};

if (local player) then {
	//--- Default Faction (Buy Menu), this is the faction name defined in core_xxx.sqf files.
	['WFBE_WESTDEFAULTFACTION','USA',true] Call SetNamespace;
};