ProjectRevive = {}
ProjectRevive.config = {
    -- FE_THDR_GTAO = "~y~Blaine County Country RP~w~ | Discord : https://discord.gg/bccrp"
}
ProjectRevive.Game = {}
ProjectRevive.Hud = {
    display = true
}

-- Calm AI
-- SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_HILLBILLY"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_BALLAS"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_MEXICAN"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_FAMILY"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_MARABUNTE"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_SALVA"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("GANG_1"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("GANG_2"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("GANG_9"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("GANG_10"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("FIREMAN"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("MEDIC"), GetHashKey('PLAYER'))
-- SetRelationshipBetweenGroups(1, GetHashKey("COP"), GetHashKey('PLAYER'))

Citizen.CreateThread(function()
    ProjectRevive.Game.ped = GetPlayerPed(-1)
    ProjectRevive.Game.handsUp = false
    ProjectRevive.Game.ragDoll = false
    ProjectRevive.Game.currentVehicle = GetVehiclePedIsUsing(PlayerPedId())
    ProjectRevive.Game.selectedPedWeapon = GetSelectedPedWeapon(ProjectRevive.Game.ped)
    ProjectRevive.Game.isPedInAnyVehicle = IsPedInAnyVehicle(ProjectRevive.Game.ped, false)
    ProjectRevive.Hud.pauseMenuActive = false
    ProjectRevive.Game.RestrictEmerge = 0
    ProjectRevive.Game.wheelPos = {
        angle = 0.0,
        speed = 0.0
    }

    TriggerEvent("Base:ready")

    StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE")
    AddTextEntry('FE_THDR_GTAO', '~b~Tapatio or Die ~w~| ~w~discord.gg/tod')

    while true do
        Citizen.Wait(1)
        ProjectRevive.Game.ped = GetPlayerPed(-1)
        ProjectRevive.Game.currentVehicle = GetVehiclePedIsUsing(PlayerPedId())
        ProjectRevive.Game.selectedPedWeapon = GetSelectedPedWeapon(ProjectRevive.Game.ped)
        ProjectRevive.Game.isPedInAnyVehicle = IsPedInAnyVehicle(ProjectRevive.Game.ped, false)

        -- Remove weapons when entering vehicles
		DisablePlayerVehicleRewards(PlayerId())

        -- Disable Pistol Whipping
        if IsPedArmed(ProjectRevive.Game.ped, 6) then
            DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
        end

        -- Remove vehicle damage
        N_0x4757f00bc6323cfe(-1553120962, 0.0)

        if IsPedInAnyVehicle(ProjectRevive.Game.ped, true) then -- If the player is (trying to use /) using a vehicle
            DisableControlAction(0, 73, true)
        end

        -- Disable Dispatch
        for i = 1, 12 do
			EnableDispatchService(i, false)
		end

		SetPlayerWantedLevel(PlayerId(), 0, false)
		SetPlayerWantedLevelNow(PlayerId(), false)
		SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)

        -- Hide hud elements when f9 is pressed
        if IsDisabledControlJustPressed(1, 178) then
            ProjectRevive.Hud.display = not ProjectRevive.Hud.display
        end

        if IsPauseMenuActive() and ProjectRevive.Hud.pauseMenuActive == false then
            ProjectRevive.Hud.hudStateBeforePauseMenu = ProjectRevive.Hud.display
            ProjectRevive.Hud.pauseMenuActive = true
            ProjectRevive.Hud.display = false
        elseif ProjectRevive.Hud.pauseMenuActive and not IsPauseMenuActive() then
            ProjectRevive.Hud.pauseMenuActive = false
            ProjectRevive.Hud.display = ProjectRevive.Hud.hudStateBeforePauseMenu
        end

        if ProjectRevive.Hud.display ~= ProjectRevive.Hud.oldDisplay then
            SendNUIMessage({
                type = "toggleHud",
                state = ProjectRevive.Hud.display
            })

            TriggerEvent("toggleHud")
            ProjectRevive.Hud.oldDisplay = ProjectRevive.Hud.display
        end
    end
end)

-- PVP
AddEventHandler("playerSpawned", function(spawn)
	SetCanAttackFriendly(GetPlayerPed(-1), true, false)
	NetworkSetFriendlyFireOption(true)
end)


allGameWeapons = {
    "WEAPON_KNIFE",
    "WEAPON_KNUCKLE",
    "WEAPON_NIGHTSTICK",
    "WEAPON_HAMMER",
    "WEAPON_BAT",
    "WEAPON_CROWBAR",
    "WEAPON_BOTTLE",
    "WEAPON_DAGGER",
    "WEAPON_HATCHET",
    "WEAPON_MACHETE",
    "WEAPON_FLASHLIGHT",
    "WEAPON_SWITCHBLADE",
    "WEAPON_PISTOL",
    "WEAPON_PISTOL_MK2",
    "WEAPON_COMBATPISTOL",
    "WEAPON_APPISTOL",
    "WEAPON_PISTOL50",
    "WEAPON_SNSPISTOL",
    "WEAPON_HEAVYPISTOL",
    "WEAPON_VINTAGEPISTOL",
    "WEAPON_STUNGUN",
    "WEAPON_FLAREGUN",
    "WEAPON_MARKSMANPISTOL",
    "WEAPON_REVOLVER",
    "WEAPON_MICROSMG",
    "WEAPON_SMG",
    "WEAPON_SMG_MK2",
    "WEAPON_ASSAULTSMG",
    "WEAPON_MG",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_COMBATPDW",
    "WEAPON_GUSENBERG",
    "WEAPON_MACHINEPISTOL",
    "WEAPON_ASSAULTRIFLE",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_CARBINERIFLE_MK2",
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_COMPACTRIFLE",
    "WEAPON_SAWNOFFSHOTGUN",
    "WEAPON_BULLPUPSHOTGUN",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_DBSHOTGUN",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_RPG",
    "WEAPON_STINGER",
    "WEAPON_FIREWORK",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_GRENADE",
    "WEAPON_STICKYBOMB",
    "WEAPON_PROXMINE",
    "WEAPON_BZGAS",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_MOLOTOV",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_SNOWBALL",
    "WEAPON_FLARE",
    "WEAPON_BALL",
    "WEAPON_MINIGUN",
    "WEAPON_RAILGUN",
    "WEAPON_MINISMG",
    "WEAPON_PUMPSHOTGUN"
}