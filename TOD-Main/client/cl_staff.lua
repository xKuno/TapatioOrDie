local disPlayerNames = 5.0

playerDistances = {}
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
		local x, y, z = table.unpack(GetEntityCoords(ProjectRevive.Game.ped, true))

		for _, id in pairs(GetActivePlayers()) do
			if GetPlayerPed(id) ~= ProjectRevive.Game.ped and IsDisabledControlPressed(1, 121) then

				if IsEntityVisible(GetPlayerPed(id)) and GetDistanceBetweenCoords(x, y, z, x2, y2, z2) > disPlayerNames then			
					local x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
				
					if NetworkIsPlayerTalking(id) then
						if not IsHudHidden() then
							DrawText3D(x2, y2, z2+1, GetPlayerServerId(id), 247,124,24)
						end
					else
						if not IsHudHidden() then
							DrawText3D(x2, y2, z2+1, GetPlayerServerId(id), 255,255,255)
						end
					end
				end
			end
		end
	end
end)