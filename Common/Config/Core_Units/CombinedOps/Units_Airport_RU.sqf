Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

/* RU Airport Vehicles */
_u = [selectRandom ['C_Plane_Civil_01_F','C_Plane_Civil_01_racing_F']];
_u = _u + [selectRandom ['RHS_Su25SM_CAS_vvsc','RHS_Su25SM_CAS_vvs']];
_u = _u + [selectRandom ['RHS_Su25SM_vvsc','RHS_Su25SM_vvs']];
_u = _u + [selectRandom ['RHS_Su25SM_KH29_vvsc','RHS_Su25SM_KH29_vvs']];
_u = _u + [selectRandom ['rhs_mig29s_vvsc','rhs_mig29s_vvs']];
_u = _u + [selectRandom ['RHS_T50_vvs_generic','RHS_T50_vvs_051','RHS_T50_vvs_052','RHS_T50_vvs_053','RHS_T50_vvs_054','RHS_T50_vvs_blueonblue']];
_u = _u + ['RHS_TU95MS_vvs_old'];

if (_r == 0) then {};//--- advanced aircraft

_u