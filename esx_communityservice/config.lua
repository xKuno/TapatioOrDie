--[[
==================  Script Created By : apoiat  ==================
~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=
==================    Protected By : mø#3765    ==================
~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=~=
]]--

Config = {}

-- # Locale to be used. You can create your own by simple copying the 'en' and translating the values.
Config.Locale       				= 'en' -- Traduções disponives en / br

-- # By how many services a player's community service gets extended if he tries to escape
Config.ServiceExtensionOnEscape		= 10

-- # Don't change this unless you know what you are doing.
Config.ServiceLocation 				= {x =  3060.2, y = -4695.22, z = 15.26}

-- # Don't change this unless you know what you are doing.
Config.ReleaseLocation				= {x = 427.33, y = -979.51, z = 30.2}


-- # Don't change this unless you know what you are doing.
Config.ServiceLocations = {
	{ type = "cleaning", coords = vector3(3052.92, -4709.86, 303.92) },
	{ type = "cleaning", coords = vector3(3052.21, -4722.07, 349.58) },
	{ type = "cleaning", coords = vector3(3042.72, -4706.74, 15.26) },
	{ type = "cleaning", coords = vector3(3050.48, -4695.86, 15.26) },
	{ type = "cleaning", coords = vector3(3039.41, -4718.05, 15.26) },
	{ type = "cleaning", coords = vector3(3044.72, -4731.19, 15.26) },
	{ type = "cleaning", coords = vector3(3073.29, -4726.68, 274.7) },
	{ type = "cleaning", coords = vector3(3058.88, -4694.74, 15.26) },
	{ type = "cleaning", coords = vector3(3050.36, -4680.16, 15.26) },
	{ type = "cleaning", coords = vector3(3052.92, -4709.86, 303.92) },
	{ type = "cleaning", coords = vector3(3052.21, -4722.07, 349.58) },
	{ type = "cleaning", coords = vector3(3042.72, -4706.74, 15.26) },
	{ type = "cleaning", coords = vector3(3050.48, -4695.86, 15.26) },
	{ type = "cleaning", coords = vector3(3039.41, -4718.05, 15.26) },
	{ type = "cleaning", coords = vector3(3044.72, -4731.19, 15.26) },
	{ type = "cleaning", coords = vector3(3073.29, -4726.68, 274.7) },
	{ type = "cleaning", coords = vector3(3058.88, -4694.74, 15.26) },
	{ type = "cleaning", coords = vector3(3050.36, -4680.16, 15.26) },
	{ type = "cleaning", coords = vector3(3052.92, -4709.86, 303.92) },
	{ type = "cleaning", coords = vector3(3052.21, -4722.07, 349.58) },
	{ type = "cleaning", coords = vector3(3042.72, -4706.74, 15.26) },
	{ type = "cleaning", coords = vector3(3050.48, -4695.86, 15.26) },
	{ type = "cleaning", coords = vector3(3039.41, -4718.05, 15.26) },
	{ type = "cleaning", coords = vector3(3044.72, -4731.19, 15.26) },
	{ type = "cleaning", coords = vector3(3073.29, -4726.68, 274.7) },
	{ type = "cleaning", coords = vector3(3058.88, -4694.74, 15.26) },
	{ type = "cleaning", coords = vector3(3050.36, -4680.16, 15.26) },
	{ type = "cleaning", coords = vector3(3052.92, -4709.86, 303.92) },
	{ type = "cleaning", coords = vector3(3052.21, -4722.07, 349.58) },
	{ type = "cleaning", coords = vector3(3042.72, -4706.74, 15.26) },
	{ type = "cleaning", coords = vector3(3050.48, -4695.86, 15.26) },
	{ type = "cleaning", coords = vector3(3039.41, -4718.05, 15.26) },
	{ type = "cleaning", coords = vector3(3044.72, -4731.19, 15.26) },
	{ type = "cleaning", coords = vector3(3073.29, -4726.68, 274.7) },
	{ type = "cleaning", coords = vector3(3058.88, -4694.74, 15.26) },
	{ type = "cleaning", coords = vector3(3050.36, -4680.16, 15.26) },
}



Config.Uniforms = {
	prison_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1']  = 0, ['torso_2']  = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms']     = 119, ['pants_1']  = 3,
			['pants_2']  = 7,   ['shoes_1']  = 12,
			['shoes_2']  = 12,  ['chain_1']  = 0,
			['chain_2']  = 0
		},
		female = {
			['tshirt_1'] = 3,   ['tshirt_2'] = 0,
			['torso_1']  = 38,  ['torso_2']  = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms']     = 120,  ['pants_1'] = 3,
			['pants_2']  = 15,  ['shoes_1']  = 66,
			['shoes_2']  = 5,   ['chain_1']  = 0,
			['chain_2']  = 0
		}
	}
}
