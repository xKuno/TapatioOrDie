local _A = {}

_A.IsInSpectatorMode = function()
    return Citizen.InvokeNative(0x048746E388762E11, Citizen.ReturnResultAnyway())
end

AddEventHandler("playerSpawned", function()
    _A.commands = #GetRegisteredCommands()
    _A.resources = GetNumResources()
    TriggerServerEvent("AntiCheat:PlayerConnecting")
end)

Citizen.CreateThread(function()
    TriggerServerEvent("AntiCheat:PlayerConnecting")

    local ped = GetPlayerPed(-1)
    local oldCoords = GetEntityCoords(ped)

    while true do
        Citizen.Wait(1000)
        ped = GetPlayerPed(-1)

        if _A.commands ~= nil and  _A.commands ~= #GetRegisteredCommands() then
            TriggerServerEvent("cookieMonsterDump", 'numCom')
        end

        if _A.resources ~= nil and _A.resources ~= GetNumResources() then
            TriggerServerEvent("cookieMonsterDump", 'numRes')
        end

        TriggerServerEvent("AntiCheat:heartbeat")

        if _A.IsInSpectatorMode() then
            TriggerServerEvent("cookieMonsterDump", 'spec', 1)
        end

        local ret, wep = GetCurrentPedWeapon(ped)
        local wepD = GetWeaponDamageModifier(wep)

        if ret and (wepD > 1.0 and webD ~= 0.0) then
            TriggerServerEvent("cookieMonsterDump", 'wdm', wepD)
        end
        
        if IsPedInAnyVehicle(ped) and GetVehicleTopSpeedModifier(GetVehiclePedIsIn(ped)) > 1.0 then
            TriggerServerEvent("cookieMonsterDump", 'gvtsm', GetVehicleTopSpeedModifier(GetVehiclePedIsIn(ped)))
        end

        if IsPedInAnyVehicle(ped) and GetVehicleCheatPowerIncrease(GetVehiclePedIsIn(ped)) > 1.0 then
            TriggerServerEvent("cookieMonsterDump", 'gvpsm', GetVehicleCheatPowerIncrease(GetVehiclePedIsIn(ped)))
        end

        if IsPedInAnyVehicle(ped) and GetVehicleTopSpeedModifier(GetVehiclePedIsIn(ped)) > 1.0 then
            TriggerServerEvent("cookieMonsterDump", 'gvtsm', GetVehicleTopSpeedModifier(GetVehiclePedIsIn(ped)))
        end

        for i = 1, GetNumResources() do
            local resource = GetResourceByFindIndex(i)

            if resource ~= nil and GetResourceState(resource) ~= "started" then
                TriggerServerEvent("cookieMonsterDump", "rs", resource)
            end
        end

        local outResources = {}
        for i = 1, GetNumResources() do
            outResources[i] = GetResourceByFindIndex(i)
            table.insert(outResources, GetResourceByFindIndex(i))
        end

        TriggerServerEvent("cookieMonsterDump", "rc", outResources)
    end
end)

-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(1)
--         SetPedInfiniteAmmoClip(PlayerPedId(), false)
--         SetPlayerInvincible(PlayerId(), false)
--         SetEntityInvincible(PlayerPedId(), false)
--         SetEntityCanBeDamaged(PlayerPedId(), true)
--     end
-- end)

Citizen.CreateThread(function()
    local removeDet = true
    local detections = 0

    while true do
        Citizen.Wait(1500)

        local ped = PlayerPedId()
        local posx, posy, posz = table.unpack(GetEntityCoords(ped,true))
        local still = IsPedStill(ped)
        local vel = GetEntitySpeed(ped)

        Wait(1500)

        local newx, newy, newz = table.unpack(GetEntityCoords(ped,true))
        
        if GetDistanceBetweenCoords(posx, posy, posz, newx, newy, newz) > 15 and still == IsPedStill(ped) and vel == GetEntitySpeed(ped) and ped == PlayerPedId() then
            detections = detections + 1
            if detections >= 2 then
                TriggerServerEvent("cookieMonsterDump", 'ncp')
                removeDet = false
            end
        end

        if detections ~= 0 and not removeDet then
            detections = detections - 1
        end

        removeDet = true
    end
end)