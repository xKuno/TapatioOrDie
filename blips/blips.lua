local blips = {

     {title="Bennys", colour=7, id=488, x = -211.45, y = -1323.91, z = 30.89},
     {title="Capture Turf", colour=39, id=486, x = 325.05, y = -210.8, z = 53.09},
     {title="Capture Turf", colour=39, id=486, x = 1383.31, y = -600.33, z = 73.34},
     {title="Capture Turf", colour=39, id=486, x = -265.85, y = -1570.56, z = 31.07},
     {title="Capture Turf", colour=39, id=486, x = 196.83, y = -934.84, z = 29.69},
     {title="Capture Turf", colour=39, id=486, x = 900.39, y = -183.16, z = 72.87},
     {title="Vatos HQ", colour=39, id=486, x = -1890.78, y = 2045.28, z = 140.87},
     {title="NHC HQ", colour=39, id=486, x = -811.66, y = 187.57, z = 72.48},
     {title="MOB HQ", colour=48, id=378, x = -1522.08, y = 91.65, z = 56.46},
     {title="Vegan HQ", colour=48, id=378, x = 117.13, y = -1949.89, z = 20.75},
     {title="ATK HQ", colour=48, id=378, x = 1392.95, y = 1155.09, z = 114.44},
     {title="Wass HQ", colour=48, id=378, x = -543.36, y = 490.37, z = 103.74},
     {title="Ammunation", colour=1, id=110, x = -957.75, y = -737.56, z = 18.93}
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)