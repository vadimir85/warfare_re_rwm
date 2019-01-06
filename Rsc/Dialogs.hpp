
//////////////////////////////////////////////////////////retrooo/////////////	
/*--- WF3 Funds Menu.
/*class WFBE_TransferMenu {
	movingEnable = 1;
	idd = 505000;
	onLoad = "(_this) ExecVM 'Client\GUI\GUI_TransferMenu.sqf'";
	
	class controlsBackground {
		class CA_Background : RscText {
			x = 0;
			y = 0;
			w = 0.8;
			h = 0.6;
			colorBackground[] = WFBE_Background_Color;
			moving = 1;
		};
		class CA_Background_Header : CA_Background {
			x = 0;
			y = 0;
			w = 0.8;
			h = 0.06;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class CA_Background_Footer : CA_Background {
			x = 0;
			y = 0.56;
			w = 0.8;
			h = 0.04;
			colorBackground[] = WFBE_Background_Color_Sub;
		};
		class CA_Menu_Title : RscText_Title {
			x = 0.007;
			y = 0.01;
			w = 0.5;
			text = $STR_WF_MAIN_FundsMenu;
			colorText[] = WFBE_Menu_Title_Color;
		};
		class CA_Quit_Button: RscButton_Main {
			x = 0.75;
			y = 0.0075;
			w = 0.045;
			h = 0.045;
			text = "X";
			shadow = 2;
			sizeEx = 0.03;
			
			onButtonClick = "closeDialog 0;";
		};
		class CA_Menu_Details : RscText {
			x = 0.405;
			y = 0.075;
			w = 0.385;
			h = 0.18;
			colorBackground[] = {0.5, 0.5, 0.5, 0.15};
			style = ST_TEXT_BG;
		};
		class CA_Edit_BG : RscText {
			x = 0.415;
			y = 0.165;
			w = 0.15;
			colorBackground[] = WFBE_Background_Color_Header;
		};
	};
	
	class controls {
		class CA_TransferList : RscListnBox {
			idc = 505001;
			x = 0.000983551;
			y = 0.065;
			w = 0.4;
			h = 0.488;
			columns[] = {0.01, 0.3, 0.75};
			rowHeight = 0.03;
			colorDisabled[] = {1,1,1,0.3};
			onLBDblClick = "WFBE_MenuAction = 1";
		};
		class CA_Send : RscButton_Main {
			x = 0.595;
			y = 0.562;
			w = 0.2;
			h = 0.035;
			sizeEx = 0.035;
			text = $STR_WF_Send;
			action = "WFBE_MenuAction = 1";
		};
		class CA_AmountDetails : RscText {
			x = 0.415;
			y = 0.08;
			w = 0.2;
			sizeEx = 0.030;
			text = $STR_WF_Amount;
		};
		class CA_Funds_Slider : RscXSliderH {
			idc = 505002;
			x = 0.415;
			y = 0.12;
			w = 0.365;
			h = 0.029412;
			
			onSliderPosChanged = "WFBE_MenuAction = 2";
		};
		class CA_Funds_Edit : RscEdit {
			idc = 505003;
			x = 0.415;
			y = 0.165;
			w = 0.15;
			text = "0";
			sizeEx = 0.035;
			colorDisabled[] = {1,1,1,0.3};
		};
		class CA_Funds : RscStructuredText {
			idc = 505004;
			x = 0.415;
			y = 0.21;
			w = 0.3;
			h = 0.035;
			size = 0.03;
			
			colorText[] = {0.543, 0.5742, 0.4102, 1.0};
		};
	};
};*/	
/*////////////////////////////////////////////////////////////////////////////
/* Dialogs */
#define gearmenu "_this ExecVM 'Client\GUI\GUI_Gear.sqf'"

//--- Voting Menu. | ALL DONE!
class RscMenu_Voting {
	movingEnable = 1;
	idd = 10001;
	onLoad = "ExecVM ""Client\GUI\GUI_Menu_Voting.sqf""";
	
	class controlsBackground {
		class Background_M : RscText {
			x = 0.281402;
			y = 0.0981439;
			w = 0.437534;
			h = 0.802989;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = 0.281402;
			y = 0.0981439;
			w = 0.437534;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.281402;
			y = 0.8486329;
			w = 0.437534;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.281402;
			y = 0.1496439;
			w = 0.437534;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
					
		class VotingTitle : RscText_Title {
			idc = 10003;
			x = 0.287202;
			y = 0.105539;
			w = 0.44;
			text = $STR_WF_VOTING_Title;
		};
		class Players : RscListBox {
			idc = 10006;
			x = 0.281402;
			y = 0.15834;
			w = 0.438195;
			h = 0.643406;
			columns[] = {0.0, 0.3};
			rows = 10;
			rowHeight = 0.027;
			lineSpacing = 1;
			sizeEx = 0.03;
		};
		class MostVotesText : RscText_SubTitle {
			idc = 10007;
			x = 0.286361;
			y = 0.806289;
			w = 0.434;
			colorText[] = {0, 1, 0, 0.9};
		};
		class VoteTime : RscText_SubTitle {
			idc = 10008; //---NEW IDC IN GUI_MENU_VOTING.SQF
			x = 0.27964;
			y = 0.10489;
			w = 0.434;
			style = ST_RIGHT;
			
		};
		 class VPOPON_Button : RscButton {
			idc = 10009; //---NEW IDC IN GUI_MENU_VOTING.SQF
			x = 0.287539;
			y = 0.857947;
			w = 0.127058;
			text = "Music";
			action = "Warfare_MenuAction = 13";
		 };
		/* Exit */
		class Exit_Button : RscClickableText {
			x = 0.67258;
			y = 0.854106;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};
		/*class Exit_Button : RscButton_Exit {
			x = 0.67258;
			y = 0.854106;
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};*/
	};
};

//--- Main Menu. | ALL DONE!
class WF_Menu {
	movingEnable = 1;
	idd = 11000;
	onLoad = "ExecVM ""Client\GUI\GUI_Menu.sqf""";
	
