/*
	Neighbors town per world.
*/

Private ["_index","_townMode"];
_index = 0;
for [{_i = 0},{_i < (count (missionConfigFile/"Params"))},{_i = _i + 1}]  do {if ((configName ((missionConfigFile >> "Params") select _i)) == "townsAmount") exitWith {_index =_i}};
_townMode = if (isMultiplayer) then {paramsArray select _index} else {getNumber (missionConfigFile >> "Params" >> "townsAmount" >> "default")};

switch (toLower(worldName)) do {
	case "takistan": {
		switch (_townMode) do {
			case 4: {//--- Full Version
               Chardarakht setVariable ["neighbors", [LoyManara]];
               LoyManara setVariable ["neighbors", [Chardarakht, Timurkalay]];
               Timurkalay setVariable ["neighbors", [LoyManara, Imarat, Anar]];
               Imarat setVariable ["neighbors", [Timurkalay, Bastam]];
               Anar setVariable ["neighbors", [Timurkalay,  Falar]];
               Bastam setVariable ["neighbors", [Falar, Rasman, Imarat]];
               Rasman setVariable ["neighbors", [Bastam, Shamali]];
               Shamali setVariable ["neighbors", [Rasman]];
			   Falar setVariable ["neighbors", [Bastam, Anar]];
			};
			case 3: {};
			case 2: {};
			case 1: {};
			case 0: {};
		};
	};	
	case "stratis": {
		switch (_townMode) do {
			case 4: {//--- Full Version
				Air_Base_Stratis setVariable ["neighbors", [Agia_Marina]];
				Agia_Marina setVariable ["neighbors", [Air_Base_Stratis, Rogain]];
				Rogain setVariable ["neighbors", [Agia_Marina, Kamino]];
				Kamino setVariable ["neighbors", [Rogain, Radar_Base_Mike]];
				Radar_Base_Mike setVariable ["neighbors", [Kamino, Maxwell]];
				Maxwell setVariable ["neighbors", [Radar_Base_Mike, Connor, Girna]];
				Connor setVariable ["neighbors", [Maxwell]];
				Girna setVariable ["neighbors", [Maxwell]];
			};
			case 3: {};
			case 2: {};
			case 1: {};
			case 0: {};
		};
	};	
	case "malden": {
		switch (_townMode) do {
			case 4: {//--- Full Version
	           PegasusAirBase setVariable ["neighbors", [Lolisse]];
	           Lolisse setVariable ["neighbors", [PegasusAirBase, Airport, Goisse]];
               Airport setVariable ["neighbors", [Lolisse, SaintLouis]];
	           SaintLouis setVariable ["neighbors", [Larche, LaTrinite, Airport]];
               Larche setVariable ["neighbors", [SaintLouis, Goisse]];
	           LaTrinite setVariable ["neighbors", [Arudy, SaintLouis, Houdan]];
	           Arudy setVariable ["neighbors", [LaTrinite, Goisse, LaPessagne ]];
	           Goisse setVariable ["neighbors", [Larche, Arudy, LaPessagne ]];
	           Houdan setVariable ["neighbors", [LePort, LaTrinite]];
	           LePort setVariable ["neighbors", [MilitaryBase, Houdan, Chapoi]];
	           MilitaryBase setVariable ["neighbors", [LePort]];
	           Chapoi setVariable ["neighbors", [LaRiviere, LePort, Cancon]];	
	           LaRiviere setVariable ["neighbors", [Chapoi, LaPessagne, Faro]];
	           LaPessagne setVariable ["neighbors", [LaRiviere, Arudy, Goisse ]];
			   Cancon setVariable ["neighbors", [Chapoi]];
			   Faro setVariable ["neighbors", [LaRiviere]];
	};
			case 3: {};
			case 2: {};
			case 1: {};
			case 0: {};
		};
	};
			case "zargabad": {
		switch (_townMode) do {
			case 4: {//--- Full Version
				FiruzBaharv setVariable ["neighbors", [Shahbaz, Yarum]];
				Shahbaz setVariable ["neighbors", [FiruzBaharv, AbeShur]];
				AbeShur setVariable ["neighbors", [Shahbaz, Yarum, Azizayt]];
				Zargabad setVariable ["neighbors", [Yarum, HazarBagh]];
				Azizayt setVariable ["neighbors", [AbeShur, Nango]];
				Nango setVariable ["neighbors", [Azizayt, HazarBagh]];
				HazarBagh setVariable ["neighbors", [Zargabad, Nango, Base]];
				Yarum setVariable ["neighbors", [Zargabad, AbeShur]];
				Base setVariable ["neighbors", [HazarBagh]];
			};
			case 3: {};
			case 2: {};
			case 1: {};
			case 0: {};
		};
	};
		case "saralite": {
		switch (_townMode) do {
			case 4: {//--- Full Version
               Airbase setVariable ["neighbors", [Paraiso, Chantico]];
               Paraiso setVariable ["neighbors", [Airbase, Corazol, Somato]];
               Chantico setVariable ["neighbors", [Airbase, Estrella, Somato]];
               Corazol setVariable ["neighbors", [Ortego, Paraiso]];
               Ortego setVariable ["neighbors", [Corazol, Dolores]];
               Dolores setVariable ["neighbors", [Ortego,  Iguana]];
               Iguana setVariable ["neighbors", [Cayo, Dolores, SanTomas]];
               Cayo setVariable ["neighbors", [Arcadia, Iguana, Somato]];
               Arcadia setVariable ["neighbors", [Cayo, Estrella]];
			   Estrella setVariable ["neighbors", [Arcadia, Chantico]];
			   Somato setVariable ["neighbors", [Paraiso, Chantico]];
			   SanTomas setVariable ["neighbors", [Iguana]];

			};
			case 3: {};
			case 2: {};
			case 1: {};
			case 0: {};
		};
	};
		case "fallujah": {
		switch (_townMode) do {
			case 4: {//--- Full Version
				Airport setVariable ["neighbors", [Shuhada]];
				Shuhada setVariable ["neighbors", [Airport, RadarBase, Nazal]];
				RadarBase setVariable ["neighbors", [Shuhada]];
				Nazal setVariable ["neighbors", [Shuhada, Fallujah]];
				Fallujah setVariable ["neighbors", [Nazal, Jeghaifi]];
				Jeghaifi setVariable ["neighbors", [Fallujah, Mualimeen]];
				Mualimeen setVariable ["neighbors", [Jeghaifi, FobBase, Jolan]];
				FobBase setVariable ["neighbors", [Mualimeen]];
				Jolan setVariable ["neighbors", [Nazal, RadarBase]];
			};
			case 3: {};
			case 2: {};
			case 1: {};
			case 0: {};
		};
	};	
	default {
		['WFBE_TOWNCONQUESTMODE', 0, true] Call SetNamespace;
	};
};

objnull setVariable ["neighbors",objnull];

