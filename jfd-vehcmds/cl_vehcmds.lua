RegisterCommand('extra', function(source, args)
	
local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
local extraId =  tonumber(args[1])
local isExtraActive = IsVehicleExtraTurnedOn(vehicle, extraId)
    SetVehicleExtra(vehicle, extraId, isExtraActive)

end)


RegisterCommand('livery', function(source, args)

local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
local liveryID = tonumber(args[1])
    SetVehicleLivery(Veh, liveryID)

end)


RegisterCommand('wintint', function(source, args)

local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
    SetVehicleWindowTint(vehicle, tonumber(args[1]))

end)


RegisterCommand('cleanveh', function(source, args)

local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
    SetVehicleDirtLevel(vehicle, 0)

end)