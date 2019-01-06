Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

_c = _c + ['rhs_mvd_izlom_marksman_vss'];
_i = _i + [['','',350,7,-1,3,0,0.99,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_rifleman'];
_i = _i + [['','',310,7,-1,0,0,0.97,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_grenadier_rpg'];
_i = _i + [['','',1245,7,-1,3,0,0.99,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_rifleman_LAT'];
_i = _i + [['','',310,7,-1,1,0,0.98,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_marksman'];
_i = _i + [['','',330,7,-1,3,0,0.99,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_machinegunner'];
_i = _i + [['','',320,7,-1,2,0,0.98,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_sergeant'];
_i = _i + [['','',460,7,-1,3,0,1.0,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_rifleman_asval'];
_i = _i + [['','',310,7,-1,0,0,0.97,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_arifleman'];
_i = _i + [['','',320,7,-1,2,0,0.98,'Russia (MVD)',[]]];
_c = _c + ['rhs_mvd_izlom_efreitor'];
_i = _i + [['','',310,7,-1,0,0,0.97,'Russia (MVD)',[]]];

for '_z' from 0 to (count _c)-1 do {
	if (isClass (configFile >> 'CfgVehicles' >> (_c select _z))) then {
		_get = (_c select _z) Call GetNamespace;
		if (isNil '_get') then {
			if ((_i select _z) select 0 == '') then {(_i select _z) set [0, [_c select _z,'displayName'] Call GetConfigInfo]};
			if (typeName ((_i select _z) select 4) == 'SCALAR') then {
				if (((_i select _z) select 4) == -2) then {
					_ret = (_c select _z) Call Compile preprocessFile "Common\Functions\Common_GetConfigVehicleCrewSlot.sqf";
					(_i select _z) set [4, _ret select 0];
					(_i select _z) set [9, _ret select 1];
				};
			};
			if (WF_Debug) then {(_i select _z) set [3,1]};
			_p = if ((_c select _z) isKindOf 'Man') then {'portrait'} else {'picture'};
			(_i select _z) set [1, [_c select _z,_p] Call GetConfigInfo];
			[_c select _z,_i select _z] Call SetNamespace;
		} else {
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_RHS_RU_MVD: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_RHS_RU_MVD: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_RHS_RU_MVD: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];