--------------------------
-- Script robo del Yate --
--     por Jougito      --
--------------------------

local StartRob, Phase, StAnim, isHacking, canSteal = false, 0, false, false, false
local hasAlreadyEnteredMarker, lastZone, currentAction, currentActionMsg, currentActionData, bRobbery

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:tapatiocockandballs', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

-- Create map blip
if Config.ShowGPS then
    Citizen.CreateThread(function()
        local blip = AddBlipForCoord(Points.GPS.Coords)

        SetBlipSprite (blip, Points.GPS.Sprite)
        SetBlipDisplay(blip, Points.GPS.Display)
        SetBlipScale  (blip, Points.GPS.Scale)
        SetBlipColour (blip, Points.GPS.Colour)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(_UT('map_blip'))
        EndTextCommandSetBlipName(blip)
    end)
end

-- Create phase markers
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local playerCoords, isInMarker, currentZone, letSleep = GetEntityCoords(PlayerPedId()), nil, nil, true

        if StartRob == false then
            local distance = #(playerCoords - vector3(Points.Start.Pos.x, Points.Start.Pos.y, Points.Start.Pos.z))

            if distance < Config.DrawDistance then
                letSleep = false
                DrawMarker(Points.Start.Type, Points.Start.Pos.x, Points.Start.Pos.y, Points.Start.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Points.Start.Size.x, Points.Start.Size.y, Points.Start.Size.z, Points.Start.Color.r, Points.Start.Color.g, Points.Start.Color.b, 100, false, true, 2, Points.Start.Rotate, false, false, false)
                DrawMarker(23, Points.Start.Pos.x, Points.Start.Pos.y, Points.Start.Pos.z - 0.99, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Points.Start.Size.x, Points.Start.Size.y, Points.Start.Size.z, Points.Start.Color.r, Points.Start.Color.g, Points.Start.Color.b, 100, false, true, 2, false, false, false, false)
            
                if distance < 1.0 then
                    isInMarker, currentZone = true, 'StartYachtRob'
                end
            end
        end

        if StartRob then
            if Phase == 1 then
                local distance = #(playerCoords - vector3(Points.TakeComputer.Pos.x, Points.TakeComputer.Pos.y, Points.TakeComputer.Pos.z))

                if distance < Config.DrawDistance then
                    letSleep = false
                    DrawMarker(Points.TakeComputer.Type, Points.TakeComputer.Pos.x, Points.TakeComputer.Pos.y, Points.TakeComputer.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Points.TakeComputer.Size.x, Points.TakeComputer.Size.y, Points.TakeComputer.Size.z, Points.TakeComputer.Color.r, Points.TakeComputer.Color.g, Points.TakeComputer.Color.b, 100, false, true, 2, Points.TakeComputer.Rotate, false, false, false)
                    DrawMarker(Points.RoomsStyle.Marker2.Type, Points.TakeComputer.Pos.x, Points.TakeComputer.Pos.y, Points.TakeComputer.Pos.z - 1, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Points.RoomsStyle.Marker2.Size.x, Points.RoomsStyle.Marker2.Size.y, Points.RoomsStyle.Marker2.Size.z, Points.RoomsStyle.Marker2.Color.r, Points.RoomsStyle.Marker2.Color.g, Points.RoomsStyle.Marker2.Color.b, 100, false, true, 2, Points.RoomsStyle.Marker2.Rotate, false, false, false)
                
                    if distance < 0.75 then
                        isInMarker, currentZone = true, 'TakeComputer'
                    end
                end
            end

            if Phase == 2 then
                local distance = #(playerCoords - vector3(Points.Hack.Pos.x, Points.Hack.Pos.y, Points.Hack.Pos.z))

                if distance < Config.DrawDistance then
                    letSleep = false
                    DrawMarker(Points.Hack.Type, Points.Hack.Pos.x, Points.Hack.Pos.y, Points.Hack.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Points.Hack.Size.x, Points.Hack.Size.y, Points.Hack.Size.z, Points.Hack.Color.r, Points.Hack.Color.g, Points.Hack.Color.b, 100, false, true, 2, Points.Hack.Rotate, false, false, false)
                    DrawMarker(Points.RoomsStyle.Marker2.Type, Points.Hack.Pos.x, Points.Hack.Pos.y, Points.Hack.Pos.z - 1, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Points.RoomsStyle.Marker2.Size.x, Points.RoomsStyle.Marker2.Size.y, Points.RoomsStyle.Marker2.Size.z, Points.RoomsStyle.Marker2.Color.r, Points.RoomsStyle.Marker2.Color.g, Points.RoomsStyle.Marker2.Color.b, 100, false, true, 2, Points.RoomsStyle.Marker2.Rotate, false, false, false)
                
                    if distance < 0.75 then
                        isInMarker, currentZone = true, 'YachtHack'
                    end
                end
            end
        end

        if canSteal then
            for k,v in pairs(Points.Rooms) do
                if v.Stealed == 0 then
                    local distance = #(playerCoords - vector3(v.Pos.x, v.Pos.y, v.Pos.z))

                    if distance < Config.DrawDistance then
                        letSleep = false
                        DrawMarker(Points.RoomsStyle.Marker1.Type, v.Pos.x, v.Pos.y, v.Pos.z - 0.3, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Points.RoomsStyle.Marker1.Size.x, Points.RoomsStyle.Marker1.Size.y, Points.RoomsStyle.Marker1.Size.z, Points.RoomsStyle.Marker1.Color.r, Points.RoomsStyle.Marker1.Color.g, Points.RoomsStyle.Marker1.Color.b, 100, false, true, 2, Points.RoomsStyle.Marker1.Rotate, false, false, false)
                        DrawMarker(Points.RoomsStyle.Marker2.Type, v.Pos.x, v.Pos.y, v.Pos.z - 1, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Points.RoomsStyle.Marker2.Size.x, Points.RoomsStyle.Marker2.Size.y, Points.RoomsStyle.Marker2.Size.z, Points.RoomsStyle.Marker2.Color.r, Points.RoomsStyle.Marker2.Color.g, Points.RoomsStyle.Marker2.Color.b, 100, false, true, 2, Points.RoomsStyle.Marker2.Rotate, false, false, false)
                    
                        if distance < 0.5 then
                            isInMarker, currentZone = true, k
                        end 
                    end
                end
            end
        end

        if (isInMarker and not hasAlreadyEnteredMarker) or (isInMarker and lastZone ~= currentZone) then
            hasAlreadyEnteredMarker, lastZone = true, currentZone
            TriggerEvent('YachtRob:hasEnteredMarker', currentZone)
        end

        if not isInMarker and hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = false
            TriggerEvent('YachtRob:hasExitedMarker', lastZone)
        end

        if letSleep then
            Citizen.Wait(500)
        end
    end
