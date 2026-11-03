--[[
    Pigeon No Auto Helmet: client.

    GTA has a ped config flag for each kind of automatic helmet. Setting it on the player's own character
    stops the helmet being put on, so there's nothing to take off afterwards and no animation.
]]

local RESOURCE = GetCurrentResourceName()
local DISABLE_AUTO_HELMET_BIKES = 380      -- CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInBikes
local DISABLE_AUTO_HELMET_AIRCRAFT = 381   -- CPED_CONFIG_FLAG_DisableAutoEquipHelmetsInAircraft

local function apply(ped, enabled)
    if Config.Bikes then SetPedConfigFlag(ped, DISABLE_AUTO_HELMET_BIKES, enabled) end
    if Config.Aircraft then SetPedConfigFlag(ped, DISABLE_AUTO_HELMET_AIRCRAFT, enabled) end
end

CreateThread(function()
    while true do
        apply(PlayerPedId(), true)
        Wait(math.floor((Config.ReapplySeconds or 1.0) * 1000))
    end
end)

-- A new character after respawning: apply straight away rather than waiting for the next pass.
AddEventHandler('playerSpawned', function()
    apply(PlayerPedId(), true)
end)

-- Hand helmets back to GTA when the resource stops.
AddEventHandler('onResourceStop', function(resource)
    if resource == RESOURCE then apply(PlayerPedId(), false) end
end)