	class controlsBackground {
		class Background_M : RscPicture {
			x = "SafeZoneX + (SafeZoneW * 0.2)";//<---- -   + ---->
			y = "SafeZoneY + (SafezoneH * 0.115)";// nahoru -    dolu +
			w = "SafeZoneW * 0.57";
			h = "SafeZoneH * 0.91";
			moving = 1;
		    text = "\rwm_core_ui\picture\Wf_menu_tablet.paa";
		};
		class Background_L : RscText {////dělicí bila čara
			x = 0.01467;
			y = 0.238455;
			w = 0.80090;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class Button_A : RscShortcutButtonMain {
			idc = 11001;
			x = 0.01598;//<---- -   + ---->
			y = 0.250358;// nahoru -    dolu +
			w = 0.313727;
			h = 0.104575;
			text = $STR_WF_MAIN_Purchase_Units;
			tooltip = $STR_WF_TOOLTIP_MainMenu_Purchase_Units;
			action = "Warfare_MenuAction = 1";
		};
		class Button_B : RscShortcutButtonMain {
			idc = 11002;
			x = 0.01598;
			y = 0.35116;
			w = 0.313727;
			h = 0.104575;
			text = $STR_WF_MAIN_Purchase_Gear;
			tooltip = $STR_WF_TOOLTIP_MainMenu_Purchase_Gear;
			action = "Warfare_MenuAction = 2";
		};
		class Button_C : RscShortcutButtonMain {
			idc = 11003;
			x = 0.01598;
			y = 0.451959;
			w = 0.313727;
			h = 0.104575;
			text =  $STR_WF_MAIN_TeamMenu;
			tooltip = $STR_WF_TOOLTIP_MainMenu_TeamMenu;
			action = "Warfare_MenuAction = 3";
		};
		class Button_D : RscShortcutButtonMain {
			idc = 11004;
			x = 0.310943;
			y = 0.55276;
			w = 0.313727;
			h = 0.104575;
			text = $STR_WF_MAIN_VotingMenu;
			tooltip = $STR_WF_TOOLTIP_MainMenu_VoteForCommander;
			action = "Warfare_MenuAction = 4";
		};
		class Button_E : RscShortcutButtonMain {
			idc = 11005;
			x = 0.310943;
			y = 0.250358;
			w = 0.313727;
			h = 0.104575;
			text = $STR_WF_MAIN_CommandMenu;
			tooltip = $STR_WF_TOOLTIP_CommandMenu_Commandteam;
			action = "Warfare_MenuAction = 5";
		};
		class Button_F : RscShortcutButtonMain {
			idc = 11006;
			x = 0.01598;
			y = 0.55276;
			w = 0.313727;
			h = 0.104575;
			text = $STR_WF_MAIN_TacticalMenu;
			tooltip = $STR_WF_TOOLTIP_CommandMenu_SpecialMenu;
			action = "Warfare_MenuAction = 6";
		};		
		class Button_G : RscShortcutButtonMain {
			idc = 11007;
			x = 0.310943;
			y = 0.451959;
			w = 0.313727;
			h = 0.104575;
			text = $STR_WF_MAIN_UpgradeMenu;
			tooltip = $STR_WF_TOOLTIP_CommandMenu_Upgrade_Menu;
			action = "Warfare_MenuAction = 7";
		};
		class Button_H : RscShortcutButtonMain {
			idc = 11008;
			x = 0.310943;
			y = 0.35116;
			w = 0.313727;
			h = 0.104575;
			text = $STR_WF_MAIN_EconomyMenu;
			tooltip = $STR_WF_TOOLTIP_CommandMenu_Commander_Menu;
			action = "Warfare_MenuAction = 8";
		};
		class Button_I : RscShortcutButtonMain {
			idc = 11009;
			x = 0.01598;
			y = 0.65356;
			w = 0.313727;
			h = 0.104575;
			text = $STR_WF_SupportMenu;
			tooltip = $STR_WF_TOOLTIP_CommandMenu_SupportMenu;
			action = "Warfare_MenuAction = 9";
		};
		class TitleMenu: RscText_Title {   ///*čas 
			idc = 11015;
			x = 0.018164;
			y = 0.19379;
			w = 0.800001;
			sizeEx = 0.03;
		};
		class RubberServerLink : RscHTMLTextServer {
			idc = -1;
            x = 0.68964;
			y = 0.19379;
			w = 0.14;
            h = 0.037;
			//sizeEx = 0.03;
			//colorText[] = {0.886,0.871,0.871,1};
		};
		class RubberTeamSpeakLink : RscHTMLTextTeamSpeak {
			idc = -1;
			x = 0.58164;//<---- -   + ---->
			y = 0.19379;
			w = 0.14;
            h = 0.037;
			//sizeEx = 0.03;
			//colorText[] = {0.886,0.871,0.871,1};
		};
		class UNFLIP_Button : RscButton {
			idc = 11013; 
             x = 0.462;
			 y = 0.95200;
			 w = 0.150058;
			text = "UnFlip Vehicle";
			action = "Warfare_MenuAction = 10";
			tooltip = $STR_WF_TOOLTIP_Unflip;
			colorBackground[] = {0.90, 0.0182, 0.0529, 0.7};
			colorBackgroundActive[] = {0.99, 0.0982, 0.0529, 1};
			colorFocused[] = {0.90, 0.0882, 0.0529, 1};
		};
		/*class VehiclesUnflipButton : RscButton {
			idc = 11022; 
             x = 0.612;//<---- -   + ---->
			 y = 0.91200;
			 w = 0.150058
			text = "Automatic Supply";
			action = "execVM ""Client\Functions\Client_Automaticsupply.sqf"""; 
			tooltip = "Automatic city supply";
			colorBackground[] = {0.99, 0.5182, 0.0529, 0.7};
			colorBackgroundActive[] = {0.99, 0.5982, 0.0529, 1};
			colorFocused[] = {0.99, 0.4882, 0.0529, 1};
		};*/
		class SupplyTruckRepairButton : RscButton {
			idc = 11023; 
             x = 0.612;//<---- -   + ---->
			 y = 0.95200;
			 w = 0.150058;
			text = "Rep Supply Trucks";
			action = "execVM ""Client\Functions\Client_SupplyRepair.sqf""";
			tooltip = "Repairing All Supply Trucks in yours group";
			colorBackground[] = {0.99, 0.5182, 0.0529, 0.7};
			colorBackgroundActive[] = {0.99, 0.5982, 0.0529, 1};
			colorFocused[] = {0.99, 0.4882, 0.0529, 1};
		};
		class HUDTG_Button : RscButton {
			 idc = 11024; 
             x = 0.312;
			 y = 0.95200;
			 w = 0.150058;
			 text = "HUD Mode";
			 action = "Warfare_MenuAction = 16";
			 tooltip = "Switch BETWEEN DIFFERENT HUD MODE WITH/WITHOUT GPS/OSD";
			colorBackground[] = {0.1, 0.4982, 0.0529, 0.7};
			colorBackgroundActive[] = {0.1, 0.5982, 0.0529, 1};
			colorFocused[] = {0.1, 0.4882, 0.0529, 1};
		};
		class PAR_Button : RscButton {
			 idc = 11025; 
             x = 0.162;
			 y = 0.95200;
		   	 w = 0.150058;
			 text = "Parameters";
			 action = "Warfare_MenuAction = 12";
			tooltip = $STR_WF_TOOLTIP_Parameter;
			colorBackground[] = {0.1, 0.1982, 0.829, 0.7};
			colorBackgroundActive[] = {0.1, 0.1982, 0.829, 1};
			colorFocused[] = {0.1, 0.1882, 0.829, 1};
		};
//---------------Added NG23---------------
//-------------MHQ FIX BUTTOM------------
		/*class MHQ_Fix_Button : RscButton {
			 idc = 11027;
			 x = 0.764000;
			 y = 0.62000;
			 w = 0.167058;
			 text = "MHQ FIX";
			 action = "Warfare_MenuAction = 31";
			tooltip = $STR_WF_TOOLTIP_MHQ_FIX;
			colorBackground[] = {0.90, 0.0182, 0.0529, 0.7};
			colorBackgroundActive[] = {0.99, 0.0982, 0.0529, 1};
			colorFocused[] = {0.90, 0.0882, 0.0529, 1};
		 };*/
		class InfoPanelButton : RscButton {
			 idc = 11028; 
             x = 0.010;
             y = 0.95200;
			 w = 0.150058;
			 text = "Info-Panel";
			 action = "Warfare_MenuAction = 32";
			tooltip = $STR_WF_TOOLTIP_Info_Panel;
			colorBackground[] = {0.1, 0.1982, 0.829, 0.7};
			colorBackgroundActive[] = {0.1, 0.1982, 0.829, 1};
			colorFocused[] = {0.1, 0.1882, 0.829, 1};
	    };
//-------------Upgrade info upgrade----------------------
// Barracks
class Upgrade_B_Icon: RscPicture
{
	    idc = 90013;
	    style = "0x30+ 0x800";
	    text = "\rwm_core_ui\Images\gui\upgrade_b.paa";
	    x = (0.5300 + 0.031566) * safezoneW + safezoneX;
	    y = 0.360 * safezoneH + safezoneY;
	    w = 0.0466667 * safezoneW;
	    h = 0.07 * safezoneH;
};
class Upgrade_B_Level: RscPicture
{
	   idc = 90014;
	   style = "0x30+ 0x800";
	   text = "\rwm_core_ui\Images\gui\upglevel0.paa";
	   x = (0.5700 + 0.031566) * safezoneW + safezoneX;
	   y = 0.360 * safezoneH + safezoneY;
	   w = 0.0466667 * safezoneW;
	   h = 0.07 * safezoneH;
};

// Light Factory
class Upgrade_LF_Icon: RscPicture
{
	    idc = 90015;
	    style = "0x30+ 0x800";
	    text = "\rwm_core_ui\Images\gui\upgrade_lf.paa";
	    x = (0.5300 + 0.031566) * safezoneW + safezoneX;
	    y = 0.360 * safezoneH + safezoneY + 0.15;
	    w = 0.0466667 * safezoneW;
	    h = 0.07 * safezoneH;
};
class Upgrade_LF_Level: RscPicture
{
	   idc = 90016;
	   style = "0x30+ 0x800";
	   text = "\rwm_core_ui\Images\gui\upglevel0.paa";
	   x = (0.5700 + 0.031566) * safezoneW + safezoneX;
	   y = 0.360 * safezoneH + safezoneY + 0.15;
	   w = 0.0466667 * safezoneW;
	   h = 0.07 * safezoneH;
};

// Heavy Factory
class Upgrade_HF_Icon: RscPicture
{
	    idc = 90017;
	    style = "0x30+ 0x800";
	    text = "\rwm_core_ui\Images\gui\upgrade_hf.paa";
	    x = (0.5300 + 0.031566) * safezoneW + safezoneX;
	    y = 0.360 * safezoneH + safezoneY + 0.30;
	    w = 0.0466667 * safezoneW;
	    h = 0.07 * safezoneH;
};
class Upgrade_HF_Level: RscPicture
{
	   idc = 90018;
	   style = "0x30+ 0x800";
	   text = "\rwm_core_ui\Images\gui\upglevel0.paa";
	   x = (0.5700 + 0.031566) * safezoneW + safezoneX;
	   y = 0.360 * safezoneH + safezoneY + 0.30;
	   w = 0.0466667 * safezoneW;
	   h = 0.07 * safezoneH;
};

// Air Factory
class Upgrade_AF_Icon: RscPicture
{
	    idc = 90019;
	    style = "0x30+ 0x800";
	    text = "\rwm_core_ui\Images\gui\upgrade_air.paa";
	    x = (0.5300 + 0.031566) * safezoneW + safezoneX;
	    y = 0.360 * safezoneH + safezoneY + 0.45;
	    w = 0.0466667 * safezoneW;
	    h = 0.07 * safezoneH;
};
class Upgrade_AF_Level: RscPicture
{
	   idc = 90020;
	   style = "0x30+ 0x800";
	   text = "\rwm_core_ui\Images\gui\upglevel0.paa";
	   x = (0.5700 + 0.031566) * safezoneW + safezoneX;
	   y = 0.360 * safezoneH + safezoneY + 0.45;
	   w = 0.0466667 * safezoneW;
	   h = 0.07 * safezoneH;
};

//--------------------END added NG23---------------		 
		/* Exit */
		class Exit_Button : RscClickableText {
             x = 0.770;
			 y = 0.95200;
			 w = 0.050;
			 h = 0.050;
			 shadow = 1;
			 text = "\rwm_core_ui\Images\gui\xclose_tablet.paa";
			 onButtonClick = "closeDialog 0;";
	         tooltip = $STR_WF_TOOLTIP_CloseButton;
	};
  };
};

//--- Team Menu. | ALL DONE!
class RscMenu_Team {
	movingEnable = 1;
	idd = 13000;
	onLoad = "_this ExecVM ""Client\GUI\GUI_Menu_Team.sqf""";
	onUnload = "['onUnload'] call compile preprocessFileLineNumbers 'Client\SaveProfileNamespace_OnUnload.sqf'";	
	