end)

AddEventHandler('YachtRob:hasEnteredMarker', function(zone)
    if zone == 'StartYachtRob' then
        CurrentAction     = 'start_yacht_rob'
        CurrentActionMsg  = _UT('start_rob')
        CurrentActionData = nil
    elseif zone == 'TakeComputer' then
        CurrentAction     = 'start_take_computer'
        CurrentActionMsg  = _UT('start_take_computer')
        CurrentActionData = nil
    elseif zone == 'YachtHack' then
        CurrentAction     = 'start_hacking'
        CurrentActionMsg  = _UT('start_hacking')
        CurrentActionData = nil
    elseif zone == 'Room1a' or zone == 'Room1b' or zone == 'Room1c' or zone == 'Room2a' or zone == 'Room2b' or zone == 'Room2c' or zone == 'Room3a' or zone == 'Room3b' or zone == 'Room4a' or zone == 'Room4b' or zone == 'Room4c' or zone == 'Room4d' or zone == 'Room4e' or zone == 'Room5a' or zone == 'Room5b' or zone == 'Room5c' or zone == 'Room5d' or zone == 'Room5e' or zone == 'Room6a' or zone == 'Room6b' or zone == 'Room6c' then
        CurrentAction     = 'start_steal_drawers'
        CurrentActionMsg  = _UT('start_steal_drawers')
        CurrentActionData = zone
    end
end)

AddEventHandler('YachtRob:hasExitedMarker', function(zone)
    CurrentAction = nil
end)

