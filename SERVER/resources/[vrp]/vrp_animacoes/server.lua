local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")


eG = {}
Tunnel.bindInterface("vrp_animacoes",eG)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /e
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("e",function(source,args,rawCommand)
	local source = source
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local nplayer = vRPclient.getNearestPlayer(source,3)	
		
		if args[1] == "fumar" then
		vRP.antiflood(source,"Flodando animação de fumar pra cair todos no limbo",4)
		elseif args[1] == "fumar2" then
		vRP.antiflood(source,"Flodando animação de fumar pra cair todos no limbo",4)
		elseif args[1] == "fumar3" then
		vRP.antiflood(source,"Flodando animação de fumar pra cair todos no limbo",4)
		elseif args[1] == "tragar" then
		vRP.antiflood(source,"Flodando animação de tragar pra cair todos no limbo",4)
		elseif args[1] == "beber" then
		vRP.antiflood(source,"Flodando animação de beber pra cair todos no limbo",4)
		elseif args[1] == "beber2" then
		vRP.antiflood(source,"Flodando animação de beber pra cair todos no limbo",4)
		elseif args[1] == "beber3" then
		vRP.antiflood(source,"Flodando animação de beber pra cair todos no limbo",4)
		elseif args[1] == "beber4" then
		vRP.antiflood(source,"Flodando animação de beber pra cair todos no limbo",4)
		elseif args[1] == "beber5" then
		vRP.antiflood(source,"Flodando animação de beber pra cair todos no limbo",4)
		elseif args[1] == "beber6" then
		vRP.antiflood(source,"Flodando animação de beber pra cair todos no limbo",4)
		elseif args[1] == "beber7" then
		vRP.antiflood(source,"Flodando animação de beber pra cair todos no limbo",4)
		elseif args[1] == "beber8" then
		vRP.antiflood(source,"Flodando animação de beber pra cair todos no limbo",4)
		elseif args[1] == "musica" then
		vRP.antiflood(source,"Flodando animação de musica pra cair todos no limbo",4)
		elseif args[1] == "musica2" then
		vRP.antiflood(source,"Flodando animação de musica pra cair todos no limbo",4)
		elseif args[1] == "musica3" then
		vRP.antiflood(source,"Flodando animação de musica pra cair todos no limbo",4)
		elseif args[1] == "musica4" then
		vRP.antiflood(source,"Flodando animação de musica pra cair todos no limbo",4)
		elseif args[1] == "ligar" then
		vRP.antiflood(source,"Flodando animação de ligar pra cair todos no limbo",4)
		end

		if nplayer and not vRPclient.isInVehicle(nplayer) and not vRPclient.isHandcuffed(nplayer) and vRPclient.getHealth(nplayer) > 101 then
			if args[1] == "beijar" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja beijar <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,1.3)
					TriggerClientEvent("syncAnimAll",source,"beijar")
					TriggerClientEvent("syncAnimAll",nplayer,"beijar")
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou o beijo.", 5000)
				end
			elseif args[1] == "abracar" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja abraçar <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,0.8)
					TriggerClientEvent("syncAnimAll",source,"abracar")
					TriggerClientEvent("syncAnimAll",nplayer,"abracar")
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou o abraço.", 5000)
				end
			elseif args[1] == "abracar2" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja abraçar <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,1.2)
					TriggerClientEvent("syncAnimAll",source,"abracar2")
					TriggerClientEvent("syncAnimAll",nplayer,"abracar2")
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou o abraço.", 5000)
				end
			elseif args[1] == "abracar3" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja abraçar <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,0.8)
					TriggerClientEvent("syncAnimAll",source,"abracar3")
					TriggerClientEvent("syncAnimAll",nplayer,"abracar3")
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou o abraço.", 5000)
				end
			elseif args[1] == "abracar4" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja abraçar <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,1.4)
					TriggerClientEvent("syncAnimAll",source,"abracar4")
					TriggerClientEvent("syncAnimAll",nplayer,"abracar4")
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou o abraço.", 5000)
				end
			elseif args[1] == "dancar257" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja dançar com <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,1.0)
					TriggerClientEvent("syncAnimAll",source,"dancar257")
					TriggerClientEvent("syncAnimAll",nplayer,"dancar257")
					-- Citizen.Wait(13000)
					vRPclient._DeletarObjeto(source)
					vRPclient._DeletarObjeto(nplayer)
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou a dança.", 5000)
				end
			elseif args[1] == "dancar258" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja dançar com <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,1.0)
					TriggerClientEvent("syncAnimAll",source,"dancar258")
					TriggerClientEvent("syncAnimAll",nplayer,"dancar258")
					-- Citizen.Wait(12000)
					vRPclient._DeletarObjeto(source)
					vRPclient._DeletarObjeto(nplayer)
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou a dança.", 5000)
				end
			elseif args[1] == "dancar259" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja dançar com <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,1.0)
					TriggerClientEvent("syncAnimAll",source,"dancar259")
					TriggerClientEvent("syncAnimAll",nplayer,"dancar259")
					-- Citizen.Wait(11000)
					vRPclient._DeletarObjeto(source)
					vRPclient._DeletarObjeto(nplayer)
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou a dança.", 5000)
				end
			elseif args[1] == "casal" then
				TriggerClientEvent("notify",source, "#FFA500","Alerta", "aviso","Aguardando a pessoa próxima aceitar a animação.", 5000)
				if vRP.request(nplayer,"Deseja casal com <b>"..identity["name"].." "..identity["firstname"].."</b> ?",5) then
					TriggerClientEvent("syncAnim",source,0.3)
					TriggerClientEvent("syncAnimAll",source,"casal",1)
					TriggerClientEvent("syncAnimAll",nplayer,"casal",2)
				else
					TriggerClientEvent("Notify",source,"Negado", "aviso","A pessoa negou o casal.", 5000)
				end
			end		
		end
		TriggerClientEvent("emotes",source,args[1])
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /e2
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('e2',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			TriggerClientEvent("emotes",nplayer,args[1])
		end
	end
end)

