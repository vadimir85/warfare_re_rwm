Private ['_easaDefault','_easaLoadout','_easaVehi','_vehicle'];

EASA_Equip = Compile preProcessFile 'Client\Module\EASA\EASA_Equip.sqf';
EASA_RemoveLoadout = Compile preProcessFile 'Client\Module\EASA\EASA_RemoveLoadout.sqf';

_easaDefault = [];
_easaLoadout = [];
_easaVehi = [];

/* [[Price], [Description], [Weapon, Ammos], [Weapon, Ammos]...] */
_easaVehi = 	_easaVehi + ['DELETE_O_Su25_TKA'];
_easaDefault = 	_easaDefault + [[['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[6500],['FAB-250 (6)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M','DELETE_2Rnd_FAB250_M']],
  [[6500],['X-29 (4) | FAB-250 (2)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M']],
  [[6500],['X-29 (4) | R-73 (2)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']],
  [[6500],['R-73 (4) | FAB-250 (2)'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M']],
  [[6500],['R-73 (2) | FAB-250 (4)'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M']]
 ]
];

_easaVehi = 	_easaVehi + ['Su25_Ins'];
_easaDefault = 	_easaDefault + [[['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[6500],['FAB-250 (6)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M','DELETE_2Rnd_FAB250_M']],
  [[6500],['X-29 (4) | FAB-250 (2)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M']],
  [[6500],['X-29 (4) | R-73 (2)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']],
  [[6500],['R-73 (4) | FAB-250 (2)'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M']],
  [[6500],['R-73 (2) | FAB-250 (4)'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M']]
 ]
];

_easaVehi = 	_easaVehi + ['Su39'];
_easaDefault = 	_easaDefault + [[['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[6600],['FAB-250 (6)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M','DELETE_2Rnd_FAB250_M']],
  //[[6600],['X-29 (6)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_6Rnd_Kh29L_M']],
  [[6600],['X-29 (4) | FAB-250 (2)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M']],
  [[6600],['X-29 (4) | R-73 (2)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']],
  [[8000],['X-29 (8)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M']],
  [[7000],['R-73 (6)'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']],
  [[6600],['R-73 (4) | FAB-250 (2)'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M']],
  [[6600],['R-73 (2) | FAB-250 (4)'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M']]
 ]
];
//L39_TK_EP1
_easaVehi = 	_easaVehi + ['DELETE_O_SU34_AGM_RU'];
_easaDefault = 	_easaDefault + [[['DELETE_Vmlauncher_Kh29L_veh','DELETE_6Rnd_Kh29L_M'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[10500],['FAB-250 (10)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M','DELETE_4Rnd_KAB250_M','DELETE_2Rnd_FAB250_M']],
  [[10500],['FAB-250 (8) | R-73 (2)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M','DELETE_4Rnd_KAB250_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']],
  [[10500],['FAB-250 (6) | R-73 (4)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M','DELETE_2Rnd_FAB250_M'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']],
  [[10500],['FAB-250 (6) | X-29 (4)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M','DELETE_2Rnd_FAB250_M'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M']],
  [[10500],['FAB-250 (4) | X-29 (4) | R-73 (2)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']],
  [[10500],['FAB-250 (4) | R-73 (6)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']],
  [[10500],['FAB-250 (4) | X-29 (6)'],['DELETE_Vblauncher_KAB250_veh','DELETE_4Rnd_KAB250_M'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_6Rnd_Kh29L_M']],
  [[10500],['FAB-250 (2) | R-73 (8)'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F','DELETE_4Rnd_Missile_AA_03_F']],
  [[10500],['FAB-250 (2) | R-73 (4) | X-29 (4)'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_4Rnd_Kh29L_M']],
  [[10500],['FAB-250 (2) | R-73 (2) | X-29 (6)'],['DELETE_Vblauncher_KAB250_veh','DELETE_2Rnd_FAB250_M'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_6Rnd_Kh29L_M']],
  [[10500],['R-73 (10)'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F','DELETE_4Rnd_Missile_AA_03_F'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F']],
  [[10500],['X-29 (6) | R-73 (4)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_6Rnd_Kh29L_M'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']],
  [[10500],['X-29 (10)'],['DELETE_Vmlauncher_Kh29L_veh','DELETE_6Rnd_Kh29L_M','DELETE_4Rnd_Kh29L_M']],
  [[9500],['R-73 (4) Kh-31 SEAD (2)'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F'],['MaverickLauncher','2Rnd_Maverick_A10']]
 ]
];

_easaVehi = 	_easaVehi + ['RHS_Mi24P_CAS_vvs'];
_easaDefault = 	_easaDefault + [[['DELETE_Vblauncher_Fab250_veh','DELETE_2Rnd_FAB250_M']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[4500],['FAB-250 (2)'],['DELETE_Vblauncher_Fab250_veh','DELETE_2Rnd_FAB250_M']],
  [[4500],['IGLA (2)'],['DELETE_Vmlauncher_Igla_twice_veh','DELETE_2Rnd_Igla_Rack_Twin_M']]
 ]
];

/*if (paramBalancing) then {
	_easaVehi = 	_easaVehi + ['Ka52_vvs'];
	_easaDefault = 	_easaDefault + [[['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']]];
	_easaLoadout = 	_easaLoadout + [
	 [
	  [[4500],['AT-9 (4) | R-73 (8)'],['AT9Launcher','4Rnd_AT9_Mi24P'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F','DELETE_4Rnd_Missile_AA_03_F']],
	  [[4500],['AT-9 (8) | R-73 (4)'],['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']],
	  [[4500],['AT-9 (12)'],['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P']],
	  [[4500],['R-73 (12)'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F','DELETE_4Rnd_Missile_AA_03_F','DELETE_4Rnd_Missile_AA_03_F']]
	 ]
	];

	_easaVehi = 	_easaVehi + ['Ka52_UPK23_vvs'];
	_easaDefault = 	_easaDefault + [[['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']]];
	_easaLoadout = 	_easaLoadout + [
	 [
	  [[4500],['AT-9 (4) | R-73 (8)'],['AT9Launcher','4Rnd_AT9_Mi24P'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F','DELETE_4Rnd_Missile_AA_03_F']],
	  [[4500],['AT-9 (8) | R-73 (4)'],['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F']],
	  [[4500],['AT-9 (12)'],['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P']],
	  [[4500],['R-73 (12)'],['DELETE_Vmlauncher_R73_veh','DELETE_4Rnd_Missile_AA_03_F','DELETE_4Rnd_Missile_AA_03_F','DELETE_4Rnd_Missile_AA_03_F']]
	 ]
	];
};*/

_easaVehi = 	_easaVehi + ['F35'];
_easaDefault = 	_easaDefault + [[['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_F35','2Rnd_Sidewinder_F35']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[15500],['LGB (4)'],['BombLauncherA10','4Rnd_GBU12']],
  [[15500],['LGB TV (2) | AIM-9L (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_F35','2Rnd_Sidewinder_F35']],
  [[15500],['LGB TV (2) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[15500],['AGM-65 (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[15500],['AIM-9L (4)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']]
 ]
];

_easaVehi = 	_easaVehi + ['AV8B'];
_easaDefault = 	_easaDefault + [[['BombLauncher','6Rnd_GBU12_AV8B']]];
_easaLoadout = 	_easaLoadout + [
 [
  /*[[10500],['Mk82 (6)'],['Mk82BombLauncher_6','6Rnd_Mk82']],
  [[10500],['LGB (6)'],['BombLauncher','6Rnd_GBU12_AV8B']],
  [[10500],['LGB (4) | AIM-9L (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[10500],['LGB (4) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['LGB TV (2) | AIM-9L (4)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[10500],['LGB TV (2) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['AIM-9L (6)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[10500],['AGM-65 (6)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']]*/
  [[10500],['AIM-9L (6)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[11500],['AGM-88 SEAD (4) | AIM-9L (2)'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F','2Rnd_Missile_AA_03_F'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']]
 ]
];

_easaVehi = 	_easaVehi + ['AV8B2'];
_easaDefault = 	_easaDefault + [[['Mk82BombLauncher_6','6Rnd_Mk82'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']]];
_easaLoadout = 	_easaLoadout + [
 [
  /*[[10500],['LGB (8)'],['BombLauncherA10','4Rnd_GBU12','4Rnd_GBU12']],
  [[10500],['LGB (6) | AGM-65 (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['LGB (6) | AIM-9L (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[10500],['LGB (4) | AGM-65 (4)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[10500],['LGB (4) | AIM-9L (4)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[10500],['LGB (4) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['LGB TV (2) | AIM-9L (4) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['LGB TV (2) | AIM-9L (2) | AGM-65 (4)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[10500],['LGB TV (2) | AIM-9L (6)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[10500],['LGB TV (2) | AGM-65 (6)'],['BombLauncherF35','2Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[10500],['Mk82 (6) | AIM-9L (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[10500],['Mk82 (6) | AGM-65 (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['Mk82 (6) | LGB TV (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['BombLauncherF35','2Rnd_GBU12']],
  [[10500],['AGM-65 (8)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[10500],['AGM-65 (4) | AIM-9L (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[10500],['AGM-65 (6) | AIM-9L (2)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[10500],['AIM-9L (6) | AGM-65 (2)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10']]
  //[[10500],['AGM-114 (8)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']],
  [[10500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],*/
  [[10500],['AIM-9L (6)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[11500],['AGM-88 SEAD (4) | AIM-9L (2)'],['DELETE_Vmlauncher_R73_veh','2Rnd_Missile_AA_03_F','2Rnd_Missile_AA_03_F'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']]
  
 ]
];

_easaVehi = 	_easaVehi + ['A10'];
_easaDefault = 	_easaDefault + [[['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[8500],['LGB (8)'],['BombLauncherA10','4Rnd_GBU12','4Rnd_GBU12']],
  [[8500],['LGB (6) | AGM-65 (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB (6) | AIM-9L (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[8500],['LGB (4) | AGM-65 (4)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB (4) | AIM-9L (4)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[8500],['LGB (4) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (4) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (2) | AGM-65 (4)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (6)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[8500],['LGB TV (2) | AGM-65 (6)'],['BombLauncherF35','2Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['Mk82 (6) | AIM-9L (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[8500],['Mk82 (6) | AGM-65 (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['Mk82 (6) | LGB TV (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['BombLauncherF35','2Rnd_GBU12']],
  [[8500],['AGM-65 (8)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['AGM-65 (4) | AIM-9L (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[8500],['AGM-65 (6) | AIM-9L (2)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  //[[8500],['AGM-114 (8)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']],
  [[8500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[8500],['AIM-9L (6) | AGM-65 (2)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10']]
 ]
];

_easaVehi = 	_easaVehi + ['A10'];
_easaDefault = 	_easaDefault + [[['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[8500],['LGB (8)'],['BombLauncherA10','4Rnd_GBU12','4Rnd_GBU12']],
  [[8500],['LGB (6) | AGM-65 (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB (6) | AIM-9L (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[8500],['LGB (4) | AGM-65 (4)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB (4) | AIM-9L (4)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[8500],['LGB (4) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB (2) | AIM-9L (4) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (2) | AGM-65 (4)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (6)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[8500],['LGB TV (2) | AGM-65 (6)'],['BombLauncherF35','2Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['Mk82 (6) | AIM-9L (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  [[8500],['Mk82 (6) | AGM-65 (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['Mk82 (6) | LGB TV (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['BombLauncherF35','2Rnd_GBU12']],
  [[8500],['AGM-65 (8)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['AGM-65 (4) | AIM-9L (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[8500],['AGM-65 (6) | AIM-9L (2)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']],
  //[[8500],['AGM-114 (8)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']],
  [[8500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[8500],['AIM-9L (6) | AGM-65 (2)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS'],['MaverickLauncher','2Rnd_Maverick_A10']]
 ]
];

_easaVehi = 	_easaVehi + ['AH64D'];
_easaDefault = 	_easaDefault + [[['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[6500],['AGM-114 (8)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[7500],['AIM-9L (2) | AGM-114(16)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire','8Rnd_Hellfire'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']]
 ]
];
//US_Apache_AH1_D
_easaVehi = 	_easaVehi + ['US_Apache_AH1_D'];
_easaDefault = 	_easaDefault + [[['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[6500],['AGM-114 (8)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[7500],['AIM-9L (2) | AGM-114(16)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire','8Rnd_Hellfire'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']]
 ]
];

_easaVehi = 	_easaVehi + ['AH64D_GS'];
_easaDefault = 	_easaDefault + [[['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[6500],['AGM-114 (8)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[7500],['AIM-9L (2) | AGM-114(16)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire','8Rnd_Hellfire'],['SidewinderLaucher_AH1Z_GS','2Rnd_Sidewinder_AH1Z_GS']]
 ]
];

_easaVehi = 	_easaVehi + ['AH1Z_GS'];
_easaDefault = 	_easaDefault + [[['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[5250],['AGM-114 (8)'],['rhs_weap_AGM114K_Launcher','8Rnd_Hellfire']],
  [[5250],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']]
 ]
];

['WFBE_EASA_Vehicles',_easaVehi,true] Call SetNamespace;
['WFBE_EASA_Loadouts',_easaLoadout,true] Call SetNamespace;
['WFBE_EASA_Default',_easaDefault,true] Call SetNamespace;