Config = {}

 Config.NPC = {
    coords = vector4(-542.2643, -196.156, 38.22697, 82.88346),
    model = 's_m_y_cop_01',
    scenario = "WORLD_HUMAN_CLIPBOARD"
}

Config.Blips = vector3(-542.8949, -196.0984, 38.22698) 
Config.Blipss = {
     BlipSprite = 498,
    BlipColor = 39,
    BlipDisplay = 4,
    BlipScale = 0.8,
    BlipText = 'Identity Cards' 
}

Config.IdentityPrices = {
    id_card = 50,
    driver_license = 50,
    weaponlicense = 1000,
}

 Config.mddevCards = {
    {
        title = 'ID Card',
        description = 'Avaliable for 50$',
        icon = 'id-card',
        serverEvent = 'mddev:server:idcard',
        args = {
            itemName = 'id_card'
        }
    },
     {
        title = 'Driver License',
        description = 'Available for 50$',
        icon = 'drivers-license',
        serverEvent = 'mddev:server:driverscard',
        args = {
            itemName = 'driver_license'
        }
    },
    {
        title = 'Weapon License',
        description = 'Avaliable for 1000$',
        icon = 'gun',
        serverEvent = 'mddev:server:weaponlicense',
        args = {
            itemName = 'weaponlicense'
        }
    },
}