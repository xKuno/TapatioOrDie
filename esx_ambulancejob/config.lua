Config                            = {}

Config.DrawDistance               = 20.0 -- How close do you need to be in order for the markers to be drawn (in GTA units).

Config.Marker                     = {type = 27, x = 1.5, y = 1.5, z = 0.5, r = 255, g = 0, b = 0, a = 100, rotate = false}

Config.ReviveReward               = 20000  -- Revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)
Config.LoadIpl                    = false -- Disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 60 * second  -- Time til respawn is available
Config.BleedoutTimer              = 5 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 10000

Config.RespawnPoint = {coords = vector3(-11.77, -1829.56,25.4), heading = 141.81}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(294.95, -588.38, 43.26),
			sprite = 61,
			scale  = 0.9,
			color  = 2
		},

		AmbulanceActions = {
			vector3(308.88, -602.17, 43.28)
		},

		Pharmacies = {
			vector3(311.75, -562.36, 43.28)
		},

		Vehicles = {
			{
				Spawner = vector3(1, 1, 1),
				InsideShop = vector3(291.36, -587.44, 43.2),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 255, g = 0, b = 0, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(291.36, -587.44, 43.2), heading = 334.6, radius = 4.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(345.6, -579.67, 74.17),
				InsideShop = vector3(352.14, -588.79, 74.26),
				Marker = {type = 34, x = 1.5, y = 1.5, z = 1.5, r = 255, g = 0, b = 0, a = 100, rotate = true},
				SpawnPoints = {
					{coords = vector3(352.14, -588.79, 74.26), heading = 89.99, radius = 10.0}
				}
			}
		},

		FastTravels = {

		},

		FastTravelsPrompt = {
			{
				From = vector3(327.59, -602.33, 42.28),
				To = { coords = vector3(342.26, -585.13, 74.17), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('helicopter')
			},

			{
			From = vector3(343.64, -581.18, 73.17),
			To = { coords = vector3(327.59, -602.33, 42.28), heading = 0.0 },
			Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
			Prompt = _U('backtohospital')
			}
		}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Ambulance', price = 1},
		{ model = 'dodgeEMS', label = 'Dodge EMS', price = 1}
	},

	doctor = {
		{ model = 'ambulance', label = 'Ambulance', price = 1},
		{ model = 'dodgeEMS', label = 'Dodge EMS', price = 1}
	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Ambulance', price = 1},
		{ model = 'AMR_EXPLORER', label = 'EMS Explorer', price = 1},
		{ model = 'AMR_TAHOE', label = 'EMS Tahoe', price = 1},
		{ model = 'dodgeEMS', label = 'Dodge EMS', price = 1}
	},

	boss = {
		{ model = 'ambulance', label = 'Ambulance', price = 1},
		{ model = 'AMR_EXPLORER', label = 'EMS Explorer', price = 1},
		{ model = 'AMR_TAHOE', label = 'EMS Tahoe', price = 1},
		{ model = 'dodgeEMS', label = 'Dodge EMS', price = 1}
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'polmav', label = 'Maverick', price = 1 }
	},

	chief_doctor = {
		{ model = 'polmav', label = 'Maverick', price = 1 }
	},

	boss = {
		{ model = 'polmav', label = 'Maverick', price = 1},
		{ model = 'seasparrow', label = 'Sea Sparrow', price = 1 }
	}

}

--- Hospital bed

ConfigHospitalBed = {
    Price = 30000,
    ReviveTime = 30, -- seconds until you are revived
    Hospitals = {
        {
            Bed = {coords = vector3(337.06, -575.08, 44.19), heading = 154.0, occupied = false},
            Peds = {

                pedHash = -730659924,

                reception = {coords = vector3(311.60, -593.99, 42.30), heading = 340.0},

                doctor = {coords = vector3(337.75, -575.33, 42.28), heading = 69.22},
            },
        },
    },
}

Strings = {
    ['get_help'] = [[Press %s to get help for ~g~$%s]],
    ['not_enough'] = [[You don't have enough money!]],
    ['getting_help'] = [[You are getting help, %s seconds left!]],
    ['occupied'] = [[The bed is occupied! Come back later]]
}