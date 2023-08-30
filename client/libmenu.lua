QBCore = exports['qb-core']:GetCoreObject()

local identityMenu = {
  id = 'identity_menu',
  title = 'Select identity',
  options = {},
}
for i = 1, #Config.mddevCards, 1 do
  identityMenu.options[#identityMenu.options + 1] = {
      title = Config.mddevCards[i].title,
      description = Config.mddevCards[i].description,
      icon = Config.mddevCards[i].icon,
      serverEvent = Config.mddevCards[i].serverEvent,
      args = Config.mddevCards[i].args,
      disabled = false,
  }
end
lib.registerContext({identityMenu})

RegisterNetEvent('mddev:client:Notify', function(itemName)
  QBCore.Functions.Notify("Your Identity approved: " .. itemName, "primary", 10)
end)

RegisterNetEvent('mddev:client:ErrorNotify', function(itemName)
  QBCore.Functions.Notify("Your Identity declined: " .. itemName, "error", 10)
end)
