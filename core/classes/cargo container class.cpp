class Land_Cargo20_military_green_F
{
	author = "Bohemia Interactive";
	_generalMacro = "Land_Cargo20_military_green_F";
	scope = 2;
	scopeCurator = 2;
	displayName = "Cargo Container (Medium, Military Green)";
	model = "\A3\Structures_F\Ind\Cargo\Cargo20_military_green_F.p3d";
	mapSize = 6.19;
	icon = "iconObject_5x2";
	editorSubcategory = "EdSubcat_Storage";
	vehicleClass = "Container";
	destrType = "DestructNo";
	cost = 5000;
	numberOfDoors = 2;
	selectionDamage = "DamT_1";
	class AnimationSources
	{
		class LockedDoor_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 0.1;
		};
		class Door_1_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
			sound = "MetalBigDoorsSound";
			soundPosition = "Door_1_trigger";
		};
		class Door_1_handle_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};
		class Door_2_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
			sound = "MetalBigDoorsSound";
			soundPosition = "Door_2_trigger";
		};
		class Door_2_handle_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};
	};
	class UserActions
	{
		class OpenDoor_1
		{
			displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
			displayName = "Open door";
			position = "Door_1_trigger";
			priority = 11;
			radius = 1.5;
			aiMaxRange = "1.5				 * 3";
			onlyForPlayer = 0;
			condition = "((this animationPhase 'Door_1_rot') < 0.5) && ((this getVariable ['bis_disabled_Door_1',0]) != 1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 'Door_1_rot', 'Door_Handle_1_rot_1', 'Door_Handle_1_rot_2'] call BIS_fnc_DoorOpen)";
		};
		class CloseDoor_1
		{
			displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
			displayName = "Close door";
			priority = 11;
			condition = "((this animationPhase 'Door_1_rot') >= 0.5) && ((this getVariable ['bis_disabled_Door_1',0]) != 1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 'Door_1_rot', 'Door_Handle_1_rot_1', 'Door_Handle_1_rot_2'] call BIS_fnc_DoorClose)";
			position = "Door_1_trigger";
			radius = 1.5;
			aiMaxRange = "1.5				 * 3";
			onlyForPlayer = 0;
		};
		class OpenLockedDoor_1
		{
			displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
			condition = "((this animationPhase 'Door_1_rot') < 0.1) && ((this getVariable ['bis_disabled_Door_1',0]) == 1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 'Door_Handle_1_rot_1', 'Door_Locked_1_rot'] call BIS_fnc_LockedDoorOpen)";
			displayName = "Open door";
			position = "Door_1_trigger";
			priority = 11;
			radius = 1.5;
			aiMaxRange = "1.5				 * 3";
			onlyForPlayer = 0;
		};
		class OpenDoor_2
		{
			displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
			displayName = "Open door";
			position = "Door_2_trigger";
			priority = 11;
			radius = 1.5;
			aiMaxRange = "1.5				 * 3";
			onlyForPlayer = 0;
			condition = "((this animationPhase 'Door_2_rot') < 0.5) && ((this getVariable ['bis_disabled_Door_2',0]) != 1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 'Door_2_rot', 'Door_Handle_2_rot_1', 'Door_Handle_2_rot_2'] call BIS_fnc_DoorOpen)";
		};
		class CloseDoor_2
		{
			displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
			displayName = "Close door";
			priority = 11;
			condition = "((this animationPhase 'Door_2_rot') >= 0.5) && ((this getVariable ['bis_disabled_Door_2',0]) != 1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 'Door_2_rot', 'Door_Handle_2_rot_1', 'Door_Handle_2_rot_2'] call BIS_fnc_DoorClose)";
			position = "Door_2_trigger";
			radius = 1.5;
			aiMaxRange = "1.5				 * 3";
			onlyForPlayer = 0;
		};
		class OpenLockedDoor_2
		{
			displayNameDefault = "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\open_door_ca.paa' size='2.5' />";
			condition = "((this animationPhase 'Door_2_rot') < 0.1) && ((this getVariable ['bis_disabled_Door_2',0]) == 1) && (cameraOn isKindOf 'CAManBase')";
			statement = "([this, 'Door_Handle_2_rot_1', 'Door_Locked_2_rot'] call BIS_fnc_LockedDoorOpen)";
			displayName = "Open door";
			position = "Door_2_trigger";
			priority = 11;
			radius = 1.5;
			aiMaxRange = "1.5				 * 3";
			onlyForPlayer = 0;
		};
	};
	actionBegin1 = "OpenDoor_1";
	actionEnd1 = "OpenDoor_1";
	actionBegin2 = "OpenDoor_2";
	actionEnd2 = "OpenDoor_2";
	editorCategory = "EdCat_Things";
	simulation = "thingX";
	accuracy = 1000;
	animated = 0;
	countsForScoreboard = 0;
	class DestructionEffects
	{
	};
	reversed = 0;
	nameSound = "obj_object";
	audible = 0;
	side = 3;
	weight = 0;
	class InventoryPlacements
	{
	};
	submerged = 0;
	submergeSpeed = 0;
	airFriction2[] = {0.01,0.01,0.01};
	airFriction1[] = {0.01,0.01,0.01};
	airFriction0[] = {0.01,0.01,0.01};
	airRotation = 0;
	gravityFactor = 1;
	timeToLive = 1e+010;
	disappearAtContact = 0;
	hasDriver = 0;
	picture = "pictureThing";
	weapons[] = {};
	magazines[] = {};
	minHeight = 0.1;
	avgHeight = 0.2;
	maxHeight = 0.4;
	type = 1;
	threat[] = {0,0,0};
	maxSpeed = 0;
	irTarget = 0;
	class Attributes
	{
		class ObjectTexture
		{
			displayName = "Skin";
			tooltip = "Texture and material set applied on the object.";
			data = "ObjectTexture";
			control = "ObjectTexture";
		};
	};
	access = 0;
	autocenter = 1;
	shadow = 1;
	featureSize = 0;
	faction = "Default";
	speechSingular[] = {};
	speechPlural[] = {};
	maxDetectRange = 20;
	detectSkill = 20;
	mineAlertIconRange = 200;
	killFriendlyExpCoef = 1;
	weaponSlots = 0;
	camouflage = 2;
	spotableDarkNightLightsOff = 0.003;
	spotableNightLightsOff = 0.035;
	spotableNightLightsOn = 4;
	visibleNightLightsOff = 0.1;
	visibleNightLightsOn = 0.2;
	attenuationEffectType = "";
	insideSoundCoef = 0.5;
	outsideSoundFilter = 0;
	insideDetectCoef = 0.5;
	occludeSoundsWhenIn = 0.316228;
	obstructSoundsWhenIn = 0.562341;
	obstructSoundLFRatio = 0;
	occludeSoundLFRatio = 0.25;
	unloadInCombat = 0;
	antiRollbarForceCoef = 0;
	antiRollbarForceLimit = 5;
	antiRollbarSpeedMin = 20;
	antiRollbarSpeedMax = 60;
	slowSpeedForwardCoef = 0.3;
	normalSpeedForwardCoef = 0.85;
	epeImpulseDamageCoef = 30;
	gunnerHasFlares = 1;
	enableManualFire = 1;
	sensitivity = 2.5;
	sensitivityEar = 0.0075;
	portrait = "";
	ghostPreview = "";
	armor = 100;
	armorLights = 0.4;
	armorStructural = 1;
	crewVulnerable = 1;
	damageResistance = 0.004;
	crewCrashProtection = 1;
	replaceDamaged = "";
	replaceDamagedLimit = 0.9;
	replaceDamagedHitpoints[] = {};
	keepInEPESceneAfterDeath = 0;
	fuelCapacity = 0;
	fuelConsumptionRate = "0.01f";
	extCameraPosition[] = {0,2,-20};
	groupCameraPosition[] = {0,5,-30};
	steerAheadSimul = 0.3;
	steerAheadPlan = 0.4;
	cameraSmoothSpeed = "5.0f";
	minFireTime = 20;
	predictTurnSimul = 1.2;
	predictTurnPlan = 1;
	indirectHitEnemyCoefAI = "10.0f";
	indirectHitFriendlyCoefAI = "-20.0f";
	indirectHitCivilianCoefAI = "-20.0f";
	indirectHitUnknownCoefAI = "-0.5f";
	precision = 5;
	brakeDistance = 5;
	formationX = 10;
	formationZ = 20;
	formationTime = 5;
	alwaysTarget = 0;
	irScanRangeMin = 0;
	irScanRangeMax = 0;
	irScanToEyeFactor = 1;
	irScanGround = 1;
	laserTarget = 0;
	laserScanner = 0;
	nvTarget = 0;
	nvScanner = 0;
	artilleryTarget = 0;
	artilleryScanner = 0;
	preferRoads = 0;
	unitInfoType = "RscUnitInfoTank";
	unitInfoTypeLite = 0;
	hideUnitInfo = 0;
	nightVision = 0;
	commanderCanSee = 31;
	gunnerCanSee = "4+8+16";
	driverCanSee = "2+8+16";
	radarType = 0;
	limitedSpeedCoef = 0.22;
	secondaryExplosion = -1;
	driverForceOptics = 0;
	hideWeaponsDriver = 1;
	hideWeaponsCargo = 0;
	getInRadius = 2.5;
	selectionClan = "";
	selectionDashboard = "";
	selectionShowDamage = "";
	selectionBackLights = "";
	memoryPointSupply = "doplnovani";
	supplyRadius = -1;
	enableGPS = 0;
	enableWatch = 0;
	enableRadio = 0;
	lockDetectionSystem = 0;
	incomingMissileDetectionSystem = 0;
	usePreciseGetInAction = 0;
	allowTabLock = 1;
	showAllTargets = 0;
	dustFrontLeftPos = "dustFrontLeft";
	dustFrontRightPos = "dustFrontRight";
	dustBackLeftPos = "dustBackLeft";
	dustBackRightPos = "dustBackRight";
	wheelCircumference = 1;
	waterLeakiness = 0.5;
	waterResistanceCoef = 0.5;
	waterLinearDampingCoefX = 0;
	waterLinearDampingCoefY = 0;
	waterAngularDampingCoef = 0;
	showNVGDriver = 0;
	showNVGCommander = 0;
	showNVGGunner = 0;
	showNVGCargo[] = {0};
	soundAttenuationCargo[] = {1};
	class EventHandlers
	{
	};
	class MarkerLights
	{
	};
	class NVGMarkers
	{
	};
	class NVGMarker
	{
		diffuse[] = {1,1,1,1};
		ambient[] = {1,1,1,1};
		brightness = 1;
		blinking = 0;
		onlyInNvg = 0;
	};
	class Turrets
	{
	};
	class HeadLimits
	{
		initAngleX = 5;
		minAngleX = -30;
		maxAngleX = 40;
		initAngleY = 0;
		minAngleY = -90;
		maxAngleY = 90;
		minAngleZ = -45;
		maxAngleZ = 45;
		rotZRadius = 0.2;
	};
	class ViewPilot
	{
		initAngleX = 5;
		minAngleX = -55;
		maxAngleX = 85;
		initAngleY = 0;
		minAngleY = -150;
		maxAngleY = 150;
		minFov = 0.25;
		maxFov = 1.25;
		initFov = 0.75;
		minMoveX = 0;
		maxMoveX = 0;
		minMoveY = 0;
		maxMoveY = 0;
		minMoveZ = 0;
		maxMoveZ = 0;
	};
	class ViewCargo
	{
		initAngleX = 5;
		minAngleX = -85;
		maxAngleX = 85;
		initAngleY = 0;
		minAngleY = -150;
		maxAngleY = 150;
		minFov = 0.25;
		maxFov = 1.25;
		initFov = 0.75;
		minMoveX = 0;
		maxMoveX = 0;
		minMoveY = 0;
		maxMoveY = 0;
		minMoveZ = 0;
		maxMoveZ = 0;
	};
	class ViewOptics
	{
		initAngleX = 0;
		minAngleX = -30;
		maxAngleX = 30;
		initAngleY = 0;
		minAngleY = -100;
		maxAngleY = 100;
		initFov = 0.7;
		minFov = 0.42;
		maxFov = 0.85;
		minMoveX = 0;
		maxMoveX = 0;
		minMoveY = 0;
		maxMoveY = 0;
		minMoveZ = 0;
		maxMoveZ = 0;
	};
	class PilotSpec
	{
		showHeadPhones = 0;
	};
	class CargoSpec
	{
		class Cargo1
		{
			showHeadPhones = 0;
		};
	};
	transportSoldier = 0;
	transportAmmo = 0;
	transportMaxMagazines = 0;
	transportMaxWeapons = 0;
	transportMaxBackpacks = 0;
	transportFuel = 0;
	transportRepair = 0;
	transportVehiclesCount = 0;
	transportVehiclesMass = 0;
	class TransportWeapons
	{
	};
	class TransportMagazines
	{
	};
	attendant = 0;
	engineer = 0;
	uavHacker = 0;
	soundEngine[] = {"",1,1};
	soundEnviron[] = {"",1,1};
	class SoundEnvironExt
	{
	};
	class SoundEquipment
	{
	};
	class SoundGear
	{
	};
	class SoundBreath
	{
	};
	class SoundBreathSwimming
	{
	};
	class SoundBreathInjured
	{
	};
	class SoundHitScream
	{
	};
	class SoundInjured
	{
	};
	class SoundBreathAutomatic
	{
	};
	class SoundDrown
	{
	};
	class SoundChoke
	{
	};
	class SoundRecovered
	{
	};
	class SoundBurning
	{
	};
	class PulsationSound
	{
	};
	class SoundDrowning
	{
	};
	soundCrash[] = {"",0.316228,1};
	soundLandCrash[] = {"",1,1};
	soundWaterCrash[] = {"",0.177828,1};
	soundGetIn[] = {"",0.000316228,1};
	soundGetOut[] = {"",0.000316228,1};
	soundServo[] = {"",0.00316228,0.5};
	soundElevation[] = {"",1,0.5};
	sounddamage[] = {"",1,1};
	soundEngineOnInt[] = {"",1,1};
	soundEngineOffInt[] = {"",1,1};
	soundEngineOnExt[] = {"",1,1};
	soundEngineOffExt[] = {"",1,1};
	soundGearUp[] = {"",1,1};
	soundGearDown[] = {"",1,1};
	soundFlapsUp[] = {"",1,1};
	soundFlapsDown[] = {"",1,1};
	soundCrashes[] = {"soundCrash",1};
	soundLandCrashes[] = {"soundLandCrash",1};
	soundWaterCrashes[] = {"soundWaterCrash",1};
	emptySound[] = {"",0,1};
	soundWoodCrash[] = {"emptySound",0};
	soundBushCrash[] = {"emptySound",0};
	soundBuildingCrash[] = {"emptySound",0};
	soundArmorCrash[] = {"emptySound",0};
	soundLocked[] = {"",1,1};
	soundIncommingMissile[] = {"",1,1};
	soundDammage[] = {"",1,1};
	typicalCargo[] = {};
	class Reflectors
	{
	};
	aggregateReflectors[] = {};
	getInAction = "";
	getOutAction = "";
	driverAction = "";
	driverInAction = "";
	cargoGetInAction[] = {};
	cargoGetOutAction[] = {};
	cargoAction[] = {};
	cargoIsCoDriver[] = {0};
	driverCompartments = "Compartment1";
	cargoCompartments[] = {"Compartment1"};
	driverOpticsModel = "";
	driverOpticsEffect[] = {};
	driverOpticsColor[] = {1,1,1,1};
	hideProxyInCombat = 0;
	forceHideDriver = 0;
	canHideDriver = -1;
	castDriverShadow = 0;
	castCargoShadow = 0;
	viewDriverShadow = 1;
	viewDriverShadowDiff = 1;
	viewDriverShadowAmb = 1;
	viewCargoShadow = 1;
	viewCargoShadowDiff = 1;
	viewCargoShadowAmb = 1;
	ejectDeadDriver = 0;
	ejectDeadCargo = 0;
	crew = "Civilian";
	hiddenSelections[] = {};
	hiddenSelectionsTextures[] = {};
	hiddenSelectionsMaterials[] = {};
	hiddenUnderwaterSelections[] = {};
	shownUnderWaterSelections[] = {};
	hiddenUnderwaterSelectionsTextures[] = {};
	class FxExplo
	{
		access = 1;
	};
	class AnimationSources
	{
		class LockedDoor_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 0.1;
		};
		class Door_1_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
			sound = "MetalBigDoorsSound";
			soundPosition = "Door_1_trigger";
		};
		class Door_1_handle_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};
		class Door_2_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
			sound = "MetalBigDoorsSound";
			soundPosition = "Door_2_trigger";
		};
		class Door_2_handle_source
		{
			source = "user";
			initPhase = 0;
			animPeriod = 1;
		};
	};
	selectionFireAnim = "";
	class GunFire
	{
		access = 0;
		cloudletDuration = 0.2;
		cloudletAnimPeriod = 1;
		cloudletSize = 1;
		cloudletAlpha = 1;
		cloudletGrowUp = 0.2;
		cloudletFadeIn = 0.01;
		cloudletFadeOut = 0.5;
		cloudletAccY = 0;
		cloudletMinYSpeed = -100;
		cloudletMaxYSpeed = 100;
		cloudletShape = "cloudletFire";
		cloudletColor[] = {1,1,1,0};
		interval = 0.01;
		size = 3;
		sourceSize = 0.5;
		timeToLive = 0;
		initT = 4500;
		deltaT = -3000;
		class Table
		{
			class T0
			{
				maxT = 0;
				color[] = {0.82,0.95,0.93,0};
			};
			class T1
			{
				maxT = 200;
				color[] = {0.75,0.77,0.9,0};
			};
			class T2
			{
				maxT = 400;
				color[] = {0.56,0.62,0.67,0};
			};
			class T3
			{
				maxT = 600;
				color[] = {0.39,0.46,0.47,0};
			};
			class T4
			{
				maxT = 800;
				color[] = {0.24,0.31,0.31,0};
			};
			class T5
			{
				maxT = 1000;
				color[] = {0.23,0.31,0.29,0};
			};
			class T6
			{
				maxT = 1500;
				color[] = {0.21,0.29,0.27,0};
			};
			class T7
			{
				maxT = 2000;
				color[] = {0.19,0.23,0.21,0};
			};
			class T8
			{
				maxT = 2300;
				color[] = {0.22,0.19,0.1,0};
			};
			class T9
			{
				maxT = 2500;
				color[] = {0.35,0.2,0.02,0};
			};
			class T10
			{
				maxT = 2600;
				color[] = {0.62,0.29,0.03,0};
			};
			class T11
			{
				maxT = 2650;
				color[] = {0.59,0.35,0.05,0};
			};
			class T12
			{
				maxT = 2700;
				color[] = {0.75,0.37,0.03,0};
			};
			class T13
			{
				maxT = 2750;
				color[] = {0.88,0.34,0.03,0};
			};
			class T14
			{
				maxT = 2800;
				color[] = {0.91,0.5,0.17,0};
			};
			class T15
			{
				maxT = 2850;
				color[] = {1,0.6,0.2,0};
			};
			class T16
			{
				maxT = 2900;
				color[] = {1,0.71,0.3,0};
			};
			class T17
			{
				maxT = 2950;
				color[] = {0.98,0.83,0.41,0};
			};
			class T18
			{
				maxT = 3000;
				color[] = {0.98,0.91,0.54,0};
			};
			class T19
			{
				maxT = 3100;
				color[] = {0.98,0.99,0.6,0};
			};
			class T20
			{
				maxT = 3300;
				color[] = {0.96,0.99,0.72,0};
			};
			class T21
			{
				maxT = 3600;
				color[] = {1,0.98,0.91,0};
			};
			class T22
			{
				maxT = 4200;
				color[] = {1,1,1,0};
			};
		};
	};
	class GunClouds
	{
		access = 0;
		cloudletDuration = 0.3;
		cloudletAnimPeriod = 1;
		cloudletSize = 1;
		cloudletAlpha = 1;
		cloudletGrowUp = 1;
		cloudletFadeIn = 0.01;
		cloudletFadeOut = 1;
		cloudletAccY = 0.4;
		cloudletMinYSpeed = 0.2;
		cloudletMaxYSpeed = 0.8;
		cloudletShape = "cloudletClouds";
		cloudletColor[] = {1,1,1,0};
		interval = 0.05;
		size = 3;
		sourceSize = 0.5;
		timeToLive = 0;
		initT = 0;
		deltaT = 0;
		class Table
		{
			class T0
			{
				maxT = 0;
				color[] = {1,1,1,0};
			};
		};
	};
	class MGunClouds
	{
		access = 0;
		cloudletGrowUp = 0.05;
		cloudletFadeIn = 0;
		cloudletFadeOut = 0.1;
		cloudletDuration = 0.05;
		cloudletAnimPeriod = 1;
		cloudletSize = 1;
		cloudletAlpha = 0.3;
		cloudletAccY = 0;
		cloudletMinYSpeed = -100;
		cloudletMaxYSpeed = 100;
		cloudletShape = "cloudletClouds";
		cloudletColor[] = {1,1,1,0};
		timeToLive = 0;
		interval = 0.02;
		size = 0.3;
		sourceSize = 0.02;
		initT = 0;
		deltaT = 0;
		class Table
		{
			class T0
			{
				maxT = 0;
				color[] = {1,1,1,0};
			};
		};
		class Table
		{
			class T0
			{
				maxT = 0;
				color[] = {1,1,1,0};
			};
		};
	};
	class Damage
	{
		tex[] = {};
		mat[] = {};
	};
	HeadAimDown = 0;
	class DestructionEffects
	{
	};
	cargoCanEject = 1;
	driverCanEject = 1;
	fireResistance = 10;
	airCapacity = 10;
	waterResistance = 10;
	waterDamageEngine = 0.2;
	maxFordingDepth = 1;
	impactEffectsSea = "ImpactEffectsSea";
	damageTexDelay = 0;
	coefInside = 2;
	coefInsideHeur = 2;
	coefSpeedInside = 2;
	windSockExist = 0;
	slingLoadCargoMemoryPoints[] = {};
	slingLoadCargoMemoryPointsDir[] = {};
	numberPhysicalWheels = 0;
	damageHalf[] = {};
	damageFull[] = {};
	class camShakeGForce
	{
		power = 1;
		frequency = 20;
		distance = 0;
		minSpeed = 1;
		duration = 3;
	};
	minGForce = 0.2;
	maxGForce = 2;
	gForceShakeAttenuation = 0.5;
	class camShakeDamage
	{
		power = 0.5;
		frequency = 60;
		distance = -1;
		minSpeed = 1;
		attenuation = 0.5;
		duration = 3;
	};
	weaponsGroup1 = "1 + 2";
	weaponsGroup2 = 4;
	weaponsGroup3 = "8 + 16 + 32";
	weaponsGroup4 = "64 + 128";
	features = "";
	class SpeechVariants
	{
		class Default
		{
			speechSingular[] = {"veh_unknown_s"};
			speechPlural[] = {"veh_unknown_p"};
		};
	};
	textSingular = "unknown";
	textPlural = "unknown";
};