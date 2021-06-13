Config = {}
Config.Locale = 'en'
Config.NumberOfCopsRequired = 3

--Updated to choose between cash or black money
Config.moneyType = 'black' -- 'cash' or 'black'

Banks = {
	["fleeca"] = {
		position = { ['x'] = 148.91908752441, ['y'] = -1050.7448242188, ['z'] = 29.36802482605 }, -- position of robbery, when you have tu use the item "blowtorch"
		hackposition = { ['x'] = 147.04908752441, ['y'] = -1044.9448242188, ['z'] = 29.36802482605 }, -- position where you have to do hack with the minigame to open a door
		--hackteleport = { ['x'] = 148.79908752441, ['y'] = -1045.5748242188, ['z'] = 29.36802482605 }, -- ignore this
		reward = math.random(1000000,1500000), -- the random range of amount of money you will get for robbery this site
		nameofbank = "Fleeca Bank", --Visual Name that will be the site
		lastrobbed = 0, -- DONT TOUCH THIS variable used to make a delay to robb other time
		doortype = 'V_ILEV_GB_VAULDR' -- Name or ID of the gameobject that will be rotate to make the open efect, you can check what id or name you need here: https://objects.gt-mp.net/ if you dont find it, contact with you developer, he will know how to get it in game
	},
	["fleeca2"] = {
		position = { ['x'] = 1171.77, ['y'] = 2716.44, ['z'] = 38.07 }, --2957.6674804688
		hackposition = { ['x'] = 1176.4, ['y'] = 2712.01, ['z'] = 38.1 },
		
		reward = math.random(1000000,1500000),
		nameofbank = "Fleeca Bank (Highway)",
		lastrobbed = 0,
		doortype = 'v_ilev_gb_vauldr'
	},
	--[[["blainecounty"] = {
		position = { ['x'] = -107.06505584717, ['y'] = 6474.8012695313, ['z'] = 31.62670135498 },
		hackposition = { ['x'] = -107.06505584717, ['y'] = 6474.8012695313, ['z'] = 31.62670135498 },
		reward = math.random(250000,300000),
		nameofbank = "Blaine County Savings",
		lastrobbed = 0
	}, --]]
	
	["PrincipalBank"] = {
		position = { ['x'] = 264.99899291992, ['y'] = 213.50576782227, ['z'] = 101.68346405029 },
		hackposition = { ['x'] = 261.49499291992, ['y'] = 223.06776782227, ['z'] = 106.28346405029 },
        bombposition = { ['x'] = 254.12199291992, ['y'] = 225.50576782227, ['z'] = 101.87346405029 }, -- if this var is set will appear a site to plant a bomb which will open the door defined at var "bombdoortype"
		reward = math.random(2500000,3000000),
		nameofbank = "Principal bank",
		lastrobbed = 0,
        bombdoortype = 'v_ilev_bk_vaultdoor', -- If this var is set you will need set the var "bombposition" to work properly , you can find the name or id here: https://objects.gt-mp.net/  if you dont find it, contact with your devs
        doortype = 'hei_v_ilev_bk_gate2_pris'
    },

}

