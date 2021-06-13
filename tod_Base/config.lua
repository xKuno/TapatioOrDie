Config = {}

-- FR FUEL START

-- Are you using ESX? Turn this to true if you would like fuel & jerry cans to cost something.
Config.UseESX = true

-- What should the price of jerry cans be?
Config.JerryCanCost = 100
Config.RefillCost = 50 -- If it is missing half of it capacity, this amount will be divided in half, and so on.

-- Fuel decor - No need to change this, just leave it.
Config.FuelDecor = "_FUEL_LEVEL"

-- What keys are disabled while you're fueling.
Config.DisableKeys = {0, 22, 23, 24, 29, 30, 31, 37, 44, 56, 82, 140, 166, 167, 168, 170, 288, 289, 311, 323}

-- Want to use the HUD? Turn this to true.
Config.EnableHUD = false

-- Configure blips here. Turn both to false to disable blips all together.
Config.ShowNearestGasStationOnly = true
Config.ShowAllGasStations = false

-- Modify the fuel-cost here, using a multiplier value. Setting the value to 2.0 would cause a doubled increase.
Config.CostMultiplier = 1.0

-- Configure the strings as you wish here.
Config.Strings = {
	ExitVehicle = "Exit the vehicle to refuel",
	EToRefuel = "Press ~g~G ~w~to refuel vehicle",
	JerryCanEmpty = "Jerry can is empty",
	FullTank = "Tank is full",
	PurchaseJerryCan = "Press ~g~G ~w~to purchase a jerry can for ~g~$" .. Config.JerryCanCost,
	CancelFuelingPump = "Press ~g~G ~w~to cancel the fueling",
	CancelFuelingJerryCan = "Press ~g~G ~w~to cancel the fueling",
	NotEnoughCash = "Not enough cash",
	RefillJerryCan = "Press ~g~G ~w~ to refill the jerry can for ",
	NotEnoughCashJerryCan = "Not enough cash to refill jerry can",
	JerryCanFull = "Jerry can is full",
	TotalCost = "Cost",
}

if not Config.UseESX then
	Config.Strings.PurchaseJerryCan = "Press ~g~G ~w~to grab a jerry can"
	Config.Strings.RefillJerryCan = "Press ~g~G ~w~ to refill the jerry can"
end

Config.PumpModels = {
	[-2007231801] = true,
	[1339433404] = true,
	[1694452750] = true,
	[1933174915] = true,
	[-462817101] = true,
	[-469694731] = true,
	[-164877493] = true
}

-- Blacklist certain vehicles. Use names or hashes. https://wiki.gtanet.work/index.php?title=Vehicle_Models
Config.Blacklist = {
	--"Adder",
	--276773164
}

-- Do you want the HUD removed from showing in blacklisted vehicles?
Config.RemoveHUDForBlacklistedVehicle = true

-- Class multipliers. If you want SUVs to use less fuel, you can change it to anything under 1.0, and vise versa.
Config.Classes = {
	[0] = 1.0, -- Compacts
	[1] = 1.0, -- Sedans
	[2] = 1.0, -- SUVs
	[3] = 1.0, -- Coupes
	[4] = 1.0, -- Muscle
	[5] = 1.0, -- Sports Classics
	[6] = 1.0, -- Sports
	[7] = 1.0, -- Super
	[8] = 1.0, -- Motorcycles
	[9] = 1.0, -- Off-road
	[10] = 1.0, -- Industrial
	[11] = 1.0, -- Utility
	[12] = 1.0, -- Vans
	[13] = 0.0, -- Cycles
	[14] = 1.0, -- Boats
	[15] = 1.0, -- Helicopters
	[16] = 1.0, -- Planes
	[17] = 1.0, -- Service
	[18] = 1.0, -- Emergency
	[19] = 1.0, -- Military
	[20] = 1.0, -- Commercial
	[21] = 1.0, -- Trains
}

