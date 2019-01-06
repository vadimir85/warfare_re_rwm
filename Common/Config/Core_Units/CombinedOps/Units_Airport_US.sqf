Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

/* US Airport Vehicles */
_u = [selectRandom ['C_Plane_Civil_01_F','C_Plane_Civil_01_racing_F']];
_u = _u + ['rhsgref_cdf_b_su25'];
_u = _u + ['RHS_AN2_B'];
_u = _u + ['rhs_l39_cdf_b_cdf'];
_u = _u + ['rhs_l159_cdf_b_CDF'];
_u = _u + ['rhsgref_cdf_b_mig29s'];
_u = _u + ['RHS_C130J'];
_u = _u + ['RHS_A10_AT'];
_u = _u + ['RHS_A10'];
_u = _u + ['rhsusf_f22'];

//--- advanced aircraft
if (_r == 0) then {};
_u