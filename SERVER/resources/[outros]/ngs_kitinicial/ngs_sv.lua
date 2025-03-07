
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

local timers = {}
ngs = {}
Tunnel.bindInterface(GetCurrentResourceName(), ngs)

function RemoveVeiculos(user_id)
    local removalTime = os.time() + Ngs.RemoveVR
    SetTimeout(removalTime - os.time(), function()
        if vRP.getUserSource(user_id) then
            vRP.execute("mirtin_garages/dealership/removeVehicle", {
                user_id = parseInt(user_id),
                vehicle = Ngs.vehicleInfo.model
            })
            TriggerClientEvent("Notify", vRP.getUserSource(user_id), "aviso", "Seu veículo Vip  foi removido.", 10000)
        end
    end)
end


-- RegisterNetEvent("Resgate:kit")
-- AddEventHandler("Resgate:kit", function()
RegisterNetEvent('kitinicial', function()
    local source = source
    local user_id = vRP.getUserId(source)
    local jaPegouKit = parseInt(vRP.getUData(user_id, "vrp:kit")) == 1

    if not jaPegouKit then
        vRP.setUData(user_id, "vrp:kit", 1)

        for item, quantity in pairs(Ngs.kitItems) do
            vRP.giveInventoryItem(user_id, item, quantity)
        end

        vRP.addUserGroup(user_id, Ngs.vipGroupName)

        -- Armazenando o tempo atual e o tempo de remoção no banco de dados
        local currentTime = os.time()
        vRP.setUData(user_id, "vip:removal_time", currentTime + Ngs.vipGroupRemovalDuration)

        vRP.execute("mirtin_garages/dealership/addVehicle", { 
            user_id = parseInt(user_id), 
            vehicle = Ngs.vehicleInfo.model, 
            ipva = parseInt(currentTime),
            fuel = 100,
            body = 10000, 
            engine = 1000,
            plate = vRP.generatePlate()
        })
        
        TriggerClientEvent("Notify", source, "sucesso", Ngs.notifyMessages.success, 10000)

        local playerName = GetPlayerName(source)
        local itemDescriptions = {}
        for item, quantity in pairs(Ngs.kitItems) do
            table.insert(itemDescriptions, string.format(" %s (%sx)", item, quantity))
        end

        local receivedTime = os.date("%d/%m/%Y %H:%M:%S", currentTime)
        local removalTime = os.date("%d/%m/%Y %H:%M:%S", currentTime + Ngs.vipGroupRemovalDuration)
    
        local message = string.format("> O jogador %s resgatou o kit inicial:\n\n > ``` Itens:```\n > %s\n\n > ``` Carro:```\n > %s\n\n > ``` Vip Inicial``` \n > Recebido em %s e Sera Removido em: %s", playerName, table.concat(itemDescriptions, "\n >  "), Ngs.vehicleInfo.model, receivedTime, removalTime)

        SendWebhookMessage(message)

    else
        TriggerClientEvent("Notify", source, "negado", Ngs.notifyMessages.denied, 10000)
    end
end)

-- Verificação no login do jogador
AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
    if first_spawn then
        local removalTime = vRP.getUData(user_id, "vip:removal_time")
        removalTime = tonumber(removalTime)

        if removalTime and os.time() >= removalTime then
            vRP.removeUserGroup(user_id, Ngs.vipGroupName)
            RemoveVeiculos(user_id)

            -- Notifica o jogador que o VIP foi removido
            TriggerClientEvent("Notify", source, "info", Ngs.notifyMessages.vipRemoved, 10000)
        end
    end
end)




function SendWebhookMessage(message)
    local futuristicEmbed = {
        title = " [KIT INICIAL RESGATADO]",
        description = message,
        color = 0x00ff00,
        thumbnail = {
            url = Ngs.logoURL
        },
        footer = {
            
            text = "NETGAMES STORE Todos os direitos reservados.",
            icon_url = Ngs.footerIconURL
        }
    }
    PerformHttpRequest(Ngs.webhookURL, function(statusCode, text, headers) end, "POST", json.encode({ embeds = { futuristicEmbed } }), { ["Content-Type"] = "application/json" })
end