-- The left part is at percentage RPM, and the right is how much fuel (divided by 10) you want to remove from the tank every second
Config.FuelUsage = {
	[1.0] = 1.4,
	[0.9] = 1.2,
	[0.8] = 1.0,
	[0.7] = 0.9,
	[0.6] = 0.8,
	[0.5] = 0.7,
	[0.4] = 0.5,
	[0.3] = 0.4,
	[0.2] = 0.2,
	[0.1] = 0.1,
	[0.0] = 0.0,
}

Config.GasStations = {
	vector3(49.4187, 2778.793, 58.043),
	vector3(263.894, 2606.463, 44.983),
	vector3(1039.958, 2671.134, 39.550),
	vector3(1207.260, 2660.175, 37.899),
	vector3(2539.685, 2594.192, 37.944),
	vector3(2679.858, 3263.946, 55.240),
	vector3(2005.055, 3773.887, 32.403),
	vector3(1687.156, 4929.392, 42.078),
	vector3(1701.314, 6416.028, 32.763),
	vector3(179.857, 6602.839, 31.868),
	vector3(-94.4619, 6419.594, 31.489),
	vector3(-2554.996, 2334.40, 33.078),
	vector3(-1800.375, 803.661, 138.651),
	vector3(-1437.622, -276.747, 46.207),
	vector3(-2096.243, -320.286, 13.168),
	vector3(-724.619, -935.1631, 19.213),
	vector3(-526.019, -1211.003, 18.184),
	vector3(-70.2148, -1761.792, 29.534),
	vector3(265.648, -1261.309, 29.292),
	vector3(819.653, -1028.846, 26.403),
	vector3(1208.951, -1402.567,35.224),
	vector3(1181.381, -330.847, 69.316),
	vector3(620.843, 269.100, 103.089),
	vector3(2581.321, 362.039, 108.468),
	vector3(176.631, -1562.025, 29.263),
	vector3(176.631, -1562.025, 29.263),
	vector3(-319.292, -1471.715, 30.549),
	vector3(1784.324, 3330.55, 41.253)
}


-- FR FUEL END

-- Money Wash Start
Config.Locale 			= 'en'
Config.DrawDistance 	= 25

local second = 1000
local minute = 60 * second
local hour = 60 * minute

Config.Zones = {
	
	['LaundryMat'] = {	
		Pos = { 
			{x = 894.99, y = -180.17, z = 74.7},
		},
		
		Jobs = {
			'any', -- set to 'any' to allow the location for any player regardless of job
			--'unemployed', 'fisherman', 'fueler', 'lumberjack', 'mechanic', 'miner', 'offambulance', 'offpolice', 'tailor', 'taxi'
		},
		TaxRate = 0.85
		, -- set taxrate per spot. Default is 0.5 or 50% of the dirty you will get back in clean
		enableTimer = false, -- Enable ONLY IF you want a timer on the money washing. Keep in mind the Player does not have to stay at the wash for it to actually wash the money.
		timer = 5 * second, -- Actual Timer for the spot. The * amount will determine if its hours, second, or minutes. which are found above. DEFAULT: 5 * second
		Size = {x = 1.5, y = 1.5, z = 1.5},
		Color = {r = 255, g = 0, b = 05},
		Type = 29,
	
	}
}
-- Money Wash End



-- Start Holster Weapon

Config.CooldownPolice = 700
Config.cooldown		  = 1700

-- Add/remove weapon hashes here to be added for holster checks.
Config.Weapons = {
	"WEAPON_PISTOL",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_FLAREGUN",
	"WEAPON_STUNGUN",
	"WEAPON_REVOLVER",
}
-- End hoster weapon


-- Teleport Script Start
-- C key by default
Config.teleportactionKey = 26

