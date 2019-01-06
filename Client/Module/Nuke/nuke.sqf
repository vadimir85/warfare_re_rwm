//--- Nuke blast.
private ["_object", "_xpos", "_ypos"];

_object = _this select 0;
_xpos = getpos _object select 0;
_ypos = getpos _object select 1;

argt_nuclear_radius = 1500;
argt_nuclear_blow_speed = 100;
argt_nuclear_half_life = 10 * 60;
argt_nuclear_radiation_damage = 0.03;
argt_nuclear_car_armour = 1 / 4;

//call compile preprocessfile "Client\Module\Nuke\config.sqf";
//[_object] execVM "Client\Module\Nuke\scripts\destroy.sqf";
//[_xpos, _ypos] execVM "Client\Module\Nuke\scripts\damage.sqf";

sleep 4;

[_xpos, _ypos] execVM "Client\Module\Nuke\scripts\glare.sqf";
[_xpos, _ypos] execVM "Client\Module\Nuke\scripts\light.sqf";

[_xpos, _ypos] exec "Client\Module\Nuke\scripts\hat.sqs";
[_xpos, _ypos] execVM "Client\Module\Nuke\scripts\ears.sqf";
[_xpos, _ypos] execVM "Client\Module\Nuke\scripts\aperture.sqf";

sleep 0.5;
[_xpos, _ypos] exec "Client\Module\Nuke\scripts\hatnod.sqs";

[_xpos, _ypos] exec "Client\Module\Nuke\scripts\blast1.sqs";
[_xpos, _ypos] exec "Client\Module\Nuke\scripts\blast2.sqs";
sleep 0.4;
[_xpos, _ypos] exec "Client\Module\Nuke\scripts\blast3.sqs";

execVM "Client\Module\Nuke\scripts\weather.sqf";

sleep 20;
[_xpos, _ypos] execVM "Client\Module\Nuke\scripts\dust.sqf";

sleep 60;
[_xpos, _ypos] exec "Client\Module\Nuke\scripts\ring1.sqs";
sleep 6;
[_xpos, _ypos] exec "Client\Module\Nuke\scripts\ring2.sqs";

