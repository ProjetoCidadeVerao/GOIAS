-----------------------------------------------------------------------------
--------------------[ DEVELOPED BY BJORN IRONSIDE ]--------------------------
-----------------------[  Discord:Bjorn#5034  ]------------------------------
-----------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

----- Para alterar a tecla do menu o player deve alterar a mesma na config de seu jogo (Configuraçoes/Teclado/Fivem/PainelDj)


SystemConfig = {
	["License"] = "AU6WAGZE1VAZZ1Z96AAYA2XI5HM8G2",									---- Licença
	["CreateCommand"] = "mesa",							---- Defina o comando de criar aqui.
	["RemoveCommand"] = "rmesa",						---- Defina o comando de deletar aqui.	
	["UsePermTable"] = true,							---- Define se irá usar permissão para criar a mesa de DJ
	["PermTable"] = "perm.som1", 					---- Define a permissão caso acima esteja true
	["UsePermPanel"] = true,							---- Define se irá usar permissão para mexer no menu
	["PermPanel"] = "perm.som1",					---- Define a permissão caso acima esteja true	
	["InitialSoundValue"] = 1,						---- Define o som inicial de cada mesa entre 0 e 1
	["DistanceSound"] = 80, 							---- Distancia do som em metros
	["DistanceFireWork"] = 0,							---- Distancia que os fogos carregam em metros
	["Log"] = "https://discord.com/api/webhooks/1256973952417534013/JoSzXYtFJxGe4DzxzsPuCR2EQ_76tYOR_haXyrChMtvL9hciRQ02fByPE7LCDvEq0xIw",										---- Link de sua log (Se quiser configurar a log basta descer mais o config que tem a função)
	["LogOnlyCreate"] = true,							---- Se tiver true só irá enviar log quando a mesa for criada/removida.
}

Lights = {
	["Static"] = false, 								---- Se true as luzes ficarão em uma cor só definida abaixo.(Consequentemente reduz o consumo)
	["LeftLight"] = {255,0,0},							---- Cor da luz esquerda quando estática (R,G,B)
	["RightLight"] = {0,0,255},							---- Cor da luz direita quando estática (R,G,B)
	["DLeftLight"] = {255,0,0},							---- Cor da luz de baixo da esquerda quando estática (R,G,B)
	["DRightLight"] = {0,0,255},						---- Cor da luz de baixo da direita quando estática (R,G,B)
	["MovementDelay"] = 10,								---- Velocidade em que as luzes se movimentam, quanto menor mais rápido porém o consumo aumenta.
	["ChangeDelay"] = 300,								---- Velocidade em que a cor randomica muda, quanto menor o valor mais rapido muda porém o consumo de processamento aumenta.
}

CreateTableAnim = {"" , ""}		---- Desativado por enquanto

DjAnims = {
	["CancelAnimOnExit"] = false,	---- Define se irá cancelar a animação do DJ ao sair do menu.
	
	["InitialDance"] = {"anim@amb@nightclub@djs@solomun@","sol_idle_ctr_mid_a_sol"},	---- Essa será a dança inicial ao entrar na mesa
	
	["Dances"] = {																		---- Dancas disponiveis para o player alterar, fique a vontade para adicionar/remover.
		{"anim@amb@nightclub@djs@dixon@","dixn_idle_cntr_m_dix"},
		{"anim@amb@nightclub@djs@solomun@","sol_dance_l_sol"},
		{"anim@amb@nightclub@djs@black_madonna@","dance_b_idle_a_blamadon"},
		{"anim@amb@nightclub@djs@dixon@","dixn_end_dix"},
		{"anim@amb@nightclub@djs@dixon@","dixn_idle_cntr_a_dix"},
		{"anim@amb@nightclub@djs@dixon@","dixn_idle_cntr_b_dix"},
		{"anim@amb@nightclub@djs@dixon@","dixn_idle_cntr_g_dix"},
		{"anim@amb@nightclub@djs@dixon@","dixn_idle_cntr_gb_dix"},
		{"anim@amb@nightclub@djs@dixon@","dixn_sync_cntr_j_dix"},					
		{"anim@amb@nightclub@djs@dixon@","dixn_dance_open_a_dix"},
		{"anim@amb@nightclub@djs@solomun@","sol_idle_ctr_mid_a_sol"},	---- Dança inicial
	}
}
	

Translate = {
	["NoPerm"] = "Você não tem permissão para isto.",
	["Create"] = "Equipamento montado!",
	["Delete"] = "Equipamento desmontado!",
	["errDistance"] = "Já tem um equipamento próximo.",
	["errDelDistance"] = "Nenhum equipamento próximo.",
	["InvalidLink"] = "Musica não encontrada ou site inválido.",
	["addedMusic"] = "Musica adicionada!",
	["removedMusic"] = "Musica removida!",
	["errAdd"] = "Essa musica ja foi adicionada.",
	["SmokeOn"] = "Fumaça ligada!",
	["SmokeOff"] = "Fumaça desligada!",
	["FireworkOn"] = "Fogos ativados!",
	["FireworkOff"] = "Fogos desativados, aguarde finalizar os ultimos fogos!",
	["LightOn"] = "Luz ligada!",
	["LightOff"] = "Luz desligada!",
	["Paused"] = "Musica Pausada!",
	["UnPaused"] = "Musica Retomada!",
	["forward"] = "Musica Avançada!",
	["rewind"] = "Musica Retrocedida!",
	["noFwMusic"] = "Nenhuma musica para avançar!",
	["noReMusic"] = "Nenhuma musica para retroceder!",
	["DanceChanged"] = "Dança alterada!",
	["DanceNumber"] = "Dança atual %s, número de danças %s!",
}


BlipConfig = {
	["MapBlip"] = true,								---- Define se irá aparecer o Blip no mapa e abaixo é configurações do blip.
	["BlipType"] = 162,								---- Tipo do blip
	["BlipColor"] = 1,								---- Cor do blip
	["BlipScale"] = 1.0,							---- Escala do blip
	["BlipText"] = "DJ em ACAO",						---- Texto Do Blip
}

-------------------------------------------------------------
-------------------------------------------------------------
--------------------Funções em geral-------------------------
-------------------------------------------------------------
-------------------------------------------------------------

Log = function(type,id,cds,idmesa,link)
	if type == "Criou" then
		SendWebhookMessage(SystemConfig["Log"],"```cs\nㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ[ BJORN DJ ]  \n\n[ ID ]: "..id.."\n[ AÇÃO ]: Criou mesa \n[ ID DA MESA ]: "..idmesa.." \n[ COORDENADAS ]: "..cds[1]..","..cds[2]..","..cds[3].." \n "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."  \r```")
	elseif type == "Removeu" then
		SendWebhookMessage(SystemConfig["Log"],"```cs\nㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ[ BJORN DJ ]  \n\n[ ID ]: "..id.."\n[ AÇÃO ]: Removeu mesa \n[ ID DA MESA ]: "..idmesa.." \n[ COORDENADAS ]: "..cds[1]..","..cds[2]..","..cds[3].." \n "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."  \r```")
	elseif type == "AdicionouMusica" then
		SendWebhookMessage(SystemConfig["Log"],"```cs\nㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ[ BJORN DJ ]  \n\n[ ID ]: "..id.."\n[ AÇÃO ]: Adicionou musica \n[ ID DA MESA ]: "..idmesa.."  \n[ LINK ]: "..link.." \n "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."  \r```")
	elseif type == "RemoveuMusica" then
		SendWebhookMessage(SystemConfig["Log"],"```cs\nㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ[ BJORN DJ ]  \n\n[ ID ]: "..id.."\n[ AÇÃO ]: Removeu musica \n[ ID DA MESA ]: "..idmesa.." \n[ LINK ]: "..link.." \n "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."  \r```")
	end	
end


---- Notify

Notify = function(type,msg,s,serverside)
	if not serverside then	
		if type == "sucesso" then
			TriggerEvent("Notify",type,msg)
		elseif type == "aviso" then
			TriggerEvent("Notify",type,msg)
		elseif type == "negado" then
			TriggerEvent("Notify",type,msg)
		end
	else
		if type == "sucesso" then
			TriggerClientEvent("Notify",s,type,msg)
		elseif type == "aviso" then
			TriggerClientEvent("Notify",s,type,msg)
		elseif type == "negado" then
			TriggerClientEvent("Notify",s,type,msg)
		end
	end
end

---- Permissao

ChkPerm = function(menu,id)
	if menu then
		return vRP.hasPermission(id,SystemConfig["PermPanel"])		
	else
		return vRP.hasPermission(id,SystemConfig["PermTable"])
	end	
end

---- ID

GetId = function(s)
	return vRP.getUserId(s)
end

---- Pega os usuarios online

GetPlayers = function()
	return vRP.getUsers()
end

