-- markers AKA Teleporters
Config.teleportzones = {
	
	WeedEnter = {           --This is the entrance where you go to enter the weed warehouse
		x = -255.82,
		y = -1543.0,
		z = 31.91,
		w = 2.0,
		h = 0,
		visible = true, -- Set this to true to make the marker visible. False to disable it.
		t = 29,          -- This is the marker. You can change it https://docs.fivem.net/game-references/markers
		color = {
			r = 0,
			g = 102,
			b = 0
		}
		
	},
	
	WeedExit = {          --This is the exit where you go to exit the weed warehouse
		x = 1039.93,
		y = -3196.07,
		z = -38.17,
		w = 2.0,
		h = 0,
		visible = true,
		t = 29,
		color = {
			r = 0,
			g = 102,
			b = 0
		}
		
	},
	
MethEnter = {
		x = 335.1,
		y = -226.86,
		z = 54.22,
        w = 1.0,
        h = 1.0,
        visible = false,
        t = 20,
        color = {
            r = 255,
            g = 0,
            b = 0
        }
    },

    MethExit = {
        x = 1012.136,
        y = -3202.527,
        z = -38.993,
        w = 2.0,
        h = 1.0,
        visible = false,
        t = 1,
        color = {
            r = 102,
            g = 0,
            b = 0
        }
	},
	
	GangManagmentEnter = {        --court
	x = -1388.51,
	y = -586.67,
	z = 29.33,
	w = 2.0,
	h = 1.0,
	visible = true,
	t = 27,
	color = {
		r = 0,
		g = 255,
		b = 0
	}
	
},

GangManagmentExit = {
	x = -1601.45,
	y = -3006.08,
	z = -79.91,
	w = 2.0,
	h = 1.0,
	visible = true,
	t = 27,
	color = {
		r = 255,
		g = 0,
		b = 0
	}
	
},

	CokeEnter = {
		x = 1386.2,
		y = -593.39,
		z = 74.49,
		w = 1.0,
		h = 1.0,		
		visible = true,
		t = 20,
		color = {
			r = 102,
			g = 0,
			b = 0
		}
	},
	
	CokeExit = {
		x = 1103.613,
		y = -3196.25,
		z = -38.993,
		w = 2.0,
		h = 1.0,		
		visible = false,
		t = 1,
		color = {
			r = 102,
			g = 0,
			b = 0
		}
	},
}

-- Landing point, keep the same name as markers
Config.teleportpoint = {

	WeedEnter = {           --This is where you land when you use the entrance teleport.
		x = 1066.009,
		y = -3183.386,
		z = -39.164
	},
	
	WeedExit = {             --This is where you land when you use the exit teleport.
		x = -259.8,
		y = -1535.21,
		z = 31.98
	},

	MethEnter = {
		x = 998.629,
		y = -3199.545,
		z = -36.394
	},
	
	MethExit = {
        x = 331.65,
        y = -203.54,
        z = 54.22,
	},

	CokeEnter = {
		x = 1088.636,
		y = -3188.551, 
		z = -38.993
	},

	GangManagmentEnter = {
		x = -1605.27,
		y = -3012.73,
		z = -77.8
	},
	
	GangManagmentExit = {
		x = -1391.04,
		y = -583.6,
		z = 30.23
	},
	
	CokeExit = {
		x = 1392.68,
		y = -607.78, 
		z = 74.34
	},
	
	MoneyWashEnter = {
		x = 1118.405,
		y = -3193.687,
		z = -40.394
	},
	
	MoneyWashExit = {
		x = 971.64,
		y = 12.04,
		z = 80.99
	}
}


-- Automatic teleport list (no need to puseh E key in the marker)
Config.teleportauto = {
	'WeedEnter',
	'WeedExit',
	'GangManagmentEnter',
	'GangManagmentExit',
	'MoneyWashEnter',
	'MoneyWashExit',
	'CokeEnter',
	'CokeExit',
	'MethEnter',
	'MethExit'
}
-- Teleport Script End



