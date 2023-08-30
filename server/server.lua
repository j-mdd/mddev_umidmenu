QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('mddev:server:idcard', function(args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cash = Player.PlayerData.money['cash']
    local bank = Player.PlayerData.money['bank']
    
    if cash >= Config.IdentityPrices['id_card'] then
      exports['um-idcard']:CreateMetaLicense(src, 'id_card')
      Player.Functions.RemoveMoney('cash', Config.IdentityPrices['id_card'])
      TriggerClientEvent('mddev:client:Notify', src, args.itemName)
    elseif  bank >= Config.IdentityPrices['id_card'] then
      exports['um-idcard']:CreateMetaLicense(src, 'id_card')
      Player.Functions.RemoveMoney('bank', Config.IdentityPrices['id_card'])
      TriggerClientEvent('mddev:client:Notify', src, args.itemName)
    else
      TriggerClientEvent('mddev:client:ErrorNotify', src, "Not enough funds.")
    end
  end)

RegisterNetEvent('mddev:server:driverscard', function(args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cash = Player.PlayerData.money['cash']
    local bank = Player.PlayerData.money['bank']
    
    if cash >= Config.IdentityPrices['driver_license'] then
    exports['um-idcard']:CreateMetaLicense(src, 'driver_license')
    Player.Functions.RemoveMoney('cash', Config.IdentityPrices['driver_license'])
    TriggerClientEvent('mddev:client:Notify', src, args.itemName)
    
    elseif  bank >= Config.IdentityPrices['driver_license'] then
    exports['um-idcard']:CreateMetaLicense(src, 'driver_license')
    Player.Functions.RemoveMoney('bank', Config.IdentityPrices['driver_license'])
    TriggerClientEvent('mddev:client:Notify', src, args.itemName)
else
    TriggerClientEvent('mddev:client:ErrorNotify', src, "Not enough funds.")
end
end)

RegisterNetEvent('mddev:server:weaponlicense', function(args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cash = Player.PlayerData.money['cash']
    local bank = Player.PlayerData.money['bank']
    
    if cash >= Config.IdentityPrices['weaponlicense'] then
    exports['um-idcard']:CreateMetaLicense(src, 'weaponlicense')
    Player.Functions.RemoveMoney('cash', Config.IdentityPrices['weaponlicense'])
    TriggerClientEvent('mddev:client:Notify', src, args.itemName)
    
    elseif  bank >= Config.IdentityPrices['weaponlicense'] then
    exports['um-idcard']:CreateMetaLicense(src, 'weaponlicense')
    Player.Functions.RemoveMoney('bank', Config.IdentityPrices['weaponlicense'])
    TriggerClientEvent('mddev:client:Notify', src, args.itemName)
    else
        TriggerClientEvent('mddev:client:ErrorNotify', src, "Not enough funds.")
    end
end)
