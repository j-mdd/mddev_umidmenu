QBCore = exports['qb-core']:GetCoreObject()

-- Blips
local function mddevblips()
    local identityLocs = AddBlipForCoord(Config.Blips.x, Config.Blips.y, Config.Blips.z)
    SetBlipSprite(identityLocs, Config.Blipss['BlipSprite'])
    SetBlipColour(identityLocs, Config.Blipss['BlipColor'])
    SetBlipDisplay(identityLocs, Config.Blipss['BlipDisplay'])
    SetBlipScale(identityLocs, Config.Blipss['BlipScale'])
    SetBlipAsShortRange(identityLocs, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(Config.Blipss['BlipText'])
    EndTextCommandSetBlipName(identityLocs)
  end

  
  CreateThread(function()
    mddevblips()
  end) 

 local function ReqModel()
    local npcModel = GetHashKey(Config.NPC.model)
    RequestModel(npcModel)
    while not HasModelLoaded(npcModel) do
        Wait(100)
    end
    return npcModel
end

CreateThread(function()
    local npcPed = CreatePed(4, ReqModel(), Config.NPC.coords.x, Config.NPC.coords.y, Config.NPC.coords.z - 1, Config.NPC.coords.w, false, false)
    SetBlockingOfNonTemporaryEvents(npcPed, true)
    SetEntityInvincible(npcPed, true)
    SetPedFleeAttributes(npcPed, 0, 0)
    FreezeEntityPosition(npcPed, true)
    TaskStartScenarioInPlace(npcPed, Config.NPC['scenario'], 0, true)
end)