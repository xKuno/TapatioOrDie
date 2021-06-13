Config = {}
Config.Locale = 'en'

Config.KickPossibleCheaters = true -- If true it will kick the player that tries store a vehicle that they changed the Hash or Plate.
Config.UseCustomKickMessage = true -- If KickPossibleCheaters is true you can set a Custom Kick Message in the locales.

Config.UseDamageMult = true -- If true it costs more to store a Broken Vehicle.
Config.DamageMult = 1 -- Higher Number = Higher Repair Price.

Config.CarPoundPrice      = 300 -- Car Pound Price.
Config.BoatPoundPrice     = 1500 -- Boat Pound Price.
Config.AircraftPoundPrice = 7500 -- Aircraft Pound Price.

Config.MechanicPoundPrice  = 1 -- Mechanic Pound Price.
Config.AmbulancePoundPrice = 500 -- Ambulance Pound Price.

Config.UseCarGarages        = true -- Allows use of Car Garages.
Config.UseBoatGarages       = false -- Allows use of Boat Garages.
Config.UseAircraftGarages   = false -- Allows use of Aircraft Garages.
Config.UsePrivateCarGarages = false -- Allows use of Private Car Garages.
Config.UseJobCarGarages     = false -- Allows use of Job Garages.

Config.DontShowPoundCarsInGarage = false -- If set to true it won't show Cars at the Pound in the Garage.
Config.ShowVehicleLocation       = true -- If set to true it will show the Location of the Vehicle in the Pound/Garage in the Garage menu.
Config.UseVehicleNamesLua        = true -- Must setup a vehicle_names.lua for Custom Addon Vehicles.

Config.ShowGarageSpacer1 = true -- If true it shows Spacer 1 in the List.
Config.ShowGarageSpacer2 = false -- If true it shows Spacer 2 in the List | Don't use if spacer3 is set to true.
Config.ShowGarageSpacer3 = true -- If true it shows Spacer 3 in the List | Don't use if Spacer2 is set to true.

Config.ShowPoundSpacer2 = false -- If true it shows Spacer 2 in the List | Don't use if spacer3 is set to true.
Config.ShowPoundSpacer3 = true -- If true it shows Spacer 3 in the List | Don't use if Spacer2 is set to true.

Config.MarkerType   = 1
Config.DrawDistance = 100.0

Config.BlipGarage = {
	Sprite = 50,
	Color = 13,
	Display = 2,
	Scale = 0.8
}

Config.BlipGaragePrivate = {
--	Sprite = 290,
--	Color = 53,
--	Display = 2,
	--Scale = 1.0
}

Config.BlipPound = {
	Sprite = 68,
	Color = 64,
	Display = 2,
	Scale = 0.8
}

Config.BlipJobPound = {
	Sprite = 67,
	Color = 64,
	Display = 2,
	Scale = 0.6
}

Config.PointMarker = {
	r = 0, g = 255, b = 0,     -- Green Color
	x = 1.5, y = 1.5, z = 1.0  -- Standard Size Circle
}

Config.DeleteMarker = {
	r = 255, g = 0, b = 0,     -- Red Color
	x = 3.0, y = 3.0, z = 1.0  -- Big Size Circle
}

Config.PoundMarker = {
	r = 0, g = 0, b = 100,     -- Blue Color
	x = 1.5, y = 1.5, z = 1.0  -- Standard Size Circle
}

Config.JobPoundMarker = {
	r = 255, g = 0, b = 0,     -- Red Color
	x = 1.5, y = 1.5, z = 1.0  -- Standard Size Circle
}

-- Start of Jobs

Config.PolicePounds = {
	Pound_LosSantos = {
		PoundPoint = { x = 457.94, y = -1009.09, z = 27.6 },
		SpawnPoint = { x = 439.92, y = -1025.24, z = 28.76, h = 90.8 }
	},
}