-------- On duty start
Config.ZonesDuty = {

	PoliceDuty = {
	  Pos   = { x = 439.825, y = -975.693, z = 29.691 },
	  Size  = { x = 2.5, y = 2.5, z = 1.5 },
	  Color = { r = 0, g = 255, b = 0 },  
	  Type  = 27,
	},
  
	AmbulanceDuty = {
	  Pos = { x = 305.18, y = -599.85, z = 43.28 },
	  Size = { x = 2.5, y = 2.5, z = 1.5 },
	  Color = { r = 0, g = 255, b = 0 },
	  Type = 27,
	},
  }
  ----- On Duty End
  -------------------------------------------------------------
  ------------------------------------------
--	Start off RealisticVehicleFailure  --
------------------------------------------

cfg = {
	deformationMultiplier = -1,					-- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch. Visual damage does not sync well to other players.
	deformationExponent = 0.7,					-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 0.7,				-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

	damageFactorEngine = 5.2,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 7.0,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorPetrolTank = 63.0,				-- Sane values are 1 to 200. Higher values means more damage to vehicle. A good starting point is 64
	engineDamageExponent = 0.9,					-- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	weaponsDamageMultiplier = 0.00,				-- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	degradingHealthSpeedFactor = 7.4,			-- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
	cascadingFailureSpeedFactor = 2.0,			-- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

	degradingFailureThreshold = 690.0,			-- Below this value, slow health degradation will set in
	cascadingFailureThreshold = 320.0,			-- Below this value, health cascading failure will set in
	engineSafeGuard = 100.0,					-- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

	torqueMultiplierEnabled = true,				-- Decrease engine torque as engine gets more and more damaged

	limpMode = false,							-- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpModeMultiplier = 0.15,					-- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

	preventVehicleFlip = false,					-- If true, you can't turn over an upside down vehicle

	sundayDriver = true,						-- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriverAcceleratorCurve = 7.5,			-- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0,				-- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

	displayBlips = true,						-- Show blips for mechanics locations

	compatibilityMode = false,					-- prevents other scripts from modifying the fuel tank health to avoid random engine failure with BVA 2.01 (Downside is it disabled explosion prevention)

	randomTireBurstInterval = 0,				-- Number of minutes (statistically, not precisely) to drive above 22 mph before you get a tire puncture. 0=feature is disabled



	classDamageMultiplier = {
		[0] = 	0.85,		--	0: Compacts
				0.85,		--	1: Sedans
				0.85,		--	2: SUVs
				0.85,		--	3: Coupes
				0.85,		--	4: Muscle
				0.85,		--	5: Sports Classics
				0.85,		--	6: Sports
				0.85,		--	7: Super
				0.10,		--	8: Motorcycles
				0.86,		--	9: Off-road
				0.25,		--	10: Industrial
				0.85,		--	11: Utility
				0.85,		--	12: Vans
				0.85,		--	13: Cycles
				0.50,		--	14: Boats
				0.85,		--	15: Helicopters
				0.85,		--	16: Planes
				0.85,		--	17: Service
				0.30,		--	18: Emergency
				0.75,		--	19: Military
				0.85,		--	20: Commercial
				0.85			-- 21: Trains
	}
}



