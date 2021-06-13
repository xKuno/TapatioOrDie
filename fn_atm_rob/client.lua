ESX = nil
local timeout = 0
local menu = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:tapatiocockandballs', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end
end)

function toggleMenu(b,send)
    if timeout>0 then
        ESX.ShowNotification("You need to wait "..disp_time(timeout))
    else
        menu = b
        SetNuiFocus(b,b)
        if b then SetCursorLocation(100, 25) end
        if send then SendNUIMessage({type = "togglemenu", state = b}) end
    end
end

RegisterNUICallback("lose",function(data,cb)
    ESX.ShowNotification("~r~The bank notes were ruined by ink!")
    toggleMenu(false,false)
    timeout = Config.timeout
end)

RegisterNUICallback("hide",function(data,cb)
    toggleMenu(false,false)
end)

RegisterNUICallback("win",function(data,cb)
    ESX.TriggerServerCallback("fn_atm_rob:win",function()
        ESX.ShowNotification("~g~You successfuly hacked the ATM!")
        toggleMenu(false,false)
        timeout = Config.timeout
    end)
end)

function disp_time(time)
    local minutes = math.floor((time%3600)/60)
    local seconds = math.floor(time%60)
    return string.format("~b~%d ~s~minute(s) ~b~%02d~s~ second(s)",minutes,seconds)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if timeout>0 then
            Citizen.Wait(1000)
            timeout=timeout-1
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k,v in ipairs(Config.atms) do
            if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), vector3(v.x,v.y,v.z), false)<Config.render_distance then 
                DrawMarker(1, v.x, v.y, v.z-1.0, 0, 0, 0, 0, 0, 0, Config.marker.size.x, Config.marker.size.y, Config.marker.size.z, Config.marker.color.r, Config.marker.color.g, Config.marker.color.b, Config.marker.color.alpha, 0, 0, 0, false)
                if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), vector3(v.x,v.y,v.z), false)<Config.marker.size.x then
                    if not menu then ESX.ShowHelpNotification('Hit ~INPUT_CONTEXT~ to hack') end
                    if IsControlJustPressed(0, 51) and not menu then
                        toggleMenu(true,true)
                    end
                end
            end
        end
    end
end)