Config.AmbulancePounds = {
	Pound_LosSantos = {
		PoundPoint = { x = 374.42, y = -1620.68, z = 28.29 },
		SpawnPoint = { x = 391.74, y = -1619.0, z = 28.29, h = 318.34 }
	},
}

Config.MechanicPounds = {
	Pound_LosSantos = {
		PoundPoint = { x = -177.65, y = -1295.32, z = 31.36 },
		SpawnPoint = { x = -163.79, y = -1303.51, z = 30.86, h = 88.98 }
	},
}

Config.BennysGarage = {
	BennyGarage = {
	GaragePoint = { x = -163.82, y = -1294.95, z = 31.19 },
	SpawnPoint = { x = -163.79, y = -1303.51, z = 30.86, h = 88.98 },
	DeletePoint = { x = -149.65, y = -1297.0, z = 31.03 }
},
}


--GANG GARAGES
Config.WooGarage = {
	WooHouse = {
		GaragePoint = { x = -1207.13, y = 266.58, z = 69.53 },
		SpawnPoint = { x = -1200.44, y = 267.53, z = 69.55, h = 277.49 },
		DeletePoint = { x = -1208.26, y = 271.82, z = 69.54 }
	},
}

Config.ViceGarage = {
	ViceHouse = {
		GaragePoint = { x = -2599.68, y = 1929.72, z = 167.31 },
		SpawnPoint = { x = -2587.49, y = 1931.05, z = 167.3, h = 252.03 },
		DeletePoint = { x = -2592.78, y = 1929.6, z = 167.3 }
	},
}

Config.MonkeyGarage = {
	MonkeyHouse = {
		GaragePoint = { x = 1415.74, y = 1118.7, z = 114.84 },
		SpawnPoint = { x = 1396.85, y = 1118.17, z = 114.84, h = 92.09 },
		DeletePoint = { x = 1402.5, y = 1116.38, z = 114.84 }
	},
}

Config.PnvGarage = {
	PnvHouse = {
		GaragePoint = { x = -1492.35, y = 414.69, z = 111.11 },
		SpawnPoint = { x = -1503.83, y = 425.42, z = 111.11, h = 36.34 },
		DeletePoint = { x = -1501.25, y = 426.46, z = 111.11 }
	},
}



-- End of Jobs
-- Start of Cars