		class controlsBackground {
		class Background_M : RscText {
			x = 0.187276;
			y = 0.200401;
			w = 0.625448;
			h = 0.599268;
			colorBackground[] = WFBE_Background_Color;
			moving = 1;
		};
		class Background_H : RscText {
			x = 0.187276;
			y = 0.200401;
			w = 0.625448;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.187276;
			y = 0.747169;
			w = 0.625448;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.187276;
			y = 0.251901;
			w = 0.625448;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class Title_TeamMenu : RscText_Title {
			idc = 13001;
			x = 0.192941;
			y = 0.206879;
			w = 0.3;
			text = $STR_WF_MAIN_TeamMenu;
		};
		/* Video */
		class CA_OD_Label : RscText {
			idc = 13101;
			x = 0.19634;
			y = 0.265506;
			w = 0.3;
		};
		class CA_VD_Label : RscText {
			idc = 13002;
			x = 0.197022;
			y = 0.314747;
			w = 0.3;
		};
		class CA_OD_Slider : RscXSliderH {
			idc = 130039;
			x = 0.513947;
			y = 0.27408;
			w = 0.279999;
			h = 0.029412;
		};
		class CA_VD_Slider : RscXSliderH {
			idc = 13003;
			x = 0.513947;
			y = 0.31565;
			w = 0.279999;
			h = 0.029412;
		};
		class CA_TG_Label : RscText {
			idc = 13004;
			x = 0.197022;
			y = 0.35722;
			w = 0.3;
		};
		class CA_TG_Slider : RscXSliderH {
			idc = 13005;
			x = 0.514313;
			y = 0.363086;
			w = 0.279999;
			h = 0.029412;
		};
		/* Transfer */
		class CA_Transfer_SubTitle : RscText_SubTitle {
			idc = 13012;
			x = 0.19634;
			y = 0.465507;
			w = 0.3;
			text = $STR_WF_TEAM_MoneyTransferLabel;
		};
		class CA_TM_Label : RscText {
			idc = 13006;
			x = 0.196002;
			y = 0.57032;
			w = 0.3;
		};
		class CA_TM_Slider : RscXSliderH {
			idc = 13007;
			x = 0.513947;
			y = 0.517846;
			w = 0.279999;
			h = 0.029412;
		};
		class CA_TM_Combo : RscCombo {
			idc = 13008;
			x = 0.202366;
			y = 0.517987;
			w = 0.279999;
			h = 0.035;
		};
		class CA_TM_Button : RscButton {
			idc = 13009;
			x = 0.513949;
			y = 0.572956;
			w = 0.279999;
			text = $STR_WF_TEAM_TransferButton;			
			action = "Warfare_MenuAction = 1";
		};
		class CA_TA_Button : RscButton  {
			idc = 13109;
			x = 0.513949;
			y = 0.465;
			w = 0.279999;
			text = "Transfer (Adv)";			
			action = "WF_MenuAction = 101";
		};
		class CA_IC_SubTitle : RscText_SubTitle {
			idc = 13010;
			x = 0.380877;
			y = 0.20787;
			w = 0.426891;
			style = ST_RIGHT;
		};
		/* Disband */
		class CA_Disband_SubTitle : RscText_SubTitle {
			idc = 13011;
			x = 0.19532;
			y = 0.642376;
			w = 0.3;
			text = $STR_WF_TEAM_DisbandLabel;
		};
		class CA_DB_Combo : RscCombo {
			idc = 13013;
			x = 0.202364;
			y = 0.691727;
			w = 0.279999;
			h = 0.035;
		};
		class CA_DB_Button : RscButton {
			idc = 13014;
			x = 0.113951+0.4;
			y = 0.691511;
			w = 0.279999/2.1;
			text = $STR_WF_TEAM_DisbandButton;
			action = "Warfare_MenuAction = 3";
		};
		class CA_RB_Button : RscButton {
			idc = 13016;
			x = 0.101141+0.4+(0.279999/2.1)+0.02;
			y = 0.691511;
			w = 0.279999/2.1;
			text = "Reassign AI";
			action = "Warfare_MenuAction = 1000";
		};
		/* FX */
		class CA_FX_Label : RscText {
			idc = 13015;
			x = 0.19634;
			y = 0.405641;
			w = 0.3;
			text = $STR_WF_TEAM_GraphicFilterLabel;
		};
		class CA_FX_Combo : RscCombo {
			idc = 13018;
			x = 0.514313;
			y = 0.406464;
			w = 0.0999999;
			h = 0.035;
			onLBSelChanged = "Warfare_MenuAction = 6";
		};
		/* Vote PopUp */
		class VPOPON_Button : RscButton {
			idc = 13019;
			x = 0.203;
			y = 0.755;
			w = 0.279;
			text = "";
			action = "Warfare_MenuAction = 13";
		}
		/* Seperator */
		class Line_TRH1 : RscText {
			x = 0.192941;
			y = 0.455916;
			w = 0.614486;
			h = WFBE_SPT1;
			colorBackground[] = WFBE_SPC1;
		};
		class Line_TRH2 : RscText {
			x = 0.192941;
			y = 0.629907;
			w = 0.614486;
			h = WFBE_SPT1;
			colorBackground[] = WFBE_SPC1;
		};
		/* Back */
		class Back_Button : RscButton_Back {
			x = 0.704632;
			y = 0.753185;
			action = "Warfare_MenuAction = 8";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		/* Exit */
		class Exit_Button : RscButton_Exit {
			x = 0.766877;
			y = 0.753185;			
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};
				/*Extend_SqadManage*/
		class Extend_Frame_Background_M : RscText {
			idc = 3901;
			x = -0.484375;
			y = 0.200401;
			w = 0.671876;
			h = 0.599268;
			colorBackground[] = {0.04,0.04,0.04,-1};
			
		};
		class Extend_header: RscText {
			idc = 3902;
			x = -0.484375;
			y = 0.200401;
			w = 0.671876;
			h = 0.0524999;
			colorBackground[] = {0, 0, 0, -1};
			moving = 1;
		};
		class Extend_Header_Label: RscText_Title {
			idc = 3903;

			text = "";
			x = -0.484375;
			y = 0.206879;
			w = 0.671876;
			h = 0.0400137;
			moving = 1;
		};
		class Extend_Footer: RscText {
			idc = 3904;
			x = -0.484375;
			y = 0.747169;
			w = 0.671876;
			h = 0.0524999;
			colorBackground[] = {0.7, 0.7, 0.7, -1};
			moving = 1;
		};
		class CA_UnitsDetailList : RscListBoxA {
			idc = 3905;
			x = -0.483375;
			y = 0.252902;
			w = 0.670876;
			h = 0.494267;
			columns[] = {0.01, 0.10};
			drawSideArrows = 0;
			idcRight = -1;
			idcLeft = -1;
			rowHeight = 0.05;
			sizeEx = 0.03;
			onLBSelChanged = "Warfare_MenuAction = 401";
			onLBDblClick = "Warfare_MenuAction = 3";
			
			/* spezial */
			colorText[] = {1, 1, 1, 0.75};
			colorSelect[] = {0.2588, 0.7137, 1, 1};
			colorSelect2[] = {0.2588, 0.7137, 1, 1};
			/* extra */
			colorSelectBackground[] = {0, 0, 0, 0.5};
			colorSelectBackground2[] = {0, 0, 0, 0.5};
		};			
		class Extend_Frame: RscFrame {
			idc = 3906;
			x = -0.484375;
			y = 0.200401;
			w = 0.671876;
			h = 0.599268;
			colorText[] = {1,1,1,-1};
		};
		class Extend_Sqad_Help: RscClickableText {
			idc = 3907;
			x = 0.138868;
			y = 0.2075;
			w = 0.0399999;
			h = 0.0400137;
			text = "";
			tooltip = "Extended-Squad HELP";
			action = "Warfare_MenuAction = 15";
	    };
     class EXTEND_SQAD_Footer_ALL: RscClickableText {
	 idc = 3908;
	 text = "";
	 style = 48;
	 x = -0.464561;
	 y = 0.75;
	 w = 0.042;
	 h = 0.042;
	 colorBackground[] = {0.6, 0.8392, 0, -1};
	 colorBackgroundSelected[] = {0.6, 0.8392, 0, -1};
	 colorFocused[] = {0.2588, 0.7137, 1, 1};
	 colorActive[] = {0.2588, 0.7137, 1, 1};
	 tooltip = "ALL";
	 action = "Warfare_MenuAction = 16";
     };
     class EXTEND_SQAD_Footer_INF: EXTEND_SQAD_Footer_ALL {
	 idc = 3909;
	 style = 48 + 0x800;
	 text = "";
	 x = -0.401387;
	 y = 0.75;
	 w = 0.042;
	 h = 0.042;
	 tooltip = "INF";
	 action = "Warfare_MenuAction = 17";
     };
     class EXTEND_SQAD_Footer_Light: EXTEND_SQAD_Footer_INF {
	 idc = 3910;
	
	 text = "";
	 x = -0.341388;

	 tooltip = "LIGHT";
	 action = "Warfare_MenuAction = 18";
     };
     class EXTEND_SQAD_Footer_Heavy: EXTEND_SQAD_Footer_INF {
	 idc = 3911;
	 text = "";
	 x = -0.281388;
	 tooltip = "HEAVY";
	 action = "Warfare_MenuAction = 19";

	 };
     class EXTEND_SQAD_Footer_AIR: EXTEND_SQAD_Footer_INF {
	 idc = 3912;
	 text = "";
	 x = -0.221388;
	 tooltip = "AIR";
	 action = "Warfare_MenuAction = 20";
     };
     class EXTEND_SQAD_Footer_DEL_ALL: EXTEND_SQAD_Footer_INF {
	 idc = 3913;
	 style = 48;
	 text = "";
	 x = 0.125;

	 tooltip = "Del All-Units";
	 action = "Warfare_MenuAction = 21";	
     };
     class Extand_Team : RscButton {
			idc = 3900;
			x = 0.513951;
			y = 0.650051;
			w = 0.279999;
			text = "Extended-Squad OFF";
			action = "Warfare_MenuAction = 14";
		
		};
	  };
    };	
//--- BuyUnits Menu. | ALL DONE!
class RscMenu_BuyUnits {
	movingEnable = 1;
	idd = 12000;
	onLoad = "_this ExecVM ""Client\GUI\GUI_Menu_BuyUnits.sqf""";
	
	class controlsBackground {
		class Background_M : RscText {
			x = -0.000119045;
			y = 0.000960164;
			w = 1.00024;
			h = 1.00046;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = -0.000119045;
			y = 0.000960164;
			w = 1.00024;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = -0.000119045;
			y = 0.948079045;
			w = 1.00024;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = -0.000119045;
			y = 0.051619045;
			w = 1.00024;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		/* Controls */
		class CA_BuyList : RscListBoxA {
			idc = 12001;
			x = 0.000983551;
			y = 0.184483;
			w = 0.493697;
			h = 0.493299;
			columns[] = {0.01, 0.19, 0.75};
			drawSideArrows = 0;
			idcRight = -1;
			idcLeft = -1;
			
