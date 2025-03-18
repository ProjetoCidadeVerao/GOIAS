-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())
vSKIN = Tunnel.getInterface("vrp_skinshop")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
cO = {}
Tunnel.bindInterface(GetCurrentResourceName(),cO)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIÁVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("saveClothes","INSERT IGNORE INTO clothes(name,permiss,service,custom,sexo) VALUES(@name,@permiss,@service,@custom,@sexo)")
vRP._prepare("updateClothes","UPDATE clothes SET custom = @custom WHERE name = @name AND permiss = @permiss")
vRP._prepare("deleteClothes","DELETE FROM clothes WHERE name = @name")
vRP._prepare("selectClothesT","SELECT * FROM clothes WHERE service = @service AND sexo = @sexo")
vRP._prepare("selectClothesW","SELECT * FROM clothes WHERE name = @name AND sexo = @sexo")
vRP._prepare("selectClothes","SELECT * FROM clothes WHERE name = @name AND permiss = @permiss")

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEFAULTCOMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
local maxServices = {
    ["HOSPITAL"] = {15},
    ["Sport RACE"] = {15},
    ["POLICIA"] = {15},
    ["Civil"] = {15},
    ["Giro"] = {15},
    ["Rotam"] = {15},
}

local equipamentos = {
    ["Comando [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub-Comando [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Coronel [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Tenente Coronel [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_PUMPSHOTGUN_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Major [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Capitao [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Tenente [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_SPECIALCARBINE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Tenente [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_CARBINERIFLE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cadete [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_CARBINERIFLE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Sub Tenente [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_CARBINERIFLE"] = {ammo= 250},
            ["WEAPON_SMG"] = {ammo= 250},
            ["WEAPON_PISTOL_MK2"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["1 Sargento [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPDW"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["2 Sargento [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPDW"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["3 Sargento [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_CARBINERIFLE_MK2"] = {ammo= 250},
            ["WEAPON_COMBATPDW"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Cabo [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_COMBATPDW"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Soldado [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_COMBATPDW"] = {ammo= 250},
            ["WEAPON_COMBATPISTOL"] = {ammo= 250},
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
            ["WEAPON_NIGHTSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,

    ["Penal [POLICIA]"] = function(source, user_id) 
        vRPC._giveWeapons(source, { 
            ["WEAPON_STUNGUN"] = {ammo= 1},
            ["WEAPON_NIGTHSTICK"] = {ammo= 1},
        }, true)

        vRP.giveInventoryItem(user_id, "body_armor", 1, true) -- COLETE
        vRP.giveInventoryItem(user_id, "radio", 1, true) -- RADIO
    end,
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEFAULTCOMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("sysClothes:applyPreset")
AddEventHandler("sysClothes:applyPreset",function(perm)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then

        local sexo
        if GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_m_freemode_01") then 
            sexo = "mp_m_freemode_01"
        elseif GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_f_freemode_01") then 
            sexo = "mp_f_freemode_01"
        end

        if perm == "apply" then 
            local permiss = string.upper(vRP.getUserGroupOrg(user_id))
            if permiss == "" then permiss = "Nenhum" end
            if permiss == "AUTO SPORT" or permiss == "SPORT RACE" then
                permiss = "Sport RACE"
            end
            TriggerClientEvent("dynamic:closeSystem2", source)
            local clothes = vRP.prompt(source, "Insira o nome do uniforme", "")
            if clothes and clothes ~= "" and clothes ~= nil and maxServices[permiss] then
                local myClothes = vRPC.getCustomization(source)
                if myClothes then 
                    local maxconsult = vRP.query("selectClothesT",{ service = permiss })
                    if parseInt(#maxconsult) >= maxServices[permiss][1] then 
                        TriggerClientEvent("Notify",source,"negado","Você atingiu o número máximo de uniformes, delete algum para prosseguir.",6000)
                        return false 
                    end

                    vRP.execute("saveClothes",{ name = clothes, service = permiss, permiss = permiss, custom = json.encode(myClothes), sexo = sexo })
                    TriggerClientEvent("Notify",source,"importante","Preset salvo com sucesso",6000)
                end
            end

        elseif perm == "delete" then 
            local permiss = vRP.getUserGroupOrg(user_id):upper()
            if permiss == "" then permiss = "Nenhum" end
            if permiss == "AUTO SPORT" or permiss == "SPORT RACE" then
                permiss = "Sport RACE"
            end

            TriggerClientEvent("dynamic:closeSystem2", source)
            local clothes = vRP.prompt(source, "Insira o nome do uniforme que deseja deletar.", "")
            if clothes then 
                local consult = vRP.query("selectClothes",{ permiss = permiss, name = clothes })
                if consult[1] then 
                    vRP.execute("deleteClothes",{ name = clothes })
                    TriggerClientEvent("Notify",source,"importante","Uniforme deletado",6000)  
                end
            end

        elseif perm == "sairPtr" then
            if vRP.hasPermission(user_id, "perm.policia") then
                vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            elseif vRP.hasPermission(user_id, "perm.Sportrace") then
                vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            elseif vRP.hasPermission(user_id, "perm.sportrace") then
                --vRP.sendLog("https://discordapp.com/api/webhooks/1029551169711906897/nhM3PCiwEIWk6lWPb1Br7KKWU-PGN0R0TzQNWtRXNBRJstrGuxUUh1Ep7TCdoAhSWJqy", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            elseif vRP.hasPermission(user_id, "perm.autosport") then
                vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            elseif vRP.hasPermission(user_id, "perm.hospital") then
                vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." saiu de serviço```")
            end

            limparItems(user_id)
            TriggerEvent('eblips:remove',source)
            vRPC._giveWeapons(source, {}, true)
            
            vRP.addUserGroup(user_id, "Paisana")
            TriggerClientEvent("Notify",source,"importante","Você saiu de patrulhamento..",6000)
        end

        local consult = vRP.query("selectClothesW",{ name = perm, sexo = sexo })
        local myClothes = vRPC.getCustomization(source)
        if consult[1] and consult[1].custom then
            limparItems(user_id)
            
            vRPC._setCustomization(source,json.decode(consult[1].custom))
            vRP.removeUserGroup(user_id, "Paisana")

            TriggerClientEvent("Notify",source,"sucesso","Você entrou em patrulhamento..",6000)
            local permiss = vRP.getUserGroupOrg(user_id)
            if permiss == "" then return end
            TriggerEvent('eblips:add',{ name = permiss, src = source, color = 3 })

            -- for index in pairs(equipamentos) do
            --     if vRP.hasGroup(user_id, index) then
            --         equipamentos[index](source, user_id)
            --         TriggerClientEvent("Notify",source,"sucesso","Você recebeu seus equipamentos ..",6000)
            --         break;
            --     end
            -- end

            for index, equipamento in pairs(equipamentos) do
                -- Verifica se o usuário tem o grupo e a permissão necessária para o armamento
                if vRP.hasGroup(user_id, index) and vRP.hasPermission(user_id, "perm.policia") then
                    -- Chama a função para entregar o equipamento
                    equipamento(source, user_id)
                    TriggerClientEvent("Notify", source, "sucesso", "Você recebeu seus equipamentos ..", 6000)
                    break
                else
                    -- Caso não tenha permissão, notifica o jogador
                    --TriggerClientEvent("Notify", source, "erro", "Você não tem permissão para este equipamento.", 6000)
                end
            end
            

            if vRP.hasPermission(user_id, "perm.policia") then
                vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            elseif vRP.hasPermission(user_id, "perm.Sportrace") then
                vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            elseif vRP.hasPermission(user_id, "perm.sportrace") then
                --vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            elseif vRP.hasPermission(user_id, "perm.autosport") then
                vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            elseif vRP.hasPermission(user_id, "perm.hospital") then
                vRP.sendLog("SAIUDESERVIÇO", "```prolog\n[USER_ID]: "..user_id.." Entrou em serviço```")
            end 
        end
    end
end)

cO.requestClothes = function(sv,perm)
    local source = source 
    local user_id = vRP.getUserId(source)
    if user_id then 
        if vRP.hasPermission(user_id, perm) or vRP.hasGroup(user_id, "Paisana") then 
            local sexo
            if GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_m_freemode_01") then 
                sexo = "mp_m_freemode_01"
            elseif GetEntityModel(GetPlayerPed(source)) == GetHashKey("mp_f_freemode_01") then 
                sexo = "mp_f_freemode_01"
            end

            print(sv)
            local consult = vRP.query("selectClothesT",{ service = sv, sexo = sexo })
            if consult[1] then 
                return consult
            end

            return false
        end
    end
end

cO.requestPermission = function(perm,perm2)
    local source = source 
    local user_id = vRP.getUserId(source)
    if user_id then 
        return (vRP.hasPermission(user_id, perm) or vRP.hasGroup(user_id, "Paisana")),vRP.hasPermission(user_id, perm2)
    end
end
       
function limparItems(id)
    vRP.tryGetInventoryItem(id, "body_armor", vRP.getInventoryItemAmount(id, "body_armor"), true)
	vRP.tryGetInventoryItem(id, "radio", vRP.getInventoryItemAmount(id, "radio"), true)
end