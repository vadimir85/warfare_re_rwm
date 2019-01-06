//--- BuyGear Menu. | NOT READY!
class RscMenu_BuyGear{
	movingEnable = 1;
	idd = 16000;
	onLoad = gearmenu;

	class controlsBackground{
		class Background_M : RscText{
			x = 0.180078 * safezoneW + safezoneX;
			y = 0.115 * safezoneH + safezoneY;
			w = 0.704222 * safezoneW;
			h = (0.785556 + 0.016) * safezoneH;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		/*class Background_G : RscText{
			x = 0.5 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = (0.352109 + 0.031566) * safezoneW;
			h = 0.710833 * safezoneH;
			moving = 1;
			colorBackground[] ={1,1,1,1};
			//colorBackground[] = WFBE_Background_Color_Gear;
		};*/
		class Background_H : RscText{
			x = 0.180078 * safezoneW + safezoneX;
			y = 0.115 * safezoneH + safezoneY;
			w = (0.672656 + 0.031566) * safezoneW;
			h = 0.0308333 * safezoneH;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText{
			x = 0.180078 * safezoneW + safezoneX;
			y = (0.859721 + 0.056835) * safezoneH + safezoneY;
			w = (0.672656 + 0.031566) * safezoneW;
			h = 0.0394445 * safezoneH;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText{
			x = 0.180078 * safezoneW + safezoneX;
			y = 0.145556 * safezoneH + safezoneY;
			w = (0.672656 + 0.031566) * safezoneW;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
		/* Backgrounds BEGIN */
		class BackgroundSlotPrimary: RscPicture{
			idc = 1242;
			text = "#(argb,8,8,3)color(1,1,1,0.1)";
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.318 + 0.094555) * safezoneH + safezoneY;
			w = 0.187425 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class BackgroundSlotPrimaryMuzzle: BackgroundSlotPrimary{
			idc = 1243;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotPrimaryUnderBarrel: BackgroundSlotPrimary{
			idc = 1200;
			x = (0.63545 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotPrimaryFlashlight: BackgroundSlotPrimary{
			idc = 1244;
			x = (0.66695 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotPrimaryOptics: BackgroundSlotPrimary{
			idc = 1245;
			x = (0.69845 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotPrimaryMagazineGL: BackgroundSlotPrimary{
			idc = 1267;
			x = (0.72995 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotPrimaryMagazine: BackgroundSlotPrimary{
			idc = 1246;
			x = (0.76145 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotSecondary: BackgroundSlotPrimary{
			idc = 1247;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.472 + 0.094555) * safezoneH + safezoneY;
			w = 0.187425 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class BackgroundSlotSecondaryMuzzle: BackgroundSlotPrimary{
			idc = 1248;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotSecondaryUnderBarrel: BackgroundSlotPrimary{
			idc = 1266;
			x = (0.64175 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotSecondaryFlashlight: BackgroundSlotPrimary{
			idc = 1249;
			x = (0.67955 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotSecondaryOptics: BackgroundSlotPrimary{
			idc = 1250;
			x = (0.71735 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotSecondaryMagazine: BackgroundSlotPrimary{
			idc = 1251;
			x = (0.75515 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotHandgun: BackgroundSlotPrimary{
			idc = 1252;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.626 + 0.094555) * safezoneH + safezoneY;
			w = 0.187425 * safezoneW;
			h = 0.084 * safezoneH;
		};
		class BackgroundSlotHandgunMuzzle: BackgroundSlotPrimary{
			idc = 1253;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotHandgunUnderBarrel: BackgroundSlotPrimary{
			idc = 1268;
			x = (0.64175 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotHandgunFlashlight: BackgroundSlotPrimary{
			idc = 1254;
			x = (0.67955 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotHandgunOptics: BackgroundSlotPrimary{
			idc = 1255;
			x = (0.71735 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotHandgunMagazine: BackgroundSlotPrimary{
			idc = 1256;
			x = (0.75515 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotHeadgear: BackgroundSlotPrimary{
			idc = 1257;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
		};
		class BackgroundSlotGoggles: BackgroundSlotPrimary{
			idc = 1258;
			x = (0.6512 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
		};
		class BackgroundSlotHMD: BackgroundSlotPrimary{
			idc = 1259;
			x = (0.69845 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
		};
		class BackgroundSlotBinoculars: BackgroundSlotPrimary{
			idc = 1260;
			x = (0.7457 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
		};
		class BackgroundSlotMap: BackgroundSlotPrimary{
			idc = 1261;
			x = (0.422825 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.03339 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotGPS: BackgroundSlotPrimary{
			idc = 1262;
			x = (0.457738 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.03339 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotCompass: BackgroundSlotPrimary{
			idc = 1263;
			x = (0.527694 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.03339 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotRadio: BackgroundSlotPrimary{
			idc = 1264;
			x = (0.492781 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.03339 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class BackgroundSlotWatch: BackgroundSlotPrimary{
			idc = 1265;
			x = (0.562738 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.03339 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class UniformTab: BackgroundSlotPrimary{
			idc = 6332;
			x = (0.422825 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.055125 * safezoneW;
			h = 0.084 * safezoneH;
			text = "#(argb,8,8,3)color(1,1,1,1)";
		};
		class VestTab: UniformTab{
			idc = 6382;
			x = (0.481887 + 0.08505) * safezoneW + safezoneX;
		};
		class BackpackTab: UniformTab{
			idc = 6192;
			x = (0.54095 + 0.08505) * safezoneW + safezoneX;
		};
		class VehicleItemTab: UniformTab{
			idc = 6193;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = 0.199 * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
		};
		class VehicleTab: UniformTab{
			idc = 6194;
			x = (0.69845 + 0.08505) * safezoneW + safezoneX;
			y = 0.199 * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
		};
		class VehicleInfoTab: UniformTab{
			idc = 6195;
			x = (0.6512 + 0.08505) * safezoneW + safezoneX;
			y = 0.199 * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
		};
		/* Backgrounds END */
	};
	class controls{
/*
	class SlotPrimary: GroundTab{
		idc = 610;
		style = "0x30 + 0x800";
		color[] ={1,1,1,1};
		colorBackgroundSelected[] ={1,1,1,0.1};
		colorFocused[] ={0,0,0,0};
		canDrag = 1;
		x = (0.60395 + 0.08505) * safezoneW + safezoneX;
		y = (0.318 + 0.094555) * safezoneH + safezoneY;
		w = 0.187425 * safezoneW;
		h = 0.084 * safezoneH;
		colorText[] ={0,0,0,0.5};
		colorBackground[] ={1,1,1,0.1};
	};

class SlotPrimaryMuzzle: SlotPrimary
{
	idc = 620;
	x = (0.60395 + 0.08505) * safezoneW + safezoneX;
	y = (0.4048 + 0.094555) * safezoneH + safezoneY;
	w = 0.029925 * safezoneW;
	h = 0.056 * safezoneH;
	colorText[] ={0,0,0,0.5};
	colorBackground[] ={1,1,1,0.1};
};
class SlotSecondary: SlotPrimary
{
	idc = 611;

	x = (0.60395 + 0.08505) * safezoneW + safezoneX;
	y = (0.472 + 0.094555) * safezoneH + safezoneY;
	w = 0.187425 * safezoneW;
	h = 0.084 * safezoneH;
	colorText[] ={0,0,0,0.5};
	colorBackground[] ={1,1,1,0.1};
};
class SlotSidearm: SlotPrimary
{
	idc = 612;

	x = (0.60395 + 0.08505) * safezoneW + safezoneX;
	y = (0.626 + 0.094555) * safezoneH + safezoneY;
	w = 10.187425 * safezoneW;
	h = 0.084 * safezoneH;
	colorText[] ={0,0,0,0.5};
	colorBackground[] ={1,1,1,0.1};
};
*/
//конец
		/* Filter Buttons */
		class FilterButtonTemplate : RscClickableText{
			idc = 3400;
			style = 48 + 0x800;
			x = 0.196628 * safezoneW + safezoneX;
			y = 0.1375 * safezoneH + safezoneY;
			w = 0.0375 * safezoneW;
			h = 0.07 * safezoneH;
			text = "\rwm_core_ui\Images\gui\gearicontemplate.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonTemplate;
			action = "WF_Logic setVariable ['filler','template']";
		};
		class FilterButtonPrimary : FilterButtonTemplate{
			idc = 3400 + 2;
			x = 0.237467 * safezoneW + safezoneX;
			y = 0.1375 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconprimary.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonPrimary;
			action = "WF_Logic setVariable ['filler','primary']";
		};
		class FilterButtonSecondary : FilterButtonTemplate{
			idc = 3400 + 3;
			x = 0.278305 * safezoneW + safezoneX;
			y = 0.1375 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconsecondary.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonSecondary;
			action = "WF_Logic setVariable ['filler','secondary']";
		};
		class FilterButtonSidearm : FilterButtonTemplate{
			idc = 3400 + 4;
			x = 0.319144 * safezoneW + safezoneX;
			y = 0.1375 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconsidearm.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonSidearm;
			action = "WF_Logic setVariable ['filler','sidearm']";
		};
		class FilterButtonUniform : FilterButtonTemplate{
			idc = 3400 + 5;
			x = 0.359982 * safezoneW + safezoneX;
			y = 0.1375 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconuniform.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonUniform;
			action = "WF_Logic setVariable ['filler','uniform']";
		};
		class FilterButtonVest: FilterButtonTemplate{
			idc = 3400 + 13;
			x = 0.400821 * safezoneW + safezoneX;
			y = 0.1375 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconvest.paa";
			action = "WF_Logic setVariable ['filler','vest']";
			tooltip = $STR_WF_TOOLTIP_FilterButtonVest;
		};
		class FilterButtonBackpack: FilterButtonTemplate{
			idc = 3400 + 7;
			x = 0.44166 * safezoneW + safezoneX;
			y = 0.1375 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconbackpack.paa";
			action = "WF_Logic setVariable ['filler','backpackA3']";
			tooltip = $STR_WF_TOOLTIP_FilterButtonBackpack;
		};
		class FilterButtonHeadgear : FilterButtonTemplate{
			idc = 3400 + 8;
			x = 0.196628 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconheadgear.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonHeadgear;
			action = "WF_Logic setVariable ['filler','headgear']";
		};
		class FilterButtonGoogles : FilterButtonTemplate{
			idc = 3400 + 9;
			x = 0.237467 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\gearicongoggle.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonGoogles;
			action = "WF_Logic setVariable ['filler','goggles']";
		};
		class FilterButtonHMD : FilterButtonTemplate{
			idc = 3400 + 10;
			x = 0.278305 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconhmd.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonHMD;
			action = "WF_Logic setVariable ['filler','hmd']";
		};
		class FilterButtonBinocular : FilterButtonTemplate{
			idc = 3400 + 11;
			x = 0.319144 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconbinocular.paa";
			tooltip = $STR_WF_TOOLTIP_FilterButtonBinocular;
			action = "WF_Logic setVariable ['filler','binocular']";
		};
		class FilterButtonThrow: FilterButtonTemplate{
			idc = 3400 + 12;
			x = 0.359982 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconthrow.paa";
			action = "WF_Logic setVariable ['filler','cargo_throw']";
			tooltip = $STR_WF_TOOLTIP_FilterButtonThrow;
		};
		class FilterButtonPut: FilterButtonTemplate{
			idc = 3400 + 6;
			x = 0.400821 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconput.paa";
			action = "WF_Logic setVariable ['filler','cargo_put']";
			tooltip = $STR_WF_TOOLTIP_FilterPut;
		};
		class FilterButtonMisc: FilterButtonTemplate{
			idc = 3400 + 14;
			x = 0.44166 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			text = "\rwm_core_ui\Images\gui\geariconmisc.paa";
			action = "WF_Logic setVariable ['filler','misc']";
			tooltip = $STR_WF_TOOLTIP_FilterButtonMisc;
		};
		/* Bag, Clear, Reload */
/*		class ConClear : RscClickableText{
			idc = 3800;
			x = 0.787109 * safezoneW + safezoneX;
			y = 0.115 * safezoneH + safezoneY;
			w = 0.021 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = $STR_WF_TOOLTIP_GearClear;
			text = "Images\gui\i_clear.paa";
			action = "WF_Logic setVariable ['WF_Gear_Action','clear']";
		};
		class ConReload : ConClear{
			idc = 3801;
			x = 0.819922 * safezoneW + safezoneX;
			tooltip = $STR_WF_TOOLTIP_GearReload;
			text = "Images\gui\i_reload.paa";
			action = "WF_Logic setVariable ['WF_Gear_Action','reload']";
		};
		class ConBackpack : ConClear{
			idc = 4000;
			x = 0.754297 * safezoneW + safezoneX;
			tooltip = $STR_WF_TOOLTIP_Backpack;
			text = "Images\gui\i_backpack.paa";
			action = "WF_Logic setVariable ['WF_Gear_Action','backpack']";
		};
*/
		/* Lists */
		class MainList : RscListBoxA{
			idc = 3700;
			columns[] ={-0.01,0.25};
			drawSideArrows = 1;
			idcRight = -1;
			idcLeft = -1;
			canDrag = 1;
			x = 0.180078 * safezoneW + safezoneX;
			y = (0.300555 + 0.004112) * safezoneH + safezoneY; //0.004112 = отступ, чтобы не сливаться с сепаратором
			w = 0.315 * safezoneW;
			h = (0.276889 - 0.063055) * safezoneH;
			//onLBDrag = "systemChat str ['onLBDrag',_this]; false";
			//onLBDrop = "systemChat str ['onLBDrop',_this]; false";
			//onLBSelChanged = "WF_Logic setVariable ['lbChange',true]";
			onLBDblClick = "WF_Logic setVariable ['lbMainAction','addMainItem'];WF_Logic setVariable ['lbChange',true]";
		};
		class SecondaryList : RscListBoxA{
			idc = 3701;
			columns[] ={0.01, 0.25};
			drawSideArrows = 1;
			idcRight = -1;
			idcLeft = -1;
			canDrag = 1;
			x = 0.18025 * safezoneW + safezoneX;
			y = 0.524667 * safezoneH + safezoneY;
			w = 0.314375 * safezoneW;
			h = (0.192445/2.2) * safezoneH;
		//	onLBDrag = "systemChat str ['onLBDrag',_this]; false";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','addAccessories'];WF_Logic setVariable ['lbAcc','Magazine']";
			onLBDblClick = "WF_Logic setVariable ['lbMainAction','addMagazine'];WF_Logic setVariable ['currentContainerRow1',_this]";
		};
		class AccessoriesMuzzleList : RscListBoxA{
			idc = 3702;
			columns[] ={0.01, 0.25};
			drawSideArrows = 1;
			idcRight = -1;
			idcLeft = -1;
			canDrag = 1;
			x = 0.18025 * safezoneW + safezoneX;
			y = (0.703729 + 0.004112) * safezoneH + safezoneY;
			w = (0.314375/2) * safezoneW;
			h = (0.192445/2.2) * safezoneH;
		//	onLBDrag = "systemChat str ['onLBDrag',_this]";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','addAccessories'];WF_Logic setVariable ['lbAcc','Muzzle']";
		//	onLBDblClick = "WF_Logic setVariable ['lbMainAction','addAccessoriesMuzzle']";
		};
		class AccessoriesOpticsList : AccessoriesMuzzleList{
			idc = 3703;
			x = (0.18025 + 0.1571875) * safezoneW + safezoneX;
			y = (0.703729 + 0.004112) * safezoneH + safezoneY;
		//	onLBDrag = "systemChat str ['onLBDrag',_this]; false";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','addAccessories'];WF_Logic setVariable ['lbAcc','Optics']";
		//	onLBDblClick = "WF_Logic setVariable ['lbMainAction','addAccessoriesOptics']";
		};
		class AccessoriesFlashlightList : AccessoriesMuzzleList{
			idc = 3704;
			x = 0.18025 * safezoneW + safezoneX;
			y = (0.0962225 + 0.719444 + 0.004112) * safezoneH + safezoneY;
		//	onLBDrag = "systemChat str ['onLBDrag',_this]; false";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','addAccessories'];WF_Logic setVariable ['lbAcc','Flashlight']";
		//	onLBDblClick = "WF_Logic setVariable ['lbMainAction','addAccessoriesFlashlight']";
		};
		class AccessoriesUnderBarrelList : AccessoriesMuzzleList{
			idc = 3705;
			x = (0.18025 + 0.1571875) * safezoneW + safezoneX;
			y = (0.0962225 + 0.719444 + 0.004112) * safezoneH + safezoneY;
		//	onLBDrag = "systemChat str ['onLBDrag',_this]; false";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','addAccessories'];WF_Logic setVariable ['lbAcc','UnderBarrel']";
		//	onLBDblClick = "WF_Logic setVariable ['lbMainAction','addAccessoriesUnderBarrel']";
		};
		class AccessoriesMagazineGL : AccessoriesMuzzleList{
			idc = 3706;
			x = 0.18025 * safezoneW + safezoneX;
			y = ((0.192445/2.2) + 0.524667 + 0.004112) * safezoneH + safezoneY;
			w = 0.314375 * safezoneW;
			h = (0.192445/2.2) * safezoneH;
		//	onLBDrag = "systemChat str ['onLBDrag',_this]; false";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','addAccessories'];WF_Logic setVariable ['lbAcc','MagazineGL']";
			onLBDblClick = "WF_Logic setVariable ['lbMainAction','addMagazine'];WF_Logic setVariable ['currentContainerRow1',_this]";
		};
		/* Primary Weapon */
		class PrimaryWeapon : RscClickableText{
			idc = 3500;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.318 + 0.094555) * safezoneH + safezoneY;
			w = 0.187425 * safezoneW;
			h = 0.084 * safezoneH;
			style = 48 + 0x800;
			soundDoubleClick[] ={"", 0.1, 1};
			colorBackground[] ={0.6, 0.83, 0.47, 1};
			colorBackgroundSelected[] ={0.6, 0.83, 0.47, 1};
			colorFocused[] ={0, 0, 0, 0};
			color[] ={0.85, 0.85, 0.85, 1};
			colorText[] ={0.85, 0.85, 0.85, 1};
			colorActive[] ={1, 1, 1, 1};
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_primary_gs.paa";
			action = "primClicked = true";
		};
		class SlotPrimaryMuzzle: PrimaryWeapon{
			idc = 620;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa";
			action = "SlotPrimaryMuzzleClicked = true";
		};
		class SlotPrimaryUnderBarrel: PrimaryWeapon{
			idc = 641;
			x = (0.63545 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa";
			action = "SlotPrimaryUnderBarrelClicked = true";
		};
		class SlotPrimaryFlashlight: PrimaryWeapon{
			idc = 622;
			x = (0.66695 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_side_gs.paa";
			action = "SlotPrimaryFlashlightClicked = true";
		};
		class SlotPrimaryOptics: PrimaryWeapon{
			idc = 621;
			x = (0.69845 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_top_gs.paa";
			action = "SlotPrimaryOpticsClicked = true";
		};
		class SlotPrimaryMagazineGL: PrimaryWeapon{
			idc = 644;
			x = (0.72995 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_magazineGL_gs.paa";
			action = "SlotPrimaryMagazineGLClicked = true";
		};
		class SlotPrimaryMagazine: PrimaryWeapon{
			idc = 623;
			x = (0.76145 + 0.08505) * safezoneW + safezoneX;
			y = (0.4048 + 0.094555) * safezoneH + safezoneY;
			w = 0.029925 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_magazine_gs.paa";
			action = "SlotPrimaryMagazineClicked = true";
		};
		/* Secondary Weapon*/
		class SecondaryWeapon : PrimaryWeapon{
			idc = 3500 + 1;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.472 + 0.094555) * safezoneH + safezoneY;
			w = 0.187425 * safezoneW;
			h = 0.084 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_secondary_gs.paa";
			action = "secoClicked = true";
		};
		class SlotSecondaryMuzzle: PrimaryWeapon{
			idc = 624;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa";
			action = "SlotSecondaryMuzzleClicked = true";
		};
		class SlotSecondaryUnderBarrel: PrimaryWeapon{
			idc = 642;
			x = (0.64175 + 0.08505) * safezoneW + safezoneX;
			y = (0.55852 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa";
			action = "SlotSecondaryUnderBarrelClicked = true";
		};
		class SlotSecondaryFlashlight: PrimaryWeapon{
			idc = 626;
			x = (0.67955 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_side_gs.paa";
			action = "SlotSecondaryFlashlightClicked = true";
		};
		class SlotSecondaryOptics: PrimaryWeapon{
			idc = 625;
			x = (0.71735 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_top_gs.paa";
			action = "SlotSecondaryOpticsClicked = true";
		};
		class SlotSecondaryMagazine: PrimaryWeapon{
			idc = 627;
			x = (0.75515 + 0.08505) * safezoneW + safezoneX;
			y = (0.5588 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_magazine_gs.paa";
			action = "SlotSecondaryMagazineClicked = true";
		};
		/* Sidearm Weapon*/
		class Sidearm : PrimaryWeapon{
			idc = 3500 + 2;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.626 + 0.094555) * safezoneH + safezoneY;
			w = 0.187425 * safezoneW;
			h = 0.084 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_hgun_gs.paa";
			action = "sideClicked = true";
		};
		class SlotSidearmMuzzle: PrimaryWeapon{
			idc = 628;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa";
			action = "SlotSidearmMuzzleClicked = true";
		};
		class SlotSidearmUnderBarrel: PrimaryWeapon{
			idc = 643;
			x = (0.64175 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa";
			action = "SlotSidearmUnderBarrelClicked = true";
		};
		class SlotSidearmFlashlight: PrimaryWeapon{
			idc = 630;
			x = (0.67955 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_side_gs.paa";
			action = "SlotSidearmFlashlightClicked = true";
		};
		class SloSidearmOptics: PrimaryWeapon{
			idc = 629;
			x = (0.71735 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_top_gs.paa";
			action = "SlotSidearmOpticsClicked = true";
		};
		class SlotSidearmMagazine: PrimaryWeapon{
			idc = 631;
			x = (0.75515 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.036225 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_magazine_gs.paa";
			action = "SlotSidearmMagazineClicked = true";
		};
		/* Headgear Slots */
		class SlotHeadgear: PrimaryWeapon{
			idc = 6240;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_helmet_gs.paa";
			action = "SlotHeadgearClicked = true";
		};
		class SlotGoggles: PrimaryWeapon{
			idc = 6216;
			x = (0.6512 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_glasses_gs.paa";
			action = "SlotGogglesClicked = true";
		};
		class SlotHMD: PrimaryWeapon{
			idc = 6217;
			x = (0.69845 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_nvg_gs.paa";
			action = "SlotHMDClicked = true";
		};
		class SlotBinoculars: PrimaryWeapon{
			idc = 6238;
			x = (0.7457 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_binocular_gs.paa";
			action = "SlotBinocularsClicked = true";
		};
		/* Items Slots*/
		class SlotMap: PrimaryWeapon{
			idc = 6211;
			x = (0.423744 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.0315 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_map_gs.paa";
			action = "SlotMapClicked = true";
		};
		class SlotGPS: PrimaryWeapon{
			idc = 6215;
			x = (0.458787 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.0315 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_gps_gs.paa";
			action = "SlotGPSClicked = true";
		};
		class SlotCompass: PrimaryWeapon{
			idc = 6212;
			x = (0.528612 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.0315 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_compass_gs.paa";
			action = "SlotCompassClicked = true";
		};
		class SlotRadio: PrimaryWeapon{
			idc = 6214;
			x = (0.4937 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.0315 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_radio_gs.paa";
			action = "SlotRadioClicked = true";
		};
		class SlotWatch: PrimaryWeapon{
			idc = 6213;
			x = (0.563656 + 0.08505) * safezoneW + safezoneX;
			y = (0.7128 + 0.094555) * safezoneH + safezoneY;
			w = 0.0315 * safezoneW;
			h = 0.056 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_watch_gs.paa";
			action = "SlotWatchClicked = true";
		};
		/* Vehicle Pictures*/
		class VehiclePicture : RscPicture{
			idc = 39041;
			x = (0.69845 + 0.08505) * safezoneW + safezoneX;
			y = (0.199 + 0.0) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
			style = 0x30 + 0x800;
		};
		class VehicleItemPicture : VehiclePicture{
			idc = 39042;
			x = (0.60395 + 0.08505) * safezoneW + safezoneX;
		};
		class VehicleInfoPicture : VehiclePicture{
			idc = 39043;
			x = (0.6512 + 0.08505) * safezoneW + safezoneX;
		};
		/* Uniform Slot/Load/List */
		class UniformSlot: PrimaryWeapon{
			idc = 6331;
			x = (0.426762 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.04725 * safezoneW;
			h = 0.084 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_uniform_gs.paa";
			action = "";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','SlotActivate'];WF_Logic setVariable ['Slot','Uniform']";
			onMouseButtonDblClick = "UniformSlotClicked = true";
		};
		class UniformLoad: GroundLoad{
			idc = 6304;
			x = (0.422825 + 0.08505) * safezoneW + safezoneX;
			y = (0.304 + 0.094555) * safezoneH + safezoneY;
			w = 0.055125 * safezoneW;
			h = 0.014 * safezoneH;
		};
		class UniformContainer: MainList{
			idc = 633;
			columns[] ={-0.01,0.86};
			x = (0.422825 + 0.08505) * safezoneW + safezoneX;
			y = (0.318 + 0.094555) * safezoneH + safezoneY;
			w = 0.17325 * safezoneW;
			h = 0.392 * safezoneH;
			colorBackground[] ={1,1,1,0.5};
			rowHeight = 0.1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25);
			onLBDblClick = "WF_Logic setVariable ['lbMainAction','RemoveItem'];WF_Logic setVariable ['currentContainerRow',_this]";	
		};
		class Uniform_Capacity_Label : RscText{
			idc = 5001;
			x = (0.426762 + 0.08505 - 0.006) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.0641667 * safezoneW;
			colorText[] ={1,1,1,0.5};
			align = "left";
			valign = "top";
		};
		/* Vest Slot/Load/List */
		class VestSlot: PrimaryWeapon{
			idc = 6381;
			x = (0.485825 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.04725 * safezoneW;
			h = 0.084 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_vest_gs.paa";
			action = "";
			//action = "VestSlotClicked = true";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','SlotActivate'];WF_Logic setVariable ['Slot','Vest']";
			onMouseButtonDblClick = "VestSlotClicked = true";
			//onLBDrop = "systemChat str ['onLBDrop',_this]; false";
		};
		class VestLoad: GroundLoad{
			idc = 6305;
			x = (0.481887 + 0.08505) * safezoneW + safezoneX;
			y = (0.304 + 0.094555) * safezoneH + safezoneY;
			w = 0.055125 * safezoneW;
			h = 0.014 * safezoneH;
		};
		class VestContainer: UniformContainer{
			idc = 638;
		};
		class Vest_Capacity_Label : RscText{
			idc = 5002;
			x = (0.485825 + 0.08505 - 0.006) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.0641667 * safezoneW;
			colorText[] ={1,1,1,0.5};
			align = "left";
			valign = "top";
		};
		/* Backpack Slot/Load/List */
		class BackpackSlot: PrimaryWeapon{
			idc = 6191;
			x = (0.544887 + 0.08505) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.04725 * safezoneW;
			h = 0.084 * safezoneH;
			text = "a3\ui_f\data\gui\Rsc\RscDisplayGear\ui_gear_backpack_gs.paa";
			action = "";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','SlotActivate'];WF_Logic setVariable ['Slot','BackpackA3']";
			onMouseButtonDblClick = "BackpackSlotClicked = true";
		};
		class BackpackLoad: GroundLoad{
			idc = 6306;
			x = (0.54095 + 0.08505) * safezoneW + safezoneX;
			y = (0.304 + 0.094555) * safezoneH + safezoneY;
			w = 0.055125 * safezoneW;
			h = 0.014 * safezoneH;
		};
		class BackpackContainer: UniformContainer{
			idc = 619;
		};
		class Backpack_Capacity_Label : RscText{
			idc = 5003;
			x = (0.544887 + 0.08505 - 0.006) * safezoneW + safezoneX;
			y = (0.22 + 0.094555) * safezoneH + safezoneY;
			w = 0.0641667 * safezoneW;
			colorText[] ={1,1,1,0.5};
			align = "left";
			valign = "top";
		};
		/* Vehicle Slot/Load/List */
		class VehicleSlot: PrimaryWeapon{
			idc = 6197;
			x = (0.69845 + 0.08505) * safezoneW + safezoneX;
			y = 0.199 * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.0812 * safezoneH;
			text = "#(argb,8,8,3)color(1,1,1,0)";
			action = "";
			onMouseButtonClick = "WF_Logic setVariable ['lbMainAction','SlotActivate'];WF_Logic setVariable ['Slot','Vehicle']";
		};
		class VehicleBackLoad: GroundLoad{
			idc = 6196;
			x = (0.69845 + 0.08505) * safezoneW + safezoneX;
			y = (0.199 + 0.0812) * safezoneH + safezoneY;
			w = 0.045675 * safezoneW;
			h = 0.014 * safezoneH;
		};
		class VehicleContainer: UniformContainer{
			idc = 618;
		};
		class Vehicle_Capacity_Label : RscText{
			idc = 5004;
			x = (0.69845 + 0.08505 - 0.004) * safezoneW + safezoneX;
			y = 0.199 * safezoneH + safezoneY;
			w = 0.0641667 * safezoneW;
			colorText[] ={1,1,1,0.5};
			align = "left";
			valign = "top";
		};
		/* Total Load */
		class TotalLoad: GroundLoad{
			idc = 6308;
			x = (0.422825 + 0.08505) * safezoneW + safezoneX;
			y = (0.78 + 0.094555) * safezoneH + safezoneY;
			w = 0.36855 * safezoneW;
			h = 0.028 * safezoneH;
		};
		/* Labels */
		class CA_Money_Label : RscText{
			x = 0.505833 * safezoneW + safezoneX;
			y = 0.199 * safezoneH + safezoneY;
			w = 0.0641667 * safezoneW;
			text = $STR_WF_GEAR_CashLabel;
		};
		class CA_Money_Value : RscText{
			idc = 3851;
			x = 0.564167 * safezoneW + safezoneX;
			y = 0.199 * safezoneH + safezoneY;
			w = 0.0901389 * safezoneW;
		};
		class CA_Cost_Label : RscText{
			x = 0.505833 * safezoneW + safezoneX;
			y = 0.227 * safezoneH + safezoneY;
			w = 0.0641667 * safezoneW;
			text = $STR_WF_GEAR_CostLabel;
		};
		class CA_Cost : RscText{
			idc = 3850;
			x = 0.564167 * safezoneW + safezoneX;
			y = 0.227 * safezoneH + safezoneY;
			w = 0.0901389 * safezoneW;
			colorText[] ={1, 0, 0, 1};
		};
		class CA_Current_Cost_Label : CA_Cost_Label{
			y = 0.255 * safezoneH + safezoneY;
			text = $STR_WF_GEAR_CostLabel2;
		};
		class CA_Current_Cost : CA_Cost{
			idc = 90009;
			y = 0.255 * safezoneH + safezoneY;
};
		class CA_GearLabel : RscText_SubTitle{
			idc = 3852;
			x = 0.505833 * safezoneW + safezoneX;
			y = 0.157 * safezoneH + safezoneY;
			w = 0.288542 * safezoneW;
			h = 0.028 * safezoneH;
			style = 2;
			text = "";
		};
		class Title_Gear : RscText_Title{
			idc = 3853;
			x = 0.19675 * safezoneW + safezoneX;
			y = 0.119556 * safezoneH + safezoneY;
			w = 0.19444 * safezoneW;
			h = 0.0247778 * safezoneH;
			text = $STR_WF_MAIN_Purchase_Gear;
		};
		class CA_SwapUnit : RscCombo{
			idc = 3854;
			x = 0.3075 * safezoneW + safezoneX;
			y = (0.206 + 0.06) * safezoneH + safezoneY;
			w = 0.1575 * safezoneW;
			h = 0.035;
			onLBSelChanged = "WF_Logic setVariable ['WF_GEAR_Swap',true]";
		};	
		class Unit_Title : RscText{
			idc = 3855;
			x = 0.206641 * safezoneW + safezoneX;
			y = (0.205833 + 0.06) * safezoneH + safezoneY;
			w = 0.3;
			text = $STR_WF_GEAR_SquadMember;
		};
		/* Separators */
		class LineTRH1 : RscText{//левая средняя
			x = 0.181953 * safezoneW + safezoneX;
			y = 0.520555 * safezoneH + safezoneY;
			w = 0.318817 * safezoneW;
			h = WFBE_SPT1;
			colorBackground[] = WFBE_SPC1;
		};
		class LineTRH2 : LineTRH1{//вертикальная в середине
			x = 0.5 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = WFBE_SPT1;
			h = 0.707879 * safezoneH;
		};
		class LineTRH3 : LineTRH1{//левая между магазинами и навесами
			x = 0.181953 * safezoneW + safezoneX;
			y = 0.703729 * safezoneH + safezoneY; //0.719444
			w = 0.318817 * safezoneW;
			h = WFBE_SPT1;
		};
		class LineTRH4 : LineTRH1{//правая
			x = 0.502578 * safezoneW + safezoneX;
			y = 0.300555 * safezoneH + safezoneY;
			w = (0.346942 + 0.031566) * safezoneW;
			h = WFBE_SPT1;
		};
		class LineTRH5 : LineTRH1{//левая между навесами
			x = 0.181953 * safezoneW + safezoneX;
			y = (0.811031 + 0.002056) * safezoneH + safezoneY;
			w = 0.318817 * safezoneW;
			h = WFBE_SPT1;
		};
		class LineTRH6 : LineTRH1{//левая между магазинами и гранатами
			x = 0.181953 * safezoneW + safezoneX;
			y = ((0.192445/2.2) + 0.524667) * safezoneH + safezoneY;
			w = 0.318817 * safezoneW;
			h = WFBE_SPT1;
		};
		/* Buttons */
		class BuyButton : RscButton{
			idc = 3900;
			x = 0.680469 * safezoneW + safezoneX;
			y = (0.8675 + 0.056835) * safezoneH + safezoneY;
			w = 0.063 * safezoneW;
			text = $STR_WF_Purchase;
			action = "buyLoadout = true";
		};
		class DeleteButton : BuyButton{
			idc = 3903;
			x = 0.212891 * safezoneW + safezoneX;
			y = (0.8675 + 0.056835) * safezoneH + safezoneY;
			w = 0.12075 * safezoneW;
			text = $STR_WF_GEAR_TemplateDelete;
			action = "deleteLoadout = true";
		};
		class SaveButton : BuyButton{
			idc = 3902;
			x = 0.36875 * safezoneW + safezoneX;
			y = (0.8675 + 0.056835) * safezoneH + safezoneY;
			w = 0.12075 * safezoneW;
			text = $STR_WF_GEAR_TemplateSave;
			action = "saveLoadout = true";
		};
		class DropInVehicleButton : BuyButton{
			idc = 3904;
			x = (0.12075 + 0.36875 + 0.035109) * safezoneW + safezoneX;
			y = (0.8675 + 0.056835) * safezoneH + safezoneY;
			w = 0.12075 * safezoneW;
			text = "Throw it in the vehicle";
			action = "dropInVehicle = true";
		};
		class Back_Button : RscClickableText{
			x = 0.792109 * safezoneW + safezoneX;
			y = (0.8675 + 0.056835) * safezoneH + safezoneY;
			w = 0.021 * safezoneW;
			h = 0.028 * safezoneH;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\back.paa";
			action = "Warfare_MenuAction = 1";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		class Exit_Button : RscClickableText{
			x = 0.819922 * safezoneW + safezoneX;
			y = (0.8675 + 0.056835) * safezoneH + safezoneY;
			w = 0.021 * safezoneW;
			h = 0.028 * safezoneH;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};
		/* Upgrade INFO */
		class Upgrade_Icon1: RscPicture{
			idc = 90013;
			style = "0x30+ 0x800";
			//action = "Warfare_MenuAction = 1";
			//onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)";
			//onMouseEnter = "displayUpgrade = 'infantry'";
			//onMouseExit = "displayUpgrade = ''";
			text = "\rwm_core_ui\Images\gui\upgrade_b.paa";
			x = (0.7975 + 0.031566) * safezoneW + safezoneX;
			y = 0.157 * safezoneH + safezoneY;
			w = 0.0466667 * safezoneW;
			h = 0.063 * safezoneH;
		};
		class Upgrade_Current: RscPicture{
			idc = 90014;
			style = "0x30+ 0x800";
			text = "\rwm_core_ui\Images\gui\upglevel0.paa";
			x = (0.7975 + 0.031566) * safezoneW + safezoneX;
			y = 0.223667 * safezoneH + safezoneY;
			w = 0.0466667 * safezoneW;
			h = 0.07 * safezoneH;
		};
	};
};