repairCfg = {
	mechanics = {
		{name="Mechanic", id=446, r=25.0, x=-337.0,  y=-135.0,  z=39.0},	-- LSC Burton
		{name="Mechanic", id=446, r=25.0, x=-1155.0, y=-2007.0, z=13.0},	-- LSC by airport
		{name="Mechanic", id=446, r=25.0, x=734.0,   y=-1085.0, z=22.0},	-- LSC La Mesa
		{name="Mechanic", id=446, r=18.0, x=538.0,   y=-183.0,  z=54.0},	-- Mechanic Hawic
		{name="Mechanic", id=446, r=15.0, x=1143.0,  y=-776.0,  z=57.0},	-- Mechanic Mirror Park
		{name="Mechanic", id=446, r=25.0, x=484.0,   y=-1316.0, z=29.0},	-- Hayes Auto, Little Bighorn Ave.
		{name="Mechanic", id=446, r=33.0, x=-1419.0, y=-450.0,  z=36.0},	-- Hayes Auto Body Shop, Del Perro
	--	{name="Mechanic", id=446, r=33.0, x=268.0,   y=-1810.0, z=27.0},	-- Hayes Auto Body Shop, Davis
	--	{name="Mechanic", id=446, r=24.0, x=288.0,   y=-1730.0, z=29.0},	-- Hayes Auto, Rancho (Disabled, looks like a warehouse for the Davis branch)
		{name="Mechanic", id=446, r=45.0, x=-29.0,   y=-1665.0, z=29.0},	-- Mosley Auto Service, Strawberry
		{name="Mechanic", id=446, r=44.0, x=-212.0,  y=-1378.0, z=31.0},	-- Glass Heroes, Strawberry
		{name="Mechanic", id=446, r=18.0, x=462.49,  y=-1017.0, z=28.0},	-- Simeons XPD

	--	{name="Mechanic", id=446, r=25.0, x=-211.0,  y=-1325.0, z=31.0},	-- Bennys
	},

	fixMessages = {
		"You put the oil plug back in",
		"You stopped the oil leak using chewing gum",
		"You repaired the oil tube with gaffer tape",
		"You tightened the oil pan screw and stopped the dripping",
		"You kicked the engine and it magically came back to life",
		"You removed some rust from the spark tube",
		"You yelled at your vehicle, and it somehow had an effect"
	},
	fixMessageCount = 7,

	noFixMessages = {
		"You checked the oil plug. It's still there",
		"You looked at your engine, it seemed fine",
		"You made sure that the gaffer tape was still holding the engine together",
		"You turned up the radio volume. It just drowned out the weird engine noises",
		"You added rust-preventer to the spark tube. It made no difference",
		"Never fix something that ain't broken they said. You didn't listen. At least it didn't get worse"
	},
	noFixMessageCount = 6
}

RepairEveryoneWhitelisted = true
RepairWhitelist =
{
	"steam:123456789012345",
	"steam:000000000000000",
	"ip:192.168.0.1"			-- not sure if ip whitelist works?
}

-----------------------------------------
-- Realistic End
-------------------------------------------

-----------------------------------------
-- Car Wash Start
-------------------------------------------

Config.CarWashEnablePrice = true
Config.CarWashPrice = 500

Config.CarWashLocations = {
	vector3(26.5906, -1392.0261, 27.3634),
	vector3(167.1034, -1719.4704, 27.2916),
	vector3(-74.5693, 6427.8715, 29.4400),
	vector3(-699.6325, -932.7043, 17.0139)
}

-----------------------------------------
-- Car Wash End
-------------------------------------------

-----------------------------------------
-- Extra Items Start
-------------------------------------------
Config.ExtraitemsWait = {
	RepairKit = 10000
}

Config.ExtraitemsRemoveables = {
	-- true = Removes when used | false = Does opposite of true
	RepairKit = true
}
-----------------------------------------
-- Extra Items End
-------------------------------------------

-----------------------------------------
-- DP Emotes Start
-------------------------------------------