Config.CarGarages = {
	Garage_NorthLS = {
		GaragePoint = { x = -340.92, y = 266.93, z = 84.70 },
		SpawnPoint = { x = -335.07, y = 283.37, z = 85.36, h = 176.9 },
		DeletePoint = { x = -334.93, y = 280.15, z = 85.05 }
	},
	Garage_MidLS = {
		GaragePoint = { x = 229.62, y = -800.2, z = 29.6 },
		SpawnPoint = { x = 229.700, y= -800.1149, z= 30.5722, h = 160.0 },
		DeletePoint = { x = 223.84, y = -762.99, z = 29.82 }
	},
	Garage_SouthLS = {
		GaragePoint = { x = -66.37, y = -1818.68, z = 26.01 },
		SpawnPoint = { x = -54.24, y = -1834.92, z = 25.59, h = 313.94 },
		DeletePoint = { x = -62.22, y = -1840.18, z = 25.88 }
	},
	Garage_WestLS = {
		GaragePoint = { x = -1603.62, y = -831.52, z = 9.27 },
		SpawnPoint = { x = -1639.48, y = -815.35, z = 9.17, h = 138.57 },
		DeletePoint = { x = -1617.63, y = -814.24, z = 9.27 }
	},
	Garage_MP = {
		GaragePoint = { x = 1036.13, y = -763.41, z = 57.01 },
		SpawnPoint = { x = 1046.8, y = -774.33, z = 57.58, h = 92.46 },
		DeletePoint = { x = 1042.02, y = -791.72, z = 57.01 }
	},
	Garage_Lower = {
		GaragePoint = { x = 442.89, y = -1969.45, z = 23.42 },
		SpawnPoint = { x = 454.04, y = -1965.08, z = 22.55, h = 180.74 },
		DeletePoint = { x = 458.2, y = -1970.42, z = 22.57 }
	},
	Garage_Vineyard = {
		GaragePoint = { x = -1928.77, y = 2059.52, z = 139.86 },
		SpawnPoint = { x = -1918.84, y = 2057.09, z = 139.32, h = 257.42 },
		DeletePoint = { x =-1903.08, y = 2056.47, z = 139.80 }
	},
	Garage_Integrity = {
		GaragePoint = { x = 275.85, y = -344.84, z = 44.20 },
		SpawnPoint = { x = 275.21, y = -325.77, z = 44.92, h = 163.82 },
		DeletePoint = { x = 293.16, y = -332.49, z = 43.97 }
	},
	BennyGarage = {
		GaragePoint = { x = -163.82, y = -1294.95, z = 31.19 },
		SpawnPoint = { x = -163.79, y = -1303.51, z = 30.86, h = 88.98 },
		DeletePoint = { x = -149.65, y = -1297.0, z = 31.03 }
	},
	PoliceGarage = {
		GaragePoint = { x = 441.77, y = -1014.73, z = 27.65 },
		SpawnPoint = { x = 438.07, y = -1021.64, z = 28.66, h = 90.0 },
		DeletePoint = { x = 446.34, y = -1025.8, z = 27.64 }
	},
	Garage_Prison = {
		GaragePoint = { x = 1840.99, y = 2545.85, z = 44.72 },
		SpawnPoint = { x = 1864.31, y = 2550.24, z = 45.67, h = 354.15 },
		DeletePoint = { x = 1841.7, y = 2534.39, z = 44.90 }
	}
}

Config.CarPounds = {
	Pound_LosSantos = {
		PoundPoint = { x = 408.61, y = -1625.47, z = 28.39 },
		SpawnPoint = { x = 405.64, y = -1643.4, z = 27.61, h = 229.54 }
	},
	Pound_Grove = {
		PoundPoint = { x = -76.96, y = -1830.54, z = 25.98 },
		SpawnPoint = { x = -54.81, y = -1847.4, z = 25.94, h = 319.95 }
	},
	Pound_PillBox = {
		PoundPoint = { x = 213.92, y = -809.21, z = 31.01 },
		SpawnPoint = { x = 229.700, y= -800.1149, z= 30.5722, h = 160.0 }
	},
	Pound_MP = {
		PoundPoint = { x = 1034.36, y = -767.28, z = 57.02 },
		SpawnPoint = { x = 1029.58, y = -763.97, z = 56.57, h = 55.71 }
	},
	Pound_Lower = {
		PoundPoint = { x = 428.45, y = -1964.63, z = 22.36 },
		SpawnPoint = { x = 449.46, y = -1960.65, z = 23.56, h = 177.94 }
	},
	Pound_Beach = {
		PoundPoint = { x = -1585.1, y = -838.55, z = 8.98 },
		SpawnPoint = { x = -1602.9, y = -817.75, z = 8.57, h = 141.01 }
	},

	Pound_Bennys = {
	PoundPoint = { x = -177.65, y = -1295.32, z = 31.36 },
	SpawnPoint = { x = -163.79, y = -1303.51, z = 30.86, h = 88.98 }
},

	Pound_North = {
		PoundPoint = { x = -341.53, y = 270.92, z = 84.58 },
		SpawnPoint = { x = -344.99, y = 298.22, z = 84.76, h = 181.55 }
	},
	Pound_Police = {
		PoundPoint = { x = 457.59, y = -1010.36, z = 27.31 },
		SpawnPoint = { x = 431.16, y = -1027.13, z = 28.92, h = 357.37 }
	},
	Pound_Vatos = {
		PoundPoint = { x = -1925.55, y = 2048.02, z = 140.83 },
		SpawnPoint = { x = -1916.76, y = 2055.95, z = 140.74, h = 261.81 }
	},
	Pound_Integrity = {
		PoundPoint = { x = 276.47, y = -342.24, z = 43.97 },
		SpawnPoint = { x = 275.21, y = -325.77, z = 44.92, h = 163.82 }
	},
}