			onLBSelChanged = "Warfare_MenuAction = 302";
			onLBDblClick = "Warfare_MenuAction = 1";
		};
		class CA_Purchase : RscButton {
			idc = 12002;
			x = 0.688983;
			y = 0.956626;
			w = 0.12;
			text = $STR_WF_Purchase;
			action = "Warfare_MenuAction = 1";
		};
		class Title_BuyUnits : RscText_Title {
			idc = 12004;
			x = 0.00477695;
			y = 0.00775912;
			w = 0.3;
			text = $STR_WF_MAIN_Purchase_Units;
		};
		/* Factory-Picture */
		class WF_Con1 : RscClickableText {
			idc = 12005;
			x = 0.499874;
			y = 0.0612043;
			w = 0.072;
			h = 0.072;
			text = "\rwm_core_ui\Images\warfare\con_barracks.paa";
			tooltip = $STR_WF_TOOLTIP_UnitPurchase_Con1;
			action = "Warfare_MenuAction = 101";
		};
		class WF_Con2 : WF_Con1 {
			idc = 12006;
			x = 0.585001;
			text = "\rwm_core_ui\Images\warfare\con_light.paa";
			tooltip = $STR_WF_TOOLTIP_UnitPurchase_Con2;
			action = "Warfare_MenuAction = 102";
		};
		class WF_Con3 : WF_Con1 {
			idc = 12007;
			x = 0.670123;
			text = "\rwm_core_ui\Images\warfare\con_heavy.paa";
			tooltip = $STR_WF_TOOLTIP_UnitPurchase_Con3;
			action = "Warfare_MenuAction = 103";
		};
		class WF_Con4 : WF_Con1 {
			idc = 12008;
			x = 0.753571;
			text = "\rwm_core_ui\Images\warfare\con_aircraft.paa";
			tooltip = $STR_WF_TOOLTIP_UnitPurchase_Con4;
			action = "Warfare_MenuAction = 104";
		};
		class WF_Con7 : WF_Con1 {
			idc = 12021;
			x = 0.838699;
			text = "\rwm_core_ui\Images\warfare\con_airport.paa";
			tooltip = $STR_WF_TOOLTIP_UnitPurchase_Con5;
			action = "Warfare_MenuAction = 106";
		};
		class WF_Con5 : WF_Con1 {
			idc = 12020;
			x = 0.923826;
			text = "\rwm_core_ui\Images\gui\con_depot.paa";
			tooltip = $STR_WF_TOOLTIP_UnitPurchase_Con6;
			action = "Warfare_MenuAction = 105";
		};
		/**/
		class CA_Portrait : RscPicture {
			idc = 12009;
			x = 0.00434637;
			y = 0.726386;
			w = 0.186974;
			h = 0.219467;
			style = 0x30 + 0x800;
		};
		/* Vehicle-Crew */
		class WF_Lock : RscClickableText {
			idc = 12023;
			x = 0.443363;
			y = 0.128362;
			w = 0.05;
			h = 0.05;
			text = "\rwm_core_ui\Images\gui\i_lock.paa";
			tooltip = $STR_WF_TOOLTIP_Buy_Locked;
			action = "Warfare_MenuAction = 401";
		};
		class WF_Driver : WF_Lock {
			idc = 12012;
			x = 0.242185;
			text = "\rwm_core_ui\Images\gui\i_driver.paa";
			tooltip = $STR_WF_TOOLTIP_Buy_Driver;
			action = "Warfare_MenuAction = 201";
		};
		class WF_Gunner : WF_Lock {
			idc = 12013;
			x = 0.292267;
			text = "\rwm_core_ui\Images\gui\i_gunner.paa";
			tooltip = $STR_WF_TOOLTIP_Buy_Gunner;
			action = "Warfare_MenuAction = 202";
		};
		class WF_Commander : WF_Lock {
			idc = 12014;
			x = 0.343194;
			text = "\rwm_core_ui\Images\gui\i_commander.paa";
			tooltip = $STR_WF_TOOLTIP_Buy_Commander;
			action = "Warfare_MenuAction = 203";
		};
		class WF_Extra : WF_Lock {
			idc = 12041;
			x = 0.393278;
			text = "\rwm_core_ui\Images\gui\i_extra.paa";
			tooltip = $STR_WF_TOOLTIP_Buy_Extra;
			action = "Warfare_MenuAction = 204";
		};
		/**/
		class WF_MiniMap : RscMapControl {
			idc = 12015;
			x = 0.5;
			y = 0.185168;
			w = 0.499378;
			h = 0.493457;
			ShowCountourInterval = 1;
		};
		class CA_Factory_Label : RscText {
			idc = 12016;
			x = 0.5;
			y = 0.140446;
			w = 0.3;
			text = $STR_WF_UNITS_Factory;
			sizeEx = 0.035;
		};
		class CA_Combo_Factory : RscCombo {
			idc = 12018;
			x = 0.626048;
			y = 0.140446;
			w = 0.368908;
			h = 0.037;
			onLBSelChanged = "Warfare_MenuAction = 301";
		};
		class CA_Cash_SubTitle : RscText_SubTitle {
			idc = 12019;
			x = 0.694657;
			y = 0.007759;
			w = 0.3;
			style = ST_RIGHT;
		};
		class CA_Details : RscStructuredText {
			idc = 12022;
			x = 0.5;
			y = 0.699494;
			w = 0.500294;
			h = 0.242927;
			size = 0.0250;
		};
		class CA_Queu_SubTitle : RscText_SubTitle {
			idc = 12024;
			x = 0.350419;
			y = 0.00775906;
			w = 0.3;
			style = ST_CENTER;
		};
		class CA_Faction_Label : RscText {
			idc = 12025;
			x = 0.000797182;
			y = 0.062964;
			w = 0.3;
			sizeEx = 0.035;
		};
		class CA_Combo_Faction : RscCombo {
			idc = 12026;
			x = 0.218874;
			y = 0.0652035;
			w = 0.261343;
			h = 0.035;
			onLBSelChanged = "Warfare_MenuAction = 303";
		};
		/* Info-Labels */
		class CA_Faction_Small : RscText_Small {
			idc = 12027;
			x = 0.194959;
			y = 0.692771;
			w = 0.3;
			h = 0.037;
			text = $STR_WF_UNITS_FactionLabel;
		};
		class CA_Price_Small : CA_Faction_Small {
			idc = 12010;
			x = 0.194959;
			y = 0.730336;
			text = $STR_WF_Price;
		};
		class CA_Time_Small : CA_Faction_Small {
			idc = 12028;
			x = 0.194957;
			y = 0.76566;
			text = $STR_WF_UNITS_DurationLabel;
		};
		class CA_Skill_Small : CA_Faction_Small {
			idc = 12029;
			x = 0.194959;
			y = 0.803222;
			text = $STR_WF_UNITS_SkillLabel;
		};
		class CA_TransportCapacity_Small : CA_Faction_Small {
			idc = 12030;
			x = 0.194959;
			y = 0.838545;
			text = $STR_WF_UNITS_TransportCabilityLabel;
		};
		class CA_MaxSpeed_Small : CA_Faction_Small {
			idc = 12031;
			x = 0.194959;
			y = 0.876108;
			text = $STR_WF_UNITS_MaxSpeedLabel;
		};
		class CA_Armor_Small : CA_Faction_Small {
			idc = 12032;
			x = 0.194959;
			y = 0.911431;
			text = $STR_WF_UNITS_ArmorLabel;
		};
		/* Info-Values */
		class CA_Faction_Value : RscText_Small {
			idc = 12033;
			x = 0.305041;
			y = 0.692773;
			w = 0.19;
			h = 0.037;
			style = 1;
		};
		class CA_Price_Value : CA_Faction_Value {
			idc = 12034;
			x = 0.305042;
			y = 0.730336;
			colorText[] = {1, 0, 0, 1};
		};
		class CA_Time_Value : CA_Faction_Value {
			idc = 12035;
			x = 0.305041;
			y = 0.765659;
		};
		class CA_Skill_Value : CA_Faction_Value {
			idc = 12036;
			x = 0.305041;
			y = 0.803222;
		};
		class CA_TransportCapacity_Value : CA_Faction_Value {
			idc = 12037;
			x = 0.305042;
			y = 0.838545;
		};
		class CA_MaxSpeed_Value : CA_Faction_Value{
			idc = 12038;
			x = 0.305041;
			y = 0.876109;
		};
		class CA_Armor_Value : CA_Faction_Value {
			idc = 12039;
			x = 0.30504;
			y = 0.911432;
		};
		/**/
		class CA_Unit_SubTitle : RscText_SubTitle {
			idc = 12040;
			x = 0.000575542;
			y = 0.686365;
			w = 0.3;
			text = $STR_WF_UNITS_InformationLabel;
		};
		/* Seperator */
		class LineTRH1 : RscText {
			x = 0.00470637;
			y = 0.685127;
			w = 0.990954;
			h = WFBE_SPT1;
			colorBackground[] = WFBE_SPC1;
		};
		class Back_Button : RscClickableText {
			x = 0.913972;
			y = 0.953506;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\back.paa";
			action = "Warfare_MenuAction = 2";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		/* Exit */
		/*class Exit_Button : RscButton_Exit {
			x = 0.766877;
			y = 0.753185;			
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};*/
		class Exit_Button : RscClickableText {
			x = 0.953972;
			y = 0.953506;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};
		
	};
};

//--- Command Menu. | ALL DONE!
class RscMenu_Command {
	movingEnable = 1;
	idd = 14000;
	onLoad = "_this ExecVM 'Client\GUI\GUI_Menu_Command.sqf'";
	
	class controlsBackground {
		class Background_M : RscText {
			x = 0.000960961;
			y = 0.00128184;
			w = 0.999761;
			h = 1.00023;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = 0.000960961;
			y = 0.00128184;
			w = 0.999761;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.000960961;
			y = 0.94901184;
			w = 0.999761;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.000960961;
			y = 0.05278184;
			w = 0.999761;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class WF_MiniMap : RscMapControl {
			idc = 14002;
			x = 0.468907;
			y = 0.0563169;
			w = 0.532152;
			h = 0.892336;
			ShowCountourInterval = 1;
			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)";
			onMouseButtonDown = "mouseButtonDown = _this Select 1";
			onMouseButtonUp = "mouseButtonUp = _this Select 1";
		};
		class Title_OrderMenu : RscText_Title {
			idc = 14003;
			x = 0.00561695;
			y = 0.00775909;
			w = 0.3;
			text = $STR_WF_MAIN_CommandMenu;
		};
		class CA_TakeTowns : RscButton {
			idc = 14005;
			x = 0.0057147;
			y = 0.423585;
			w = 0.22;
			text = $STR_WF_COMMAND_TakeTowns;
			action = "Warfare_MenuAction = 101";
		};
		class CA_Move : CA_TakeTowns {
			idc = 14006;
			x = 0.00487578;
			y = 0.473669;
			text = $STR_WF_COMMAND_Move;
			action = "Warfare_MenuAction = 102";
			
			/* spezial */
			colorBackground[] = {0.5882, 0.5882, 0.3529, 0.7};
			colorBackgroundActive[] = {0.5882, 0.5882, 0.3529, 1};
			colorFocused[] = {0.5882, 0.5882, 0.3529, 1};
		};
		class CA_Patrol : CA_TakeTowns {
			idc = 14007;
			x = 0.24437;
			y = 0.424035;
			text = $STR_WF_COMMAND_Patrol;
			action = "Warfare_MenuAction = 103";
			
			/* spezial */
			colorBackground[] = {0.5882, 0.5882, 0.3529, 0.7};
			colorBackgroundActive[] = {0.5882, 0.5882, 0.3529, 1};
			colorFocused[] = {0.5882, 0.5882, 0.3529, 1};
		};
		class CA_Defend : CA_TakeTowns {
			idc = 14008;
			x = 0.24353;
			y = 0.472995;
			text = $STR_WF_COMMAND_Defense;
			action = "Warfare_MenuAction = 104";
			
