Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }


--TACKLE SCRIPT
Config.TackleDistance				= 3.0
Config.ArrestDistance				= 3.0 
--

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableLicenses             = false -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.9,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(451.7, -980.1, 30.6)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(439.23, -1026.38, 28.78),
				SpawnPoints = {
					{ coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0 },
					{ coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0 },
					{ coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0 },
					{ coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0 }
				}
			},

			{
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
					{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, 30.6)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		{weapon = 'WEAPON_APPISTOL',  price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	officer = {
		{weapon = 'WEAPON_APPISTOL',  price = 0},
		{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 0 },
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	corporal = {
		{weapon = 'WEAPON_APPISTOL',  price = 0},
		{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 0 },
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 0, 0, 0, nil}, price = 0},
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	sergeant = {
		{weapon = 'WEAPON_APPISTOL',  price = 0},
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 6000, 1000, 4000, 8000, nil}, price = 0},
		{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 0 },
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0}
	},

	lieutenant = {
		{weapon = 'WEAPON_APPISTOL',  price = 0},
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 1000, 4000, 8000, nil}, price = 0},
		{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 0 },
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
		{weapon = 'WEAPON_SMOKEGRENADE', price = 0}
	},

	assistant_chief = {
		{weapon = 'WEAPON_APPISTOL',  price = 0},
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 0, 0, 0, nil}, price = 0},
		{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 0 },
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
		{weapon = 'WEAPON_ASSAULTSHOTGUN', price = 0},
		{weapon = 'WEAPON_SMOKEGRENADE', price = 0}
	},

	boss = {
		{weapon = 'WEAPON_APPISTOL',  price = 0},
		{weapon = 'WEAPON_CARBINERIFLE', components = {0, 0, 0, 0, 0, nil}, price = 0},
		{ weapon = 'WEAPON_PUMPSHOTGUN',      price = 0 },
		{weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
		{weapon = 'WEAPON_ASSAULTSHOTGUN', price = 0},
		{weapon = 'WEAPON_HEAVYSNIPER', price = 0},
		{weapon = 'WEAPON_SMOKEGRENADE', price = 0}
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'valorcvpi', label = 'Crown Vic', price = 1 }
	},

	recruit = {

	},

	officer = {
			{ model = 'valorcap',label = 'Caprice', price = 1 },
		{ model = 'valorcharg',label = '2018 Charger', price = 1 }
	},

	corporal = {
		{ model = 'valorcap', label = 'Police porsche', price = 1 },
	{ model = 'valorcharg',label = '2018 Charger', price = 1 },
	{ model = 'valorfpis', label = 'FPIS', price = 1 }
},

	sergeant = {
			{ model = 'valorcap', label = 'Caprice', price = 1 },
		{ model = 'valorfpis',label = 'FPIS', price = 1 },
		{ model = 'valorcharg',label = '2018 Charger', price = 1 },
		{ model = 'valorfpiu',label = 'FPIU', price = 1 }
	},


	lieutenant = {
			{ model = 'valorcap', label = 'Police porsche', price = 1 },
		{ model = 'valorfpis',label = 'FPIS', price = 1 },
		{ model = 'valorcharg',label = '2018 Charger', price = 1 },
		{ model = 'valorfpiu',label = 'FPIU', price = 1 },
		{ model = 'valorram',label = 'RAM', price = 1 },
		{ model = 'riot', label = 'SWAT VAN', price = 1 }
	},

	assistant_chief = {
		{ model = 'valorcap', label = 'Police porsche', price = 1 },
	{ model = 'valorfpis',label = 'FPIS', price = 1 },
	{ model = 'valorcharg',label = '2018 Charger', price = 1 },
	{ model = 'valorfpiu',label = 'FPIU', price = 1 },
	{ model = 'valorram',label = 'RAM', price = 1 },
	{ model = 'valorf250',label = 'F250', price = 1 },
	{ model = 'nm_amggtr',label = 'AMG GTR', price = 1 },
	{ model = 'swathummer',label = 'Swat Hummer', price = 1 },
	{ model = 'riot', label = 'SWAT VAN', price = 1 }
},

	boss = {
			{ model = 'riot', label = 'SWAT VAN', price = 1 },
		{ model = 'valortahoe', label = 'Tahoe', price = 1 },
		{ model = 'valortahoe2', label = 'Tahoe2', price = 1 },
		{ model = 'valorcap', label = 'Caprice', price = 1 },
		{ model = 'valorfpis',label = 'FPIS', price = 1 },
		{ model = 'valorcharg',label = '2018 Charger', price = 1 },
		{ model = 'valorfpiu',label = 'FPIU', price = 1 },
		{ model = 'valorram',label = 'RAM', price = 1 },
		{ model = 'nm_amggtr',label = 'AMG GTR', price = 1 },
		{ model = 'swathummer',label = 'Swat Hummer', price = 1 },
		{ model = 'valorf250',label = 'F250', price = 1 }

	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }
	},


	lieutenant = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }
	},

	boss = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 102,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 38,
			['pants_1'] = 53,   ['pants_2'] = 1,
			['shoes_1'] = 26,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['mask_1'] = 0,
			['bproof_1'] = 2, ['bproof_2'] = 0, 
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['mask_1'] = 0,
			['bproof_1'] = 7, ['bproof_2'] = 0, 
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 102,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 38,
			['pants_1'] = 53,   ['pants_2'] = 1,
			['shoes_1'] = 26,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['mask_1'] = 0,
			['bproof_1'] = 2, ['bproof_2'] = 0, 
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['mask_1'] = 0,
			['bproof_1'] = 7, ['bproof_2'] = 0, 
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 102,   ['torso_2'] = 0,
			['decals_1'] = 16,   ['decals_2'] = 0,
			['arms'] = 38,
			['pants_1'] = 53,   ['pants_2'] = 1,
			['shoes_1'] = 26,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['mask_1'] = 0,
			['bproof_1'] = 2, ['bproof_2'] = 0, 
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['bproof_1'] = 7, ['bproof_2'] = 0, 
			['mask_1'] = 0,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 102,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 53,   ['pants_2'] = 1,
			['shoes_1'] = 26,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['mask_1'] = 0,
			['bproof_1'] = 2, ['bproof_2'] = 0, 
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['mask_1'] = 0,
			['bproof_1'] = 7, ['bproof_2'] = 0, 
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
	male = {
		['tshirt_1'] = 15,  ['tshirt_2'] = 0,
		['torso_1'] = 102,   ['torso_2'] = 1,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 38,
		['pants_1'] = 53,   ['pants_2'] = 1,
		['shoes_1'] = 26,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['mask_1'] = 0,
		['bproof_1'] = 2, ['bproof_2'] = 0, 
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 35,  ['tshirt_2'] = 0,
		['torso_1'] = 48,   ['torso_2'] = 0,
		['decals_1'] = 7,   ['decals_2'] = 2,
		['arms'] = 44,
		['mask_1'] = 0,
		['bproof_1'] = 7, ['bproof_2'] = 0, 
		['pants_1'] = 34,   ['pants_2'] = 0,
		['shoes_1'] = 27,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 102,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 42,
			['pants_1'] = 26,   ['pants_2'] = 1,
			['shoes_1'] = 15,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['mask_1'] = 0,
			['bproof_1'] = 7, ['bproof_2'] = 0, 
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['mask_1'] = 0,
			['bproof_1'] = 7, ['bproof_2'] = 0, 
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
	male = {
		['tshirt_1'] = 15,  ['tshirt_2'] = 0,
		['torso_1'] = 2,   ['torso_2'] = 3,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 42,
		['pants_1'] = 26,   ['pants_2'] = 1,
		['shoes_1'] = 15,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['mask_1'] = 0,
		['bproof_1'] = 7, ['bproof_2'] = 0, 
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 35,  ['tshirt_2'] = 0,
		['torso_1'] = 48,   ['torso_2'] = 0,
		['decals_1'] = 7,   ['decals_2'] = 3,
		['arms'] = 44,
		['mask_1'] = 0,
		['bproof_1'] = 7, ['bproof_2'] = 0, 
		['pants_1'] = 34,   ['pants_2'] = 0,
		['shoes_1'] = 27,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 10,  ['bproof_2'] = 9
		},
		female = {
			['bproof_1'] = 7,  ['bproof_2'] = 9
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}