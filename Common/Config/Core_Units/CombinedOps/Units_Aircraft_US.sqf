Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

//--- US Aircraft Vehicles
_u = ['RHS_UH60M_MEV2'];
_u = _u + [selectRandom ['RHS_AH64D_CS','RHS_AH64D_noradar_CS']];
_u = _u + [selectRandom ['RHS_AH64D_AA','RHS_AH64D_noradar_AA']];
_u = _u + [selectRandom ['RHS_AH64DGrey','RHS_AH64D','RHS_AH64D_noradar']];
_u = _u + [selectRandom ['RHS_AH64D_GS','RHS_AH64D_noradar_GS']];
_u = _u + ['RHS_MELB_AH6M'];
_u = _u + ['RHS_MELB_AH6M_L'];
_u = _u + ['RHS_MELB_AH6M_M'];
_u = _u + ['RHS_MELB_H6M'];
_u = _u + ['RHS_MELB_MH6M'];
_u = _u + ['RHS_UH60M'];

_u = _u + ['RHS_AH1Z_GS'];
_u = _u + ['RHS_AH1Z'];
_u = _u + ['RHS_AH1Z_CS'];
_u = _u + ['rhsusf_CH53E_USMC'];
_u = _u + ['RHS_UH1Y_UNARMED'];
_u = _u + ['RHS_UH1Y_FFAR'];
_u = _u + ['RHS_UH1Y'];
_u = _u + ['RHS_UH1Y_GS'];

if (WF_Camo) then {
_u = _u + ['RHS_CH_47F'];
} else {
_u = _u + ['RHS_CH_47F_light'];
};

if (_r == 0) then {};

_u