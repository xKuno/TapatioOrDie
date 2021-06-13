local player = PlayerPedId()
local inside = false

Citizen.CreateThread(function()
  while true do
	Citizen.Wait(5)

		player = PlayerPedId()
	local plyCoords = GetEntityCoords(player, false)
	local vehicle = VehicleInFront()
  
	if IsDisabledControlJustReleased(1, 119) and GetVehiclePedIsIn(player, false) == 0 and DoesEntityExist(vehicle) and IsEntityAVehicle(vehicle) and IsEntityAVehicle(vehicle) then 
		 SetVehicleDoorOpen(vehicle, 5, false, false)    	
		if not inside then
			AttachEntityToEntity(player, vehicle, -1, 0.0, -2.2, 0.5, 0.0, 0.0, 0.0, false, false, false, false, 20, true)		       		
			   if IsEntityAttached(player) and IsEntityAVehicle(vehicle) and not inside then
				SetTextComponentFormat("STRING")
				AddTextComponentString('~h~Press ~o~E~w~ to get out of the trunk          Press ~o~Space~w~ to go invisible')
				DisplayHelpTextFromStringLabel(0, 1, 1, -1)		       			
				TaskPlayAnim(player, 'timetable@floyd@cryingonbed@base', 'base', 1.0, -1, -1, 1, 0, 0, 0, 0)	
				if not (IsEntityPlayingAnim(player, 'timetable@floyd@cryingonbed@base', 'base', 3) == 1) then
					  Streaming('timetable@floyd@cryingonbed@base', function()
					  TaskPlayAnim(playerPed, 'timetable@floyd@cryingonbed@base', 'base', 1.0, -1, -1, 49, 0, 0, 0, 0)
				   end)
			end    
			   
			inside = true 						         		
			else
			inside = false
			end   			
		elseif inside and IsDisabledControlJustReleased(1, 119) then
			DetachEntity(player, true, true)
			SetEntityVisible(player, true, true)
			   ClearPedTasks(player)  	  
			inside = false
		ClearAllHelpMessages()		    		

		end
		Citizen.Wait(2000)
		SetVehicleDoorShut(vehicle, 5, false)    	
	end
	if DoesEntityExist(vehicle) and not inside then
				SetTextComponentFormat("STRING")
				AddTextComponentString('~h~Press ~o~E~w~ to hide in trunk')
				DisplayHelpTextFromStringLabel(0, 0, 1, -1)	
	elseif DoesEntityExist(vehicle) and inside then
			car = GetEntityAttachedTo(player)
			carxyz = GetEntityCoords(car, 0)
			   local visible = true
			   DisableAllControlActions(0)
			   DisableAllControlActions(1)
			   DisableAllControlActions(2)
			EnableControlAction(0, 289, true) --- F2	
			EnableControlAction(0, 27, true) --- Up			
			EnableControlAction(0, 173, true) --- Down		
			EnableControlAction(0, 18, true) --- Enter	
			   EnableControlAction(0, 0, true) --- V - camera
			   EnableControlAction(0, 249, true) --- N - push to talk				
			   EnableControlAction(2, 1, true) --- camera moving
			   EnableControlAction(2, 2, true) --- camera moving	
			   EnableControlAction(0, 177, true) --- BACKSPACE
			   EnableControlAction(0, 200, true) --- ESC					
				 if IsDisabledControlJustPressed(1, 22) then
					 if visible then
						SetEntityVisible(player, false, false)
						visible = false			
					end   	
				end 					
	elseif not DoesEntityExist(vehicle) and inside then
			--DetachEntity(player, true, true)
			SetEntityVisible(player, true, true)
			   ClearPedTasks(player)  	  
			inside = false	
		ClearAllHelpMessages()	
	end  	
  end
end)

function Streaming(animDict, cb)
if not HasAnimDictLoaded(animDict) then
RequestAnimDict(animDict)

while not HasAnimDictLoaded(animDict) do
	Citizen.Wait(1)
end
end

if cb ~= nil then
cb()
end
end	
function VehicleInFront()
local pos = GetEntityCoords(player)
local entityWorld = GetOffsetFromEntityInWorldCoords(player, 0.0, 3.5, 0.0)
local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, player, 0)
local _, _, _, _, result = GetRaycastResult(rayHandle)
if ( GetEntityType( result ) ~= 2 ) then return nil end
return result
end

function DrawText3D2(x, y, z, text, scale)
local onScreen, _x, _y = World3dToScreen2d(x, y, z)
local pX, pY, pZ = table.unpack(GetGameplayCamCoords())

SetTextScale(scale, scale)
SetTextFont(4)
SetTextProportional(1)
SetTextEntry("STRING")
SetTextCentre(1)
SetTextColour(255, 255, 255, 215)

AddTextComponentString(text)
DrawText(_x, _y)

local factor = (string.len(text)) / 370

DrawRect(_x, _y + 0.0150, 0.030 + factor, 0.025, 41, 11, 41, 100)
end
