Config = {}
Config.Locale = 'en'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	{
		textCoords = vector3(434.7, -982.0, 31.5),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 2.5,
		doors = {
			{objHash = GetHashKey('v_ilev_ph_door01'), objHeading = 270.0, objCoords = vector3(434.7, -980.6, 30.8)},
			{objHash = GetHashKey('v_ilev_ph_door002'), objHeading = 270.0, objCoords = vector3(434.7, -983.2, 30.8)}
		}
	},
	
	-- Side Doors
	{
		textCoords = vector3(445.9, -998.95, 30.72),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 2.5,
		doors = {
			{objHash = GetHashKey('v_ilev_gtdoor'), objHeading = 3.00, objCoords = vector3(445.31,-998.85, 30.72)},
			{objHash = GetHashKey('v_ilev_gtdoor'), objHeading = 182.36, objCoords = vector3(446.38, -998.84, 30.72)}
		}
	},

	-- To locker room & roof
	{
		objHash = GetHashKey('v_ilev_ph_gendoor004'),
		objHeading = 90.0,
		objCoords = vector3(449.6, -986.4, 30.6),
		textCoords = vector3(450.1, -986.3, 31.7),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

			-- Entrance Gate (Mission Row mod) https://www.gta5-mods.com/maps/mission-row-pd-ymap-fivem-v1
			{
				objHash = GetHashKey('prop_gate_airport_01'),
				objCoords  = vector3(415.85, -1025.083, 28.15233),
				textCoords = vector3(416.27, -1021.76, 31.0),
				authorizedJobs = { 'police', 'offpolice' },
				locked = true,
				maxDistance = 20
			},

				-- Benny's Gate
				{
					objHash = GetHashKey('hei_prop_station_gate'),
					objHeading = 90.499984741211,
					objCoords  = vector3(-244.0589, -1302.753, 30.30171),
					textCoords = vector3(-243.36, -1305.38, 31.7),
					authorizedJobs = { 'mechanic' },
					locked = true,
					maxDistance = 13
				},
	-- Rooftop
	{
		objHash = GetHashKey('v_ilev_gtdoor02'),
		objHeading = 90.0,
		objCoords = vector3(464.3, -984.6, 43.8),
		textCoords = vector3(464.3, -984.0, 44.8),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- Bank Door
	{
		objHash = GetHashKey('hei_v_ilev_bk_gate2_pris'),
		objHeading = 250.0,
		objCoords = vector3(261.88, 221.9, 106.28),
		textCoords = vector3(261.88, 221.9, 106.28),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- Hallway to roof
	{
		objHash = GetHashKey('v_ilev_arm_secdoor'),
		objHeading = 90.0,
		objCoords = vector3(461.2, -985.3, 30.8),
		textCoords = vector3(461.5, -986.0, 31.5),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- Armory
	{
		objHash = GetHashKey('v_ilev_arm_secdoor'),
		objHeading = 270.0,
		objCoords = vector3(452.6, -982.7, 30.6),
		textCoords = vector3(453.0, -982.6, 31.7),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- Captain Office
	{
		objHash = GetHashKey('v_ilev_ph_gendoor002'),
		objHeading = 180.0,
		objCoords = vector3(447.2, -980.6, 30.6),
		textCoords = vector3(447.2, -980.0, 31.7),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- To downstairs (double doors)
	{
		textCoords = vector3(444.6, -989.4, 31.7),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 4,
		doors = {
			{objHash = GetHashKey('v_ilev_ph_gendoor005'), objHeading = 180.0, objCoords = vector3(443.9, -989.0, 30.6)},
			{objHash = GetHashKey('v_ilev_ph_gendoor005'), objHeading = 0.0, objCoords = vector3(445.3, -988.7, 30.6)}
		}
	},

	--
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objHash = GetHashKey('v_ilev_ph_cellgate'),
		objHeading = 0.0,
		objCoords = vector3(463.8, -992.6, 24.9),
		textCoords = vector3(463.3, -992.6, 25.1),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- Cell 1
	{
		objHash = GetHashKey('v_ilev_ph_cellgate'),
		objHeading = 270.0,
		objCoords = vector3(462.3, -993.6, 24.9),
		textCoords = vector3(461.8, -993.3, 25.0),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- Cell 2
	{
		objHash = GetHashKey('v_ilev_ph_cellgate'),
		objHeading = 90.0,
		objCoords = vector3(462.3, -998.1, 24.9),
		textCoords = vector3(461.8, -998.8, 25.0),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- Cell 3
	{
		objHash = GetHashKey('v_ilev_ph_cellgate'),
		objHeading = 90.0,
		objCoords = vector3(462.7, -1001.9, 24.9),
		textCoords = vector3(461.8, -1002.4, 25.0),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- To Back
	{
		objHash = GetHashKey('v_ilev_gtdoor'),
		objHeading = 0.0,
		objCoords = vector3(463.4, -1003.5, 25.0),
		textCoords = vector3(464.0, -1003.5, 25.5),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.25
	},

	-- door cell 1
	{
		objHash = GetHashKey('v_ilev_gtdoor'),
		objHeading = 0.0,
		objCoords = vector3(467.93, -996.71, 24.91),
		textCoords = vector3(467.93, -996.71, 24.91),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.75
	},

	-- door cell 2
	{
		objHash = GetHashKey('v_ilev_gtdoor'),
		objHeading = 0.0,
		objCoords = vector3(472.21, -996.64, 24.91),
		textCoords = vector3(472.21, -996.64, 24.91),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.75
	},

	-- door cell 3
	{
		objHash = GetHashKey('v_ilev_gtdoor'),
		objHeading = 0.0,
		objCoords = vector3(476.43, -996.6, 24.91),
		textCoords = vector3(476.43, -996.6, 24.91),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.75
	},

	-- door cell 4
	{
		objHash = GetHashKey('v_ilev_gtdoor'),
		objHeading = 0.0,
		objCoords = vector3(480.83, -996.52, 24.91),
		textCoords = vector3(480.83, -996.52, 24.91),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 1.75
	},

	--
	-- Mission Row Back
	{
		objHash = GetHashKey('xm_cellgate'),
		objCoords = vector3(1785.808,2590.02,44.7970),
		textCoords = vector3(1786.61,2590.15,45.8),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 2,
		size = 2
	},
	{
		objHash = GetHashKey('xm_cellgate'),
		objCoords = vector3(1773.652,2572.043,44.78817),
		textCoords = vector3(1773.09,2572.36,45.8),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 2,
		size = 2
	},
	{
		objHash = GetHashKey('xm_cellgate'),
		objCoords = vector3(1785.816,2572.015,44.78817),
		textCoords = vector3(1785.21,2572.66,44.78817),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 2,
		size = 2
	},
	{
		objHash = GetHashKey('xm_cellgate'),
		objCoords = vector3(1768.386,2569.318,44.79615),
		textCoords = vector3(1768.386,2569.318,44.79615),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 2,
		size = 2
	},
	{
		objHash = GetHashKey('xm_cellgate'),
		objCoords = vector3(1773.173,2589.666,44.79351),
		textCoords = vector3(1773.173,2589.666,44.79351),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 2,
		size = 2
	},
	--

	-- Back (double doors)
	{
		textCoords = vector3(468.6, -1014.4, 27.1),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 4,
		doors = {
			{objHash = GetHashKey('v_ilev_rc_door2'), objHeading = 0.0, objCoords  = vector3(467.3, -1014.4, 26.5)},
			{objHash = GetHashKey('v_ilev_rc_door2'), objHeading = 180.0, objCoords  = vector3(469.9, -1014.4, 26.5)}
		}
	},

	-- Back Gate
	{
		objHash = GetHashKey('hei_prop_station_gate'),
		objHeading = 90.0,
		objCoords = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = {'police', 'offpolice'},
		locked = true,
		maxDistance = 14,
		size = 2
	},
}