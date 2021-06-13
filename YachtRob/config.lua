--------------------------
-- Script robo del Yate --
--     por Jougito      --
--------------------------

Config = {}

Config.Cooldown     = 3600 -- Tiempo de espera en segundos para iniciar de nuevo el robo
Config.NeedCops     = 5 -- Número de policías de servicio para atracar el yate
Config.CopsNotify   = true -- Aviso del atraco a la policía
Config.ShowGPS      = true -- Mostrar icono en el mapa
Config.Locale       = 'en' -- Traducciones (es, en, fr, etc)
Config.Item         = 'jewels' -- Item que se obtiene de robar en la habitaciones
Config.DrawDistance = 15 -- Distancia para visualizar los markers
Config.EjecTime     = 15 -- Tiempo en segundos para realizar las animaciones de robar, hackear, etc
Config.HackTime     = 30 -- Tiempo en segundos para hackear el terminal y conseguir el dinero
Config.RewardMoney  = math.random(3500000, 5000000) -- Dinero negro mínimo y máximo que te dará el robo

Points = {}

Points.GPS = {
    Coords  = vector3(-2061.44, -1025.61, 14.9),
    Sprite  = 455,
    Display = 4,
    Scale   = 0.7,
    Colour  = 5
}

Points.Start = {
    Pos     = { x = -2024.18, y = -1037.87, z = 2.58 },
    Size    = { x = 1.0, y = 1.0, z = 1.5 },
    Color   = { r = 255, g = 255, b = 0 },
    Type    = 29,
    Rotate  = true
}

Points.TakeComputer = {
    Pos     = { x = -2071.49, y = -1022.1, z = 3.05 },
    Size    = { x = 0.5, y = 0.5, z = 0.5 },
    Color   = { r = 255, g = 0, b = 0 },
    Type    = 32,
    Rotate  = true
}

Points.Hack = {
    Pos     = { x = -2072.85, y = -1018.16, z = 11.91 },
    Size    = { x = 0.5, y = 0.5, z = 0.5 },
    Color   = { r = 255, g = 0, b = 0 },
    Type    = 32,
    Rotate  = true
}

Points.Rooms = {
    Room1a  = { Pos = { x = -2071.09, y = -1020.84, z = 5.88, h = 250.97 }, Anim = 1, Stealed = 0 },
    Room1b  = { Pos = { x = -2072.08, y = -1024.00, z = 5.88, h = 248.84 }, Anim = 1, Stealed = 0 },
    Room1c  = { Pos = { x = -2078.65, y = -1016.07, z = 5.88, h = 72.73 }, Anim = 3, Stealed = 0 },
    Room2a  = { Pos = { x = -2082.98, y = -1012.20, z = 5.88, h = 162.23 }, Anim = 2, Stealed = 0 },
    Room2b  = { Pos = { x = -2084.76, y = -1014.11, z = 5.88, h = 70.7 }, Anim = 2, Stealed = 0 },
    Room2c  = { Pos = { x = -2084.33, y = -1019.45, z = 5.88, h = 253.84 }, Anim = 1, Stealed = 0 },
    Room3a  = { Pos = { x = -2089.36, y = -1009.95, z = 5.88, h = 71.53 }, Anim = 1, Stealed = 0 },
    Room3b  = { Pos = { x = -2090.47, y = -1013.52, z = 5.88, h = 68.19 }, Anim = 1, Stealed = 0 },
    Room4a  = { Pos = { x = -2094.63, y = -1017.07, z = 5.88, h = 285.05 }, Anim = 1, Stealed = 0 },
    Room4b  = { Pos = { x = -2096.42, y = -1016.41, z = 5.88, h = 160.43 }, Anim = 2, Stealed = 0 },
    Room4c  = { Pos = { x = -2095.68, y = -1007.95, z = 5.88, h = 342.57 }, Anim = 2, Stealed = 0 },
    Room4d  = { Pos = { x = -2097.25, y = -1009.70, z = 5.88, h = 71.53 }, Anim = 1, Stealed = 0 },
    Room4e  = { Pos = { x = -2098.26, y = -1013.22, z = 5.88, h = 71.53 }, Anim = 1, Stealed = 0 },
    Room5a  = { Pos = { x = -2087.51, y = -1020.68, z = 8.97, h = 252.01 }, Anim = 1, Stealed = 0 },
    Room5b  = { Pos = { x = -2085.64, y = -1015.35, z = 8.97, h = 262.50 }, Anim = 2, Stealed = 0 },
    Room5c  = { Pos = { x = -2082.25, y = -1022.43, z = 8.97, h = 264.58 }, Anim = 4, Stealed = 0 },
    Room5d  = { Pos = { x = -2077.83, y = -1021.94, z = 8.97, h = 250.67 }, Anim = 1, Stealed = 0 },
    Room5e  = { Pos = { x = -2076.68, y = -1018.54, z = 8.97, h = 251.74 }, Anim = 2, Stealed = 0 },
    Room6a  = { Pos = { x = -2051.50, y = -1024.56, z = 8.97, h = 341.24 }, Anim = 1, Stealed = 0 },
    Room6b  = { Pos = { x = -2055.15, y = -1032.17, z = 8.97, h = 161.51 }, Anim = 2, Stealed = 0 },
    Room6c  = { Pos = { x = -2053.59, y = -1032.75, z = 8.97, h = 161.51 }, Anim = 2, Stealed = 0 }
}

Points.RoomsStyle = {
    Marker1 = {
        Size    = { x = 0.5, y = 0.5, z = 0.5 },
        Color   = { r = 255, g = 0, b = 0 },
        Type    = 29,
        Rotate  = true
    },
    
    Marker2 = {
        Size    = { x = 0.5, y = 0.5, z = 0.5 },
        Color   = { r = 0, g = 255, b = 0 },
        Type    = 1,
        Rotate  = true
    }
}

NPCs = {
    Phase1 = { -- Start Phase
        { a = nil, x = -2040.58, y = -1039.06, z = 2.58, h = 342.35, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2036.99, y = -1027.63, z = 2.58, h = 165.58, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2047.36, y = -1036.36, z = 2.58, h = 342.35, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2043.95, y = -1025.40, z = 2.58, h = 165.58, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2059.53, y = -1031.77, z = 3.06, h = 209.61, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2055.82, y = -1022.56, z = 3.06, h = 292.73, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2065.21, y = -1028.07, z = 3.06, h = 250.99, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2061.83, y = -1022.37, z = 3.06, h = 156.53, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2069.25, y = -1022.65, z = 3.06, h = 261.59, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2068.89, y = -1017.15, z = 3.05, h = 163.39, m = Config.NpcModel, r = 1, w = "weapon_smg" }
    },

    Phase2 = { -- Take Computer Phase
        { a = nil, x = -2040.58, y = -1039.06, z = 2.58, h = 342.35, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2036.99, y = -1027.63, z = 2.58, h = 165.58, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2047.36, y = -1036.36, z = 2.58, h = 342.35, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2043.95, y = -1025.40, z = 2.58, h = 165.58, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2029.58, y = -1040.35, z = 2.57, h = 342.35, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2027.10, y = -1032.43, z = 2.57, h = 165.58, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2017.38, y = -1037.27, z = 2.45, h = 105.91, m = Config.NpcModel, r = 1, w = "weapon_smg" },
        { a = nil, x = -2019.21, y = -1041.97, z = 2.45, h = 49.56, m = Config.NpcModel, r = 1, w = "weapon_smg" }
    },

    Phase3 = { -- Up to hack

    },

    Phase4 = { -- Hacking

    },

    Phase5 = { -- Escape the yacht

    }
}

ESX = nil