ConfigDPEmotes = {
	-- Change the language of the menu here!.
	-- Note fr and de are google translated, if you would like to help out with translation / just fix it for your server check below and change translations yourself
	-- try en, fr, de or sv.
		MenuLanguage = 'en',	
	-- Set this to true to enable some extra prints
		DebugDisplay = false,
	-- Set this to false if you have something else on X, and then just use /e c to cancel emotes.
		EnableXtoCancel = true,
	-- Set this to true if you want to disarm the player when they play an emote.
		DisarmPlayer= false,
	-- Set this if you really wanna disable emotes in cars, as of 1.7.2 they only play the upper body part if in vehicle
		AllowedInCars = true,
	-- You can disable the (F3) menu here / change the keybind.
		MenuKeybindEnabled = true,
		MenuKeybind = 170, -- Get the button number here https://docs.fivem.net/game-references/controls/
	-- You can disable the Favorite emote keybinding here.
		FavKeybindEnabled = false,
		FavKeybind = 171, -- Get the button number here https://docs.fivem.net/game-references/controls/
	-- You can change the header image for the f3 menu here
	-- Use a 512 x 128 image!
	-- NOte this might cause an issue of the image getting stuck on peoples screens
		CustomMenuEnabled = true,
		MenuImage = "https://i.imgur.com/tzWiEzi.gif",
	-- You can change the menu position here
		MenuPosition = "right", -- (left, right)
	-- You can disable the Ragdoll keybinding here.
		RagdollEnabled = false,
		RagdollKeybind = 303, -- Get the button number here https://docs.fivem.net/game-references/controls/
	-- You can disable the Facial Expressions menu here.
		ExpressionsEnabled = true,
	-- You can disable the Walking Styles menu here.
		WalkingStylesEnabled = true,	
	-- You can disable the Shared Emotes here.
		SharedEmotesEnabled = true,
	
	}
	
	
	ConfigDPEmotes.Languages = {
	  ['en'] = {
			['emotes'] = 'Emotes',
			['danceemotes'] = "🕺 Dance Emotes",
			['propemotes'] = "📦 Prop Emotes",
			['favoriteemotes'] = "🌟 Favorite",
			['favoriteinfo'] = "Select an emote here to set it as your favorite.",
			['rfavorite'] = "Reset favorite",
			['prop2info'] = "❓ Prop Emotes can be located at the end",
			['set'] = "Set (",
			['setboundemote'] = ") to be your bound emote?",
			['newsetemote'] = "~w~ is now your bound emote, press ~g~CapsLock~w~ to use it.",
			['cancelemote'] = "Cancel Emote",
			['cancelemoteinfo'] = "~r~X~w~ Cancels the currently playing emote",
			['walkingstyles'] = "Walking Styles",
			['resetdef'] = "Reset to default",
			['normalreset'] = "Normal (Reset)",
			['moods'] = "Moods",
			['infoupdate'] = "Information",
			['infoupdateav'] = "Information (Update available)",
			['infoupdateavtext'] = "An update is available, get the latest version from ~y~https://github.com/andristum/dpemotes~w~",
			['suggestions'] = "Suggestions?",
			['suggestionsinfo'] = "'dullpear_dev' on FiveM forums for any feature/emote suggestions! ✉️",
			['notvaliddance'] = "is not a valid dance.",
			['notvalidemote'] = "is not a valid emote.",
			['nocancel'] = "No emote to cancel.",
			['maleonly'] = "This emote is male only, sorry!",
			['emotemenucmd'] = "Do /emotemenu for a menu.",
			['shareemotes'] = "👫 Shared Emotes",
			['shareemotesinfo'] = "Invite a nearby person to emote",
			['sharedanceemotes'] = "🕺 Shared Dances",
			['notvalidsharedemote'] = "is not a valid shared emote.",
			['sentrequestto'] = "Sent request to ~y~",
			['nobodyclose'] = "Nobody ~r~close~w~ enough.",
			['doyouwanna'] = "~y~Y~w~ to accept, ~r~L~w~ to refuse (~g~",
			['refuseemote'] = "Emote refused.",
			['makenearby'] = "makes the nearby player play",
			['camera'] = "Press ~y~G~w~ to use camera flash.",
			['makeitrain'] = "Press ~y~G~w~ to make it rain.",
			['pee'] = "Hold ~y~G~w~ to pee.",
			['spraychamp'] = "Hold ~y~G~w~ to spray champagne",
			['bound'] = "Bound ",
			['to'] = "to",
			['currentlyboundemotes'] = " Currently bound emotes:",
			['notvalidkey'] = "is not a valid key.",
			['keybinds'] = "🔢 Keybinds",
			['keybindsinfo'] = "Use"
	  }
	}

