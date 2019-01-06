Private ["_lock","_position","_side","_type","_vehicle"];
_type = _this select 0;
_position = _this select 1;
_side = _this select 2;
_lock = _this select 3;

if (_type isKindOf "Ship") then {_position = getpos (nearestObjects [player, ["Land_BuoyBig_F"], 50000] select 0);};

if ((_type isKindOf "Air") && (_side == resistance)) then {
_vehicle = createVehicle [_type, _position, [], 0, "FLY"];
[_vehicle] execVM "Common\Functions\Common_heli_AI.sqf";
if (paramAARadar) then {[[[_vehicle, resistance], "Common\Common_AARadarMarkerUpdate.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP;};
} else {
_vehicle = _type createVehicle _position;
_vehicle allowDamage false;
[_vehicle] execVM "Common\Functions\Common_AllowDamage.sqf";
//*if ((_type isKindOf "Car") && (_side == resistance)) then {[_vehicle] execVM "Client\Music\music_in_car.sqf"};
if ((_type == "I_MRAP_03_hmg_F") or (_type == "I_MRAP_03_gmg_F")) then {_vehicle setObjectTextureGlobal [0,'\A3\soft_f_beta\mrap_03\data\mrap_03_ext_co.paa'];_vehicle setObjectTextureGlobal [1,'\A3\data_f\vehicles\turret_co.paa'];};
if (_type == "I_APC_Wheeled_03_cannon_F") then {_vehicle setObjectTextureGlobal [0, "A3\Armor_F_Gamma\APC_Wheeled_03\Data\apc_wheeled_03_ext_co.paa"];_vehicle setObjectTextureGlobal [1, "A3\Armor_F_Gamma\APC_Wheeled_03\Data\apc_wheeled_03_ext2_co.paa"];_vehicle setObjectTextureGlobal [2, "A3\Armor_F_Gamma\APC_Wheeled_03\Data\rcws30_co.paa"];_vehicle setObjectTextureGlobal [3, "A3\Armor_F_Gamma\APC_Wheeled_03\Data\apc_wheeled_03_ext_alpha_co.paa"];};
};
if (_side != resistance) then {
if ((_type == "rhsgref_ins_uaz_ags") or (_type == "rhsgref_ins_uaz_dshkm")or (_type == "rhsgref_ins_uaz_spg9")) then {_vehicle setObjectTextureGlobal [0,"rhsafrf\addons\rhs_a2port_car\uaz\data\uaz_main_ind_co.paa"]};
//*if ((_type == "rhs_tigr_msv") or (_type == "rhs_tigr_3camo_msv")) then {_vehicle setObjectTextureGlobal [9,"\rwm_core_ui\Images\tigr_red_cross.paa"];_vehicle setObjectTextureGlobal [10,"\rwm_core_ui\Images\tigr_red_cross.paa"]};
//*if ((_type == "rhs_tigr_msv") or (_type == "rhs_tigr_3camo_msv") or (_type == "rhsusf_M1230a1_usarmy_d") or (_type == "rhsusf_M1230a1_usarmy_wd")  or (_type == "B_T_MRAP_01_F") or (_type == "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy") or (_type == "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy")) then {[[_vehicle, ["Ambulance - healing",{player playMove "AinvPknlMstpSlayWrflDnon_medic"; player setDamage 0},nil,1.5,true,false,"","vehicle player == player",6]],"addAction",true,true] call BIS_fnc_MP;}; //ambulance fix
//*if ((_type == "rhsgref_ins_gaz66_ammo") or (_type == "rhs_gaz66_ammo_msv") or (_type == "rhsgref_cdf_b_gaz66_ammo") or (_type == "rhsusf_M977A4_AMMO_usarmy_d") or (_type == "rhsusf_M977A4_AMMO_BKIT_usarmy_d") or (_type == "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d") or (_type == "rhsusf_M977A4_AMMO_usarmy_wd") or (_type == "rhsusf_M977A4_AMMO_BKIT_usarmy_wd") or (_type == "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd")) then {_vehicle setCaptive true};
if ((_type == "O_Truck_03_ammo_F") or (_type == "O_T_Truck_03_ammo_ghex_F")) then {_vehicle setObjectTextureGlobal [0,"\RHSAFRF\addons\rhs_a3retex\data\truck_03_ext01_co.paa"]; _vehicle setObjectTextureGlobal [1,"\RHSAFRF\addons\rhs_a3retex\data\truck_03_ext02_co.paa"]; _vehicle setObjectTextureGlobal [2,"\RHSAFRF\addons\rhs_a3retex\data\truck_03_ammo_co.paa"];}; //KAMAZ-63968 textures
if (_type == "O_Truck_03_fuel_F") then {_vehicle setObjectTextureGlobal [0, "\RHSAFRF\addons\rhs_a3retex\data\truck_03_ext01_co.paa"]; _vehicle setObjectTextureGlobal [2, "\rwm_core_ui\Images\texture\Truck_03_fuel_CO.paa"]; _vehicle setObjectTextureGlobal [1,"\RHSAFRF\addons\rhs_a3retex\data\truck_03_ext02_co.paa"];};
if (_type == "O_Truck_03_device_F") then {_vehicle setObjectTextureGlobal [0,"\RHSAFRF\addons\rhs_a3retex\data\truck_03_ext01_co.paa"]; _vehicle setObjectTextureGlobal [1,"\RHSAFRF\addons\rhs_a3retex\data\truck_03_ext02_co.paa"];}; //KAMAZ-63968 textures
if (_type == "rhs_gaz66_r142_vv") then {_vehicle setObjectTextureGlobal [9, "\rwm_core_ui\Images\texture\servis.paa"];_vehicle setObjectTextureGlobal [10, "\rwm_core_ui\Images\texture\servis.paa"];_vehicle setObjectTextureGlobal [11, "\rwm_core_ui\Images\texture\servis_1.paa"];_vehicle setObjectTextureGlobal [12, "\rwm_core_ui\Images\texture\servis_1.paa"]};
//*if (_side == east) then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
//*if (_side == west) then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsgref_BRDM2_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhsgref_BRDM2_ATGM_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhsgref_BRDM2_HQ_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_btr60_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_btr70_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_btr80_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_btr80a_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_sprut_vdv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_pts_vmf") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_prp3_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_brm1k_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp1_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp1d_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp1k_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp1p_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp2e_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp2_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp2k_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp2d_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_Ob_681_2") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp3_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp3_late_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp3m_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmp3mera_msv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd1") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd1k") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd1p") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd1pk") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd1r") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd2") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd2k") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd2m") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd4_vdv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd4m_vdv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_bmd4ma_vdv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_2s3_tv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t72ba_tv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t72bb_tv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t72bc_tv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t72bd_tv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80a") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80b") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80bv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80bk") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80bvk") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80u") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80u45m") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80uk") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80ue1") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t80um") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t90_tv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhs_t90a_tv") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_rus_co.paa"};
if (_type == "rhsusf_M1117_W") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1117_D") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1117_O") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1220_usarmy_wd") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1220_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1220_M153_M2_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1220_M2_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1220_MK19_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1230a1_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1230_M2_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1230_MK19_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1232_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1232_M2_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1232_MK19_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1237_M2_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_M1237_MK19_usarmy_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m113d_usarmy_medical") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m113d_usarmy") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m113d_usarmy_M240") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m113d_usarmy_MK19") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m113d_usarmy_supply") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m1a1fep_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m1a2sep1d_usarmy") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m1a1aimd_usarmy") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m1a1aim_tuski_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m1a2sep1tuskid_usarmy") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "rhsusf_m1a2sep1tuskiid_usarmy") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "RHS_M2A2") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "RHS_M2A2_BUSKI") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "RHS_M2A3") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "RHS_M2A3_BUSKI") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "RHS_M2A3_BUSKIII") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "RHS_M6") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "B_APC_Wheeled_01_cannon_F") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
if (_type == "RWM_oshkosh_M_ATV_ambu_d") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_usa_co.paa"};
[[[_vehicle,_side], "Common\Common_InitUnit.sqf"], "BIS_fnc_execVM", true, true] call BIS_fnc_MP;
Call Compile Format ["_vehicle addEventHandler ['Killed',{[_this select 0,_this select 1,%1] Spawn UnitKilled}]",_side];
} else {
//--- Note To be optimized, 1.03 BIS BUG, cannot add resistance side via call compile format? which still isn't fixed in OA 1.59...
	_vehicle addEventHandler ["Killed",{[_this select 0,_this select 1,resistance] Spawn UnitKilled}];
//-M113	
if (_type == "rhsgref_hidf_m113a3_m2") then {_vehicle setObjectTextureGlobal [0, "\rwm_core_ui\Images\isis_tex\m113isis.paa"];};
if (_type == "rhsgref_hidf_m113a3_m2") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_isis_co.paa"};
//-Btr70
if (_type == "rhsgref_ins_g_btr70") then {_vehicle setObjectTextureGlobal [0, "rhsafrf\addons\rhs_btr70_camo\data\btr70_des_1_co.paa"];_vehicle setObjectTextureGlobal [1, "rhsafrf\addons\rhs_btr70_camo\data\btr70_des_2_co.paa"];_vehicle setObjectTextureGlobal [5, "\rwm_core_ui\Images\isis_tex\flag1.paa"];_vehicle setObjectTextureGlobal [7, "\rwm_core_ui\Images\isis_tex\isis_512x512.paa"];_vehicle setObjectTextureGlobal [8, "\rwm_core_ui\Images\isis_tex\Shahadah_512x512.paa"];};
if (_type == "rhsgref_ins_g_btr70") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\isis_tex\Flags_dam.paa"};
if (_type == "rhsgref_cdf_btr70") then {_vehicle setObjectTextureGlobal [0, "rhsafrf\addons\rhs_btr70_camo\data\btr70_1_sand_co.paa"];_vehicle setObjectTextureGlobal [1, "rhsafrf\addons\rhs_btr70_camo\data\btr70_2_sand_co.paa"];_vehicle setObjectTextureGlobal [5, "\rwm_core_ui\Images\isis_tex\flag1.paa"];_vehicle setObjectTextureGlobal [4, "\rwm_core_ui\Images\isis_tex\isis_512x512.paa"];_vehicle setObjectTextureGlobal [8, "\rwm_core_ui\Images\isis_tex\Shahadah_512x512.paa"];};
if (_type == "rhsgref_cdf_btr70") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\isis_tex\ISC_flag_IS_short_2.paa"};
//-Btr60
if (_type == "rhsgref_ins_g_btr60") then {_vehicle setObjectTextureGlobal [0, "rhsafrf\addons\rhs_a2port_armor_camo\data\btr60_body_3tone_co.paa"];_vehicle setObjectTextureGlobal [1, "rhsafrf\addons\rhs_a2port_armor_camo\data\btr60_details_3tone_co.paa"];_vehicle setObjectTextureGlobal [5, "\rwm_core_ui\Images\isis_tex\flag1.paa"];_vehicle setObjectTextureGlobal [4, "\rwm_core_ui\Images\isis_tex\isis_512x512.paa"];};
if (_type == "rhsgref_ins_g_btr60") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_isis_co.paa"};
//-Hammwe
if (_type == "rhssaf_m1025_olive_m2") then {_vehicle setObjectTextureGlobal [0, "rhsusf\addons\rhsusf_hmmwv\textures\m998_exterior_d_co.paa"];_vehicle setObjectTextureGlobal [10, "\rwm_core_ui\Images\isis_tex\flag_hw.paa"];};
if (_type == "rhssaf_m1025_olive_m2") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_isis_co.paa"};
//--BRDM2
if (_type == "rhsgref_BRDM2_ins_g") then {_vehicle setObjectTextureGlobal [0, "\rhsgref\addons\rhsgref_a2port_armor\brdm2\data\BDRM2_KHK_01_CO.paa"];_vehicle setObjectTextureGlobal [3, "\rwm_core_ui\Images\isis_tex\empty.paa"];_vehicle setObjectTextureGlobal [4, "\rhsafrf\addons\rhs_decals\data\numbers\Iraqi\3_ca.paa"];_vehicle setObjectTextureGlobal [5, "\rwm_core_ui\Images\isis_tex\Shahadah_512x512.paa"];};
if (_type == "rhsgref_BRDM2_ins_g") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_isis_co.paa"};
//--BRDM2 AGTM
if (_type == "rhsgref_BRDM2_ATGM_ins_g") then {_vehicle setObjectTextureGlobal [0, "\rhsgref\addons\rhsgref_a2port_armor\brdm2\data\BRDM2_ATGM_01_KHK_CO.paa"];_vehicle setObjectTextureGlobal [2, "\rwm_core_ui\Images\isis_tex\alshabaab.paa"];_vehicle setObjectTextureGlobal [3, "\rwm_core_ui\Images\isis_tex\empty.paa"];_vehicle setObjectTextureGlobal [4, "\rhsafrf\addons\rhs_decals\data\numbers\Iraqi\2_ca.paa"];_vehicle setObjectTextureGlobal [5, "\rwm_core_ui\Images\isis_tex\Shahadah_512x512.paa"];};
if (_type == "rhsgref_BRDM2_ATGM_ins_g") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\isis_tex\Flags_dam.paa"};
//-UAZ
if (_type == "rhsgref_ins_g_uaz_spg9") then {_vehicle setObjectTextureGlobal [0, "\rhsafrf\addons\rhs_a2port_car\UAZ\Data\uaz_main_civil_co.paa"];_vehicle setObjectTextureGlobal [6, "\rwm_core_ui\Images\isis_tex\znak_isis.paa"];_vehicle setObjectTextureGlobal [7, "\rwm_core_ui\Images\isis_tex\znak_isis.paa"];};
if (_type == "rhsgref_ins_g_uaz_dshkm_chdkz") then {_vehicle setObjectTextureGlobal [0, "\rhsafrf\addons\rhs_a2port_car\UAZ\Data\uaz_main_civil_co.paa"];_vehicle setObjectTextureGlobal [6, "\rwm_core_ui\Images\isis_tex\flag1.paa"];_vehicle setObjectTextureGlobal [7, "\rwm_core_ui\Images\isis_tex\znak_isis.paa"];};
if (_type == "rhsgref_ins_g_uaz_ags") then {_vehicle setObjectTextureGlobal [0, "\rhsafrf\addons\rhs_a2port_car\UAZ\Data\uaz_main_civil_co.paa"];_vehicle setObjectTextureGlobal [6, "\rwm_core_ui\Images\isis_tex\flag1.paa"];_vehicle setObjectTextureGlobal [7, "\rwm_core_ui\Images\isis_tex\flag1.paa"];};
//-Offroad
if ((_type == "I_G_Offroad_01_armed_F") or (_type == "I_G_Offroad_01_AT_F")) then {_vehicle forceFlagTexture "\rwm_core_ui\Images\isis_tex\Flags_dam.paa"};
//--BMP
if ((_type == "rhsgref_ins_g_bmp2d") or (_type == "rhsgref_ins_g_bmp1p") or (_type == "rhsgref_ins_g_bmp2e")) then {_vehicle setObjectTextureGlobal [0, "rhsafrf\addons\rhs_bmp_camo\data\bmp_1_desert_co.paa"];_vehicle setObjectTextureGlobal [1, "rhsafrf\addons\rhs_bmp_camo\data\bmp_2_desert_co.paa"];_vehicle setObjectTextureGlobal [2, "rhsafrf\addons\rhs_bmp_camo\data\bmp_3_desert_co.paa"];_vehicle setObjectTextureGlobal [3, "rhsafrf\addons\rhs_bmp_camo\data\bmp_4_desert_co.paa"];_vehicle setObjectTextureGlobal [4, "rhsafrf\addons\rhs_bmp_camo\data\bmp_5_desert_co.paa"];_vehicle setObjectTextureGlobal [5, "rhsafrf\addons\rhs_bmp_camo\data\bmp_6_desert_co.paa"];_vehicle setObjectTextureGlobal [9, "\rwm_core_ui\Images\isis_tex\isis_512x512.paa"];_vehicle setObjectTextureGlobal [10, "\rwm_core_ui\Images\isis_tex\flag1.paa"];_vehicle setObjectTextureGlobal [11, "\rwm_core_ui\Images\isis_tex\flag1.paa"];};
if ((_type == "rhsgref_ins_g_bmp2d") or (_type == "rhsgref_ins_g_bmp1p") or (_type == "rhsgref_ins_g_bmp2e")) then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_isis_co.paa"};
//-Ural 
if (_type == "rhsgref_nat_ural_Zu23") then {_vehicle setObjectTextureGlobal [0, "rhsafrf\addons\rhs_a2port_car_camo\data\ural_kabina_sand_co.paa"];_vehicle setObjectTextureGlobal [1, "rhsafrf\addons\rhs_a2port_car_camo\data\ural_open_sand_co.paa"];_vehicle setObjectTextureGlobal [6, "\rwm_core_ui\Images\isis_tex\flag1.paa"];_vehicle setObjectTextureGlobal [7, "\rwm_core_ui\Images\isis_tex\flag1.paa"];_vehicle setObjectTextureGlobal [8, "\rwm_core_ui\Images\isis_tex\isis_512x512.paa"];};
//--T72
if (_type == "rhsgref_ins_g_t72ba") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\isis_tex\Flags_dam.paa"};
if (_type == "rhsgref_ins_g_t72bb") then {_vehicle forceFlagTexture "\rwm_core_ui\Images\flag_isis_co.paa"};
};
_vehicle lock _lock;

//Valhalla
[_vehicle] call Func_Common_InitCustomVehicle;
		if (WF_Extend_RPT_LOG) then {
			diag_log Format["[WFRE (INFORMATION)][frameno:%4 | ticktime:%5] Common_CreateVehicle: A %1 '%2' vehicle has been created (position: %3)",str _side,_type,_position,diag_frameno,diag_tickTime];
		};
_vehicle