			/* spezial */
			colorBackground[] = {0.5882, 0.5882, 0.3529, 0.7};
			colorBackgroundActive[] = {0.5882, 0.5882, 0.3529, 1};
			colorFocused[] = {0.5882, 0.5882, 0.3529, 1};
		};
		/**/
		class CA_BuyType_Label : RscText {
			idc = 14009;
			x = -0.000420049;
			y = 0.752941;
			w = 0.17;
			text = $STR_WF_COMMAND_BuyType;
		};
		class CA_BuyType_Combo : RscCombo {
			idc = 14010;
			x = 0.162328;
			y = 0.755179;
			w = 0.302101;
			h = 0.035;
		};
		class CA_Respawn : RscButton {
			idc = 14011;
			x = 0.631344;
			y = 0.957504;
			w = 0.23;
			text = $STR_WF_COMMAND_RespawnButton;
			action = "Warfare_MenuAction = 201";
		};
		class CA_TeamList : RscListBox {
			idc = 14012;
			x = 0.00518636;
			y = 0.178967;
			w = 0.459244;
			h = 0.229759;
			rowHeight = 0.0219091;
			sizeEx = 0.03;
			style = 0x20;//--- MultiSelect LB.
			onLBSelChanged = "Warfare_MenuAction = 1";
			onLBDblClick = "Warfare_MenuAction = 2";
		};	
		class CA_Mission_Type : RscText {
			idc = 14013;
			x = 0.000842094;
			y = 0.142566;
			w = 0.3;
		};
		class CA_AutoAIOn : RscButton {
			idc = 14014;
			x = 0.00470574;
			y = 0.957504;
			w = 0.3;
			text = $STR_WF_COMMAND_AutoAI;
			action = "Warfare_MenuAction = 301";
		};
		class CA_AutoAIOff : CA_AutoAIOn {
			idc = 14015;
			x = 0.318572;
			text = $STR_WF_COMMAND_AutoAIOff;
			action = "Warfare_MenuAction = 301";
		};		
		class CA_SetBuy : RscButton {
			idc = 14016;
			x = 0.0440367;
			y = 0.801901;
			w = 0.42;
			text = $STR_WF_COMMAND_SetBuyType;
			action = "Warfare_MenuAction = 302";
		};
		/**/
		class CA_Behavior_Combo : RscCombo {
			idc = 14017;
			x = 0.214428;
			y = 0.531822;
			w = 0.25;
			h = 0.035;
		};
		class CA_Combat_Combo : CA_Behavior_Combo {
			idc = 14018;
			x = 0.214428;
			y = 0.572941;
		};
		class CA_Formation_Combo : CA_Behavior_Combo {
			idc = 14019;
			x = 0.214428;
			y = 0.614061;
		};
		class CA_Speed_Combo : CA_Behavior_Combo {
			idc = 14020;
			x = 0.214428;
			y = 0.656302;
		};
		/**/
		class CA_Behavior_Label : RscText {
			idc = 14021;
			x = -0.000420049;
			y = 0.52958;
			w = 0.17;
			text = $STR_WF_COMMAND_Behavior;
		};
		class CA_Combat_Label : CA_Behavior_Label {
			idc = 14022;
			x = -0.000420049;
			y = 0.5707;
			text = $STR_WF_COMMAND_CombatMode;
		};
		class CA_Formation_Label : CA_Behavior_Label {
			idc = 14031;
			x = -0.000420049;
			y = 0.61182;
			text = $STR_WF_COMMAND_Formation;
		};
		class CA_Speed_Label : CA_Behavior_Label {
			idc = 14023;
			x = -0.000420049;
			y = 0.654061;
			text = $STR_WF_COMMAND_Speed;
		};
		class CA_SetToTeam : RscButton {
			idc = 14024;
			x = 0.0440339;
			y = 0.703026;
			w = 0.42;
			text = $STR_WF_COMMAND_SetTeamProperties;
			action = "Warfare_MenuAction = 303";
		};
		class CA_Respawn_Combo : RscCombo {
			idc = 14025;
			x = 0.160647;
			y = 0.855182;
			w = 0.303781;
			h = 0.035;
			onLBSelChanged = "Warfare_MenuAction = 305";
		};
		class CA_Respawn_Label : CA_Behavior_Label {
			idc = 14026;
			x = -0.000420049;
			y = 0.852941;
			text = $STR_WF_COMMAND_Respawn;
		};
		class CA_SetRespawn : RscButton {
			idc = 14027;
			x = 0.0440337;
			y = 0.900783;
			w = 0.42;
			text = $STR_WF_COMMAND_SetRespawn;
			action = "Warfare_MenuAction = 304";
		};
		class CA_Funds_Label : RscText {
			idc = 14028;
			x = 0.168488;
			y = 0.142689;
			w = 0.3;
			style = ST_RIGHT;
		};
		class CA_Tab_Label : RscText_SubTitle {
			idc = 14030;
			x = 0.335;
			y = 0.0107146;
			w = 0.3;
			style = ST_CENTER;
			text = $STR_WF_COMMAND_SquadSettingsLabel;
		};
		class CA_SetTask : RscButton {
			idc = 14032;
			x = 0.0440328;
			y = 0.621904;
			w = 0.42;
			text = $STR_WF_COMMAND_TaskTO_Set;
			action = "Warfare_MenuAction = 306";
			
			/* spezial */
			colorBackground[] = {0.5882, 0.5882, 0.3529, 0.7};
			colorBackgroundActive[] = {0.5882, 0.5882, 0.3529, 1};
			colorFocused[] = {0.5882, 0.5882, 0.3529, 1};
		};
		/* HQ Team units details */
		class CA_UnitsDetailList : RscListBoxA {
			idc = 14041;
			x = 0.00518636;
			y = 0.527339;
			w = 0.463445;
			h = 0.366386;
			columns[] = {0.01, 0.19};
			drawSideArrows = 0;
			idcRight = -1;
			idcLeft = -1;
			rowHeight = 0.05;
			sizeEx = 0.03;
			onLBSelChanged = "Warfare_MenuAction = 401";
			onLBDblClick = "Warfare_MenuAction = 3";
			
			/* spezial */
			colorText[] = {0, 0.875, 0, 0.8};
			colorSelect[] = {0, 0.875, 0, 0.8};
			colorSelect2[] = {0, 0.875, 0, 0.8};
			/* extra */
			colorSelectBackground[] = {0, 0, 0, 0.5};
			colorSelectBackground2[] = {0, 0, 0, 0.5};
		};	
		class CA_FUnflip : RscButton {
			idc = 14042;
			x = 0.24384;
			y = 0.900286;
			w = 0.22;
			text = $STR_WF_COMMAND_UnflipButton;
			action = "Warfare_MenuAction = 402";
		};	
		class CA_FDisband : RscButton {
			idc = 14043;
			x = 0.00493164;
			y = 0.900296;
			w = 0.22;
			text = $STR_WF_TEAM_DisbandButton;
			action = "Warfare_MenuAction = 403";
		};		
		class WF_Con1 : RscClickableText {
			idc = 14500;
			x = 0.136976;
			y = 0.0589629;
			w = 0.072;
			h = 0.072;
			text = "\rwm_core_ui\Images\warfare\con_barracks.paa";
			tooltip = $STR_WF_TOOLTIP_TeamOrders_Con1;
			action = "Warfare_MenuAction = 601";
		};
		class WF_Con2 : WF_Con1 {
			idc = 14501;
			x = 0.290419;
			text = "\rwm_core_ui\Images\gui\con_task.paa";
			tooltip = $STR_WF_TOOLTIP_TeamOrders_Con2;
			action = "Warfare_MenuAction = 602";
		};
		class WF_Con3 : WF_Con1 {
			idc = 14502;
			x = 0.213698;
			text = "\rwm_core_ui\Images\warfare\con_hq.paa";
			tooltip = $STR_WF_TOOLTIP_TeamOrders_Con3;
			action = "Warfare_MenuAction = 603";
		};
		/* Separators */
		class LineTRH1 : RscText {
			idc = 14900;
			x = 0.00554727;
			y = 0.518182;
			w = 0.458181;
			h = WFBE_SPT1;
			colorBackground[] = WFBE_SPC1;
		};
		class LineTRH2 : LineTRH1 {
			idc = 14901;
			x = 0.00554727;
			y = 0.845784;
		};
		class LineTRH3 : LineTRH1 {
			idc = 14902;
			x = 0.00554727;
			y = 0.746904;
		};
		class Back_Button : RscClickableText {
			x = 0.915773;
			y = 0.953825;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\back.paa";
			action = "Warfare_MenuAction = 4";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		/* Exit */
		/*class Exit_Button : RscButton_Exit {
			x = 0.766877;
			y = 0.753185;			
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};*/
		class Exit_Button : RscClickableText {
			x = 0.955773;
			y = 0.953825;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};		
	};
};

//--- Respawn Menu. | ALL DONE!
class RscMenu_Respawn {
	movingEnable = 1;
	idd = 15000;
	onLoad = "_this ExecVM ""Client\GUI\GUI_Menu_Respawn.sqf""";
	
	class controlsBackground {
		class Background_M : RscText {
			x = -0.000119045;
			y = 0.000960164;
			w = 1.00024;
			h = 1.00046;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = -0.000119045;
			y = 0.000960164;
			w = 1.00024;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = -0.000119045;
			y = 0.948079045;
			w = 1.00024;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = -0.000119045;
			y = 0.051619045;
			w = 1.00024;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class WF_MiniMap : RscMapControl {
			idc = 15001;
			x = -0.000180572;
			y = 0.0550423;
			w = 0.999339;
			h = 0.892352;
			ShowCountourInterval = 1;
			
			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)";
			onMouseButtonDown = "mouseButtonDown = _this Select 1";
			onMouseButtonUp = "mouseButtonUp = _this Select 1";
		};
		class Title_RespawnMenu : RscText_Title {
			idc = 15002;
			x = 0.000478119;
			y = 0.00556108;
			w = 0.3;
			text = $STR_WF_RESPAWN_Title;
		};
		class CA_Status : RscText {
			idc = 15003;
			x = 0.00558168;
			y = 0.957391;
			w = 0.7;
		};
		class CA_Gear_Button : RscButton {
			idc = 15004;
			x = 0.72479;
			y = 0.00940119;
			w = 0.25;
			colorBackground[] = {0.5882, 0.5882, 0.3529, 0.7};
			colorBackgroundActive[] = {0.5882, 0.5882, 0.3529, 1};
			colorFocused[] = {0.5882, 0.5882, 0.3529, 1};
			
			tooltip = $STR_WF_TOOLTIP_RespawnDefault;
			onButtonClick = "WFBE_RespawnDefaultGear = if (WFBE_RespawnDefaultGear) then {false} else {true};";
		};
		class CA_PreEnv_Button : CA_Gear_Button {
			idc = 15005;
			x = 0.443363;
			y = 0.00940122;
			w = 0.25;
			colorBackground[] = {0, 0.537, 1, 0.5};
			colorBackgroundActive[] = {0, 0.537, 1, 1};
			colorFocused[] = {0, 0.537, 1, 1};
			
			tooltip = $STR_WF_TOOLTIP_Preload;
			onButtonClick = "WFBE_EnablePreload = if (WFBE_EnablePreload) then {false} else {true};";
		};
	};
};

//--- Tactical Menu. | ALL DONE!
class RscMenu_Tactical {
	movingEnable = 1;
	idd = 17000;
	onLoad = "_this ExecVM 'Client\GUI\GUI_Menu_Tactical.sqf'";
	
