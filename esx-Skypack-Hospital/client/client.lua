ESX = nil

local PlayerData              = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:tapatiocockandballs', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)



Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:tapatiocockandballs', function(obj) ESX = obj end)
        Citizen.Wait(0)
  end
end)

Citizen.CreateThread(function()
   
    while true do
        local sleep = 5000
        local _source = source
        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)

        for i = 1, #Config.Doctor, 1 do
            local konum = Config.Doctor[i]
            local userDst = GetDistanceBetweenCoords(pedCoords, konum.x, konum.y, konum.z, true)

            if userDst <= 15 then
                sleep = 2
                if userDst <= 5 then
                    DrawText3D(konum.x, konum.y, konum.z, 'Press[E] For Check in/Heal $50000')
                    DrawMarker(27, konum.x, konum.y, konum.z-0.9, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.0, 2.0, 1.0, 255, 195, 18, 100, false, true, 2, false, false, false, false)
                    if userDst <= 2.5 then
                        if IsControlJustPressed(0, 38) then
                            ESX.TriggerServerCallback('draco:getEms', function(cb)
                                canEms = cb
                            end, i)
                            while canEms == nil do
                                Wait(0)
                            end
                            if Config.DoctorLimit then
                                if canEms == true then
                                    
                                    ESX.TriggerServerCallback('draco-custom:parakontrol', function(hasEnoughMoney) --draco
                                        if hasEnoughMoney then
                                            local formattedCoords = {
                                                x = ESX.Math.Round(pedCoords.x, 1),
                                                y = ESX.Math.Round(pedCoords.y, 1),
                                                z = ESX.Math.Round(pedCoords.z, 1)
                                            }
                                            TriggerEvent('esx_ambulancejob:revive', formattedCoords)
                                            TriggerServerEvent('draco-custom:money')
                                        else
                                            exports['mythic_notify']:DoHudText('error', 'You Dont Need Any Medical attention!') --draco
                                        end
                                    end)

                                elseif canEms == 'no_ems' then
                                    exports['mythic_notify']:DoHudText('error', 'UFF')                          
                                end 
                            else
                                ESX.TriggerServerCallback('draco-custom:parakontrol', function(hasEnoughMoney)
                                    if hasEnoughMoney then
                                        local formattedCoords = {
                                            x = ESX.Math.Round(pedCoords.x, 1),
                                            y = ESX.Math.Round(pedCoords.y, 1),
                                            z = ESX.Math.Round(pedCoords.z, 1)
                                        }
                                        TriggerEvent('esx_ambulancejob:revive', formattedCoords)
                                        TriggerServerEvent('draco-custom:money')
                                    else
                                        exports['mythic_notify']:DoHudText('error', 'You Dont Have Enough Money!') --draco
                                    end
                                end)
                            end
                        end
                    end
                end
            end

        end

        Citizen.Wait(sleep)
    end
end)


----Ped_Here

Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_m_doctor_01"))
	
    while not HasModelLoaded(GetHashKey("s_m_m_doctor_01")) do
        Wait(1)
    end
	
	if Config.EnablePeds then
        for _, doctor in pairs(Config.Doctor) do
            
			local npc = CreatePed(4, 0xd47303ac, doctor.x, doctor.y, doctor.z-1.0, doctor.heading, false, true)
			
			SetEntityHeading(npc, doctor.heading)
			FreezeEntityPosition(npc, true)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
		end
	end
end)

--3D

function DrawText3D(x,y,z,text,size)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)

    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

Citizen.CreateThread(function()
    if Config.EnableBlips then
        for k,v in pairs(Config.Doctor) do
            local blip = AddBlipForCoord(v.x, v.y, v.z)

            SetBlipSprite (blip, 403)
            SetBlipDisplay(blip, 2)
            SetBlipScale  (blip, 1.0)
            SetBlipColour (blip, 2)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Hastane')
            EndTextCommandSetBlipName(blip)
        end
    end
end)



--inury
--[[ Citizen.CreateThread(function()
	while true do
		Wait(2500)
		if GetEntityHealth(GetPlayerPed(-1)) <= 160 then
		exports['mythic_notify']:DoHudText('error', 'You Are Injured, Go To The Hospital')
			setHurt()
		elseif GetEntityHealth(GetPlayerPed(-1)) > 161 then
			setNotHurt()
		end
	end
end)

function setHurt()
	RequestAnimSet("move_m@injured")
	SetPedMovementClipset(GetPlayerPed(-1), "move_m@injured", true)
end

function setNotHurt()
	ResetPedMovementClipset(GetPlayerPed(-1))
	ResetPedWeaponMovementClipset(GetPlayerPed(-1))
	ResetPedStrafeClipset(GetPlayerPed(-1))
end --]]