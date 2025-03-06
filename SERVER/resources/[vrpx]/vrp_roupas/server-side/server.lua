local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("vrp_roupas",src)
vCLIENT = Tunnel.getInterface("vrp_roupas")

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.payment(valor, value)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if valor == 0 then
			valor = 50
		end 
		
		if vRP.tryFullPayment(user_id, tonumber(valor)) then
			vRP.execute("apparence/roupas",{ user_id = user_id, roupas = json.encode(value) })
			vRP.updateUserApparence(user_id, "clothes", value)

			TriggerClientEvent("Notify",source,"sucesso","Você pagou <b>$"..vRP.format(parseInt(valor)).." </b> em roupas e acessórios.",5)
			return true
		else
			TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro.",5)
		end
	end
end

RegisterCommand('oculos', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "oculos", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('chapeu', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "chapeu", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('sapatos', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "sapato", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('maos', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "mao", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('colete', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "colete", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('jaqueta', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "jaqueta", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('mascara', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "mascara", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('acessorio', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "acessorio", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('blusa', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "blusa", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)

RegisterCommand('calca', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id,"perm.roupas") then
			vCLIENT._updateClothes(source, "calca", tonumber(args[1]), tonumber(args[2]))
		end
	end
end)
