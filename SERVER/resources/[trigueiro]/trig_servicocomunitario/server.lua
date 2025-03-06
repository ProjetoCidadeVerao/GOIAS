local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
trig = {}
Tunnel.bindInterface("trig_servicocomunitario",trig)

-------------
----- CFG
-------------

local permpolicia = "admin.permissao"


-------------
-- COMMANDOS
-------------


local roupaantiga = {}

RegisterCommand("pender",function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    print(user_id)
    if vRP.hasPermission(user_id, permpolicia) then
        if args[1] == "list" and not args[2] and not args[3]  then
            TriggerClientEvent("Notify",source,"sucesso","<b>Tipos de serviços<br><br> - varrerchao<br> - cortargrama", 5000) 
        elseif args[1] and args[2] and args[3] then
            local player = vRP.getUserSource(parseInt(args[1]))
            local nplayerid = vRP.getUserId(player)
            roupaantiga[nplayerid] = vRPclient.getCustomization(player)

            vRP.setUData(parseInt(args[1]),"vRP:prisao",json.encode(parseInt(args[3])))
            TriggerClientEvent("comecartrabalhocomunitario",player,tostring(args[2]))
            TriggerClientEvent("roupapresidio",player)
            prison_servico(parseInt(args[3]))
        else
            TriggerClientEvent("Notify",source,"aviso","Utilize /pender [ID] [TIPO] [TEMPO]", 5000)
        end
    end
end)

RegisterCommand("rprisao",function(source,args,rawCommand)
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        if args[1] then
            local nsource = vRP.getUserSource(parseInt(args[1]))
            local nuserid = vRP.getUserId(nsource)
            vRP.setUData(parseInt(args[1]),"vRP:prisao",json.encode(parseInt(0))) 
            TriggerClientEvent("Notify",nsource,"aviso","Você sera liberto, aguarde")
            TriggerClientEvent("acabouprisao",nsource)
            TriggerClientEvent("updateRoupas",source,roupaantiga[nuserid])
            roupaantiga[nuserid] = nil
        end
    end
end)



-------------
-- SPAWN
-------------

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	local player = vRP.getUserSource(parseInt(user_id))
	if player then
		SetTimeout(30000,function()
			local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
			local tempo = json.decode(value) or -1

			if tempo == -1 then
				return
			end

			if tempo > 0 then
                local match = math.random(1,2)
                if match == 1 then
                    TriggerClientEvent("comecartrabalhocomunitario",source,tostring("limparchao"))
                    prison_servico(parseInt(user_id))
                elseif match == 2 then
                    TriggerClientEvent("comecartrabalhocomunitario",source,tostring("cortargrama"))
                    prison_servico(parseInt(user_id))
                end
                
			end
		end)
	end
end)

RegisterServerEvent("reduzirdeacord")
AddEventHandler("reduzirdeacord",function()
    local source = source
    local user_id = vRP.getUserId(source)
    local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
    local tempo = json.decode(value) or 0
    vRP.setUData(parseInt(user_id),"vRP:prisao",json.encode(parseInt(tempo)-0.15))

end)

RegisterServerEvent("acabarprisao")
AddEventHandler("acabarprisao",function()
    local source = source
    local user_id = vRP.getUserId(source)
    local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
    local tempo = json.decode(value) or 0
    TriggerClientEvent("updateRoupas",source,roupaantiga[user_id])
    TriggerClientEvent('prisioneiro',source,false)
    vRP.setUData(parseInt(user_id),"vRP:prisao",json.encode(-1))
    TriggerClientEvent("Notify",source,"aviso","Sua sentença terminou, esperamos não ve-lo novamente.")
    roupaantiga[user_id] = nil
end)

function prison_servico(target_id)
	local player = vRP.getUserSource(parseInt(target_id))
	if player then
		SetTimeout(60000,function()
			local value = vRP.getUData(parseInt(target_id),"vRP:prisao")
            local tempo = json.decode(value) or 0
			if parseInt(tempo) >= 1 then
				TriggerClientEvent("Notify",player,"aviso","Ainda vai passar <b>"..parseInt(tempo).." meses</b> preso.")
				vRP.setUData(parseInt(target_id),"vRP:prisao",json.encode(parseInt(tempo)-1))
				prison_servico(parseInt(target_id))
            elseif parseInt(tempo) <= 0 then
                TriggerClientEvent("acabouprisao",player,"tempo")
				TriggerClientEvent('prisioneiro',player,false)
				vRP.setUData(parseInt(target_id),"vRP:prisao",json.encode(-1))
                TriggerClientEvent("Notify",player,"aviso","Sua sentença terminou, esperamos não ve-lo novamente.")
                TriggerClientEvent("updateRoupas",player,roupaantiga[target_id])
                roupaantiga[target_id] = nil
          
			end
			vRPclient.PrisionGod(player)
		end)
	end
end


RegisterServerEvent("punicaodosafado")
AddEventHandler("punicaodosafado",function()
    local source = source
    local user_id = vRP.getUserId(source)
    local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
    local tempo = json.decode(value) or 0
   -- TriggerClientEvent("Notify",source,"aviso","Você foi punido com 5 meses adicionais.")
    vRP.setUData(parseInt(user_id),"vRP:prisao",json.encode(parseInt(tempo)+5))
end)

-- _____________________.___  ________ ____ ______________._____________ ________   
-- \__    ___/\______   \   |/  _____/|    |   \_   _____/|   \______   \\_____  \  
-- |    |    |       _/   /   \  ___|    |   /|    __)_ |   ||       _/ /   |   \ 
-- |    |    |    |   \   \    \_\  \    |  / |        \|   ||    |   \/    |    \
-- |____|    |____|_  /___|\______  /______/ /_______  /|___||____|_  /\_______  /
--                 \/            \/                 \/             \/         \/    