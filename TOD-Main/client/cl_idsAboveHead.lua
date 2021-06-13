-- local disPlayerNames = 5
-- local isShown = true

-- playerDistances = {}

-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(0)

-- 	    if isShown then
--         	for id = 0, 255 do
-- 				if NetworkIsPlayerActive(id) then
-- 					if GetPlayerPed(id) ~= GetPlayerPed(-1) then
-- 						if (playerDistances[id] < disPlayerNames) then
-- 							if IsEntityVisible(GetPlayerPed(id)) then
--          	                    x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
                                 
--                                 if NetworkIsPlayerTalking(id) then
--                                     if not IsHudHidden() then
--                                         DrawText3D(x2, y2, z2+1, GetPlayerServerId(id), 247,124,24)
--                                     end
--                                 else
--                                     if not IsHudHidden() then
--                                         DrawText3D(x2, y2, z2+1, GetPlayerServerId(id), 255,255,255)
--                                     end
--                                 end
--             	            end
-- 						end
-- 					end
-- 				end
--         	end
-- 	    end
--     end
-- end)

-- Citizen.CreateThread(function()
--     while true do
-- 	    if isShown then
--         	for id = 0, 255 do
--         	    if GetPlayerPed(id) ~= GetPlayerPed(-1) then
--                 	x1, y1, z1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
--                 	x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
--                 	distance = math.floor(GetDistanceBetweenCoords(x1,  y1,  z1,  x2,  y2,  z2,  true))
-- 		       	     playerDistances[id] = distance
--             	end
--         	end
-- 	    end

--         Citizen.Wait(1000)
--     end
-- end)