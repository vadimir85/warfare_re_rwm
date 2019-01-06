Private ["_maxRange"];
_maxRange = 'WFBE_ARTILLERYMAXRANGE' Call GetNamespace;

['WFBE_WEST_ARTILLERY_DESC',['M119A2','M252','M109A6','D-30','BM-21 Grad'],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_NAMES',
[
	['RHS_M119_D','RHS_M119_WD'],
	['RHS_M252_USMC_D','RHS_M252_USMC_WD','RHS_M252_D','RHS_M252_WD','rhsgref_cdf_b_reg_M252'],
	['rhsusf_m109d_usarmy','rhsusf_m109_usarmy'],
	['rhsgref_cdf_b_reg_d30'],
	['rhsgref_cdf_b_reg_BM21']
]
,true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_WEAPONS',['RHS_weap_M119','rhs_mortar_81mm','rhs_weap_m284','RHS_Weap_D30','rhs_weap_grad'],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_AMMOS',
  [
	['RHS_mag_m1_he_12','rhs_mag_m314_ilum_4','rhs_mag_m60a2_smoke_4'],
	['rhs_1Rnd_m821_HE','8Rnd_82mm_Mo_shells','8Rnd_82mm_Mo_Flare_white','8Rnd_82mm_Mo_Smoke_white','8Rnd_82mm_Mo_guided','8Rnd_82mm_Mo_LG'],
	['32Rnd_155mm_Mo_shells','6Rnd_155mm_Mo_smoke','2Rnd_155mm_Mo_guided','2Rnd_155mm_Mo_LG','6Rnd_155mm_Mo_mine','2Rnd_155mm_Mo_Cluster','6Rnd_155mm_Mo_AT_mine'],
	['rhs_mag_of462','rhs_mag_of462_10','rhs_mag_3of56','rhs_mag_3of56_10','rhs_mag_bk6m','rhs_mag_bk13','rhs_mag_d462','rhs_mag_d462_2','rhs_mag_s463','rhs_mag_s463_2','rhs_mag_3of69m','rhs_mag_3of69m_2'],
	['rhs_mag_40Rnd_122mm_rockets']
  ]
,true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_EXTENDED_MAGS',
  [
  	[],
	[],
	[],
	[],
	[]
  ]
,true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_EXTENDED_MAGS_UPGRD',
  [
  	[],
	[],
	[],
	[],
	[]
  ]
,true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_MINRANGES',[100,10,100,100,500],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_MAXRANGES',[6333*_maxRange,1866*_maxRange,6333*_maxRange,5100*_maxRange,13333*_maxRange],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_RELOADTIME',[5,4,2,5,2],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_BURST',[10,4,6,10,10],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_VELOCITIES',[500,475,550,500,550],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_DISPERSIONS',[50,60,40,50,40],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_AMMO_LASER',['8Rnd_82mm_Mo_guided'],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_AMMO_SADARM',['8Rnd_82mm_Mo_LG'],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_AMMO_ILLUMN',['8Rnd_82mm_Mo_Flare_white'],true] Call SetNamespace;
['WFBE_WEST_ARTILLERY_DEPLOY_SMOKE',['8Rnd_82mm_Mo_Smoke_white'],true] Call SetNamespace;