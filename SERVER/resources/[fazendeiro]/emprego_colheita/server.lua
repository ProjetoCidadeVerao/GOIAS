local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
emP = {}
Tunnel.bindInterface("emprego_colheita",emP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS COLHEITA
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPayment()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        randgraos = math.random(1,3)
        if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("maconha") <= vRP.getInventoryMaxWeight(user_id) then
            vRP.giveInventoryItem(user_id,"maconha",parseInt(randgraos))
            TriggerClientEvent("Notify",source,"sucesso","Você recebeu <b>"..randgraos.."</b> Grãos.")
        else
            TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.")
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS SEPARAR GRAOS
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkGraos()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id,"maconha") >= 5 then
			return true 
		else
			TriggerClientEvent("Notify",source,"negado","<b>Grãos</b> insuficientes.") 
			return false
		end
	end
end

function emP.separarGraos()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.tryGetInventoryItem(user_id,"maconha",5) then
            rgraos = math.random(2,4)
            vRP.giveInventoryItem(user_id,"graos",parseInt(rgraos))
            TriggerClientEvent("Notify",source,"sucesso","Você recebeu <b>"..rgraos.."</b> Grãos.")
        end
    end
end