-- End of Cars
-- Start of Boats

Config.BoatGarages = {
	Garage_LSDock = {
		GaragePoint = { x = -776.73, y = -1486.33, z = 2.13 },
		SpawnPoint = { x = -799.54, y = -1503.07, z = 0.0, h = 109.84 },
		DeletePoint = { x = -799.54, y = -1503.07, z = 0.0 }
	},
	Garage_SandyDock = {
		GaragePoint = { x = 1333.2, y = 4269.92, z = 30.5 },
		SpawnPoint = { x = 1334.61, y = 4264.68, z = 29.86, h = 87.0 },
		DeletePoint = { x = 1323.73, y = 4269.94, z = 29.86 }
	},
	Garage_PaletoDock = {
		GaragePoint = { x = -283.74, y = 6629.51, z = 6.3 },
		SpawnPoint = { x = -290.46, y = 6622.72, z = -0.47477427124977, h = 52.0 },
		DeletePoint = { x = -304.66, y = 6607.36, z = -0.47477427124977 }
	}
}

Config.BoatPounds = {
	Pound_LSDock = {
		PoundPoint = { x = -738.67, y = -1400.43, z = 4.0 },
		SpawnPoint = { x = -738.33, y = -1381.51, z = 0.12, h = 137.85 }
	},
	Pound_SandyDock = {
		PoundPoint = { x = 1299.36, y = 4217.93, z = 32.91 },
		SpawnPoint = { x = 1294.35, y = 4226.31, z = 29.86, h = 345.0 }
	},
	Pound_PaletoDock = {
		PoundPoint = { x = -270.2, y = 6642.43, z = 6.36 },
		SpawnPoint = { x = -290.38, y = 6638.54, z = -0.47477427124977, h = 130.0 }
	}
}

-- End of Boats
-- Start of Aircrafts

Config.AircraftGarages = {
	Garage_LSAirport = {
		GaragePoint = { x = -1617.14, y = -3145.52, z = 12.99 },
		SpawnPoint = { x = -1657.99, y = -3134.38, z = 12.99, h = 330.11 },
		DeletePoint = { x = -1642.12, y = -3144.25, z = 12.99 }
	},
	Garage_SandyAirport = {
		GaragePoint = { x = 1723.84, y = 3288.29, z = 40.16 },
		SpawnPoint = { x = 1710.85, y = 3259.06, z = 40.69, h = 104.66 },
		DeletePoint = { x = 1714.45, y = 3246.75, z = 40.07 }
	},
	Garage_GrapeseedAirport = {
		GaragePoint = { x = 2152.83, y = 4797.03, z = 40.19 },
		SpawnPoint = { x = 2122.72, y = 4804.85, z = 40.78, h = 115.04 },
		DeletePoint = { x = 2082.36, y = 4806.06, z = 40.07 }
	}
}

Config.AircraftPounds = {
	Pound_LSAirport = {
		PoundPoint = { x = -1243.0, y = -3391.92, z = 12.94 },
		SpawnPoint = { x = -1272.27, y = -3382.46, z = 12.94, h = 330.25 }
	}
}

-- End of Aircrafts
-- Start of Private Garages

Config.PrivateCarGarages = {
	-- GANG GARAGES

	Garage_WOO = {
		Private = "WOO_HOUSE",
		GaragePoint = { x = -1492.35, y = 414.69, z = 111.11 },
		SpawnPoint = { x = -1503.83, y = 425.42, z = 111.11, h = 36.34 },
		DeletePoint = { x = -353.47, y = 6334.57, z = 28.83 }
	}
	-- End of VENT Custom Garages
}

-- End of Private Garages
