-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface("vrp_barbearia",src)
vCLIENT = Tunnel.getInterface("vrp_barbearia")

-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESKIN
-----------------------------------------------------------------------------------------------------------------------------------------
function src.updateSkin(custom)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.tryFullPayment(user_id, 500) then
			vRP.updateUserApparence(user_id, "rosto", custom)
			vRP.execute("apparence/rosto",{ user_id = user_id, rosto = json.encode(custom) })
			
			TriggerClientEvent("Notify",source,"sucesso","Você pagou <b>$"..vRP.format(500).." </b> ",5)
			return true
		else
			TriggerClientEvent("Notify",source,"negado","Você não tem dinheiro suficiente",5)
			return false
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN CHARACTER
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("barbershop:init", function(user_id)
	local source = vRP.getUserSource(user_id)
	if source then
		local data = vRP.getUserApparence(user_id)
		if user_id then
			if data.rosto then
				vCLIENT._setCharacter(source, data.rosto)
			end
		end
	end
end)