/*
Private ['_Cone','_light','_smoke','_smoke2','_target','_top','_top2','_top3','_top4','_top5','_Wave','_xHandle'];
_target = _this select 0;

if (player distance _target < 4000) then {
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [1];
	"dynamicBlur" ppEffectCommit 1;
};

_Cone = "#particlesource" createVehicleLocal getPos _target;
_Cone setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 10, [0, 0, 0],
				[0, 0, 0], 0, 1.275, 1, 0, [40,80], [[0.25, 0.25, 0.25, 0], [0.25, 0.25, 0.25, 0.5], 
				[0.25, 0.25, 0.25, 0.5], [0.25, 0.25, 0.25, 0.05], [0.25, 0.25, 0.25, 0]], [0.25], 0.1, 1, "", "", _target];
_Cone setParticleRandom [2, [1, 1, 30], [1, 1, 30], 0, 0, [0, 0, 0, 0.1], 0, 0];
_Cone setParticleCircle [10, [-10, -10, 20]];
_Cone setDropInterval 0.005;

_top = "#particlesource" createVehicleLocal getPos _target;
_top setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 80], 0, 1.7, 1, 0, [180,150,180], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", _target];
_top setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top setDropInterval 0.001;

_top2 = "#particlesource" createVehicleLocal getPos _target;
_top2 setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 3, 112, 0], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 20], 0, 1.7, 1, 0, [80,80,100], [[1, 1, 1, 0.5],[1, 1, 1, 0]], [0.07], 1, 1, "", "", _target];
_top2 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top2 setDropInterval 0.002;

_smoke = "#particlesource" createVehicleLocal getPos _target;
_smoke setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
				[0, 0, 80], 0, 1.7, 1, 0, [40,50,60], 
				[[1, 1, 1, 0.2],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0]]
				, [0.5, 0.1], 1, 1, "", "", _target];
_smoke setParticleRandom [0, [10, 10, 15], [15, 15, 7], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_smoke setDropInterval 0.002;

_Wave = "#particlesource" createVehicleLocal getPos _target;
_Wave setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48], "", "Billboard", 1, 20, [0, 0, 0],
				[0, 0, 0], 0, 1.5, 1, 0, [50, 100], [[0.1, 0.1, 0.1, 0.5], 
				[0.5, 0.5, 0.5, 0.5], [1, 1, 1, 0.3], [1, 1, 1, 0]], [1,0.5], 0.1, 1, "", "", _target];
_Wave setParticleRandom [2, [20, 20, 20], [5, 5, 0], 0, 0, [0, 0, 0, 0.1], 0, 0];
_Wave setParticleCircle [50, [-80, -80, 2.5]];
_Wave setDropInterval 0.0002;

_light = "#lightpoint" createVehicleLocal [((getPos _target select 0)),(getPos _target select 1),((getPos _target select 2)+500)];
_light setLightAmbient[1500, 1200, 1000];
_light setLightColor[1500, 1200, 1000];
_light setLightBrightness 100000.0;

/*
if (player distance _target < 4000) then {
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [0.8, 15, 0, [0.5, 0.5, 0.5, 0], [0.0, 0.0, 0.6, 2],[0.3, 0.3, 0.3, 0.1]];"colorCorrections" ppEffectCommit 0.4;
	 
	"dynamicBlur" ppEffectAdjust [0.5];
	"dynamicBlur" ppEffectCommit 3;

	sleep 0.1;

	_xHandle = [] Spawn
	{
		Sleep 4;
		"colorCorrections" ppEffectAdjust [1.0, 0.5, 0, [0.5, 0.5, 0.5, 0], [1.0, 1.0, 0.8, 0.4],[0.3, 0.3, 0.3, 0.1]];
		"colorCorrections" ppEffectCommit 7;
	};

	"dynamicBlur" ppEffectAdjust [2];
	"dynamicBlur" ppEffectCommit 1;

	"dynamicBlur" ppEffectAdjust [0.5];
	"dynamicBlur" ppEffectCommit 4;
};


_light setLightBrightness 100000.0;

sleep 3.5;

_Wave setDropInterval 0.001;
deleteVehicle _top;
deleteVehicle _top2;
sleep 7;
_top3 = "#particlesource" createVehicleLocal getPos _target;
_top3 setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 20, [0, 0, 500],
				[0, 0, 65], 0, 1.7, 1, 0, [200,200,200], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", _target];
_top3 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top3 setDropInterval 0.001;

sleep 0.6;
deleteVehicle _top3;

sleep 3;

if (player distance _target < 4000) then {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0.5, 0.5, 0.5, 0], [1.0, 1.0, 0.8, 0.4],[0.3, 0.3, 0.3, 0.1]];"colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;
	"dynamicBlur" ppEffectAdjust [0];
	"dynamicBlur" ppEffectCommit 1;
};

_top4 = "#particlesource" createVehicleLocal getPos _target;
_top4 setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 20, [0, 0, 800],
				[0, 0, 55], 0, 1.7, 1, 0, [200,200,200], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", _target];
_top4 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top4 setDropInterval 0.001;

sleep 0.6;
deleteVehicle _light;
deleteVehicle _top4;
sleep 4;

_top5 = "#particlesource" createVehicleLocal getPos _target;
_top5 setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 3, 48, 0], "", "Billboard", 1, 20, [0, 0, 1000],
				[0, 0, 20], 0, 1.7, 1, 0, [250,280,250], [[1, 1, 1, -10],[1, 1, 1, -7],[1, 1, 1, -4],[1, 1, 1, -0.5],[1, 1, 1, 0]], [0.05], 1, 1, "", "", _target];
_top5 setParticleRandom [0, [75, 75, 15], [17, 17, 10], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_top5 setDropInterval 0.001;

_Cone setDropInterval 0.01;
_Wave setDropInterval 0.001;

_smoke setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 0],
				[0, 0, 80], 0, 1.7, 1, 0, [150,150,150], 
				[[1, 1, 1, 0.2],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0]]
				, [0.5, 0.1], 1, 1, "", "", _target];
_smoke setDropInterval 0.01;

_smoke2 = "#particlesource" createVehicleLocal getPos _target;
_smoke2 setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal", 16, 7, 48, 1], "", "Billboard", 1, 25, [0, 0, 900],
				[0, 0, 25], 0, 1.7, 1, 0, [160,180,170], 
				[[1, 1, 1, 0.2],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0.3],[1, 1, 1, 0]]
				, [0.5, 0.1], 1, 1, "", "", _target];
_smoke2 setParticleRandom [0, [10, 10, 15], [15, 15, 7], 0, 0, [0, 0, 0, 0], 0, 0, 360];
_smoke2 setDropInterval 0.01;

sleep 5;
deleteVehicle _top5;
_Cone setDropInterval 0.02;
_Wave setDropInterval 0.01;

sleep 5;
deleteVehicle _smoke2;
sleep 10;
deleteVehicle _Wave;
deleteVehicle _cone;
deleteVehicle _smoke;
//sleep 20;
//if (player distance _target < 4000) then {"colorCorrections" ppEffectEnable false};
//[currentFX] Spawn FX;