	class controlsBackground {
		class Background_M : RscText {
			x = 0.000960961;
			y = 0.00128125;
			w = 0.999759;
			h = 1.00023;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = 0.000960961;
			y = 0.00128125;
			w = 0.999759;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.000960961;
			y = 0.94901125;
			w = 0.999759;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.000960961;
			y = 0.05278125;
			w = 0.999759;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class WF_MiniMap : RscMapControl {
			idc = 17002;
			x = 0.374789;
			y = 0.0574369;
			w = 0.625427;
			h = 0.888975;
			ShowCountourInterval = 1;
			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)";
			onMouseButtonDown = "mouseButtonDown = _this Select 1";
			onMouseButtonUp = "mouseButtonUp = _this Select 1";
		};
		class Title_Tactical : RscText_Title {
			idc = 17003;
			x = 0.00561695;
			y = 0.00999998;
			w = 0.3;
			text = $STR_WF_MAIN_TacticalMenu;
		};
		class CA_Artillery_SubTitle : RscText_SubTitle {
			idc = 17004;
			x = 0.00434637;
			y = 0.0596783;
			w = 0.2;
			text = $STR_WF_TACTICAL_Artillery;
		};
		class CA_Artillery_Label_Radius : RscText {
			idc = 17030;
			x = 0.00602637;
			y = 0.182926;
			w = 0.2;
			text = $STR_WF_TACTICAL_ArtilleryRadius;
		};
		class CA_Artillery_Label_Unit : RscText {
			idc = 17031;
			x = 0.00434496;
			y = 0.14259;
			w = 0.2;
			text = $STR_WF_TACTICAL_Artillery;
		};
		class CA_Artillery_Slider : RscXSliderH {
			idc = 17005;
			x = 0.14652;
			y = 0.188795;
			w = 0.224033;
			h = 0.029412;
		};
		class CA_SetFMission_Button : RscButton {
			idc = 17006;
			x = 0.12047;
			y = 0.515631;
			w = 0.25;
			text = $STR_WF_TACTICAL_ArtillerySetFireMission;
			action = "Warfare_MenuAction = 1";
			/* spezial */
			colorBackground[] = {0.5882, 0.5882, 0.3529, 0.7};
			colorBackgroundActive[] = {0.5882, 0.5882, 0.3529, 1};
			colorFocused[] = {0.5882, 0.5882, 0.3529, 1};
		};
		class CA_FireMission_Button : RscButton {
			idc = 17007;
			x = 0.12047;
			y = 0.566833;
			w = 0.25;
			text = $STR_WF_TACTICAL_ArtilleryCallFireMission;
			action = "Warfare_MenuAction = 2";
		};
		class CA_Artillery_Combo : RscCombo {
			idc = 17008;
			x = 0.145945;
			y = 0.146217;
			w = 0.147;
			h = 0.029412;
			onLBSelChanged = "Warfare_MenuAction = 200";
		};
		class CA_Support_SubTitle : RscText_SubTitle {
			idc = 17009;
			x = 0.00518464;
			y = 0.622955;
			w = 0.2;
			text = $STR_WF_TACTICAL_Support;
		};
		class CA_Artillery_Label_Status : RscText {
			idc = 17032;
			x = 0.00602637;
			y = 0.102254;
			w = 0.2;
			text = $STR_WF_TACTICAL_ArtilleryStatus;
		};
		class CA_ArtilleryTimeout : RscStructuredText {
			idc = 17016;
			x = 0.139245;
			y = 0.107786;
			w = 0.213025;
			size = 0.03;
			shadow = 2;
		};
		class SupportList : RscListBox {
			idc = 17019;
			x = 0.00602497;
			y = 0.663556;
			w = 0.365965;
			h = 0.237187;
			rowHeight = 0.01;
			sizeEx = 0.03;
		};
		class CA_Button_Use : RscButton {
			idc = 17020;
			x = 0.22021;
			y = 0.905171;
			w = 0.15;
			text = $STR_WF_TACTICAL_RequestButton;
			action = "Warfare_MenuAction = 20";
			/* spezial */
			colorBackground[] = {0.5882, 0.5882, 0.3529, 0.7};
			colorBackgroundActive[] = {0.5882, 0.5882, 0.3529, 1};
			colorFocused[] = {0.5882, 0.5882, 0.3529, 1};
		};
		class CA_SupportCost_Label : RscText {
			idc = 17026;
			x = 0.0119054;
			y = 0.907169;
			w = 0.11;
			text = "$STR_WF_TACTICAL_Price";
			sizeEx = 0.032;
		};
		class CA_SupportCost : RscText {
			idc = 17021;
			x = 0.111905;
			y = 0.907169;
			w = 0.11;
			sizeEx = 0.032;
			colorText[] = {1, 0, 0, 1};
		};
		class CA_InformationText : RscStructuredText {
			idc = 17022;
			x = 0.380816;
			y = 0.0188458;
			w = 0.614286;
			h = 0.035;
			size = 0.03;
			class Attributes {
				align = "center";
			};
		};
		class Ca_ArtilleryToggle : RscClickableText {
			idc = 17023;
			x = 0.310672;
			y = 0.121233;
			w = 0.064;
			h = 0.064;
			text = "\rwm_core_ui\Images\gui\tog_arty.paa";
			action = "Warfare_MenuAction = 40";
			tooltip = $STR_WF_TOOLTIP_ArtilleryToggle;
		};
		class CA_ArtilleryList : RscListBoxA {
			idc = 17024;
			x = 0.00459768;
			y = 0.270084;
			w = 0.365209;
			h = 0.235;
			columns[] = {0.02, 0.55};
			drawSideArrows = 0;
			idcRight = -1;
			idcLeft = -1;
			rowHeight = 0.05;
			sizeEx = 0.03;
			
			/* extra */
			colorSelectBackground[] = {0, 0, 0, 0.5};
			colorSelectBackground2[] = {0, 0, 0, 0.5};
			
			onLBSelChanged = "Warfare_MenuAction = 60";
		};	
		class CA_ArtilleryTable_Label : RscText {
			idc = 17025;
			x = 0.00495766;
			y = 0.226604;
			w = 0.339999;
		};
		/* Separators */
		class LineTRH1 : RscText {
			x = 0.00638635;
			y = 0.61566;
			w = 0.364063;
			h = WFBE_SPT1;
			colorBackground[] = WFBE_SPC1;
		};
		class Back_Button : RscClickableText {
			x = 0.916614;
			y = 0.953825;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\back.paa";
			action = "Warfare_MenuAction = 30";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		class Exit_Button : RscClickableText {
			x = 0.956614;
			y = 0.953825;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};		
	};
};

//--- Upgrade Menu. | ALL DONE!
class RscMenu_Upgrade {
	movingEnable = 1;
	idd = 18000;
	onLoad = "_this ExecVM ""Client\GUI\GUI_Menu_Upgrade.sqf""";
	
	class controlsBackground	{
		class Background_M : RscText {
			x = 0.0933989;
			y = 0.151421;
			w = 0.813204;
			h = 0.699949;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = 0.0933989;
			y = 0.151421;
			w = 0.813204;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.0933989;
			y = 0.798870;
			w = 0.813204;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.0933989;
			y = 0.202921;
			w = 0.813204;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls	{
		class Title_Upgrade : RscText_Title {
			idc = 18801;
			x = 0.1;
			y = 0.157621;
			w = 0.399999;
			text = $STR_WF_MAIN_UpgradeMenu;
		};
		class CA_Label_TimeLeft : RscText {
			idc = 18802;
			x = 0.443216;
			y = 0.158741;
			w = 0.45;
			style = ST_RIGHT;
		};
		// Normal GUI Ctrls
		class WF_Con1 : RscClickableText {
			idc = 18001;
			x = 0.135325;
			y = 0.238231;
			w = 0.128;
			h = 0.128;
			text = "\rwm_core_ui\Images\gui\upgrade_b.paa";
			action = "Warfare_MenuAction = 1";

			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)"; 
			onMouseEnter = "displayUpgrade = 'infantry'";
			onMouseExit = "displayUpgrade = ''";
		};
		class WF_Con2 : WF_Con1 {
			idc = 18002;
			x = 0.135325 + 0.200;
			y = 0.238231;
			text = "\rwm_core_ui\Images\gui\upgrade_lf.paa";
			action = "Warfare_MenuAction = 1";
			
			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)"; 
			onMouseEnter = "displayUpgrade = 'light'";
			onMouseExit = "displayUpgrade = ''";
		};
		class WF_Con3 : WF_Con1 {
			idc = 18003;
			x = 0.135325 + 0.400;
			y = 0.238231;
			text = "\rwm_core_ui\Images\gui\upgrade_hf.paa";
			action = "Warfare_MenuAction = 1";
			
			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)"; 
			onMouseEnter = "displayUpgrade = 'heavy'";
			onMouseExit = "displayUpgrade = ''";
		};
		class WF_Con4 : WF_Con1 {
			idc = 18004;
			x = 0.135325 + 0.600;
			y = 0.238231;
			text = "\rwm_core_ui\Images\gui\upgrade_air.paa";
			action = "Warfare_MenuAction = 1";

			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)"; 
			onMouseEnter = "displayUpgrade = 'air'";
			onMouseExit = "displayUpgrade = ''";
		};
		class WF_Con5 : RscClickableText {
			idc = 18021;
			x = 0.135325;
			y = 0.390231;
			w = 0.128;
			h = 0.128;
			text = "\rwm_core_ui\Images\gui\upglevel0.paa";
		};
		class WF_Con6 : RscClickableText {
			idc = 18022;
			x = 0.135325 + 0.200;
			y = 0.390231;
			w = 0.128;
			h = 0.128;
			text = "\rwm_core_ui\Images\gui\upglevel0.paa";
		};
		class WF_Con7 : RscClickableText {
			idc = 18023;
			x = 0.135325 + 0.400;
			y = 0.390231;
			w = 0.128;
			h = 0.128;
			text = "\rwm_core_ui\Images\gui\upglevel0.paa";
		};
		class WF_Con8 : RscClickableText {
			idc = 18024;
			x = 0.135325 + 0.600;
			y = 0.390231;
			w = 0.128;
			h = 0.128;
			text = "\rwm_core_ui\Images\gui\upglevel0.paa";
		};
		// Tooltip
		class TooltipHelper : RscText {
			idc = 18998;
			x = 0.0;
			y = 0.0;
			w = 0.0;
			h = 0.0;
			style = 128;
			colorBackground[] = {0, 0, 0, 0.6};
		};
		class TooltipHelperText : RscStructuredText {
			idc = 18999;
			x = 0.0;
			y = 0.0;
			w = 0.0;
			h = 0.0;
			size = 0.035;
			class Attributes {
				font = "PuristaMedium";
				color = "#B6F862";
				align = "left";
				shadow = true;
			};
		};
		class Back_Button : RscClickableText {
			x = 0.822497;
			y = 0.804806;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\back.paa";
			action = "Warfare_MenuAction = 2";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		class Exit_Button : RscClickableText {
			x = 0.862497;
			y = 0.804806;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};		
	};
};

//--- Service Menu. | ALL DONE!
class RscMenu_Service {
	movingEnable = 1;
	idd = 20000;
	onLoad = "ExecVM ""Client\GUI\GUI_Menu_Service.sqf""";
	
