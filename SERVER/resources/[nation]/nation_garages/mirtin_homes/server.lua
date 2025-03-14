local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface("nation_garages_lib",src)
Proxy.addInterface("nation_garages_lib",src)

vCLIENT = Tunnel.getInterface("nation_garages_lib")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.tryDelete(vehid)
	vCLIENT.syncVehicle(-1, vehid)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE GARAGENS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local houses = {}

RegisterServerEvent("nation:getGarages")
AddEventHandler("nation:getGarages", function(source, value) 
    houses = value

    TriggerClientEvent("nation:reciveGarages", source, houses)
end)

config.hasHome = function(source,user_id,home)
    if houses[home].tipo == "casa" then
        local owner = vRP.query("mirtin/ownerPropriedade", { houseID = home })
        if #owner > 0 then
            if user_id == parseInt(owner[1].proprietario) then
                return true
            end

            local moradores = json.decode(owner[1].moradores)
            if moradores[tostring(user_id)] ~= nil then
                return true
            end
        end
    end

    if houses[home].tipo == "apartamento" then
        local owner = vRP.query("mirtin/ownerPropriedade", { houseID = home })
        if #owner > 0 then
            for k,v in pairs(owner) do
                if parseInt(v.proprietario) == parseInt(user_id) then
                    return true
                end
            end
        end
    end

    TriggerClientEvent("Notify",source,"negado","Você não tem acesso à essa residência.",3000)
	return false
end