-- Key controls
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if CurrentAction then
            ESX.ShowHelpNotification(CurrentActionMsg)

            local aRoom = Points.Rooms[CurrentActionData]

            if IsControlJustReleased(0, 38) then
                if CurrentAction == 'start_yacht_rob' then
                    TriggerServerEvent('YachtRob:ReadyCheck')
                elseif CurrentAction == 'start_take_computer' then
                    TakingComputer()
                    TriggerEvent('YachtRob:MissionText', _UT('taking_computer'), 10000)
                    Citizen.Wait(Config.EjecTime * 1000)
                    TakingComputer()
                    TriggerEvent('YachtRob:MissionText', _UT('taked_computer'), 10000)
                    PlaySound(-1, 'LOOSE_MATCH', 'HUD_MINI_GAME_SOUNDSET', false, 0, true)
                    Phase = 2
                    TriggerServerEvent('YachtRob:CanSteal')
                elseif CurrentAction == 'start_hacking' then
                    Hacking()
                    TriggerEvent('YachtRob:MissionText', _UT('hacking_started'), 10000)
                    Citizen.Wait(Config.EjecTime * 1000)
                    Hacking()
                    PlaySound(-1, 'LOOSE_MATCH', 'HUD_MINI_GAME_SOUNDSET', false, 0, true)
                    isHacking = true
                    TriggerEvent('YachtRob:Timer')
                    Phase = 3
                elseif CurrentAction == 'start_steal_drawers' then
                    local sLucky = math.random(0, 1)
                    TriggerEvent('YachtRob:MissionText', _UT('drawers_start'), 10000)
                    StealDrawers(aRoom.Anim, aRoom.Pos.h)
                    Citizen.Wait(Config.EjecTime * 1000)
                    StealDrawers()
                    if sLucky == 1 then
                        TriggerEvent('YachtRob:MissionText', _UT('drawers_finish'), 5000)
                        PlaySound(-1, 'LOOSE_MATCH', 'HUD_MINI_GAME_SOUNDSET', false, 0, true)
                        TriggerServerEvent('YachtRob:AddReward', 1, 1)
                    elseif sLucky == 0 then
                        TriggerEvent('YachtRob:MissionText', _UT('drawers_finish_none'), 5000)
                    end
                    TriggerServerEvent('YachtRob:UpdateStealed', aRoom)
                end
                CurrentAction = nil
            end
        else
            Citizen.Wait(500)
        end
    end
end)

RegisterNetEvent('YachtRob:StartRob')
AddEventHandler('YachtRob:StartRob', function()
    StartRob = true
    Phase = 1
    TriggerEvent('YachtRob:MissionText', _UT('rob_started'), 10000)
    PlaySound(-1, 'LOOSE_MATCH', 'HUD_MINI_GAME_SOUNDSET', false, 0, true)
end)

RegisterNetEvent('YachtRob:RestartStealed')
AddEventHandler('YachtRob:RestartStealed', function()
    Citizen.CreateThread(function()
        for k,v in pairs(Points.Rooms) do
            if v.Stealed == 1 then
                v.Stealed = 0
            end
        end
    end)
end)

RegisterNetEvent('YachtRob:StartSteal')
AddEventHandler('YachtRob:StartSteal', function()
    canSteal = true
end)

RegisterNetEvent("YachtRob:MissionText")
AddEventHandler("YachtRob:MissionText", function(text, time)
        ClearPrints()
        SetTextEntry_2("STRING")
        AddTextComponentString(text)
        DrawSubtitleTimed(time, 1)

end)

RegisterNetEvent('YachtRob:UpdateRoom')
AddEventHandler('YachtRob:UpdateRoom', function(uRoom)
    local aRoom = Points.Rooms[CurrentActionData]
    aRoom.Stealed = 1
end)

RegisterNetEvent('YachtRob:Timer')
AddEventHandler('YachtRob:Timer', function()
    local timer = Config.HackTime

    Citizen.CreateThread(function()
        while timer > 0 and isHacking do
            Citizen.Wait(1000)
            local playerPos = GetEntityCoords(PlayerPedId(), true)

            if timer > 0 then
                timer = timer - 1
            end

            if timer < 11 and timer > 0 then
                PlaySound(-1, 'MP_AWARD', 'HUD_FRONTEND_DEFAULT_SOUNDSET', false, 0, true)
            end

            if Vdist(playerPos.x, playerPos.y, playerPos.z, Points.Hack.Pos.x, Points.Hack.Pos.y, Points.Hack.Pos.z) > Config.DrawDistance then
                isHacking = false
                TriggerServerEvent('YachtRob:TooFar')
                PlaySound(-1, 'ScreenFlash', 'WastedSounds', false, 0, true)
            end
        end

        if timer == 0 and isHacking then
            local rMoney = Config.RewardMoney
            
            isHacking = false
            StartRob = false
            TriggerEvent('YachtRob:MissionText', _UT('hacking_finished', rMoney), 15000)
            PlaySound(-1, 'Mission_Pass_Notify', 'DLC_HEISTS_GENERAL_FRONTEND_SOUNDS', false, 0, true)
            TriggerServerEvent('YachtRob:AddReward', 2, rMoney)
            TriggerServerEvent('YachtRob:StopRob')
        end
    end)

    Citizen.CreateThread(function()
        while isHacking do
            Citizen.Wait(0)
            drawTxt(1.2, 1.44, 1.0, 1.0, 0.4, _T('hacking_processing', timer), 255, 255, 255, 255)
        end
    end)
end)

