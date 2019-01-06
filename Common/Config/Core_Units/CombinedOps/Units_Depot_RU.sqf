Private ['_u'];

// Russian Depot Vehicles
_u = ["rhs_uaz_open_MSV_01"];
_u = _u + ["rhs_kamaz5350_msv"];
_u = _u + ['rhsgref_BRDM2_HQ_msv'];
_u = _u + ['B_Quadbike_01_F'];
_u = _u + ['O_Boat_Transport_01_F'];
_u = _u + ['O_Boat_Armed_01_hmg_F'];
_u = _u + ['O_Lifeboat'];
_u = _u + ['I_C_Boat_Transport_02_F'];
_u = _u + ['I_SDV_01_F'];
_u = _u + [selectRandom ['RHS_Ural_Civ_01','RHS_Ural_Civ_02','RHS_Ural_Civ_03','RHS_Ural_Open_Civ_01','RHS_Ural_Open_Civ_02','RHS_Ural_Open_Civ_03']];

if (paramPurchaseInfDepot) then {
	_u = _u	+ ['WFBE_EASTSOLDIER' Call GetNamespace];
	_u = _u + ['rhs_msv_engineer'];
	_u = _u + ['rhs_msv_medic'];
};

_u