local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPclient = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")


jhon = {}
Tunnel.bindInterface("durateston_doutornpc",jhon)

config =
{
	logChamadoDoctorNpc = "https://discord.com/api/webhooks/1305822248837451777/SQsxsXcCbaTyA7pwjj8wAuyquDxArDVH1U6xG-dtFjakvo7VmiYEfabmtfetOoHfZY96"
}

------------------------------------------------------------------------------------------
------------ SCRIPT REFEITO E CONVERTIDO POR JHON DURATESTON DISCORD: #jhondurateston-----
------------------------------------------------------------------------------------------

function jhon.ChamarMedico()
	local source = source
	local Passport = vRP.getUserId(source)
	if Passport then
		if DoctorOn() then
			if VerificarDinheiro() then
				TriggerClientEvent("Notify",source,"sucesso","O paramédico está a caminho",5000)
				local Ped = GetPlayerPed(source)
				local Coords = GetEntityCoords(Ped)	
				SendWebhookMessage(config.logChamadoDoctorNpc,"```lua\nㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ[ Chamou o Doutor Npc] \n\n\n[ Passport ]: "..Passport.."\n[ Cordenadas ]: "..json.encode(Coords).. "  \n\n "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."\n\r```")
				return true
			else
				TriggerClientEvent("Notify",source,"info","Você nao tem Dinheiro",5000)
				return false
			end
		else
			TriggerClientEvent("Notify",source,"negado","Existem Medicos em Serviço",5000)
			return false
		end	
	end	
	return false
end



function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end


function DoctorOn()
	local source = source
	local Passport = vRP.getUserId(source)
	local ids,amount = ServicesNumber()
	if Passport then
		if amount <= Config.Doctor then
			return true
		else
			return false	
		end	
	end		
	return false
end	

function VerificarDinheiro()
	local source = source
	local Passport = vRP.getUserId(source)
	if Passport then
		if vRP.tryFullPayment(Passport,Config.Price)  then
			return true
		end	
	end
	return false
end	


function jhon.Reanimar()
	local source = source
	local Passport = vRP.getUserId(source)
	if Passport then
		vRPclient.killGod(source)
		vRPclient.setHealth(source,150)
		vRP.varyThirst(user_id,-100)
		vRP.varyHunger(user_id,-100)
	end	
end	


function ServicesNumber()
	local cops = vRP.getUsersByPermission(Config.PermissionParamedic)
	return {},#cops
end