local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("mirtin_snippets",src)
Proxy.addInterface("mirtin_snippets",src)

vCLIENT = Tunnel.getInterface("mirtin_snippets")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE TRANCAS DE PORTA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local doorsLocked = {}
local doors = config.doors

GlobalState.syncDoor = {}

RegisterServerEvent("tryLockDoor", function(doorId)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, doors[doorId].perm) or vRP.hasGroup(user_id, "developer") then
            if doors[doorId].isGate then
                vRPclient._playAnim(source,true,{"anim@mp_player_intmenu@key_fob@","fob_click"},false)
            else
                vRPclient._playAnim(source,true,{"veh@mower@base","start_engine"},false)
            end
           
            if not doorsLocked[doorId] then 
                doorsLocked[doorId] = true
            else
                doorsLocked[doorId] = nil
            end

            GlobalState.syncDoor = { id = doorId, status = doorsLocked[doorId] }
        end
    end
end)

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	if user_id then
		TriggerClientEvent('doors:load', source, doorsLocked)
	end
end)

CreateThread(function()
    for k in pairs(config.doors) do
        if doors[k] and doors[k].lock then
            doorsLocked[k] = true
        end
    end

    Wait(1000)
    TriggerClientEvent('doors:load', -1, doorsLocked)
end)