RegisterNetEvent('YachtRob:SetBlip')
AddEventHandler('YachtRob:SetBlip', function()
    bRobbery = AddBlipForCoord(Points.GPS.Coords)
    SetBlipSprite(bRobbery , 161)
    SetBlipScale(bRobbery , 1.5)
    SetBlipColour(bRobbery, 1)
    PulseBlip(bRobbery)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(_UT('rob_in_blip'))
    EndTextCommandSetBlipName(bRobbery)
end)

RegisterNetEvent('YachtRob:FinishRob')
AddEventHandler('YachtRob:FinishRob', function()
    StartRob = false
    canSteal = false
    RemoveBlip(bRobbery)
end)

function TakingComputer()
    local animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"

    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(100)
    end

    local ped = PlayerPedId()

    if StAnim == false then
        SetEntityHeading(ped, 139.48)
        FreezeEntityPosition(ped, true)
        TaskPlayAnim(ped, animDict, "machinic_loop_mechandplayer", 2.0, 2.0, -1, 51, 0, 0, 0, 0)
        StAnim = true
    elseif StAnim == true then
        ClearPedTasksImmediately(ped)
        FreezeEntityPosition(ped, false)
        StAnim = false
    end
end

RegisterNetEvent("YachtRob:CanStealDrawers")
AddEventHandler("YachtRob:CanStealDrawers", function()
    --
end)

function StealDrawers(tAnim, pHead)
    local ped = PlayerPedId()

    if StAnim == false then
        if tAnim == 1 then
            local animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"

            RequestAnimDict(animDict)
            while not HasAnimDictLoaded(animDict) do
                Citizen.Wait(100)
            end

            SetEntityHeading(ped, pHead)
            FreezeEntityPosition(ped, true)
            TaskStartScenarioInPlace(ped, 'CODE_HUMAN_MEDIC_KNEEL', 0, true)
            Wait(5000)
            TaskPlayAnim(ped, animDict, "machinic_loop_mechandplayer", 2.0, 2.0, -1, 51, 0, 0, 0, 0)
            StAnim = true
        elseif tAnim == 2 then
            local animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"

            RequestAnimDict(animDict)
            while not HasAnimDictLoaded(animDict) do
                Citizen.Wait(100)
            end

            SetEntityHeading(ped, pHead)
            FreezeEntityPosition(ped, true)
            TaskPlayAnim(ped, animDict, "machinic_loop_mechandplayer", 2.0, 2.0, -1, 51, 0, 0, 0, 0)
            StAnim = true
        elseif tAnim == 3 then
            local animDict = "mp_shipment_steal"

            RequestAnimDict(animDict)
            while not HasAnimDictLoaded(animDict) do
                Citizen.Wait(100)
            end

            SetEntityHeading(ped, pHead)
            FreezeEntityPosition(ped, true)
            TaskPlayAnim(ped, animDict, "hack_loop", 2.0, 2.0, -1, 51, 0, 0, 0, 0)
            StAnim = true
        elseif tAnim == 4 then
            SetEntityHeading(ped, pHead)
            FreezeEntityPosition(ped, true)
            TaskStartScenarioInPlace(ped, 'CODE_HUMAN_MEDIC_KNEEL', 0, true)
            StAnim = true
        end  
    elseif StAnim == true then
        ClearPedTasksImmediately(ped)
        FreezeEntityPosition(ped, false)
        StAnim = false
    end
end

function Hacking()
    local animDict = "mp_shipment_steal"

    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(100)
    end

    local ped = PlayerPedId()

    if StAnim == false then
        SetEntityHeading(ped, 249.46)
        FreezeEntityPosition(ped, true)
        TaskPlayAnim(ped, animDict, "hack_loop", 2.0, 2.0, -1, 51, 0, 0, 0, 0)
        StAnim = true
    elseif StAnim == true then
        ClearPedTasksImmediately(ped)
        FreezeEntityPosition(ped, false)
        StAnim = false
    end
end

function drawTxt(x,y, width, height, scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    if outline then SetTextOutline() end

    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x - width/2, y - height/2 + 0.005)
end
