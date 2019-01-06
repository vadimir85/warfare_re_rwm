Private ["_maxRange"];
_maxRange = 'WFBE_ARTILLERYMAXRANGE' Call GetNamespace;

['WFBE_EAST_ARTILLERY_DESC',['D-30','Podnos','BM-21 Grad','2S3 Akatsiya'],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_NAMES',
  [
	['rhs_D30_msv','rhsgref_ins_d30','rhs_D30_vmf','rhs_D30_vdv'],
	['rhs_2b14_82mm_vmf','rhs_2b14_82mm_vdv','rhs_2b14_82mm_msv','rhsgref_ins_2b14'], 
	['RHS_BM21_MSV_01','rhsgref_ins_BM21'],
	['rhs_2s3_tv']
  ]
,true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_WEAPONS',['RHS_Weap_D30','RHS_Weap_2b14','rhs_weap_grad','RHS_Weap_2a33'],true] Call SetNamespace; 
['WFBE_EAST_ARTILLERY_AMMOS',
  [
	['rhs_mag_of462','rhs_mag_of462_10','rhs_mag_3of56','rhs_mag_3of56_10','rhs_mag_bk6m','rhs_mag_bk13','rhs_mag_d462','rhs_mag_d462_2','rhs_mag_s463','rhs_mag_s463_2','rhs_mag_3of69m','rhs_mag_3of69m_2'],
	['rhs_mag_3vo18_10','rhs_mag_3vs25m_10','rhs_mag_53_va_832a_10','rhs_mag_d832du_10'],
	['rhs_mag_40Rnd_122mm_rockets'],
	['rhs_mag_HE_2a33','rhs_mag_WP_2a33','rhs_mag_Atomic_2a33','rhs_mag_LASER_2a33','rhs_mag_SMOKE_2a33','rhs_mag_ILLUM_2a33']
  ]
,true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_EXTENDED_MAGS',
  [
	[],
	[],
	[],
	[]
  ]
,true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_EXTENDED_MAGS_UPGRD',
  [
	[],
	[],
	[],
	[]
  ]
,true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_MINRANGES',[100,10,500,100],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_MAXRANGES',[5100*_maxRange,28*_maxRange,13333*_maxRange,6666*_maxRange],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_RELOADTIME',[5,4,2,5],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_BURST',[10,4,10,10],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_VELOCITIES',[500,475,550,500],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_DISPERSIONS',[50,60,40,30],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_AMMO_LASER',['rhs_mag_LASER_2a33'],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_AMMO_SADARM',['rhs_mag_WP_2a33'],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_AMMO_ILLUMN',['rhs_mag_ILLUM_2a33'],true] Call SetNamespace;
['WFBE_EAST_ARTILLERY_DEPLOY_SMOKE',['rhs_mag_SMOKE_2a33'],true] Call SetNamespace;