-----------------------------------------
-- DP Emotes End
-------------------------------------------

-----------------------------------------
-- Vehicle Spawner Start
-------------------------------------------

Config.VehicleSpawnerMenuAlign = 'bottom-right'
Config.VehicleSpawnerDrawDistance = 50

Config.VehicleSpawnerMenuMarker = {Type = 38, r = 0, g = 255, b = 0, x = 2.0, y = 2.0, z = 1.0} -- Menu Marker | Green w/Standard Size
Config.VehicleSpawnerDelMarker = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Delete Marker | Red w/Large Size
--Config.VehicleSpawnerBlipVehicleSpawner = {Sprite = 348, Color = 2, Display = 2, Scale = 1.0}

Config.VehicleSpawnerUseBlips = true -- true = Use Vehicle Spawner Blips

Config.VehicleSpawnerZones = {
	VehicleSpawner1 = { -- Los Santos Docks
		Pos = vector3(-20.14, -1823.05, 25.8), -- Enter Marker
		Loc = vector3(-24.55, -1819.89, 25.89), -- Spawn Location
		Del = vector3(-13.42, -1816.66, 25.83), -- Delete Location
		Heading = 249.43
	}
}

Config.VehicleSpawnerVehicles = {
	{
		model = 'BMX',
		label = 'BMX Bike'
	},
	{
		model = 'Scorcher',
		label = 'Mountain Bike'
	},
	{
		model = 'fixter',
		label = 'Race Bike'
	},
	{
		model = 'cruiser',
		label = 'Cruiser Bike'
	}
}


-----------------------------------------
-- Vehicle Spawner End
-------------------------------------------

-----------------------------------------
-- Drugs Start
-------------------------------------------

Config.DrugsMarkerType   = -1 -- Marker visible or not. -1 = hiden  Set to 1 for a visible marker. To have a list of avaible marker go to https://docs.fivem.net/game-references/markers/
Config.DrugsDrawDistance = 40 --Distance where the marker be visible from
Config.DrugsZoneSize     = {x = 5.0, y = 5.0, z = 3.0} -- Size of the marker
Config.DrugsMarkerColor  = {r = 0, g = 255, b = 0} --Color of the marker

Config.DrugsRequiredCopsCoke  = 0 --Ammount of cop that need to be online to be able to harvest/process/sell coke
Config.DrugsRequiredCopsMeth  = 0 --Ammount of cop that need to be online to be able to harvest/process/sell meth
Config.DrugsRequiredCopsWeed  = 0 --Ammount of cop that need to be online to be able to harvest/process/sell weed
Config.DrugsRequiredCopsOpium = 0 --Ammount of cop that need to be online to be able to harvest/process/sell opium

Config.DrugsTimeToFarmWeed     = 2  * 1000 -- Ammount of time to harvest weed
Config.DrugsTimeToProcessWeed  = 4  * 1000 -- Ammount of time to process weed
Config.DrugsTimeToSellWeed     = 2  * 1000 -- Ammount of time to sell weed
Config.DrugsWeedBag = 20000

Config.DrugsTimeToFarmOpium    = 3  * 1000 -- Ammount of time to harvest coke
Config.DrugsTimeToProcessOpium = 4  * 1000 -- Ammount of time to process coke
Config.DrugsTimeToSellOpium    = 4  * 1000 -- Ammount of time to sell coke
Config.DrugsOpiumBag = 35000

Config.DrugsTimeToFarmCoke     = 2  * 1000 -- Ammount of time to harvest coke
Config.DrugsTimeToProcessCoke  = 3  * 1000 -- Ammount of time to process coke
Config.DrugsTimeToSellCoke     = 4  * 1000 -- Ammount of time to sell coke
Config.DrugsCokeBag = 25000