	class controlsBackground {
		class Background_M : RscText {
			x = 0.157263;
			y = 0.151421;
			w = 0.687155;
			h = 0.699949;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = 0.157263;
			y = 0.151421;
			w = 0.687155;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.157263;
			y = 0.798870;
			w = 0.687155;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.157263;
			y = 0.202921;
			w = 0.687155;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class Title_Service : RscText_Title {
			idc = 20001;
			x = 0.161008;
			y = 0.157731;
			w = 0.3;
			text = $STR_WF_SupportMenu;
		};
		class CA_UnitList : RscListBox {
			idc = 20002;
			x = 0.162101;
			y = 0.209804;
			w = 0.677143;
			h = 0.429553;
			rowHeight = 0.025;
			sizeEx = 0.035;
		};
		class CA_Rearm_Button : RscButton {
			idc = 20003;
			x = 0.161261;
			y = 0.650391;
			w = 0.22;
			text = $STR_WF_SERVICE_Rearm;
			action = "Warfare_MenuAction = 1";
		};
		class CA_Repair_Button : RscButton {
			idc = 20004;
			x = 0.50748;
			y = 0.650391;
			w = 0.22;
			text = $STR_WF_SERVICE_Repair;
			action = "Warfare_MenuAction = 2";
		};
		class CA_Refuel_Button : RscButton {
			idc = 20005;
			x = 0.161261;
			y = 0.697899;
			w = 0.22;
			text = $STR_WF_SERVICE_Refuel;
			action = "Warfare_MenuAction = 3";
		};
		class CA_Heal_Button : RscButton {
			idc = 20008;
			x = 0.50748;
			y = 0.697899;
			w = 0.22;
			text = $STR_WF_SERVICE_Heal;
			action = "Warfare_MenuAction = 5";
		};
		class CA_EASA_Button : RscButton {
			idc = 20010;
			x = 0.161261;
			y = 0.747311;
			w = 0.565918;
			text = $STR_WF_SERVICE_EASA;
			action = "Warfare_MenuAction = 7";
		};
		class CA_LabelRearm: RscText {
			idc = 20011;
			x = 0.388739;
			y = 0.653752;
			w = 0.12;
		};
		class CA_LabelRepair : CA_LabelRearm {
			idc = 20012;
			x = 0.734957;
			y = 0.653752;
			w = 0.12;
		};
		class CA_LabelRefuel : CA_LabelRearm {
			idc = 20013;
			x = 0.388739;
			y = 0.699691;
			w = 0.12;
		};
		class CA_LabelHeal : CA_LabelRearm {
			idc = 20014;
			x = 0.734957;
			y = 0.699691;
			w = 0.12;
		};
		class Back_Button : RscClickableText {
			x = 0.760311;
			y = 0.803685;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\back.paa";
			action = "Warfare_MenuAction = 8";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		class Exit_Button : RscClickableText {
			x = 0.800311;
			y = 0.803685;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};				
	};
};

//--- UnitCamera Menu. | ALL DONE!
class RscMenu_UnitCamera {
	movingEnable = 1;
	idd = 21000;
	onLoad = "_this ExecVM ""Client\GUI\GUI_Menu_UnitCamera.sqf""";
	
	class controlsBackground {
		class Background_M : RscText {
			x = 0.000119537;
			y = 0.70044;
			w = 0.999761;
			h = 0.298829;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = 0.000119537;
			y = 0.70044;
			w = 0.999761;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.000119537;
			y = 0.946769;
			w = 0.999761;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.000119537;
			y = 0.75194;
			w = 0.999761;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class Title_UnitCam : RscText_Title {
			idc = 21001;
			x = 0.00470497;
			y = 0.706961;
			w = 0.3;
			text = $STR_WF_TACTICAL_UnitCam;
		};
		class CA_Camera_UnitList : RscListBox {
			idc = 21002;
			x = -0.000335053;
			y = 0.755239;
			w = 0.311932;
			h = 0.190877;
			rowHeight = 0.01;
			sizeEx = 0.03;
			onLBSelChanged = "Warfare_MenuAction = 101";
		};
		class CA_SquadKI_Label : RscText {
			idc = 21003;
			x = 0.312271;
			y = 0.714061;
			w = 0.3;
			colorText[] = {0.2588, 0.7137, 1, 1};
			text = $STR_WF_UNITCAM_SquadKI;
		};
		class CA_Camera_AIList : RscListBox {
			idc = 21004;
			x = 0.312269;
			y = 0.754063;
			w = 0.311932;
			h = 0.190877;
			rowHeight = 0.01;
			sizeEx = 0.03;
			onLBSelChanged = "Warfare_MenuAction = 102";
		};
		class CA_Camera_Mode : RscText {
			idc = 21005;
			x = 0.629077;
			y = 0.713836;
			w = 0.3;
			colorText[] = {0.2588, 0.7137, 1, 1};
			text = $STR_WF_UNITCAM_CamMode;
		};
		class CA_Camera_Combo : RscCombo {
			idc = 21006;
			x = 0.831595;
			y = 0.711259;
			w = 0.163193;
			h = 0.035;
			onLBSelChanged = "Warfare_MenuAction = 103";
		};
		class CA_MiniMap : RscMapControl {
			idc = 21007;
			x = 0.625041;
			y = 0.75514;
			w = 0.374504;
			h = 0.191614;
			ShowCountourInterval = 1;
			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)";
			onMouseButtonDown = "mouseButtonDown = _this Select 1";
			onMouseButtonUp = "mouseButtonUp = _this Select 1";
		};
				//--Unflip button in Unit Camera Menu--
		class CA_UN_Button : RscClickableText {
			idc = 160003;
			x = 0.76602464;
			y = 0.953825;	
			w = 0.045;
			h = 0.045;			
			text = "\rwm_core_ui\Images\icon_turn_the_car.paa";
			action = "Warfare_MenuAction = 140";
			//*onButtonClick = "WF_MenuAction = 140";
			colorDisabled[] = {1,1,1,0.3};
			tooltip = $STR_WF_TOOLTIP_Unflip;
		};
		/* Exit */
		class Exit_Button : RscClickableText {
			x = 0.954933;
			y = 0.953825;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};		
	};
};

//--- Prameters Display. | ALL DONE!
class RscDisplay_Parameters {
	movingEnable = 1;
	idd = 22000;
	onLoad = "_this ExecVM ""Client\GUI\GUI_Display_Parameters.sqf""";
	
	class controlsBackground {
		class Background_M : RscText {
			x = -0.000478864;
			y = 0.151421;
			w = 1.00096;
			h = 0.699949;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = -0.000478864;
			y = 0.151421;
			w = 1.00096;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = -0.000478864;
			y = 0.798870;
			w = 1.00096;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = -0.000478864;
			y = 0.202921;
			w = 1.00096;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class Title_Parameter : RscText_Title {
			idc = 22002;
			x = 0.00510308;
			y = 0.157759;
			w = 0.3;
			text = $STR_WF_PARAMETER_Parameters;
		};
		class LB_ParamsTitles : RscListBoxA {
			idc = 22003;
			columns[] = {0.01, 0.55};
			rowHeight = 0.036;
			drawSideArrows = 0;
			idcRight = -1;
			idcLeft = -1;
			x = 0.00204286;
			y = 0.211603;
			w = 0.997959;
			h = 0.579722;
		};
		class Back_Button : RscClickableText {
			x = 0.915774;
			y = 0.804806;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\back.paa";
			action = "Warfare_MenuAction = 1";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		class Exit_Button : RscClickableText {
			x = 0.955774;
			y = 0.804806;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};		
	};
};

//--- EASA Menu. | ALL DONE!
class RscMenu_EASA {
	movingEnable = 1;
	idd = 23000;
	onLoad = "_this ExecVM ""Client\GUI\GUI_Menu_EASA.sqf""";
	
	class controlsBackground {
		class Background_M : RscText {
			x = 0.157263;
			y = 0.200721;
			w = 0.687155;
			h = 0.601349;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = 0.157263;
			y = 0.200721;
			w = 0.687155;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.157263;
			y = 0.749570;
			w = 0.687155;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.157263;
			y = 0.252221;
			w = 0.687155;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class Title_EASA : RscText_Title {
			idc = 23002;
			x = 0.162105;
			y = 0.207843;
			w = 0.6;
			text = $STR_WF_EASA;
		};
		class LB_EASA : RscListBoxA {
			idc = 23003;
			columns[] = {0.01, 0.16};
			rowHeight = 0.036;
			drawSideArrows = 0;
			idcRight = -1;
			idcLeft = -1;
			x = 0.162186;
			y = 0.263187;
			w = 0.67689;
			h = 0.476481;
			onLBDblClick = "Warfare_MenuAction = 101";
		};
		class CA_Purchase : RscButton {
			idc = 22004;
			x = 0.613615;
			y = 0.758018;
			w = 0.1;
			text = $STR_WF_Purchase;
			action = "Warfare_MenuAction = 101";
		};
		/* Exit */
		class Exit_Button : RscClickableText {
			x = 0.799471;
			y = 0.755506;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};		
	};
};

//--- Economy Menu. | ALL DONE!
class RscMenu_Economy {
	movingEnable = 1;
	idd = 23000;
	onLoad = "_this ExecVM 'Client\GUI\GUI_Menu_Economy.sqf'";
	
