Private ['_u'];

// US Depot Vehicles 
_u = ["rhsusf_M1232_usarmy_d"];
_u = _u + ["rhsusf_m1025_d"];
_u = _u + ["rhsusf_M1078A1R_SOV_M2_D_fmtv_socom"];
_u = _u + ['rhsusf_m113d_usarmy_supply'];
_u = _u + ['B_G_Quadbike_01_F'];
_u = _u + ['B_G_Boat_Transport_01_F'];
_u = _u + ['B_Boat_Armed_01_minigun_F'];
_u = _u + ['B_T_Lifeboat'];
_u = _u + ['rhsusf_mkvsoc'];
_u = _u + ['B_SDV_01_F'];

_u = _u + [selectRandom ['RHS_Ural_Civ_01','RHS_Ural_Civ_02','RHS_Ural_Civ_03','RHS_Ural_Open_Civ_01','RHS_Ural_Open_Civ_02','RHS_Ural_Open_Civ_03']];

if (paramPurchaseInfDepot) then {
	_u = _u	+ ['WFBE_WESTSOLDIER' Call GetNamespace];
	_u = _u + ['rhsusf_socom_marsoc_sarc'];
	_u = _u + ['rhsusf_socom_marsoc_cso_mechanic'];
};

_u