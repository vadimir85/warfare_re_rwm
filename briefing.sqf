//	@file Version: 1.0
//	@file Name: briefing.sqf
//	@file Author: [NG23] Laescher
//	@file Created: 30th May 13

player createDiarySubject ["Spacher",""];
player createDiarySubject ["Rubber_Edition","Rubber Edition"];
player createDiarySubject ["Spacher",""];
player createDiarySubject ["Arma III -ED","Arma III -ED"];

player createDiaryRecord["Rubber_Edition", 
["Special Thanks", 
"
<br/>
Big Thanks to everyone who helped me in mission test and development:<br/>
Benny and all Benny Edition crew<br/>Mandoble<br/>=BoB= ( Band of Brothers ) Team<br/>Jolly Team."]];

player createDiaryRecord["Rubber_Edition", 
["Tips", 
"
<br/>- 
Start the mission with a strategy and organize your group, don’t go alone! found a medic for respawn tent,  or use ambulance carefully.<br/>
- Try to capture the town in group so you will earn mission reward togheter and you can share money to recuit AI or buy vehicles.<br/>
- Defend the base and move mhq in a smart and protected way<br/>- Don’t let enemy control the sky!<br/>
- Try to extend your territory and fight hard in town vs other players<br/>
- Use all ArmA features to improve your fight<br/>
- Play if possible on teamspeak<br/>
- Savage vehicles wreck to earn money<br/>
- Have fun!"]];

player createDiaryRecord["Rubber_Edition", 
["Edition Features", 
"
<br/>
[] Mando Missiles script suite incluede in mission (customized)<br/>
Mando missile 10.2 suite allow a fantastic warfare with advanced script for each guided missile<br/>
there are good tutorial and complete readme to learn how to get the best from mando systems on bis forum thread.<br/>
MMA Rearming system used instead of EASA - MMA rearm avaiable next to: Airfactory, Supply Point, Ammo truck.<br/><br/>
[] Other features<br/>- all mission parameters tweaked according to mission goal<br/>
- improved AI with UPSMON v5.09 ( ai will fight also inside and on roof of buildings, mines, flanking, smoke grenades and more )<br/>
- resistance patrols around resistance towns<br/>
- base area and building number limited ( instead of search and destroy ) plan your base location and protect them<br/>
- TNT special victory condition and town layout ( in order to win you need to conquest half map town + 2 ) 10 on 16 town layout<br/>
- Special Advance And Secure Warfare Layout ( Band Of Brothers IDEA )<br/>
- Special Berserk massive fight Warfare Layout<br/>- Respawn and rearm allowed in city owned Depot but in case of enemy near you  respawn will not work<br/>
- Respawn in owned town allowed in case of MHQ and all structures lost<br/>
- Custom mission HUD with money supply and n. of town held<br/>
- Custom GPS overlay<br/>- Custom GUI for end of game stats<br/>
- Custom MAP team marker<br/>
- Removed HE ammo from AA12 RPG MAVS SMAW<br/>
- Removed Paratroopers<br/>
- Ambulance paradrop instead of vehicle and low timer for para support<br/>
- No artillery with GUI but allow artillery computer and artillery with arma AI<br/>
- Tweaked town resistance and occupation groups"]];

player createDiaryRecord["Rubber_Edition", 
["Vehicles Skills", 
"
<br/>
-  Mobile HeadQuarter (MHQ)<br/>
Commander can build base structures and defense with deployed HQ.<br/>
warning: There are enemy patrol AI around and enemy player will try to destroy your MHQ so use the brain whe you move MHQ and protect the BASE with AI and defenses, ( same for factory )<br/>
- Repair Truck - Support :<br/>
MHQ repairing ( 7000 supply + 7000$ )<br/>
Rearming - Support Menu - Repairing - Refueling<br/>
Build Static defences and Fortification (construction interface)<br/>
- Salvage Truck:<br/>Wreck salvaging (35% of savaged unit price back)<br/>
- Supply Truck<br/>You will need supply truck to raise town SV value ( with param supply instead of time )<br/>
- Ambulance :       <br/>
All ambulance vehicles (heli ambulance included) works as mobile respawn with 500m range"]];

player createDiaryRecord["Rubber_Edition", 
["Players Skills", 
"
<br/>
1 Commander ( only 1 for side (slot 1-1-A)) * Commander +20 group Size + Advanced Repair<br/>
2 Medic * Mibile Respawn Tent 60 sec to undeploy 900sec to deploy new one without remove last deployed<br/>
3 Team Leader ( Rus Officers ) * Team Leader +10 group Size<br/>
4 Engineer ( Rus Team Leader MVD) * Engineer + Advanced Repair<br/>
5 Engineer (RUS Team Leader MVD) * Engineer + Advanced Repair<br/>
6 Saboteur / Demolitor * Saboteur + lock pick (resistance and occupation vehicle are locked .. )<br/>
7 Sniper * Sniper/Marksman + Spot (will not included in Tournament edition )<br/>8 Marks Man * Sniper/Marksman + Spot (will not included in Tournament edition )"]];

player createDiaryRecord["Rubber_Edition", 
["Mission Rules", 
"
<br/> 
No upgrade tree ( all upgrade set to max )<br/>
Instead of basing the strategy with arcade style upgrades, I’ve tweaked the mission to base on territorial conquest and economy.<br/><br/>
[] Mission Economy and  vehicle price tweaked and increased<br/>
Economy and Territory are the CORE of this mission, vehicle prices are well balanced, after a lot of attempt Red and Blue are now well balanced.<br/>
During the mission progress you will be able to use more advanced and expensive vehicles, Play as team and get the town capture reward!<br/><br/>
[] Airport Hangars ( Planes can only be buyed there )<br/>
Airplanes are not 4x4 jeep so you will need a runway to takeoff<br/><br/>
[] no camps for unlimited rearm and respawn:<br/>
Medic can deploy mobile respawn tent (multiple without autodelete) so respawn will be dinamyc and  destructable this increase teamplay and global gameplay compared to static camp, that often are campered and allow to rearm in real unreal way... game offer more real, work around to have AT-ammo without just run with a vehicle close to a camp capture to have unlimited weapons/ammo and respawn. you have to play closed with other player ( medic and other classes ) and use support vehicles, backpack and all features that can help your side to advance in this hostile territory.<br/><br/>
[] restricted gear<br/>Is not possible to equip heavy sniper rifle / mg with AT weapons, as in real life you can’t carry so much<br/>
Medic will have less gear space due to medikit.<br/><br/>
[] Territorial conquest<br/>
To capture towns you need a “territorial link” here it’s really  important to play with a good team strategy<br/>
On mission startup the closest town to MHQ can be captured, then you need a “road clear” link to other town<br/>
you will see capturable town in the map with an orange circle marker, plan your advance in territory and try to move your frontline as deep as you can.."]];

player createDiaryRecord["Rubber_Edition", 
["Mission Goals", 
"
<br/>
Main goal of this mission is to allow good team to pratice different strategies and massive team play, in order to give a big advantage to well organized team, lot of “Arcade” feature of standard Warfare are removed. Playing this mission cooperating with  friends and with good strategy will be really rewarding. Also if the map is big with the tweaked  mission rules  you will fight really intense pvp battle! <br/><br/>
Please note: All default Mission parameters are studied according to the mission goal read them to know all mission settings."]];

player createDiaryRecord["Arma III -ED", 
[" Version-Information", 
"
<br/>
<br/>
<img image='\rwm_core_ui\Images\ArmA_Logo.paa'/> 
<br/>
<br/>						  
-The Arma III -ED is currently at version 1.4
<br/>
<br/>
-This is not the original version of the Rubber-ED!
<br/>
-The original was created by Rubber on ArmA2.
<br/>
-Big thanks to him!
<br/>
<br/>
<br/>
-Big thanks to: <br/>
ArmA2:<br/>
  [NG23] Laescher (Germany),<br/>
ArmA3:<br/>
  Misak (Czech Republic),<br/>
  Retro (Czech Republic),<br/>
  Restrepo (Germany),<br/>
  Levin (Russia)<br/>
  who helped me in mission test and development.
  <br/>
<br/>
-This version of the Rubber Edition was created by Rubber team.<br/>
<img image='\rwm_core_ui\Images\jff.paa'/> 
<br/>
<font color='#2ae916' size='14'>Rubber cti Forums</font><br/>
- http://arma3rubberwarfare.webnode.cz/ <br/><br/>
<br/>
<br/>
<img image='\rwm_core_ui\Images\cts.paa'/> 
- ofpisnotdead.com<br/><br/>
<br/>
<br/>
"]];
player createDiaryRecord["Arma III -ED", 
[" Bug-Report", 
"
<br/>
What helps us quickly find and fix bugs:<br/>
The subject(title) of the post should contain succinct information about the issue. <br/>
The body of your post should include how the bug happened and contain any and <br/>
all information about what happened when you experience the bug. <br/><br/>
  Please inform us via E-mail.<br/>
  E-Mail:<br/>
"]];
player createDiaryRecord["Arma III -ED", 
[" Changelog",""]];