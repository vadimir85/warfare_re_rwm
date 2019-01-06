Private ['_alliesTeamCost','_alliesTeamTemplates','_alliesTeamTemplateRequires','_alliesTeamTypes','_d','_f','_get','_p','_u'];
/* ALLIES TEAM TEMPLATES */
/* CDF*/
_alliesTeamTemplates = [];
_alliesTeamTemplateRequires = [];
_alliesTeamTypes = []; //--- 0 Inf, 2 Light, 3 Armor, 4 Air
_alliesTeamCost = [];

_d		= ["Infantry - Infantry Squad"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_f 		= [true,false,false,false];
_p 		= 0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [0];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Infantry - Rifle Squad"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_para_marksman"];
_u = _u + ["rhsgref_cdf_b_para_marksman"];
_f 		= [true,false,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [0];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Infantry - Rifle Squad"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_para_marksman"];
_u = _u + ["rhsgref_cdf_b_para_marksman"];
_f 		= [true,false,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [0];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Infantry - Weapon Squad"];
_u		= ["CDF_Soldier_Officer"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_reg_engineer"];
_u = _u + ["CDF_Soldier_Light"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_marksman"];
_u = _u + ["rhsgref_cdf_b_ngd_rifleman_m92"];
_f 		= [true,false,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [0];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Motorized - Infantry Squad"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_ural"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_f 		= [true,true,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [1];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Motorized - Infantry Section"];
_u		= ["rhsgref_cdf_b_reg_uaz_ags"];
_u = _u + ["rhsgref_cdf_b_reg_uaz_ags"];
_u = _u + ["rhsgref_cdf_b_reg_uaz_dshkm"];
_f 		= [false,true,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [1];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Motorized - AA Patrol"];
_u		= ["rhsgref_cdf_b_ural_Zu23"];
_u = _u + ["rhsgref_cdf_b_ural_Zu23"];
_f 		= [false,true,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [1];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Motorized - BRDM"];
_u		= ["rhsgref_BRDM2_b"];
_u = _u + ["rhsgref_BRDM2_ATGM_b"];
_f 		= [false,true,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [1];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Mechanized - Rifle Squad"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["rhsgref_cdf_b_bmp2"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_para_marksman"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_rifleman"];
_f 		= [true,false,true,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [2];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Mechanized - BMP2"];
_u		= ["rhsgref_cdf_b_bmp2"];
_u = _u + ["rhsgref_cdf_b_bmp2"];
_u = _u + ["rhsgref_cdf_b_bmp2"];
_f 		= [false,false,true,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [2];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Armored - T72"];
_u		= ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_t72bb_tv"];
_f 		= [false,false,true,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [2];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Armored - Mix"];
_u		= ["rhsgref_cdf_b_t72bb_tv"];
_u = _u + ["rhsgref_cdf_b_zsu234"];
_u = _u + ["rhsgref_cdf_b_bmp2"];
_f 		= [false,false,true,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [2];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Air - Hinds"];
_u		= ["Mi24_D"];
_u = _u + ["Mi24_D"];
_f 		= [false,false,false,true];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [3];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Airborn Infantry - Hind"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["Mi24_D"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_f 		= [true,false,false,true];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [3];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Airborn Infantry - Mi17"];
_u		= ["rhsgref_cdf_b_reg_squadleader"];
_u = _u + ["Mi17_CDF"];
_u = _u + ["rhsgref_cdf_b_reg_machinegunner"];
_u = _u + ["rhsgref_cdf_b_para_autorifleman"];
_u = _u + ["rhsgref_cdf_b_para_marksman"];
_u = _u + ["rhsgref_cdf_b_reg_grenadier_rpg"];
_u = _u + ["rhsgref_cdf_b_reg_specialist_aa"];
_u = _u + ["rhsgref_cdf_b_reg_medic"];
_f 		= [true,false,false,true];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [3];
_alliesTeamCost = _alliesTeamCost + [_p];

['WFBE_WESTALLIESTEAMTEMPLATES',_alliesTeamTemplates,true] Call SetNamespace;
['WFBE_WESTALLIESTEAMTEMPLATEREQUIRES',_alliesTeamTemplateRequires,true] Call SetNamespace;
['WFBE_WESTALLIESTEAMTYPES',_alliesTeamTypes,true] Call SetNamespace;
['WFBE_WESTALLIESTEAMCOST',_alliesTeamCost,true] Call SetNamespace;

/* Insurgent*/
_alliesTeamTemplates = [];
_alliesTeamTemplateRequires = [];
_alliesTeamTypes = []; //--- 0 Inf, 2 Light, 3 Armor, 4 Air
_alliesTeamCost = [];

_d		= ["Infantry - Group"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["rhsgref_ins_grenadier"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_rifleman_aks74"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_medic"];
_f 		= [true,false,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [0];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Infantry - Weapons Group"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["rhsgref_ins_rifleman_aks74"];
_f 		= [true,false,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [0];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Infantry - Weapon Squad"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["Ins_Soldier_Sapper"];
_u = _u + ["rhsgref_ins_rifleman_aks74"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_sniper"];
_u = _u + ["Ins_Soldier_Sab"];
_f 		= [true,false,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [0];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Motorized - Infantry Squad"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["Ural_INS"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_grenadier"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_rifleman"];
_u = _u + ["rhsgref_ins_medic"];
_f 		= [true,true,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [1];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Motorized - Infantry Section"];
_u		= ["rhsgref_ins_uaz_ags"];
_u = _u + ["rhsgref_ins_uaz_spg9"];
_u = _u + ["rhsgref_ins_uaz_dshkm"];
_f 		= [false,true,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [1];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Motorized - AA Patrol"];
_u		= ["rhsgref_ins_rifleman_aks74"];
_u = _u + ["rhsgref_ins_rifleman_aks74"];
_f 		= [false,true,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [1];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Motorized - BRDM"];
_u		= ["rhsgref_BRDM2_ins"];
_u = _u + ["rhsgref_BRDM2_ATGM_ins"];
_f 		= [false,true,false,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [1];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Mechanized - Rifle Squad"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_bmp2"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_sniper"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_rifleman"];
_f 		= [true,false,true,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [2];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Mechanized - BMP2"];
_u		= ["rhsgref_ins_bmp2"];
_u = _u + ["rhsgref_ins_bmp2"];
_u = _u + ["rhsgref_ins_bmp2"];
_f 		= [false,false,true,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [2];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Armored - T72"];
_u		= ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_t72bc"];
_f 		= [false,false,true,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [2];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Armored - Mix"];
_u		= ["rhsgref_ins_t72bc"];
_u = _u + ["rhsgref_ins_zsu234"];
_u = _u + ["rhsgref_ins_bmp2"];
_f 		= [false,false,true,false];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [2];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Air - Sukhoi 25"];
_u		= ["Su25_Ins"];
_u = _u + ["Su25_Ins"];
_f 		= [false,false,false,true];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [3];
_alliesTeamCost = _alliesTeamCost + [_p];

_d		= ["Airborn Infantry - Mi17"];
_u		= ["rhsgref_ins_commander"];
_u = _u + ["rhsgref_ins_Mi8amt"];
_u = _u + ["rhsgref_ins_machinegunner"];
_u = _u + ["rhsgref_ins_rifleman_RPG26"];
_u = _u + ["rhsgref_ins_saboteur"];
_u = _u + ["rhsgref_ins_grenadier_rpg"];
_u = _u + ["rhsgref_ins_specialist_aa"];
_u = _u + ["rhsgref_ins_medic"];
_f 		= [true,false,false,true];
_p 		=0;
{_get = _x Call GetNamespace;if (!isNil '_get') then {_p = _p + (_get select QUERYUNITPRICE)}} forEach _u; 

_alliesTeamTemplates = _alliesTeamTemplates + [_u];
_alliesTeamTemplateRequires = _alliesTeamTemplateRequires + [_f];
_alliesTeamTypes = _alliesTeamTypes + [3];
_alliesTeamCost = _alliesTeamCost + [_p];

['WFBE_EASTALLIESTEAMTEMPLATES',_alliesTeamTemplates,true] Call SetNamespace;
['WFBE_EASTALLIESTEAMTEMPLATEREQUIRES',_alliesTeamTemplateRequires,true] Call SetNamespace;
['WFBE_EASTALLIESTEAMTYPES',_alliesTeamTypes,true] Call SetNamespace;
['WFBE_EASTALLIESTEAMCOST',_alliesTeamCost,true] Call SetNamespace;