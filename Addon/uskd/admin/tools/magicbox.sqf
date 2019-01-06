private["_box"];
liafu = true;
_box = _this select 1;
_playerpos = getposATL player;

titleText ["Die Box wird in 1 Minute von der Karte gelöscht...","PLAIN DOWN"]; titleFadeOut 3;

magicbox = "GERBasicWeapons_EP1" createVehiclelocal ( position player  ); 
magicbox setposATL _playerpos;
_magicboxwep =["ItemGPS","ItemMap","ItemRadio","ItemCompass","ItemWatch","Binocular","Binocular_Vector","NVGoggles","Laserdesignator","M9","M9SD","revolver_EP1","revolver_gold_EP1","Makarov",
		"MakarovSD","glock17_EP1","Colt1911","UZI_EP1","UZI_SD_EP1","Sa61_EP1","SMAW","M47Launcher_EP1","MetisLauncher","RPG7V","RPG18","M136",
		"M60A4_EP1","M249_EP1","M249_m145_EP1","M240","Mk_48_DES_EP1","BAF_L110A1_Aim","SVD","SVD_des_EP1","SVD_NSPU_EP1","VSS_vintorez","M24_des_EP1","M40A3","Huntingrifle","DMR","M4SPR","M110_NVG_EP1",
		"AA12_PMC","Saiga12K","M1014","M14_EP1","M16A4_GL","m16a4_acg","M16A4_ACG_GL","M4A1_HWS_GL","M4A3_CCO_EP1","SCAR_L_CQC_CCO_SD","SCAR_L_CQC_Holo","SCAR_L_STD_EGLM_RCO","SCAR_L_STD_EGLM_TWS","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD",
		"SCAR_H_STD_TWS_SD","mp5a5","mp5sd","AK_107_pso","AK_107_GL_pso","AK_107_kobra","AK_107_GL_kobra","AKS_74_GOSHAWK","AKS_74_NSPU","AKS_74_pso","AKS_GOLD","RPK_74","G36_C_SD_eotech","G36_C_SD_camo","G36K_camo","MG36_camo",
		"m8_carbine","m8_carbineGL","m8_SAW","m8_holo_sd","m8_sharpshooter","m8_tws","m8_tws_sd","BAF_L85A2_RIS_CWS","Sa58V_CCO_EP1","Sa58V_RCO_EP1","FN_FAL","FN_FAL_ANPVS4","LeeEnfield","pk"];

_magicboxmag =["Laserbatteries","30Rnd_9x19_UZI","30Rnd_9x19_UZI_SD","20Rnd_B_765x17_Ball","15Rnd_9x19_M9","15Rnd_9x19_M9SD","8Rnd_9x18_Makarov","8Rnd_9x18_MakarovSD","7Rnd_45ACP_1911","6Rnd_45ACP","17Rnd_9x19_glock17","SMAW_HEAA","SMAW_HEDP",
		"Dragon_EP1","AT13","PG7V","PG7VR","PG7VL","OG7","RPG18","M136","1Rnd_HE_M203","1Rnd_Smoke_M203","1Rnd_HE_M203","FlareWhite_M203","FlareGreen_M203","FlareRed_M203","1Rnd_Smoke_M203","1Rnd_SmokeRed_M203",
		"1Rnd_SmokeGreen_M203","1Rnd_HE_GP25","FlareWhite_GP25","FlareGreen_GP25","FlareRed_GP25","1Rnd_SMOKE_GP25","1Rnd_SmokeRed_GP25","1Rnd_SmokeGreen_GP25","HandGrenade_West","HandGrenade_East","SmokeShell",
		"SmokeShellRed","SmokeShellGreen","SmokeShellPurple","SmokeShellBlue","PipeBomb","MineE","200Rnd_556x45_L110A1","200Rnd_556x45_M249","100Rnd_762x51_M240","100Rnd_762x54_PK","10Rnd_762x54_SVD","20Rnd_9x39_SP5_VSS",
		"5Rnd_762x51_M24","5x_22_LR_17_HMR","20Rnd_762x51_DMR","20Rnd_B_AA12_Pellets","20Rnd_B_AA12_74Slug","20Rnd_B_AA12_HE","8Rnd_B_Saiga12_74Slug","8Rnd_B_Beneli_74Slug","8Rnd_B_Beneli_Pellets",
		"30Rnd_556x45_Stanag","30Rnd_556x45_StanagSD","30Rnd_556x45_G36","30Rnd_556x45_G36SD","100Rnd_556x45_BetaCMag","20rnd_762x51_B_SCAR","20Rnd_762x51_SB_SCAR","30rnd_9x19_MP5","30rnd_9x19_MP5SD",
		"30Rnd_545x39_AK","30Rnd_545x39_AKSD","75Rnd_545x39_RPK","30Rnd_762x39_SA58","30Rnd_762x39_AK47","64Rnd_9x19_Bizon","64Rnd_9x19_SD_Bizon","10x_303","20Rnd_762x51_FNFAL"];
{magicbox addWeaponCargoglobal [_x,1];} forEach _magicboxwep;
{magicbox addMagazineCargoglobal [_x,20];} forEach _magicboxmag;
sleep 60;
deletevehicle magicbox;

titleText ["Die Ammo Box wurde von der Karte gelöscht...","PLAIN DOWN"]; titleFadeOut 3;
