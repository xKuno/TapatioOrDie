Config = {}
Config.Locale = 'en'

Config.DrawDistance = 100.0
Config.MarkerColor  = { r = 255, g = 120, b = 240 }

Config.EnableOwnedVehicles = true -- If true then it will set the Vehicle Owner to the Player who bought it.
Config.ResellPercentage    = 0 -- Sets the Resell Percentage | Example: $100 Car will resell for $75
Config.LicenseEnable       = false -- Require people to own a Commercial License when buying vehicles? Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 4
Config.PlateUseSpace = true

Config.Zones = {
	ShopEntering = {
		Pos   = { x = 1208.2, y = -3114.96, z = 4.54 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1
	},

	ShopInside = {
		Pos     = { x = 1204.29, y = -3116.62, z = 5.54 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 6.68,
		Type    = -1
	},

	ShopOutside = {
		Pos     = { x = 1204.61, y = -3103.11, z = 5.84 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 359.72,
		Type    = -1
--	},
--	ResellVehicle = {
--		Pos   = { x = -44.630, y = -1080.738, z = -25.683 },
--		Size  = { x = 3.0, y = 3.0, z = 1.0 },
	--	Type  = 1
	}
}
