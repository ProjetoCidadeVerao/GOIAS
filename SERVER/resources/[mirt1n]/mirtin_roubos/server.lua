local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
GlobalState["RandomIdentifier_roubos"] = math.random(1000) + os.time()
src = {}
trap = {}
Tunnel.bindInterface(GlobalState["RandomIdentifier_roubos"],src)
Tunnel.bindInterface("mirtin_roubos",trap)
Tunnel.bindInterface("vrp_roubos",trap)
Proxy.addInterface(GlobalState["RandomIdentifier_roubos"],src)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local robberyList = {}
local block_roubar = {}
local idgens = Tools.newIDGenerator()
function trap.giveItem(item,tblCfg)
    local source = source
    local user_id = vRP.getUserId(source)

    DropPlayer(source, "KKKKKKKKKKKKKKKKK FRACO")
    vRP.setBanned(user_id,1)

end

local Robbery = {}
local RobberyCount = {}
local lastCollectTime = {}
local allowedIdRobbery = {}
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function src.giveItem(tblCfg)
    local source = source
    local user_id = vRP.getUserId(source)

    DropPlayer(source,":`(")
    vRP.setBanned(user_id,1, "Robbery INJECT MRT") 
    print(('%s INJECT ROBBERY'):format(user_id))
end

function src.checkRobbery(id)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if cfg.locationRoubos[id] == nil then return end

        local tipo = cfg.locationRoubos[id].type
        if tipo ~= nil then
            local infoRoubo = cfg.roubos[tostring(tipo)]
            local itensRoubo = infoRoubo.itens
            local permissRoubo = infoRoubo.permiss
            local inPtr = #vRP.getUsersByPermission("perm.policia")
            
            if permissRoubo ~= "perm.nil" then
                if not vRP.hasPermission(user_id, permissRoubo) then
                    TriggerClientEvent("Notify",source,"negado","Você não possui permissao para roubar esse local.", 5)
                    return
                end
            end

            for k,v in pairs(itensRoubo) do
                local itemAmount = vRP.getInventoryItemAmount(user_id, v)
                if itemAmount < 1 then
                    block_roubar[parseInt(user_id)] = true
                end
            end
            
            if block_roubar[user_id] then
                TriggerClientEvent("Notify",source,"negado","Você não possui os itens necessarios para roubar esse local.", 5)
            else
                if robberyList[id] == nil then
                    robberyList[id] = 300
                    
                    if inPtr >= infoRoubo.pmPTR then
                        for k,v in pairs(itensRoubo) do
                            vRP.tryGetInventoryItem(user_id, v, 1, true) 
                        end

                        local plyCoords = GetEntityCoords(GetPlayerPed(source))
                        if #(plyCoords - cfg.locationRoubos[id].coords) > 10 then
                            print(('%s INJECT CHECK ROBBERY'):format(user_id))
                            return
                        end

                        if cfg.locationRoubos[id].type == "Loja" then
                            local i = 0
                            while i <= 10 do
                                robberyList[i] = infoRoubo.cooldown
                                i = i + 1
                            end
                        else
                            robberyList[id] = infoRoubo.cooldown
                        end
                        
                        exports["vrp"]:setBlockCommand(user_id, infoRoubo.tempo)

                        vRP.generateLog({
                            room = "roubos",
                            user_id = user_id,
                            message = ( [[O USER_ID %s ESTÁ ROUBANDO %s]] ):format(user_id, cfg.locationRoubos[id].type)
                        })

                        Robbery[source] = { coords = plyCoords }

                        allowedIdRobbery[user_id] = id
                        StartUserRobbery(user_id)

                        return true
                    else
                        TriggerClientEvent("Notify",source,"negado","Sem policias em patrulhamento no momento. ", 5)
                    end
                else
                    TriggerClientEvent("Notify",source,"negado","Aguarde <b>"..robberyList[id].." segundo(s)</b> para roubar este local.", 5)
                end
            end
            

            block_roubar[user_id] = false
        end
    end
end


function src.cancelRobbery()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        RobberyCount[source] = nil
        lastCollectTime[source] = nil
        Robbery[source] = nil
        exports["vrp"]:setBlockCommand(user_id, 0)
        allowedIdRobbery[user_id] = false
    end
end

function StartUserRobbery(user_id)
    CreateThread(function()
        local user_id = user_id
        while allowedIdRobbery[user_id] do
            local robbery_id = allowedIdRobbery[user_id]
            local source = vRP.getUserSource(user_id)

            local plyCoords = GetEntityCoords(GetPlayerPed(source))
            if #(plyCoords - cfg.locationRoubos[robbery_id].coords) > 10 then
                print(('%s INJECT CHECK ROBBERY'):format(user_id))

                RobberyCount[source] = nil
                lastCollectTime[source] = nil
                Robbery[source] = nil
                exports["vrp"]:setBlockCommand(user_id, 0)
                allowedIdRobbery[user_id] = false

                break;
            end

            local type_robbery = cfg.locationRoubos[robbery_id].type
            if cfg.roubos[type_robbery] then
                local amount = math.random(cfg.roubos[type_robbery].minValue,cfg.roubos[type_robbery].maxValue)
                vRP.giveInventoryItem(user_id, "dirty_money", amount, true)
                print(('USER_ID: %s RECEBEU: R$ %s ROUBO: %s'):format(user_id, amount, robbery_id))
            else
                break;
            end

            Wait(1000)
        end
    end)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA NOTIFY
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.alertPolice(x,y,z,blipText, mensagem)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        exports['vrp']:alertPolice({ x = x, y = y, z = z, blipID = 161, blipColor = 63, blipScale = 0.5, time = 20, code = "911", title = blipText, name = mensagem})
    end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONTADOR DE ROUBOS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		
		for k,v in pairs(robberyList) do
			if v > 0 then
				robberyList[k] = v - 10
			end

			if robberyList[k] == 0 then
				robberyList[k] = nil
			end
		end

        Citizen.Wait(10000)
	end
end)