RegisterCommand('e3',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		local nplayer = vRPclient.getNearestPlayers(source,30)
		for k,v in pairs(nplayer) do 
			TriggerClientEvent("emotes",k,args[1])
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PANO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryclean")
AddEventHandler("tryclean",function(nveh)
	TriggerClientEvent("syncclean",-1,nveh)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNC PARTICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trySyncParticle")
AddEventHandler("trySyncParticle",function(asset,v)
    TriggerClientEvent("startSyncParticle",-1,asset,v)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STOP SYNC PARTICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryStopParticle")
AddEventHandler("tryStopParticle",function(v)
    TriggerClientEvent("stopSyncParticle",-1,v)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKS ANIM
-----------------------------------------------------------------------------------------------------------------------------------------
local ac_webhook = "https://discord.com/api951620307314167858/2Tex4RudhqNyv0On9Pk-8WDr-l-mzIAiMcz4i6Kcngvw0o7GdyOuOJJk1FWMJ6QHs1_B"

function banir(user_id)
	source = vRP.getUserSource(user_id)
	if source ~= nil then
		local ped = GetPlayerPed(source) 
		local loc = GetEntityCoords(ped) 
		local reason = "ANTI HACK: 	localização:	"..loc.x..","..loc.y..","..loc.z
		vRP.setBanned(user_id,true)					
		local temp = os.date("%x  %X")
		local msg = "Puxando todos players!"
		PerformHttpRequest(ac_webhook, function(err, text, headers) end, 'POST', json.encode({content = "ANTI HACK	[ID]: "..user_id.."		"..temp.."[BAN]		[MOTIVO:"..msg.."]	"..reason}), { ['Content-Type'] = 'application/json' }) 		
		TriggerClientEvent("vrp_sound:source",source,"ban",1.0)
		Citizen.Wait(4000)
		source = vRP.getUserSource(user_id)
		vRP.kick(source,"Tentativa de bug!")						
	end
end

------------------------------------------------------------
-- PEGAR DE REFEM
----------------------------------------------------------------

RegisterServerEvent('cmg3_animations:syncSCRIPTFODIDO')
AddEventHandler('cmg3_animations:syncSCRIPTFODIDO', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget,attachFlag)
	vRP.antiflood(source,"cmg3_animations:syncSCRIPTFODIDO",8)
	local user_id = vRP.getUserId(source)
	if(target~=0 or targetSrc~=0)then
		banir(user_id)
		return
	end
	
	targetSrc = vRPclient.getNearestPlayer(source,3)
	
	animationLib = 'anim@gangops@hostage@'
	animation = 'perp_idle'
	animationLib2 = 'anim@gangops@hostage@'
	animation2 = 'victim_idle'
	distans = 0.11
	distans2 = -0.24 
	height = 0.0
	spin = 0.0		
	length = 100000
	controlFlagSrc = 49
	controlFlagTarget = 49
	animFlagTarget = 50
	attachFlag = true
	
	
	TriggerClientEvent('cmg3_animations:syncTargetSCRIPTFODIDO', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget,attachFlag)
	TriggerClientEvent('cmg3_animations:syncMeSCRIPTFODIDO', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('release_cmg3_animations:syncSCRIPTFODIDO')
AddEventHandler('release_cmg3_animations:syncSCRIPTFODIDO', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget,attachFlag)
	vRP.antiflood(source,"cmg3_animations:syncSCRIPTFODIDO",8)
	local user_id = vRP.getUserId(source)
	if(target~=0 or targetSrc~=0)then
		banir(user_id)
		return
	end
	
	targetSrc = vRPclient.getNearestPlayer(source,3)
	
	animationLib = 'reaction@shove'
	animation = 'shove_var_a'
	animationLib2 = 'reaction@shove'
	animation2 = 'shoved_back'
	distans = 0.11 --Higher = closer to camera
	distans2 = -0.24 --higher = left
	height = 0.0
	spin = 0.0		
	length = 100000
	controlFlagSrc = 120
	controlFlagTarget = 0
	animFlagTarget = 1
	attachFlag = false
	
	TriggerClientEvent('cmg3_animations:syncTargetSCRIPTFODIDO', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget,attachFlag)
	TriggerClientEvent('cmg3_animations:syncMeSCRIPTFODIDO', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('killHostage_cmg3_animations:syncSCRIPTFODIDO')
AddEventHandler('killHostage_cmg3_animations:syncSCRIPTFODIDO', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget,attachFlag)
	vRP.antiflood(source,"cmg3_animations:syncSCRIPTFODIDO",8)
	local user_id = vRP.getUserId(source)
	if(target~=0 or targetSrc~=0)then
		banir(user_id)
		return
	end
	
	targetSrc = vRPclient.getNearestPlayer(source,3)
	
	animationLib = 'anim@gangops@hostage@'
	animation = 'perp_fail'
	animationLib2 = 'anim@gangops@hostage@'
	animation2 = 'victim_fail'
	distans = 0.11 --Higher = closer to camera
	distans2 = -0.24 --higher = left
	height = 0.0
	spin = 0.0		
	length = 0.2
	controlFlagSrc = 168
	controlFlagTarget = 0
	animFlagTarget = 1
	attachFlag = false
	
	TriggerClientEvent('cmg3_animations:syncTargetSCRIPTFODIDO', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget,attachFlag)
	TriggerClientEvent('cmg3_animations:syncMeSCRIPTFODIDO', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('cmg3_animations:stopSCRIPTFODIDO')
AddEventHandler('cmg3_animations:stopSCRIPTFODIDO', function(targetSrc)
	vRP.antiflood(source,"cmg3_animations:stopSCRIPTFODIDO",8)
	local user_id = vRP.getUserId(source)
	if(targetSrc~=0)then
		banir(user_id)
		return
	end
	targetSrc = vRPclient.getNearestPlayer(source,3)
	
	TriggerClientEvent('cmg3_animations:cl_stopSCRIPTFODIDO', targetSrc)
end)



------------------------------------------------------------
-- CAVALINHO
----------------------------------------------------------------
RegisterServerEvent('cmg2_animations:syncSCRIPTFODIDO_2')
AddEventHandler('cmg2_animations:syncSCRIPTFODIDO_2', function(target, animationLib, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget)	
	vRP.antiflood(source,"cmg2_animations:syncSCRIPTFODIDO_2",8)
	local user_id = vRP.getUserId(source)
	if(target~=0 or targetSrc~=0)then
		banir(user_id)
		return
	end
	targetSrc = vRPclient.getNearestPlayer(source,3)
	
	animationLib = 'anim@arena@celeb@flat@paired@no_props@'
	animation = 'piggyback_c_player_a'
	animation2 = 'piggyback_c_player_b'
	distans = -0.07
	distans2 = 0.0
	height = 0.45
	spin = 0.0		
	length = 100000
	controlFlagSrc = 49
	controlFlagTarget = 33
	animFlagTarget = 1
	
	TriggerClientEvent('cmg2_animations:syncTargetSCRIPTFODIDO_2', targetSrc, source, animationLib, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget)
	TriggerClientEvent('cmg2_animations:syncMeSCRIPTFODIDO_2', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('cmg2_animations:stopSCRIPTFODIDO_2')
AddEventHandler('cmg2_animations:stopSCRIPTFODIDO_2', function(targetSrc)
	vRP.antiflood(source,"cmg3_animations:stopSCRIPTFODIDO",8)
	local user_id = vRP.getUserId(source)
	if(targetSrc~=0)then
		banir(user_id)
		return
	end
	targetSrc = vRPclient.getNearestPlayer(source,3)
	
	if targetSrc ~= nil then
	TriggerClientEvent('cmg2_animations:cl_stopSCRIPTFODIDO_2', targetSrc)
	end
end)

------------------------------------------------------------
-- TODDYNHO
----------------------------------------------------------------

RegisterCommand('webbandido', function(source)
	TriggerClientEvent( 'webbandido', source )
end)

RegisterCommand('e2', function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "owner.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			TriggerClientEvent("emotes",nplayer,args[1])
		end
	end
end)

RegisterCommand('e3', function(source,args,rawCommand)
    local source = source
    local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "owner.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
        if args[2] then
            local nplayer = vRP.getUserSource(parseInt(args[2]))
            if nplayer then
                TriggerClientEvent("emotes",nplayer,args[1])
            end
        end
    end
end, false)


RegisterServerEvent("tryclean")
AddEventHandler("tryclean",function(nveh)
	TriggerClientEvent("syncclean",-1,nveh)
end)

RegisterCommand('dancalouca', function(source,args,rawCommand)
	local nplayer = vRPclient.getNearestPlayer(source,2)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if nplayer then
		
		if vRP.request(nplayer,"Deseja dançar com <b>"..identity.name.." "..identity.firstname.."</b> ?", 1500) then
			TriggerClientEvent("syncanim",source, 1.3)
			TriggerClientEvent("dancalouca",source)
			TriggerClientEvent("dancalouca",nplayer)
		else
			TriggerClientEvent("Notify",source,"aviso","A pessoa negou a dança!",1)
		end
	else
		TriggerClientEvent("Notify",source,"aviso","Nenhum player próximo!",1)
	end
end)

RegisterCommand('yoga', function(source,args,rawCommand)
	local nplayer = vRPclient.getNearestPlayer(source,2)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if nplayer then
		
		if vRP.request(nplayer,"Deseja praticar yoga com <b>"..identity.name.." "..identity.firstname.."</b> ?", 1500) then
			TriggerClientEvent("syncanim",source, 1.3)
			TriggerClientEvent("yoga",source)
			TriggerClientEvent("yoga",nplayer)
		else
			TriggerClientEvent("Notify",source,"aviso","A pessoa negou o yoga!",1)
		end
	else
		TriggerClientEvent("Notify",source,"aviso","Nenhum player próximo!",1)
	end
end)


------------------------------------------------------------
--  CARREGAR 
----------------------------------------------------------------
RegisterNetEvent('vrp_animacoes:sync')
AddEventHandler('vrp_animacoes:sync', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget)
	 print("got to srv vrp_animacoes:sync")
	TriggerClientEvent('vrp_animacoes:syncTarget', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget)
	-- print("triggering to target: " .. tostring(targetSrc))
	TriggerClientEvent('vrp_animacoes:syncMe', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterNetEvent('vrp_animacoes:stop')
AddEventHandler('vrp_animacoes:stop', function(targetSrc)
	TriggerClientEvent('vrp_animacoes:cl_stop', targetSrc)
end)


RegisterNetEvent('vrp_animacoes:sync')
AddEventHandler('vrp_animacoes:sync', function(target, animationLib, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget)
	-- print("got to srv vrp_animacoes:sync")
	TriggerClientEvent('vrp_animacoes:syncTarget', targetSrc, source, animationLib, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget)
	-- print("triggering to target: " .. tostring(targetSrc))
	TriggerClientEvent('vrp_animacoes:syncMe', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterNetEvent('vrp_animacoes:stop')
AddEventHandler('vrp_animacoes:stop', function(targetSrc)
	TriggerClientEvent('vrp_animacoes:cl_stop', targetSrc)
end)



--------------------------------------------------------------------------------------------------------------------------------
--  SYNCA PRO PRIMEIRO PED
--------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('vrp_animations:startSync1')
AddEventHandler('vrp_animations:startSync1', function(plyAnimation)
	local ped = PlayerPedId()
	local animationLib = plyAnimation["lib"]
	if plyAnimation["animationType"] == "Carregar" then 
		RequestAnimDict(animationLib)
		while not HasAnimDictLoaded(animationLib) do
			Citizen.Wait(10)
		end
		Wait(500)
		if plyAnimation["controlFlagMe"] == nil then plyAnimation["controlFlagMe"] = 0 end
		TaskPlayAnim(ped, animationLib, plyAnimation["anim1"], 8.0, -8.0, plyAnimation["length"], plyAnimation["controlFlagMe"], 0, false, false, false)
	elseif plyAnimation["animationType"] == "Cavalinho" then 
		RequestAnimDict(animationLib)
		while not HasAnimDictLoaded(animationLib) do
			Citizen.Wait(10)
		end
		Wait(500)
		if plyAnimation["controlFlagMe"] == nil then plyAnimation["controlFlagMe"] = 0 end
		TaskPlayAnim(ped, animationLib, plyAnimation["anim1"], 8.0, -8.0, plyAnimation["length"], plyAnimation["controlFlagMe"], 0, false, false, false)
	else
		RequestAnimDict(animationLib)
		while not HasAnimDictLoaded(animationLib) do
			Citizen.Wait(10)
		end
		Wait(500)
		if plyAnimation["controlFlagMe"] == nil then plyAnimation["controlFlagMe"] = 0 end
		TaskPlayAnim(ped, animationLib, plyAnimation["anim1"], 8.0, -8.0, plyAnimation["length"], plyAnimation["controlFlagMe"], 0, false, false, false)
	end
	Citizen.Wait(plyAnimation["length"])
end)
--------------------------------------------------------------------------------------------------------------------------------
--  SYNCA PRO SEGUNDO PED
--------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('vrp_animations:startSync2')
AddEventHandler('vrp_animations:startSync2', function(nsource, plyAnimation)
	local ped = PlayerPedId()
	local twoPed = GetPlayerPed(GetPlayerFromServerId(nsource))
	if plyAnimation["animationType"] == "Carregar" then 
		inAnimation = true
		local animationLib = plyAnimation["lib2"]
		RequestAnimDict(animationLib)
		while not HasAnimDictLoaded(animationLib) do
			Citizen.Wait(10)
		end
		if plyAnimation["spin"] == nil then plyAnimation["spin"] = 180.0 end
		if plyAnimation["controlFlagTarget"] == nil then plyAnimation["controlFlagTarget"] = 0 end
		AttachEntityToEntity(ped, twoPed, 0, plyAnimation["distans2"], plyAnimation["distans"], plyAnimation["height"], 0.5, 0.5, plyAnimation["spin"], false, false, false, false, 2, false)
		TaskPlayAnim(ped, animationLib, plyAnimation["anim2"], 8.0, -8.0, plyAnimation["length"], plyAnimation["controlFlagTarget"], 0, false, false, false)
	elseif plyAnimation["animationType"] == "Cavalinho" then 
		inAnimation = true
		local animationLib = plyAnimation["lib"]
		RequestAnimDict(animationLib)
		while not HasAnimDictLoaded(animationLib) do
			Citizen.Wait(10)
		end
		if plyAnimation["spin"] == nil then plyAnimation["spin"] = 180.0 end
		if plyAnimation["controlFlagTarget"] == nil then plyAnimation["controlFlagTarget"] = 0 end
		AttachEntityToEntity(ped, twoPed, 0, plyAnimation["distans2"], plyAnimation["distans"], plyAnimation["height"], 0.5, 0.5, plyAnimation["spin"], false, false, false, false, 2, false)
		TaskPlayAnim(ped, animationLib, plyAnimation["anim2"], 8.0, -8.0, plyAnimation["length"], plyAnimation["controlFlagTarget"], 0, false, false, false)
	else
		inAnimation = true
		local animationLib = plyAnimation["lib2"]
		RequestAnimDict(animationLib)
		while not HasAnimDictLoaded(animationLib) do
			Citizen.Wait(10)
		end
		if plyAnimation["spin"] == nil then plyAnimation["spin"] = 180.0 end
		if plyAnimation["controlFlagTarget"] == nil then plyAnimation["controlFlagTarget"] = 0 end
		AttachEntityToEntity(ped, twoPed, 0, plyAnimation["distans2"], plyAnimation["distans"], plyAnimation["height"], 0.5, 0.5, plyAnimation["spin"], false, false, false, false, 2, false)
		TaskPlayAnim(ped, animationLib, plyAnimation["anim2"], 8.0, -8.0, plyAnimation["length"], plyAnimation["controlFlagTarget"], 0, false, false, false)
	end
end)
--------------------------------------------------------------------------------------------------------------------------------
--  STOPA AS ANIMAÇÕES
--------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('vrp_animations:stopSync')
AddEventHandler('vrp_animations:stopSync', function(animationType)
	inAnimation = false
	ClearPedSecondaryTask(PlayerPedId())
	DetachEntity(PlayerPedId(), true, false)
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    if onScreen then
        SetTextScale(0.19, 0.19)
        SetTextFont(0)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end
