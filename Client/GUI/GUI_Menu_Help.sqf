private ["_action"];
disableSerialization;
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		{((findDisplay 24000) displayCtrl 160001) lbAdd _x} forEach ["Introduction", "Respawn", "Towns", "Peacetime", "Base Structures and Functions", "About the Mission"];
		((findDisplay 24000) displayCtrl 160001) lbSetCurSel 0;
	};
	case "onHelpLBSelChanged": {
		_changeTo = _this select 1;
_helps = [
//-------------------------------------Introductions
"<t size='1.4' color='#2394ef' underline='true'>Introduction</t><br />
<br />
<br />
<br />
<t><t color='#ffec1c'>CTI</t> (<t color='#ffec1c'>Conquer The Island</t>) is a gamemode where two sides, West and East fight for the control of an island.</t><br />
<br />
Each side are led by a <t color='#e8bd12'>Commander</t> which may construct a base thanks to the <t color='#e8bd12'>MHQ</t>.<br />
<br />
As soon as the base is available, you may decide to reinforce your team by purchasing additional units and vehicles.<br />
<br />
Keep in mind that the <t color='#e8bd12'>Commander</t> may assign assign different tasks to your team.<br />
<br />
According to mission parameters there are several conditions under which game can be won: standardparameter is 'towns', <br />
which means you have to capture a certain number (in Takistan and Chernarus defauld=12 | In Zargabad defauld=7) of towns to win the game. <br />
<br />
<br />
For optional victory-conditions, check parameters <br />
(e.g: 'annihilation'=all enemy forces and structures have to be destroyed).<br />
<br />
",
//----------------------------------------RESPAWN
"<t size='1.4' color='#2394ef' underline='true'>Respawn</t><br />
<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Respawn-Penalty</t><br />
<br />
Getting killed too often in a short period of time will increase your respawn-timer (displayed in the minimap-area) by 10 seconds per respawn. <br />
This penalty will disappear after a while without dying.<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Respawnpoints:</t><br />
<br />
<br />
Generally respawnpoints are displayed as yellow circles on the map, which you see during your respawntime.<br />
<br />
These locations can be chosen by clicking on the circle. There are certain objects which establish spawn-locations:<br />
<br />
MASH (the tent, medics can deploy as special-skill).<br />
<br />
MEVs (an ambulance-vehicle is included in the set of vehicles you have from beginning or several vehicles can be purchased for purpose of spawning in light factory, heavy factory or air factory).<br />
<br />
Towncenters of captured towns: it is also possible to spawn at towncenters, which belong to your side. These spawnpoints are also limited in range (600m), according to the circle around the town. This option can be useful for defenders of a town.<br />
<br />
MASH and MEV-spawns are limited in range (600m), where they provide 'spawnability', that means if you die more than 600m away from these objects, you have to spawn at an unlimited spawnpoint.<br />
<br />
Spawnpoints of unlimited range are any buildings of base, except servicepoint and anti-airradar.<br />
<br />
Spawnbuldings: <br />
MHQ, Field-Hospital [FH], Baracks [B],Light-Factory [LF] Heavy-Factory [HF], Air-Factory [AF]).<br />
You can spawn there, no matter where you die on map.<br />
<br />
<br />
<br />
<t size='1.4' color='#2394ef' underline='true'>So:</t><br /><br />
be careful when you die and where you die. Always be aware of your spawn-locations. <br />
It might save time, if you wait with the attack on a town untill spawn is established. <br />
An existing spawnpoint prevents players from having to travel all the way from base to town over and over again.<br />

",
//--------------------------------------------------Towns
"<t size='1.4' color='#2394ef' underline='true'>Towns</t><br />
<br />
<br />
<br />
As mentioned above it is goal of the game to capture a number of towns. Each of these towns is represented by a big circle (600m radius) on the map.<br />
<br />
There are several states a town can have, indicated by colour markings. Towns which can be captured have an orange marking in a 400m-radius around the center. These towns are adjacent to the territory already occupied by one side. Towns without coloured markings are not capturable because they are not linked with the already occupied area. <br />
<br />
Towns with a hatched yellow marking in a 600m radius are also not capturable, because enemy captured it recently and it is in so called 'peace-time' (details see below). When you start an attack on a town (with orange 400m-radius), notice that the defending units first spawn, when a friendly unit crosses the 600m-radius. So pay attention when crossing the line.<br />
<br />
<br />
The relevant buildings of a town are the Depot (town-center) in the center of the circle, surrounded by a 50m-radius of slightly darker colour marking. Moreover a town can have one or more strongpoints (SPs, small cylinders on map).<br />
<br />
You have to capture these SPs (notice counter 'strongpoint'), before you advance to the towncenter and finally capture the town by creating numerical superiority within the 50m radius of towncenter (notice counter 'town').<br />
<br />
Once a town is captured it will switch its colour marking to hatched green 600m-radius. Next to towncenter, a supplyvalue (SV) is displayed, e.g. 10/70. This SV can be increased by sending supplytrucks between MHQ or servicepoint (for reload) and the 50m-radius of towncenter. <br />
<br />
A fully 'pushed' town (e.g. 70/70) creates a higher income of supplies and money for the <br />
commander and if town is attacked, there will spawn more and better units to defend it. <br />
<br />
<br />
Most of explanations refer to default parameters. If params are changed, some explanations are no longer valid. <br />
<br />
",
//---------------------------------Peacetime
"<t size='1.4' color='#2394ef' underline='true'>Peacetime</t><br />
<br />
<br />
<br />
Generally there are two kinds of peacetime: <br />
a peacetime for towns recently captured by enemy, which is marked with hatched yellow 600mradius and a 'friendly' one, which is displayed with a hatched green 600m-radius marking.<br />
<br />
These friendly peacetime-zones are prohibited for enemy to enter in the specified number of seconds (notice counter, displayed on map). <br />
<br />
If a friendly unit (player or ai) enters a town in enemy peacetime (or vice versa), the counter will increase, which means that the town will stay uncapturable for even longer. <br />
<br />
So, don't enter peacetime without a good reason, it may harm your <br />
side to an extend that you cannot capture an important town for the next hours!!!<br />
<br />
",
//------------------------------Base Struckers
"<t size='1.4' color='#2394ef' underline='true'>Base Structures and Functions</t><br />
<br />
<br />
<br />
The Base Structures can be used for various purposes. <br />
As soon as the player is in range of a structure he may decide to purchase additional units or vehicles. <br />
<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Mobile-Headquarters [MHQ]</t><br />
<br />
Required to build base-structures.<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>CommandCenter [CC]</t><br />
<br />
For players: >>WF-Menu Purchase Units (remote enabled)/ Tactical Center to order UAVs, Ammodrops,Arty, etc.<br />
for commander: >>WF-Menu Economy to sell Base-Structures and distribution income / Command Center to set Orders and Sqad-Respawn/ Upgrade-Menu to Make Upgrades for better equipment.<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Barracks [B]</t><br />
<br />
>>WF-Menu Purchase Gear (when player is in range of 120m)<br />
>>WF-Menu Purchase Units (normally in range of 120m - if Command Center exists, infantry can be purchased remote)<br />
- alternatively it is possible to purchase gear at the stairs of  captured towncenters.<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Light-Factory [LF]</t><br />
<br />
>>WF-Menu Purchase Units (normally in range of 120m - if Command Center exists, light vehicles can be purchased remote)<br />
- alternatively it is possible to purchase simple vehicles at the stairs of captured towncenters.<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Heavy-Factory [HF]</t><br />
<br />
>>WF-Menu Purchase Units (normally in range of 120m - if Command Center exists, Tanks can be purchased remote)<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Air-Factory [AF]</t><br />
<br />
>>WF-Menu Purchase Units (normally in range of 120m - if Command Center exists, helicopters can be purchased remote)<br />
notice: airplanes can be purchased at hangars (displayed with a green symbol at airfields on map), if airfactory exists.<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Field-Hospital [FH]</t><br />
<br />
Doubles your squad´s unit limit.<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Anti-Air-Radar [AA]</t><br />
Displays Enemy aircraft which fly about 30 meters on the map. (Red diamond icon) <br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Servicepoint</t><br />
<br />
Reload and Refuel Supplytrucks.<br />
>>WF-Menu Servicepoint to Rearm, Refuel, Repair your Vehicle and Heal yourself and your units.<br />
<br />
<br />
<br />
<br />
You may choose to buy a vehicle manned or empty (you may also buy a vehicle without a driver, gunner, commander or turrets and you can choose whether locked or  unlocked ).<br />
<br />
",
//--------------------WarFare Info
"<br />
<t size='1.2' color='#2394ef' align='center'>Warfare-RE RUBBER EDITION | B:015.32 | ArmaIII-V:1.1 | - Takistan</t><br />
<t align='center'>
<br />
<br />
<br />
//<img size='8' image='load_screen.jpg'/> 
<br/>
<br/>						  
-The Takistan-ED is currently at version 1.1
<br/>
<br/>
-This is not the original version of the Rubber-ED!
<br/>
-The original was created by Rubber.
<br/>
-Big thanks to him!
<br/>
<br/>
<br/>
-Big thanks to: <br/>
<br/>
[NG23] Laescher,<br/>
who helped me in mission test and development.<br/>
<br/>
<br/>
-This version of the Rubber-ED was created by.<br/>
Authors:<br/>
Vadimir,Misak®,<br/><br/>

</t><br/>
<br/>
<t size='1.1' underline='true' align='center'>Change-LOG:</t><br />
<br/>
<br/>
<br/>
--> Version: 1.1 build 2017/01/08 <br/>
[x] Added test map for turnament.<br/>
[x] Added Fast rope Cargo rope and Cargo supply container<br/>
<br/>
[x] Added Tack Exolosive to vehicles<br/> 
<br/><br/>
--> Version: 1.0 <br/>
[x] Remakes city Anar not to INTERFERE with a time of peace of intro Feruz abad.<br/>
[x] Added static machine guns on the roofs of buildings.<br/>
[x] Change price for all Dingo on 4900 Mg and 5900 for Gl because all  have tws  Big benefits for BLUFOR after start.<br/>
[x] Added for RU Lf Supply truck KAMAZ-63968.<br/>
[x] Added for US Lf Supply truck HEMTT.<br/>
<br/><br/>
<br/><br/>
<img size='10' align='right' image='\rwm_core_ui\Images\logore.paa'/>
"
];
		((findDisplay 24000) displayCtrl 160002) ctrlSetStructuredText parseText (_helps select _changeTo);
	};	
};