	class controlsBackground {
		class Background_M : RscText {
			x = 0.0318137;
			y = 0.2004;
			w = 0.938056;
			h = 0.59934;
			moving = 1;
			colorBackground[] = WFBE_Background_Color;
		};
		class Background_H : RscText {
			x = 0.0318137;
			y = 0.2004;
			w = 0.938056;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Header;
		};
		class Background_F : RscText {
			x = 0.0318137;
			y = 0.74724;
			w = 0.938056;
			h = 0.0525;
			moving = 1;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class Background_L : RscText {
			x = 0.0318137;
			y = 0.2519;
			w = 0.938056;
			h = WFBE_Background_Border_Thick;
			colorBackground[] = WFBE_Background_Border;
		};
	};
	class controls {
		class WF_MiniMap : RscMapControl {
			idc = 23002;
			x = 0.5;
			y = 0.254636;
			w = 0.469125;
			h = 0.492337;
			ShowCountourInterval = 1;
			
			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)";
			onMouseButtonDown = "mouseButtonDown = _this Select 1";
			onMouseButtonUp = "mouseButtonUp = _this Select 1";
		};
		class Title_CommanderMenu : RscText_Title {
			idc = 23003;
			x = 0.0367093;
			y = 0.207199;
			w = 0.3;
			text = $STR_WF_MAIN_EconomyMenu;
		};
		/* Workers */
		class CA_LabelPartWorkers : RscText_SubTitle {
			idc = 23008;
			x = 0.0322372;
			y = 0.264119;
			w = 0.25;
			text = $STR_WF_ECONOMY_Workers;
		};
		class CA_HireWorker_Button : RscButton {
			idc = 23004;
			x = 0.0372772;
			y = 0.315322;
			w = 0.279999;
			text = $STR_WF_ECONOMY_HireWorker;
			action = "Warfare_MenuAction = 1";
		};
		class CA_LabelWorkers : RscText {
			idc = 23005;
			x = 0.331681;
			y = 0.317564;
			w = 0.15;
			colorText[] = {1, 0, 0, 1};
		};
		class CA_DisbandWorker_Button : RscButton {
			idc = 23006;
			x = 0.0372786;
			y = 0.373248;
			w = 0.279999;
			text = $STR_WF_ECONOMY_DisbandWorker;
			action = "Warfare_MenuAction = 2";
		};
		class CA_Workers_Combo : RscCombo {
			idc = 23007;
			x = 0.33168;
			y = 0.37601;
			w = 0.15;
			h = 0.035;
			onLBSelChanged = "Warfare_MenuAction = 100";
		};
		/* Income */
		class CA_LabelPartIncome : CA_LabelPartWorkers {
			idc = 23009;
			x = 0.0322358;
			y = 0.456346;
			w = 0.25;
			text = $STR_WF_ECONOMY_Income_Sys;
		};
		class CA_Slider_Income : RscXSliderH {
			idc = 23010;
			x = 0.0372786;
			y = 0.514272;
			w = 0.333109;
			h = 0.029412;
		};
		class CA_LabelIncomePercent : RscText {
			idc = 23011;
			x = 0.394873;
			y = 0.512032;
			w = 0.15;
		};
		class CA_IncomeSet_Button : RscButton {
			idc = 23012;
			x = 0.0372772;
			y = 0.567717;
			w = 0.334;
			text = $STR_WF_ECONOMY_SetIncome;
			action = "Warfare_MenuAction = 3";
		};
		class CA_LabelIncomeCommander : RscText {
			idc = 23013;
			x = 0.0372772;
			y = 0.634608;
			w = 0.399999;
		};
		class CA_LabelPlayerCommander : CA_LabelIncomeCommander {
			idc = 23014;
			x = 0.0372772;
			y = 0.687535;
			w = 0.399999;
		};
		/* Selling Structures */
		class CA_Sell : RscButton {
			idc = 23015;
			x = 0.501454;
			y = 0.757255;
			w = 0.28; 
			text = $STR_WF_ECONOMY_SellStructure;
			action = "Warfare_MenuAction = 105";
			/* spezial */
			colorBackground[] = {0.5882, 0.5882, 0.3529, 0.7};
			colorBackgroundActive[] = {0.5882, 0.5882, 0.3529, 1};
			colorFocused[] = {0.5882, 0.5882, 0.3529, 1};
		};
		/* Respawn Supply Truck Debug */
		class CA_RespST_Button : RscClickableText {
			idc = 23016;
			x = 0.0368904;
			y = 0.751251;
			w = 0.05;
			h = 0.05;
			text = "\rwm_core_ui\Images\gui\picturepapercar_ca.paa";
			action = "Warfare_MenuAction = 4";
			tooltip = $STR_WF_TOOLTIP_RespawnST;
		};
		/* Separators */
		class LineTRH1 : RscText {
			x = 0.0349591;
			y = 0.449622;
			w = 0.459861;
			h = WFBE_SPT1;
			colorBackground[] = WFBE_SPC1;
		};
			class Back_Button : RscClickableText {
			x = 0.884681;
			y = 0.754385;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\back.paa";
			action = "Warfare_MenuAction = 5";
			tooltip = $STR_WF_TOOLTIP_BackButton;
		};
		class Exit_Button : RscClickableText {
			x = 0.924681;
			y = 0.754385;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};		
	};
};

//--- Help Menu
class RscMenu_Help {
	movingEnable = 1;
	idd = 24000;
//	onLoad = "_this ExecVM 'Client\GUI\GUI_Menu_Help.sqf'";
	onLoad = "uiNamespace setVariable ['dialog_HelpPanel', _this select 0];['onLoad'] execVM 'Client\GUI\GUI_Menu_Help.sqf'";
	onUnload = "uiNamespace setVariable ['cti_dialog_ui_onlinehelpmenu', nil]; ['onUnload'] call compile preprocessFileLineNumbers 'Client\GUI\GUI_Menu_Help.sqf'";
	class controlsBackground {
		class WF_Background : RscPicture {
			x = "SafeZoneX + (SafeZoneW * 0.1)";
			y = "SafeZoneY + (SafezoneH * 0.105)";
			w = "SafeZoneW * 0.8";
			h = "SafeZoneH * 0.8";
			text = "#(argb,8,8,3)color(0,0,0,0.7)";
			moving = 1;
		};
		class WF_Background_Header : RscPicture {
			x = "SafeZoneX + (SafeZoneW * 0.1)";
			y = "SafeZoneY + (SafezoneH * 0.105)";
			w = "SafeZoneW * 0.8";
			h = "SafeZoneH * 0.05"; //0.06 stock
			text = "\rwm_core_ui\Images\border.paa";
		};
		class Footer: RscText {
			x = "SafeZoneX + (SafeZoneW * 0.1)";
			y = 0.871195 * safezoneH + safezoneY;
			w = "SafeZoneW * 0.8";
			h = 0.034396 * safezoneH;
			colorBackground[] = WFBE_Background_Color_Footer;
		};
		class CTI_Menu_Title : RscText_Title {
			style = ST_LEFT;
			x = "SafeZoneX + (SafeZoneW * 0.12)";
			y = "SafeZoneY + (SafezoneH * 0.11)";
			w = "SafeZoneW * 0.78";
			h = "SafeZoneH * 0.037";
			
			text = "Rubber-WF Information Panel";
			//colorText[] = {0.258823529, 0.713725490, 1, 1};
			
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
		};
		class CTI_Menu_InfoListFrame : RscFrame {
			x = "SafeZoneX + (SafeZoneW * 0.12)";
			y = "SafeZoneY + (SafezoneH * 0.175)";
			w = "SafeZoneW * 0.2";
			h = 0.676391 * safezoneH;
		};
		class CTI_Menu_InfoResourcesFrame : RscFrame {
			x = "SafeZoneX + (SafeZoneW * 0.34)";
			y = "SafeZoneY + (SafezoneH * 0.175)";
			w = "SafeZoneW * 0.54";
			h = 0.676391 * safezoneH;
		};
		class CTI_Menu_Info_Background : RscText {
			x = "SafeZoneX + (SafeZoneW * 0.34)";
			y = "SafeZoneY + (SafezoneH * 0.175)";
			w = "SafeZoneW * 0.54";
			h = 0.676391 * safezoneH;
			colorBackground[] = {0.5, 0.5, 0.5, 0.25};
		};
	};
	class controls {
		class CTI_Menu_Help_Topics : RscListBox {
			idc = 160001;
			
			x = "SafeZoneX + (SafeZoneW * 0.12)";
			y = "SafeZoneY + (SafezoneH * 0.175)";
			w = "SafeZoneW * 0.2";
			h = 0.676389 * safezoneH;
			
			rowHeight = "1.5 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx = "0.78 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0};
			
			onLBSelChanged = "['onHelpLBSelChanged', _this select 1] call compile preprocessFileLineNumbers 'Client\GUI\GUI_Menu_Help.sqf'";
		};
		
		class Menu_Help_ControlsGroup : RscControlsGroup {
			x = "SafeZoneX + (SafeZoneW * 0.34)";
			y = "SafeZoneY + (SafezoneH * 0.175)";
			w = "SafeZoneW * 0.54";
			h = 0.670389 * safezoneH;
			
			class controls {				
				class CTI_Menu_Help_Explanation : RscStructuredText {
					
					idc = 160002;
					
					x = "0";
					y = "0";
					w = "SafeZoneW * 0.53";
					h = "SafeZoneH * 2.71";
					
					size = "0.85 * (			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
					// text = "Your Resources: $8000";
				};
			};
		};
		/* Separators */
		class Exit_Button : RscClickableText {
			x = 0.868374 * safezoneW + safezoneX;
			y = 0.878751 * safezoneH + safezoneY;
			w = 0.040;
			h = 0.040;
			shadow = 1;
			text = "\rwm_core_ui\Images\gui\xclose.paa";
			onButtonClick = "closeDialog 0;";
			tooltip = $STR_WF_TOOLTIP_CloseButton;
		};		
	};	
};

//--- Vadimir | remove this button in new gear menu
class ClientAddinCargoMenu {
	idd = 100010;
//	onLoad = "";
	movingEnable = true;
//	enableSimulation = false;
//	objects[] = {};

	class controls
	{
	class ClientAddinCargoButton: RscShortcutButtonMain {
	idc = 10002;
	x = 0.07;
	y = 0.95;
	w = 0.7;
	h = 0.12;
	action = "drop_primary = true";
	type = 16;
	style = 0;
	default = true;
	color[] = {0.4,0.7742,0.4,1.0};
	color2[] = {0.95,0.95,0.95,1};
	colorBackground[] = {1,1,1,1};
	colorbackground2[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,1};
	periodFocus = 0.0;
	periodOver = 0.0;
	colorFocused[] = { 1,1,1,1 };
	colorBackgroundFocused[] = { 1,1,1,1 };
	font = "PuristaMedium";
//	onMouseButtonClick = "systemChat str ['onMouseButtonClick',_this]; false";

	class HitZone {
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;
	};
	class ShortcutPos {
		left = 0.004;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos {
		left = 0.05;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	animTextureNormal = "\rwm_core_ui\Images\gui\ui_button_normal_ca.paa";
	animTextureDisabled = "\rwm_core_ui\Images\gui\ui_button_disabled_ca.paa";
	animTextureOver = "\rwm_core_ui\Images\gui\ui_button_over_ca.paa";
	animTextureFocused = "\rwm_core_ui\Images\gui\ui_button_focus_ca.paa";
	animTexturePressed = "\rwm_core_ui\Images\gui\ui_button_down_ca.paa";
	animTextureDefault = "\rwm_core_ui\Images\gui\ui_button_default_ca.paa";
	textureNoShortcut = "";
	period = 0.4;
	size = 0.04;
	sizeEx = 0.03521;
	text = "";
	soundEnter[] = {WFBE_SoundEnter,0.09,1};
	soundPush[] = {WFBE_SoundPush,0.09,1};
	soundClick[] = {WFBE_SoundClick,0.07,1};
	soundEscape[] = {WFBE_SoundEscape,0.09,1};
	colorText[] = {0,1,0.5,1};
	
	class Attributes {
		//font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	class AttributesImage {
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
	};
		};
	};
};