Config.DrugsTimeToFarmMeth     = 2  * 1000 -- Ammount of time to harvest meth
Config.DrugsTimeToProcessMeth  = 3 * 1000 -- Ammount of time to process meth
Config.DrugsTimeToSellMeth     = 4  * 1000 -- Ammount of time to sell meth
Config.DrugsMethBag = 30000


Config.DrugsZones = {
  CokeField =            {x=1093.139,  y=-3195.673,  z=-39.131},
  CokeProcessing =    {x=1101.837,  y=-3193.732,  z=-38.993},
  CokeDealer =        {x=-77.83,    y=-1515.3,   z=34.25},

  MethField =            {x=1006.11,  y=-3200.38,  z=-37.52},
  MethProcessing =    {x=1015.08,  y=-3194.97,  z=-37.99},
  MethDealer =        {x=961.11,      y=-1585.99,   z=29.29},

   WeedField =            {x=1057.57,  y=-3197.84,  z=-39.14},
    WeedProcessing =    {x=1037.53,  y=-3205.36,  z=-38.17},
    WeedDealer =		{x=377.39, y=-828.34, z=29.3},

  OpiumField =        {x=-225.27,   y=-2655.13,   z=6.0},
  OpiumProcessing =    {x=-234.71,   y=-2651.7,   z=6.0},
  OpiumDealer =        {x= -1467.99,  y=-664.9,   z=29.58}
}

Config.DrugsDisableBlip = false -- Set to true to disable blips. False to enable them.
Config.DrugsMap = {

  
  {name="Coke Farm Entrance",    color=4, scale=0.7, id=501, x=1386.28,     y=-593.47,   z=74.49},
  {name="Coke Sales",            color=3, scale=0.7, id=501, x=-77.83,    y=-1515.3,   z=34.25},
  {name="Meth Farm Entrance",            color=3, scale=0.7, id=499, x=335.1,      y=-226.86,   z=54.22},
  {name="Meth Sales",            color=3, scale=0.7, id=499, x=961.11,      y=-1585.99,   z=29.00},
  {name="Opium Farm",            color=6, scale=0.7, id=403, x=-227.15,   y=-2659.79,   z=6.0},
  {name="Opium Sales",           color=3, scale=0.7, id=403, x= -1470.55,  y=-661.29,   z=29.58},
{name="Weed Farm Entrance",    color=2, scale=0.7, id=140, x=-255.82,   y=-1543.0,    z=31.91},
{name="Weed Sales",            color=6, scale=0.7, id=140, x=377.39, y=-828.34, z=29.3},
--  {name="Bank",            color=2, scale=1.0, id=108, x=150.26031494141,      y=-1040.1928710938,   z=29.368438720703},
 -- {name="Bank",            color=2, scale=1.0, id=108, x=-1212.9803466797,      y=-330.83212280273,   z=37.781776428223},
--  {name="Bank",            color=2, scale=1.0, id=108, x=-2962.65625,      y=482.80310058594,   z=15.703078269958},
--  {name="Bank",            color=2, scale=1.0, id=108, x=314.18411254883,      y=-278.63137817383,   z=54.165195465088},
 -- {name="Bank",            color=2, scale=1.0, id=108, x=236.45100402832,      y=217.23774719238,   z=106.28679656982},
  {name="Money Wash",            color=1, scale=0.7, id=500, x=895.16644287109,      y=-180.05230712891,   z=74.70036315918},
  {name="Studio",            color=3, scale=0.7, id=136, x=-3207.87,      y=820.69,   z=8.93},
  {name="Mc Donald's",            color=46, scale=0.7, id=78, x=275.18, y=-969.39,   z=29.3}
}


-----------------------------------------
-- Drugs End
-------------------------------------------