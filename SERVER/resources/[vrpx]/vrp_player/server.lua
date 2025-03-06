local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("vrp_player",src)
Proxy.addInterface("vrp_player",src)

vCLIENT = Tunnel.getInterface("vrp_player")
local arena = Tunnel.getInterface("mirtin_arena")
local garage = Proxy.getInterface("nation_garages")

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DISCORD API
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.CheckPlayers()
	return GetNumPlayerIndices()
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CR
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cr',function(source,args)
    local user_id = vRP.getUserId(source)
    if exports["vrp"]:checkCommand(user_id) and GetEntityHealth(GetPlayerPed(source)) > 105 then
		local status,time = exports['vrp']:getCooldown(user_id, "cr")
		if status then 
			exports['vrp']:setCooldown(user_id, "cr", 10)
			vRPclient.setCustomization(source, vRP.getUserApparence(user_id).clothes)
		else
			TriggerClientEvent("Notify",source,"negado","Você so pode utilizar esse comando em <b>".. time .." segundo(s)</b>",5)
		end
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- STATUS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('status',function(source,args)
    local user_id = vRP.getUserId(source)
    if user_id then 
		local status, time = exports['vrp']:getCooldown(user_id, "status")
        if status then
            exports['vrp']:setCooldown(user_id, "status", 5)
			local onlinePlayers = GetNumPlayerIndices()
			
			local policia = vRP.getUsersByPermission("perm.policia")
			local policiaPtr = #policia

			local policiacivil = vRP.getUsersByPermission("perm.policiacivil")
			local policiaCivilPtr = #policiacivil

			local policiatatica = vRP.getUsersByPermission("perm.tatica")
			local policiataticaPtr = #policiatatica

			local paramedico = vRP.getUsersByPermission("perm.hospital")	
			local paramedicoPtr = #paramedico

			local mecanica = vRP.getUsersByPermission("perm.texasrace")	
			local mecanicaPtr = #mecanica

			local bennys = vRP.getUsersByPermission("perm.bennys")	
			
			TriggerClientEvent("Notify",source,"importante","Jogadores Online: <b>".. onlinePlayers .."</b><br>Policiais Militares: <b>"..policiaPtr.."</b><br>Policiais Civis: <b>"..policiaCivilPtr.."</b><br>Policiais Tatica: <b>"..policiataticaPtr.."</b><br>Paramedicos: <b>"..paramedicoPtr.."</b><br>Mecânicos: <b>"..mecanicaPtr.."</b><br>Bennys: <b>"..#bennys.."</b> ", 10)
		end
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------
-- STATUSFAC
----------------------------------------------------------------------------------------------------------------------------------------
local statusFac = {
	{ permissao = "perm.lagunapark", title = "Armas:<br>🔫 Lagunapark: ", ultima = false },
	{ permissao = "perm.jardimnovomundo", title = "🔫 Jardimnovomundo: ", ultima = false },
	{ permissao = "perm.goiania", title = "🔫 Goiania: ", ultima = false },

	{ permissao = "perm.yakuza", title = "Munição:<br>📦 Yakuza: ", ultima = false },
	{ permissao = "perm.buenavista", title = "📦 Buenavista: ", ultima = false },
	{ permissao = "perm.vovo", title = "📦 Vovo: ", ultima = false },
	{ permissao = "perm.medelin", title = "📦 Medelin: ", ultima = false },
	{ permissao = "perm.grota", title = "📦 Grota: ", ultima = true },

	{ permissao = "perm.vilacanaa", title = "Desmanche:<br>⛓ Vilacanaa: ", ultima = false },
	{ permissao = "perm.elements", title = "⛓ Elements: ", ultima = false },
	{ permissao = "perm.turquia", title = "⛓ Turquia: ", ultima = false },
	{ permissao = "perm.roxos", title = "⛓ Roxos: ", ultima = false },
	{ permissao = "perm.japao", title = "⛓ Japao: ", ultima = false },
	{ permissao = "perm.grecia", title = "⛓ Grecia: ", ultima = true },

	{ permissao = "perm.garavelo", title = "Lavagem:<br>💵 Garavelo: ", ultima = false },
	{ permissao = "perm.bahamas", title = "💵 Bahamas: ", ultima = false },
	{ permissao = "perm.cassino", title = "💵 Cassino: ", ultima = false },
	{ permissao = "perm.galaxy", title = "💵 Galaxy: ", ultima = false },
	{ permissao = "perm.lifeinvader", title = "💵 Life Invader: ", ultima = true },

	{ permissao = "perm.veracruz", title = "Drogas:<br>💊 Veracruz: ", ultima = false },
	{ permissao = "perm.quebracaixote", title = "💊 QuebraCaixote: ", ultima = false },
	{ permissao = "perm.parqueoeste", title = "💊 Parqueoeste: ", ultima = false },
	{ permissao = "perm.emiliopovoa", title = "💊 EmilioPovoa: ", ultima = false },
	{ permissao = "perm.tiradentes", title = "💊 Tiradentes: ", ultima = false },
	{ permissao = "perm.medelin", title = "💊 Medelin: ", ultima = false },
	{ permissao = "perm.novaesperanca", title = "💊 Novaesperanca: ", ultima = false },
	{ permissao = "perm.turquia", title = "💊 Turquia: ", ultima = true },


	{ permissao = "perm.madregermano", title = "Muamba:<br>💊 madregermano: ", ultima = false },
	{ permissao = "perm.tequila", title = "💊 Tequila: ", ultima = false },
	{ permissao = "perm.cv", title = "💊 CV: ", ultima = false },
	{ permissao = "perm.caixabaixa", title = "💊 CaixaBaixa: ", ultima = false },
}

RegisterCommand('statusfac',function(source,args)
    local user_id = vRP.getUserId(source)
	if user_id then
		local status, time = exports['vrp']:getCooldown(user_id, "statusfac")
        if status then
            exports['vrp']:setCooldown(user_id, "statusfac", 20)
			if vRP.hasPermission(user_id , "admin.permissao") then
				local onlinePlayers = GetNumPlayerIndices()
				local onlinefacs = vRP.getUsersByPermission("perm.ilegal")
				local formatText = ""

				for k,v in pairs(statusFac) do
					if not v.ultima then
						formatText = formatText.. v.title.." <b>"..#vRP.getUsersByPermission(v.permissao).." </b><br>"
					else
						formatText = formatText.. v.title.." <b>"..#vRP.getUsersByPermission(v.permissao).." </b><br><br>"
					end
				end

				TriggerClientEvent("Notify", source,"importante","<b>GOIAS City:</b><br><br> "..formatText.." <br> <b>🌇 Ilegal: </b>"..#onlinefacs.."<br><b>🏘️ Total de jogadores Online: </b>".. onlinePlayers .. ".", 10)
			end
		end
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SEQUESTRAR
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local totalSequestro = {}
RegisterCommand('sequestrar', function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local nplayer = vRPclient.getNearestPlayer(source,5)
		if nplayer then
			local mPlaca,mName,mNet,mPortaMalas,mPrice,mLock,_,_,mVeh = vRPclient.ModelName(source, 5)
			if mName and mVeh then
				if vRPclient.isMalas(nplayer) then
					vRPclient._setMalas(nplayer, false)
					TriggerClientEvent("Notify",source,"sucesso","Você retirou o jogador do porta malas.", 5)

					totalSequestro[mPlaca] = totalSequestro[mPlaca] - 1
					if totalSequestro[mPlaca] <= 0 then
						totalSequestro[mPlaca] = 0
					end
				else
					if totalSequestro[mPlaca] == nil then
						totalSequestro[mPlaca] = 0
					end

					if vRPclient.isHandcuffed(nplayer) and vRPclient.isCapuz(nplayer) then
						if totalSequestro[mPlaca] >= 1 then
							TriggerClientEvent("Notify",source,"sucesso","Veiculo Cheio...", 5)
							return
						end

						vRPclient._setMalas(nplayer, true)
						TriggerClientEvent("Notify",source,"sucesso","Você colocou o jogador no porta malas.", 5)

						totalSequestro[mPlaca] = totalSequestro[mPlaca] + 1
					else
						TriggerClientEvent("Notify",source,"aviso","A pessoa precisa estar algemada para colocar ou retirar do Porta-Malas.")
					end
				end
			end
		end
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TRUNKIN
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local totalVehicle = {}

RegisterCommand('trunkin', function(source,args)
	local user_id = vRP.getUserId(source)
	if user_id then
		local mPlaca,mName,mNet,mPortaMalas,mPrice,mLock,_,_,mVeh = vRPclient.ModelName(source, 5)

		if not mLock and mVeh then
			if vRPclient.isHandcuffed(source) then
				return
			end
			
			if totalVehicle[mPlaca] == nil then
				totalVehicle[mPlaca] = 0
			end

			if not vRPclient.isInVehicle(source) then
				if vRPclient.isMalas(source) then
					vRPclient._setMalas(source, false)
					vCLIENT._updateTrunkIn(source, nil, false)
					TriggerClientEvent("Notify",source,"sucesso","Você saiu do porta malas.", 5)

					totalVehicle[mPlaca] = totalVehicle[mPlaca] - 1
					if totalVehicle[mPlaca] <= 0 then
						totalVehicle[mPlaca] = 0
					end
				else
					if totalVehicle[mPlaca] >= 2 then
						TriggerClientEvent("Notify",source,"sucesso","Veiculo Cheio...", 5)
						return
					end

					vRPclient._setMalas(source, true)
					vCLIENT._updateTrunkIn(source, mVeh, true)
					TriggerClientEvent("Notify",source,"sucesso","Você entrou no porta malas.", 5)

					totalVehicle[mPlaca] = totalVehicle[mPlaca] + 1
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PLACA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('placa', function(source,args)
    local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, "perm.policia") or vRP.hasPermission(user_id, "admin.permissao")  then
			local mPlaca,mName = vRPclient.ModelName(source, 5)
			local nuser_id = vRP.getUserByRegistration(mPlaca)
			if nuser_id then
				local identity = vRP.getUserIdentity(nuser_id)
				if identity then
					TriggerClientEvent("Notify",source,"importante","• Veiculo: <b>"..mName.."</b><br>• Placa: <b>"..mPlaca.."</b><br>• Proprietario: <b>"..identity.nome.. " "..identity.sobrenome.. "</b> (<b>"..identity.idade.."</b>)<br>• Telefone: <b>"..identity.telefone.."</b> <br>• Passaporte: <b>"..identity.user_id.."</b> ", 10)
				end
			else
				local nuser_id = vRP.getUserByRegistration(string.gsub(mPlaca, " ", ""))
				local identity = vRP.getUserIdentity(nuser_id)
				if nuser_id then
					if identity then
						TriggerClientEvent("Notify",source,"importante","• Veiculo: <b>"..mName.."</b><br>• Placa: <b>"..mPlaca.."</b><br>• Proprietario: <b>"..identity.nome.. " "..identity.sobrenome.. "</b> (<b>"..identity.idade.."</b>)<br>• Telefone: <b>"..identity.telefone.."</b> <br>• Passaporte: <b>"..identity.user_id.."</b> ", 10)
					end
				else
					TriggerClientEvent("Notify",source,"negado","Não foi possivel consultar esse veiculo. ", 5)
				end
			end
		end
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- GMOCHILA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('gmochila', function(source,args)
	local user_id = vRP.getUserId(source)
	if user_id then
		local ok = vRP.request(source, "Você deseja guardar sua(s) <b>"..vRP.getMochilaAmount(user_id).."</b> mochila(s)?", 30)
		local status, time = exports['vrp']:getCooldown(user_id, "mochila")
		if ok and GetEntityHealth(GetPlayerPed(source)) > 105 and status then
            exports['vrp']:setCooldown(user_id, "mochila", 10)
			
			vRP.giveInventoryItem(user_id, "mochila", vRP.getMochilaAmount(user_id), true)
			vRP.remMochila(user_id)
			TriggerClientEvent("Notify",source,"sucesso","Você guardou suas mochilas.", 5)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- VER O ID PROXIMO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('id', function(source,args)
    local source = source
    local user_id = vRP.getUserId(source)

	if user_id then
		local nplayer = vRPclient.getNearestPlayer(source,10)
		local nuser_id = vRP.getUserId(nplayer)
		if nplayer then
			TriggerClientEvent("Notify",source,"importante","ID Próximo: "..nuser_id, 5)
			-- TriggerClientEvent("Notify",nplayer,"importante","O [ID:"..user_id.."] acabou de ver seu id.", 5)
		else
			TriggerClientEvent("Notify",source,"negado","Nenhum jogador proximo.", 5)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHAMAR ADMIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('chamar', function(source, args, rawCommand)
local user_id = vRP.getUserId(source)
    if user_id ~= nil then
		if args[1] == "god" then
			local aceito = false
			local plyCoords = GetEntityCoords(GetPlayerPed(source))
            local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

			local desc = vRP.prompt(source,"Descreva seu problema:","")
			local status, time = exports['vrp']:getCooldown(user_id, "callgod")
			if desc and status then
				exports['vrp']:setCooldown(user_id, "callgod", 240)

				local admin = vRP.getUsersByPermission("ticket.permissao")
				for l,w in pairs(admin) do
					async(function()
						local player = vRP.getUserSource(parseInt(w))
						if player then
							vRPclient._playSound(player,"Event_Message_Purple","GTAO_FM_Events_Soundset")
							TriggerClientEvent('chatMessage', player,"^8[CALL-ADMIN]: ^0: [ID: "..user_id.."] "..desc.."")
							if vRP.request(player, "Você deseja aceitar o chamado admin do id "..user_id.."?", 30) then
								if not aceito then
									local nuser_id = vRP.getUserId(player)
									if player then
										local nidentity = vRP.getUserIdentity(nuser_id)
										
										aceito = true
										vRPclient._teleport(player, x,y,z)
										TriggerClientEvent("Notify",source,"sucesso","O Membro da staff <b> "..nidentity.nome.." "..nidentity.sobrenome.." </b> aceitou o seu chamado..", 5)
									end

									vRP.sendLog("ACEITARCHAMADOADMIN", "O ADMIN ID "..nuser_id.." aceitou o chamado do id "..user_id.."  [ "..desc.." ] ")
								else
									TriggerClientEvent("Notify",player,"negado","Este chamado ja foi aceito por outro staff.", 5)
								end
							end
						end
					end)
				end
	
				TriggerClientEvent("Notify",source,"sucesso","Você chamou um administrador, aguarde.", 5)
			end
		end
    end
end)

RegisterCommand('call', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		if args[1] == "god" then
			local aceito = false
			local plyCoords = GetEntityCoords(GetPlayerPed(source))
            local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]
			
			local desc = vRP.prompt(source,"Descreva seu problema:","")
			local status, time = exports['vrp']:getCooldown(user_id, "callgod")
			if desc and status then
				exports['vrp']:setCooldown(user_id, "callgod", 240)

				local admin = vRP.getUsersByPermission("ticket.permissao")
				for l,w in pairs(admin) do
					async(function()
						local player = vRP.getUserSource(parseInt(w))
						if player then
							vRPclient._playSound(player,"Event_Message_Purple","GTAO_FM_Events_Soundset")
							TriggerClientEvent('chatMessage', player,"^8[CALL-ADMIN]: ^0: [ID: "..user_id.."] "..desc.."")
							if vRP.request(player, "Você deseja aceitar o chamado admin do id "..user_id.."?", 30) then
								if not aceito then
									local nuser_id = vRP.getUserId(player)
									if player then
										local nidentity = vRP.getUserIdentity(nuser_id)
										
										aceito = true
										vRPclient._teleport(player, x,y,z)
										TriggerClientEvent("Notify",source,"sucesso","O Membro da staff <b> "..nidentity.nome.." "..nidentity.sobrenome.." </b> aceitou o seu chamado..", 5)
									end
								else
									TriggerClientEvent("Notify",player,"negado","Este chamado ja foi aceito por outro staff.", 5)
								end
							end
						end
					end)
				end
	
				TriggerClientEvent("Notify",source,"sucesso","Você chamou um administrador, aguarde.", 5)
			else
				TriggerClientEvent("Notify",source,"sucesso","Você só pode fazer chamado novamente em ".. time .."segundos.", 5)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("me",function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if args[1] then
			if GetEntityHealth(GetPlayerPed(source)) > 105 then
				local nplayers = vRPclient.getNearestPlayers(source, 20)
				for k in pairs(nplayers) do
			    	TriggerClientEvent("vrp_player:pressMe", parseInt(k), source,rawCommand:sub(4),{ 10,250,0,255,100 })
				end

				TriggerClientEvent("vrp_player:pressMe", source, source,rawCommand:sub(4),{ 10,250,0,255,100 })
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- /SKIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('skin',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"developer.permissao") then
        if parseInt(args[1]) then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                TriggerClientEvent("skinmenu",nplayer,args[2])
                TriggerClientEvent("Notify",source,"sucesso","Você setou a skin <b>"..args[2].."</b> no passaporte <b>"..parseInt(args[1]).."</b>.", 5)
            end
        end
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE IDENTIDADE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.getIdentity()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local carteira = vRP.getMoney(user_id)
	local banco = vRP.getBankMoney(user_id)
	local job = vRP.getUserGroupByType(user_id,"job") if (job == nil or job == "") then job = "Nenhum" end
	local org = vRP.getUserGroupByType(user_id,"org") if (org == nil or org == "") then org = "Nenhuma" end
	local vip = vRP.getUserGroupByType(user_id,"vip") if (vip == nil or vip == "") then vip = "Nenhum" end
	if user_id then
		return user_id,identity.nome,identity.sobrenome,identity.idade,identity.registro,identity.telefone,job,org,vip,vRP.format(carteira),vRP.format(banco)
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE CHECAR COMANDO BLOQUEADO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.blockCommands(segundos)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		exports["vrp"]:setBlockCommand(user_id, segundos)
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DELETAR VEICULO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.deleteVeh(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
		DeleteEntity(NetworkGetEntityFromNetworkId(vehicle))
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE PULAR E DERRUBAR PLAYER
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.TackleServerPlayer(Tackled,ForwardVectorX,ForwardVectorY,ForwardVectorZ,Tackler)
	local source = source
    local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "perm.policia") then
		if Tackled then
			vCLIENT.TackleClientPlayer(Tackled,ForwardVectorX,ForwardVectorY,ForwardVectorZ,Tackler)
		end
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TROCAR DE BANCO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("seat",function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id then
        if GetEntityHealth(GetPlayerPed(source)) > 105 then
			if tonumber(args[1]) then
				vCLIENT._seatPlayer(source, tonumber(args[1]))
			end
        end
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHECAR VIP OU BOOSTER
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.checkAttachs()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, "perm.vips") or vRP.hasPermission(user_id, "perm.booster") then
			return true
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- FESTINHA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('festa',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        local identity = vRP.getUserIdentity(user_id)
        local mensagem = vRP.prompt(source,"Mensagem:","")
        if mensagem == "" then
            return
        end
        vRPclient.setDiv(-1,"festinha"," @keyframes blinking {    0%{ background-color: #ff3d50; border: 2px solid #871924; opacity: 0.8; } 25%{ background-color: #d22d99; border: 2px solid #901f69; opacity: 0.8; } 50%{ background-color: #55d66b; border: 2px solid #126620; opacity: 0.8; } 75%{ background-color: #22e5e0; border: 2px solid #15928f; opacity: 0.8; } 100%{ background-color: #222291; border: 2px solid #6565f2; opacity: 0.8; }  } .div_festinha { font-size: 11px; font-family: arial; color: rgba(255, 255, 255,1); padding: 20px; bottom: 30%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; animation: blinking 1s infinite; } bold { font-size: 16px; }","<bold>"..mensagem.."</bold><br><br>Festeiro(a): "..identity.name.." "..identity.firstname)
        SetTimeout(30000,function()
            vRPclient.removeDiv(-1,"festinha")
        end)
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UNCUFF
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('uncuff',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"admin.permissao") then
			TriggerClientEvent("admcuff",source)
		end
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHECAR MANOBRAS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.checkPermVip()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"perm.manobras") or vRP.hasPermission(user_id,"admin.permissao") then
        return true
    end
end


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE SALARIOS 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local cfg = module("cfg/groups")
local grupos = cfg.groups
local salarios = {}
local sound = {}
local userSalario = {}

function src.rCountSalario()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then

		if salarios[user_id] == nil then 
			salarios[user_id] = 0 
		else
			salarios[user_id] = salarios[user_id] + 5
		end

		if salarios[user_id] >= 40 then
			pagarSalario(user_id)
			salarios[user_id] = 0
		end
	end
end

function pagarSalario(user_id)
	local source = vRP.getUserSource(user_id)
	if user_id then
		local groups = vRP.getUserGroups(user_id)

		if userSalario[user_id] ~= nil then
			if os.time() - userSalario[user_id] <= 60 then
				vRP.sendLog("", "[GOIAS] Possivel tentativa de DUP de salario: "..user_id)
			end
		end
		
		for k,v in pairs(groups) do
			if grupos[k] and grupos[k]._config ~= nil and grupos[k]._config.salario ~= nil then
				if grupos[k]._config.salario > 0 then
					userSalario[user_id] = os.time()
					vRP.giveBankMoney(user_id, grupos[k]._config.salario)
					TriggerClientEvent('chatMessage',source,"SALARIO:",{255,160,0}, "Você acaba de receber o salario de ^2"..k.."^0 no valor de ^2 $ "..vRP.format(grupos[k]._config.salario))
				end
			end
		end
	end
end

RegisterCommand('salario', function(source,args)
	local user_id = vRP.getUserId(source)
	if user_id then
		if salarios[user_id] ~= nil then
			TriggerClientEvent('chatMessage',source,"SALARIO: ",{255,160,0}, " Ainda faltam ^2 ".. 40 - salarios[user_id].." minuto(s)^0 para você receber o seu salario.")
		end
	end
end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE CHAMADOS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local servicesAn = {
	["perm.policia"] = { prefix = "^5[POLICIA]" },
	["perm.hospital"] = { prefix = "^1[HOSPITAL]" },
	["perm.mecanica"] = { prefix = "^2[BENNYS]" },
	["perm.texasrace"] = { prefix = "^2[MECANICA]" },
}

RegisterCommand('an',function(source,args,rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
	
		if user_id then
			for k,v in pairs(servicesAn) do
				if vRP.hasPermission(user_id, k) then
					TriggerClientEvent('chatMessage',-1,v.prefix.. "^0 " ..identity.nome.." "..identity.sobrenome.. ": ",{64,64,255},rawCommand:sub(3))
					break;
				end
			end
		end
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- EVENTOS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trytow")
AddEventHandler("trytow",function(nveh,rveh)
	TriggerClientEvent("synctow",-1,nveh,rveh)
end)

RegisterServerEvent("trytrunk")
AddEventHandler("trytrunk",function(nveh)
	TriggerClientEvent("synctrunk",-1,nveh)
end)

RegisterServerEvent("trywins")
AddEventHandler("trywins",function(nveh)
	TriggerClientEvent("syncwins",-1,nveh)
end)

RegisterServerEvent("tryhood")
AddEventHandler("tryhood",function(nveh)
	TriggerClientEvent("synchood",-1,nveh)
end)

RegisterServerEvent("trydoors")
AddEventHandler("trydoors",function(nveh,door)
	TriggerClientEvent("syncdoors",-1,nveh,door)
end)

function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE RELACIONAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------
local delayShip = {}

vRP._prepare("setRelacionamento", "UPDATE vrp_user_identities SET relacionamento = @relacionamento WHERE user_id = @user_id")
vRP._prepare("getRelacionamento", "SELECT relacionamento FROM vrp_user_identities WHERE user_id = @user_id")

RegisterCommand('namorar', function(source,args)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	
	if user_id then
		if not delayShip[user_id] then delayShip[user_id] = 0 end

		if vRP.getInventoryItemAmount(user_id, "alianca") <= 0 then
			TriggerClientEvent("Notify",source,"negado","Você não possui uma aliança.",5)
			return
		end

		if (os.time() - delayShip[user_id]) < 60 then
			TriggerClientEvent("Notify",source,"negado","Aguarde para fazer um pedido novamente.",5)
			return
		end

		local shipUserId = getRelacionamento(user_id)
		if shipUserId.tipo ~= nil then
			TriggerClientEvent("Notify",source,"negado","Você ja está em uma relação no momento.",5)
			return
		end

		local nplayer = vRPclient.getNearestPlayer(source, 5)
		if nplayer then
			local nuser_id = vRP.getUserId(nplayer)
			local nidentity = vRP.getUserIdentity(nuser_id)
			if nuser_id then
				local shipNUserId = getRelacionamento(nuser_id)
				if shipNUserId.tipo ~= nil then
					TriggerClientEvent("Notify",source,"negado","Este Jogador já está em uma relação no momento.",5)
					return
				end
				TriggerClientEvent("Notify",source,"negado","Você está fazendo o pedido de namoro...",5)

				TriggerClientEvent("emotes", nplayer, "cruzar")
				TriggerClientEvent("emotes", source, "ajoelhar")
				TriggerClientEvent("emotes", source, "rosa")

				local requestCasamento = vRP.request(nplayer, "O(a) "..identity.nome.. " "..identity.sobrenome.." Está pedindo sua mão em namoro, deseja aceitar?")
				if requestCasamento then
					delayShip[user_id] = os.time()
					delayShip[nuser_id] = os.time()

					TriggerClientEvent('chat:addMessage',-1,{template='<div style="display:flex;align-items:center;justify-content:center;padding:10px;margin:5px 0;background-image: linear-gradient(to right, rgba(240, 108, 108,0.8) 3%, rgba(240, 86, 86,0) 95%);border-radius: 5px;"><img width="32" style="float: left;" src="https://cdn.discordapp.com/attachments/928341690828345445/979172601610002453/hearts.png">'..identity.nome.. ' '..identity.sobrenome..' está namorando '..nidentity.nome..' '..nidentity.sobrenome..'</b></div>'})
					TriggerClientEvent("emotes", nplayer, "beijar")
					TriggerClientEvent("emotes", source, "beijar")

					vRP._execute("setRelacionamento", { user_id = nuser_id, relacionamento = json.encode({ tipo = "Namorando", user_id = user_id, data = os.date("%d/%m/%Y", os.time()), name = identity.nome.. " ".. identity.sobrenome }) })
					vRP._execute("setRelacionamento", { user_id = user_id, relacionamento = json.encode({ tipo = "Namorando", user_id = nuser_id, data = os.date("%d/%m/%Y", os.time()), name = nidentity.nome.. " ".. nidentity.sobrenome }) })
					vRP._updateIdentity(user_id)
					vRP._updateIdentity(nuser_id)
					vRP.tryGetInventoryItem(user_id, "alianca", 1)
				else
					TriggerClientEvent("Notify",source,"negado","Seu Pedido foi recusado.",5)
				end
			end
		end
	end
end)

RegisterCommand('casar', function(source,args)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	
	if user_id then
		if not delayShip[user_id] then delayShip[user_id] = 0 end

		if vRP.getInventoryItemAmount(user_id, "alianca") <= 0 then
			TriggerClientEvent("Notify",source,"negado","Você não possui uma aliança.",5)
			return
		end

		if (os.time() - delayShip[user_id]) < 60 then
			TriggerClientEvent("Notify",source,"negado","Aguarde para fazer um pedido novamente.",5)
			return
		end

		local shipUserId = getRelacionamento(user_id)
		if shipUserId.tipo ~= nil then
			if shipUserId.tipo == "Casado(a)" then
				TriggerClientEvent("Notify",source,"negado","Sossega! Você já está Casado(a).",5)
				return
			end

			local nplayer = vRPclient.getNearestPlayer(source, 5)
			if nplayer then
				local nuser_id = vRP.getUserId(nplayer)
				local nidentity = vRP.getUserIdentity(nuser_id)
				if nuser_id then
					if shipUserId.user_id == nuser_id then
						TriggerClientEvent("Notify",source,"negado","Você está fazendo o pedido de casamento...",5)

						local requestCasamento = vRP.request(nplayer, "O(a) "..identity.nome.. " "..identity.sobrenome.." Está pedindo você em casamento, deseja aceitar?")
						if requestCasamento then
							delayShip[user_id] = os.time()
							delayShip[nuser_id] = os.time()
							TriggerClientEvent('chat:addMessage',-1,{template='<div style="display:flex;align-items:center;justify-content:center;padding:10px;margin:5px 0;background-image: linear-gradient(to right, rgba(240, 108, 108,0.8) 3%, rgba(240, 86, 86,0) 95%);border-radius: 5px;"><img width="32" style="float: left;" src="https://cdn.discordapp.com/attachments/928341690828345445/979172601610002453/hearts.png">'..identity.nome.. ' '..identity.sobrenome..' e '..nidentity.nome..' '..nidentity.sobrenome..' acabaram de se casar.</b></div>'})
					
							vRP._execute("setRelacionamento", { user_id = nuser_id, relacionamento = json.encode({ tipo = "Casado(a)", user_id = user_id, data = os.date("%d/%m/%Y", os.time()), name = identity.nome.. " ".. identity.sobrenome }) })
							vRP._execute("setRelacionamento", { user_id = user_id, relacionamento = json.encode({ tipo = "Casado(a)", user_id = nuser_id, data = os.date("%d/%m/%Y", os.time()), name = nidentity.nome.. " ".. nidentity.sobrenome }) })
							vRP._updateIdentity(user_id)
							vRP._updateIdentity(nuser_id)
							vRP.tryGetInventoryItem(user_id, "alianca", 1)
						else
							TriggerClientEvent("Notify",source,"negado","Seu Pedido foi recusado.",5)
						end
					else
						TriggerClientEvent("Notify",source,"negado","Essa pessoa não namora você.",5)
					end
				end
			end
		else
			TriggerClientEvent("Notify",source,"negado","Você não está em uma relação no momento.",5)
			return
		end
	end
end)

RegisterCommand('terminar', function(source,args)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		if not delayShip[user_id] then delayShip[user_id] = 0 end

		if (os.time() - delayShip[user_id]) < 60 then
			TriggerClientEvent("Notify",source,"negado","Aguarde para fazer isso.",5)
			return
		end

		local shipUserId = getRelacionamento(user_id)
		if shipUserId.tipo == nil then
			TriggerClientEvent("Notify",source,"negado","Você não pode terminar uma relação que não existe.",5)
			return
		end

		if shipUserId.tipo == "Namorando" then
			TriggerClientEvent('chat:addMessage',-1,{template='<div style="display:flex;align-items:center;justify-content:center;padding:10px;margin:5px 0;background-image: linear-gradient(to right, rgba(135, 135, 135,0.8) 3%, rgba(105, 105, 105,0) 95%);border-radius: 5px;"><img width="32" style="float: left;" src="https://cdn.discordapp.com/attachments/928341690828345445/979177362212155413/broken-heart.png">'..identity.nome.. ' '..identity.sobrenome..' e '..shipUserId.name..' terminaram o namoro.</b></div>'})
			
			vRP._execute("setRelacionamento", { user_id = shipUserId.user_id, relacionamento = json.encode({}) })
			vRP._execute("setRelacionamento", { user_id = user_id, relacionamento = json.encode({}) })
			vRP._updateIdentity(user_id)
			vRP._updateIdentity(shipUserId.user_id)
			return
		end

		if shipUserId.tipo == "Casado(a)" then
			TriggerClientEvent('chat:addMessage',-1,{template='<div style="display:flex;align-items:center;justify-content:center;padding:10px;margin:5px 0;background-image: linear-gradient(to right, rgba(135, 135, 135,0.8) 3%, rgba(105, 105, 105,0) 95%);border-radius: 5px;"><img width="32" style="float: left;" src="https://cdn.discordapp.com/attachments/928341690828345445/979177362212155413/broken-heart.png">'..identity.nome.. ' '..identity.sobrenome..' e '..shipUserId.name..' terminaram o casamento.</b></div>'})
			
			vRP._execute("setRelacionamento", { user_id = shipUserId.user_id, relacionamento = json.encode({}) })
			vRP._execute("setRelacionamento", { user_id = user_id, relacionamento = json.encode({}) })
			vRP._updateIdentity(user_id)
			vRP._updateIdentity(shipUserId.user_id)
		end
	end
end)

function getRelacionamento(user_id)
	local query = vRP.query("getRelacionamento", { user_id = user_id })
	if #query > 0 then
		return json.decode(query[1].relacionamento)
	end

	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- NPC CONTROL
-----------------------------------------------------------------------------------------------------------------------------------------
--trafficDensity = 0.1  ---  aqui voce coooloca a quantidade de npc CARROS
--pedDensity = 0.3  ---  aqui voce coooloca a quantidade de npc APE
--Citizen.CreateThread(function()
--    while true do
--        SetVehicleDensityMultiplierThisFrame(trafficDensity)
--        SetPedDensityMultiplierThisFrame(pedDensity)
--        SetRandomVehicleDensityMultiplierThisFrame(trafficDensity)
--        SetParkedVehicleDensityMultiplierThisFrame(trafficDensity)
--        SetScenarioPedDensityMultiplierThisFrame(pedDensity, pedDensity)
--    Citizen.Wait(0)
--    end
--end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- SORTEIO PLAYERS ONLINE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("sorteioss",function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local id_usuarios = {}
	if user_id then
		if vRP.hasPermission(user_id,"admin.permissao") then
			local users = vRP.getUsers()
			for k,v in pairs(users) do
				local target_source = vRP.getUserSource(k)
				if target_source ~= nil then
					table.insert(id_usuarios,k)
				end
			end
			local sorteado = math.random(#id_usuarios)
			local identity = vRP.getUserIdentity(id_usuarios[sorteado])
			TriggerClientEvent("sorteio:Notify", -1, 121, "Sorteio", "O sorteio foi realizado e o sortudo foi: [ID]: "..id_usuarios[sorteado].." [NOME]: "..identity.name.." "..identity.firstname.."!", 6)
		end
	end
end)


