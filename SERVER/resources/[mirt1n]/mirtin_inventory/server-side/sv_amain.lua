local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("mirtin_inventory",src)
Proxy.addInterface("mirtin_inventory",src)

vCLIENT = Tunnel.getInterface("mirtin_inventory")

safeZone = Tunnel.getInterface("sgwywatwrwaf")

local arena = Tunnel.getInterface("mirtin_arena")
local func = exports["vrp"]
local delayGarmas = {}
local webhook = {
	lockpick = "https://discord.com/api/webhooks/1064666293883654214/oPRdq3FoRbJbNuALXtFX2pqFvcpZbaAKlPl4C_UPboUPzpWuTkek7nS8JS9eH9NgECDe",
	equipar = "https://discord.com/api/webhooks/1064666833245982900/cwry6eCcpRrMSY6s59-f1ATp9wQQW-nmHx0J05LUsV8yJ3dKtc__GCOosLuu4v-Dx9jD",
	dropar = "https://discord.com/api/webhooks/1064666918272905307/x8wy9BzaEHjZxbet_mU0a7Mpx1uvjrc7cENqtYni_aog5mAVFAOaKY9AR-OTuktPLRlb",
	ground = "https://discord.com/api/webhooks/1064667029715570688/916zWVncqSTiyzd7eQ0ZtxIy8qu4PGbU1f7yn_mMBSgRKEldDAtNRn_T4sqjvpRGnvRT",
	enviar = "https://discord.com/api/webhooks/1064667094349774872/77oYbt8k0B8mfMhqdiiqCJUHTQb-vf2dJgecJRieLS4SwORVUMoK2-vRrMRLoo-1Eenf",
	casasretirar = "https://discord.com/api/webhooks/1064667843557326879/yu4da5UNd6MnL9H9axIiGWG6TsUFdLqmit8Iix84Ij_cr8OOfzdoE0HUb5yBkRei-7sY",
	casascolocar = "https://discord.com/api/webhooks/1064667754415792148/9myWVnj4O6OmbRhuRL-Xa2OU1gVmKUENJdQ8utHiqqfRm3owNXQ5gac3IK_tgyc-vqxH",
	garmas = "https://discord.com/api/webhooks/1064667990928404562/OczPNATznVLKLfi_L572zUOM1Z1xK0ryvpjcpy0oMW9IdRzMAsqnNx5LgGl4L0WGwHSK",
	saquear = "https://discord.com/api/webhooks/1064668135074037871/85LyAJ3OTOwAg_0XYcYMJmSLx9RLDK9f0DdGAidEJ_E3vkx-VSk_lC3LiY7cHz2po3W1",
}

-------------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local idgens = Tools.newIDGenerator()
local allItems = {}

local weebhook = {
	vehicles = {}
}

--CLASSES DAS ARMAS--
local classWeapons = {
    ["WEAPON_SNSPISTOL_MK2"] = "PISTOLAS",
    ["WEAPON_PISTOL_MK2"] = "PISTOLAS",
    ["WEAPON_COMBATPISTOL"] = "PISTOLAS",
    ["WEAPON_HEAVYPISTOL"] = "PISTOLAS",
    ["WEAPON_PISTOL50"] = "PISTOLAS",
    ["WEAPON_GUSENBERG"] = "SEMI-RIFLE",
    ["WEAPON_MACHINEPISTOL"] = "SEMI-RIFLE",
    ["WEAPON_SMG_MK2"] = "SEMI-RIFLE",
    ["WEAPON_SMG"] = "SEMI-RIFLE",
    ["WEAPON_ASSAULTSMG"] = "SEMI-RIFLE",
    ["WEAPON_MICROSMG"] = "SEMI-RIFLE",
    ["WEAPON_MINISMG"] = "SEMI-RIFLE",
	["WEAPON_COMBATPDW"] = "SEMI-RIFLE",
    ["WEAPON_SAWNOFFSHOTGUN"] = "SHOTGUN",
    ["WEAPON_PUMPSHOTGUN_MK2"] = "SHOTGUN",
    ["WEAPON_ASSAULTRIFLE"] = "RIFLE",
    ["WEAPON_ASSAULTRIFLE_MK2"] = "RIFLE",
    ["WEAPON_SPECIALCARBINE_MK2"] = "RIFLE",
    ["WEAPON_CARBINERIFLE"] = "RIFLE",
    ["WEAPON_SPECIALCARBINE"] = "RIFLE",
    ["WEAPON_STUNGUN"] = "STUNGUN",
    ["WEAPON_HEAVYSNIPER"] = "SNIPER",
	["WEAPON_BAT"] = "BRANCA",
    


	
}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE INVENTARIO PERSONAL
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local droplist = {}
local dropCooldown = {}

function src.Mochila()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

	if user_id then
		
		local inv = vRP.getInventory(user_id)
		local amountMoc = vRP.getMochilaAmount(user_id)
		if inv then 
			local inventory = {}
 
			for k,v in pairs(inv) do
				if allItems[v.item] then
					if (parseInt(v["amount"]) <= 0 or allItems[v.item] == nil) then
						vRP.removeInventoryItem(user_id,v.item,parseInt(v["amount"]))
					else
						v["amount"] = parseInt(v["amount"])
						v["name"] = allItems[v["item"]].name
						v["peso"] = allItems[v["item"]].weight
						v["index"] = allItems[v["item"]].tipo
						v["key"] = v["item"]
						v["slot"] = k
						inventory[k] = v
					end
				end
			end
			
			local org = vRP.getUserGroupByType(user_id,"org")
			if org == nil or org == "" then org = "Nenhum(a)" end

			return inventory,vRP.computeInvWeight(user_id),vRP.getInventoryMaxWeight(user_id), { identity["nome"].." "..identity["sobrenome"],user_id,identity["telefone"],identity["registro"], org }, amountMoc
		end
	end
end

function src.useItem(slot, amount)
    local source = source
    local user_id = vRP.getUserId(source)

    if user_id then
        local inv = vRP.getInventory(user_id)
        if inv then
            if not inv[tostring(slot)] or inv[tostring(slot)].item == nil then
                return
            end

            local item = inv[tostring(slot)].item
            local itemType = vRP.getItemType(item)
            if itemType then
				local status,time = func:getCooldown(user_id, "inventario")
                if status then
					if amount == nil or amount <= 0 then
						amount = vRP.getInventoryItemAmount(user_id, item)
					end
					
                        if itemType == "usar" then 
							func:setCooldown(user_id, "inventario", 2)
							
                            if item == "mochila" then
                                local maxMochila = {}
								maxMochila[user_id] = 3

                                if tonumber(maxMochila[user_id]) > tonumber(vRP.getMochilaAmount(user_id)) then
                                    if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
                                        vRP.addMochila(user_id)
                                        TriggerClientEvent( "Notify", source, "importante", "Você equipou a mochila, limite maximo de <b>(" .. vRP.getMochilaAmount(user_id) .. "/" .. maxMochila[user_id] .. ")</b> mochilas.", 5 )
                                    end
                                else
                                    TriggerClientEvent( "Notify", source, "negado", "Você ja antigiu o limite maximo de <b>(" .. maxMochila[user_id] .. ")</b> mochilas.", 5 )
                                end

                            elseif item == "scubagear" then
                                if not vCLIENT.checkScuba(source) then
                                    if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
                                        vCLIENT._setScuba(source, true)
                                    end
                                else
                                    TriggerClientEvent( "Notify", source, "negado", "Você ja possui uma scuba equipada, para retira-la /rscuba", 5 )
                                end

							elseif item == "body_armor" then
								if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
									vRPclient._setArmour(source, 100)
								end

							-- elseif item == "capuz" then
							-- 	if safeZone.IsinSafe(source) then
							-- 		TriggerClientEvent("Notify", source, "negado", "Você não pode fazer isso em uma safe-zone", 10000)
							-- 		return
							-- 	end
							-- 	if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
							-- 		local nplayer = vRPclient.getNearestPlayer(source, 5)
							-- 		if nplayer then
							-- 			local nuser_id = vRP.getUserId(nplayer)

							-- 			if vRPclient.isCapuz(nplayer) then
							-- 				vRPclient._setCapuz(nplayer, false)
							-- 				TriggerClientEvent( "Notify", source, "sucesso", "Você retirou o capuz desse jogador.", 5 )
							-- 			else
							-- 				vRPclient._setCapuz(nplayer, true)
							-- 				TriggerClientEvent( "Notify", source, "sucesso", "Você colocou o capuz nesse jogador, para retirar use o item novamente.", 5 )
							-- 			end

							-- 			vRP.sendLog("", "O USER_ID: "..user_id.. " Usou o Capuz no USER_ID: "..nuser_id)
							-- 		else
							-- 			TriggerClientEvent( "Notify", source, "negado", "Nenhum jogador proximo.", 5 )
							-- 		end
							-- 	end
								
                            elseif item == "emptybottle" then
                                local status, style = vCLIENT.checkFountain(source)
                                if status then
                                    if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
                                        if style == "fountain" then
                                            vCLIENT._closeInventory(source)
                                            vRPclient._playAnim( source, false, {{"amb@prop_human_parking_meter@female@idle_a", "idle_a_female"}}, true )
                                        elseif style == "floor" then
                                            vCLIENT._closeInventory(source)
                                            vRPclient._playAnim( source, false, {{"amb@world_human_bum_wash@male@high@base", "base"}}, true )
                                        end

                                        TriggerClientEvent("progress", source, 10)
                                        exports["vrp"]:setBlockCommand(user_id, 10)
                                        SetTimeout( 10000, function() vRP.giveInventoryItem(user_id, "water", 1, true) vRPclient._stopAnim(source, false) vCLIENT._updateInventory(source, "updateMochila") end )
                                    end
                                end
                            elseif item == "maconha" or item == "cocaina" or item == "lsd" or item == "heroina" or item == "metanfetamina" or item == "lancaperfume" or item == "balinha" or item == "opio" then
								if not vCLIENT.isInDrug(source) then
									if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
										vRPclient._playAnim( source, true, {{"mp_player_int_uppersmoke", "mp_player_int_smoke"}}, true )

										SetTimeout(2000,function() 
											vRPclient._stopAnim(source, false) 
											TriggerClientEvent("inventory:useDrugs", source, item) 

											if item == 'metanfetamina' or item == 'opio' then
												TriggerClientEvent("Notify", source, "sucesso", "Você não ira sentir mais fome e sede por 15 minutos", 5)

												CreateThread(function()
													local endTime = os.time() + 15 * 60
													local hunger = vRP.getHunger(user_id)
													local thirst = vRP.getThirst(user_id)
													while os.time() < endTime do
														vRP.setHunger(user_id, hunger)
														vRP.setThirst(user_id, thirst)

														Wait(1000)
													end
												end)
											end
										end)
									end
								else
									TriggerClientEvent( "Notify", source, "negado", "Você ja está sobre um efeito de uma droga..", 5 )
								end
							elseif item == "attachs" then
                                if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
									TriggerClientEvent("Weapon:Attachs", source)
                                end

							elseif item == "lockpick" then
								
                                local plate,mName,mNet,mPortaMalas,mPrice,mLock,mModel = vRPclient.ModelName(source, 7)
                                local plateUser = vRP.getUserByRegistration(plate)
								
                                local plyCoords = GetEntityCoords(GetPlayerPed(source))
            					local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

                                if plateUser then
                                    if mLock then 
                                        vCLIENT._closeInventory(source)

                                        Wait(1000)
                                        vCLIENT._startAnimHotwired(source)
                                        if vRP.tryGetInventoryItem(user_id, "lockpick", 1, true, slot) then
                                            local finished = vRPclient.taskBar(source, 2500, math.random(7, 15))
                                            if finished then
                                                local finished = vRPclient.taskBar(source, 1500, math.random(7, 15))
                                                if finished then
                                                    local finished = vRPclient.taskBar(source, 1000, math.random(7, 15))
                                                    if finished then
														local entity = NetworkGetEntityFromNetworkId(mNet)
														if entity then
															SetVehicleDoorsLocked(entity,1)
														end

                                                        TriggerClientEvent("vrp_sound:source", source, "lock", 0.1)
                                                        TriggerClientEvent( "Notify", source, "negado", "Você destrancou o veiculo, cuidado a policia foi acionada.", 5 )
                                                    end
                                                end
                                            end

                                            vRPclient._stopAnim(source, false)
                                            vCLIENT._updateInventory(source, "updateMochila")
                                        end
                                    else
                                        TriggerClientEvent( "Notify", source, "negado", "Este veiculo ja esta destracando.", 5 )
                                    end
								end
								
							elseif item == "repairkit" then
                                if not vRPclient.isInVehicle(source) then
                                    local vehicle = vRPclient.getNearestVehicle(source, 7)
									if vRP.tryGetInventoryItem(user_id, "repairkit", 1, true, slot) or vRP.hasPermission(user_id, "perm.mecanico") then
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


                                local plate,mName,mNet,mPortaMalas,mPrice,mLock,mModel = vRPclient.ModelName(source, 7)
                                local plateUser = vRP.getUserByRegistration(plate)
								
                                local plyCoords = GetEntityCoords(GetPlayerPed(source))
            					local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

                                if plateUser then
                                    if mLock then
                                        vCLIENT._closeInventory(source)

                                        Wait(1000)
                                        vCLIENT._startAnimHotwired(source)
                                        if vRP.tryGetInventoryItem(user_id, "lockpick", 1, true, slot) then
                                            local finished = vRPclient.taskBar(source, 2500, math.random(7, 15))
                                            if finished then
                                                local finished = vRPclient.taskBar(source, 1500, math.random(7, 15))
                                                if finished then
                                                    local finished = vRPclient.taskBar(source, 1000, math.random(7, 15))
                                                    if finished then
														local entity = NetworkGetEntityFromNetworkId(mNet)
														if entity then
															SetVehicleDoorsLocked(entity,1)
														end

                                                        TriggerClientEvent("vrp_sound:source", source, "lock", 0.1)
                                                        TriggerClientEvent( "Notify", source, "negado", "Você destrancou o veiculo, cuidado a policia foi acionada.", 5 )
														vRP.sendLog(webhook.lockpick, "**SUCESSO** O [ID: " .. user_id .. "] Roubou o veiculo " .. mModel .. "(ID:" .. plateUser .. ") nas nas cordenadas: " .. x .. "," .. y .. "," .. z )
                                                    end
                                                end
                                            end

											exports['vrp']:alertPolice({ x = x, y = y, z = z, blipID = 161, blipColor = 63, blipScale = 0.5, time = 20, code = "911", title = "Veiculo Roubado (" .. mModel .. ")", name = "Um novo registro de tentativa de roubo de veiculo, Modelo: " .. mModel .. " Placa: " .. plate .. ". "})
                                            vRPclient._stopAnim(source, false)
                                            vCLIENT._updateInventory(source, "updateMochila")
                                        end
                                    else
                                        TriggerClientEvent( "Notify", source, "negado", "Este veiculo ja esta destracando.", 5 )
                                    end
                                else
                                    TriggerClientEvent( "Notify", source, "negado", "Este veiculo não pode ser roubado.", 5 )
                                end
						elseif item == "masterpick" then
							if safeZone.IsinSafe(source) then
								TriggerClientEvent("Notify", source, "negado", "Você não pode fazer isso em uma safe-zone", 10000)
								return
							end

							local plate,mName,mNet,mPortaMalas,mPrice,mLock,mModel = vRPclient.ModelName(source, 7)
							local plateUser = vRP.getUserByRegistration(plate)
							
							local plyCoords = GetEntityCoords(GetPlayerPed(source))
							local x,y,z = plyCoords[1],plyCoords[2],plyCoords[3]

							if plateUser then
								if mLock then
									vCLIENT._closeInventory(source)

									Wait(1000)
									vCLIENT._startAnimHotwired(source)
									if vRP.tryGetInventoryItem(user_id, "masterpick", 1, true, slot) then
										local entity = NetworkGetEntityFromNetworkId(mNet)
										if entity then
											SetVehicleDoorsLocked(entity,1)
										end
										TriggerClientEvent("vrp_sound:source", source, "lock", 0.1)
										TriggerClientEvent( "Notify", source, "negado", "Você destrancou o veiculo, cuidado a policia foi acionada.", 5 )
										vRP.sendLog(webhook.lockpick, "**SUCESSO** O [ID: " .. user_id .. "] Roubou o veiculo " .. mModel .. "(ID:" .. plateUser .. ") nas nas cordenadas: " .. x .. "," .. y .. "," .. z )
										exports['vrp']:alertPolice({ x = x, y = y, z = z, blipID = 161, blipColor = 63, blipScale = 0.5, time = 20, code = "911", title = "Veiculo Roubado (" .. mModel .. ")", name = "Um novo registro de tentativa de roubo de veiculo, Modelo: " .. mModel .. " Placa: " .. plate .. ". "})
										vRPclient._stopAnim(source, false)
										vCLIENT._updateInventory(source, "updateMochila")
									end
								else
									TriggerClientEvent( "Notify", source, "negado", "Este veiculo ja esta destracando.", 5 )
								end
							else
								TriggerClientEvent( "Notify", source, "negado", "Este veiculo não pode ser roubado.", 5 )
							end
                            elseif item == "repairkit2" then
                                if not vRPclient.isInVehicle(source) then
                                    local vehicle = vRPclient.getNearestVehicle(source, 7)
									if vRP.tryGetInventoryItem(user_id, "repairkit2", 1, true, slot) or vRP.hasPermission(user_id, "perm.bennys") then
										vRPclient._playAnim( source, false, {{"mini@repair", "fixing_a_player"}}, true )
										TriggerClientEvent("progress", source, 30)
										exports["vrp"]:setBlockCommand(user_id, 35)
										SetTimeout(30000,function()
											TriggerClientEvent("reparar", source, vehicle) 
											vRPclient._stopAnim(source, false)
											TriggerClientEvent( "Notify", source, "sucesso", "Você reparou o veiculo.", 5 )
										end)
									end
                                else
                                    TriggerClientEvent( "Notify", source, "negado", "Precisa estar próximo ou fora do veículo para efetuar os reparos.", 5 )
                                end

							elseif item == "pneus" then
                                if not vRPclient.isInVehicle(source) then
                                    local vehicle = vRPclient.getNearestVehicle(source, 7)
									if vRP.tryGetInventoryItem(user_id, "pneus", 1, true, slot) then
										vRPclient._playAnim(source,false,{{"anim@amb@clubhouse@tutorial@bkr_tut_ig3@","machinic_loop_mechandplayer"}},true)
										TriggerClientEvent("progress", source, 30)
										exports["vrp"]:setBlockCommand(user_id, 15)
										SetTimeout(10000,function()
												TriggerClientEvent('repararpneus',source,vehicle)
												vRPclient._stopAnim(source, false)
												TriggerClientEvent( "Notify", source, "sucesso", "Você reparou o pneu do veiculo.", 5 )
											end)
									end
                                else
                                    TriggerClientEvent( "Notify", source, "negado", "Precisa estar próximo ou fora do veículo para efetuar os reparos.", 5 )
                                end

								
                            elseif item == "algemas" then
								if safeZone.IsinSafe(source) then
									TriggerClientEvent("Notify", source, "negado", "Você não pode fazer isso em uma safe-zone", 10000)
									return
								end
                                local nplayer = vRPclient.getNearestPlayer(source, 3)
                                if nplayer then
									if not vCLIENT.checkAnim(nplayer) then
										TriggerClientEvent("Notify",source,"importante","O jogador não está rendido.", 5)
										return
									end

                                    if not vRPclient.isHandcuffed(nplayer) then
                                        if vRP.tryGetInventoryItem(user_id, "algemas", 1, true, slot) then
                                            vRP.giveInventoryItem(user_id, "chave_algemas", 1, true)
                                            vCLIENT._arrastar(nplayer, source)
                                            vRPclient._playAnim( source, false, {{"mp_arrest_paired", "cop_p2_back_left"}}, false )
                                            vRPclient._playAnim( nplayer, false, {{"mp_arrest_paired", "crook_p2_back_left"}}, false )
                                            SetTimeout(3500,function()
                                                    vRPclient._stopAnim(source, false)
                                                    vRPclient._toggleHandcuff(nplayer)
                                                    vCLIENT._arrastar(nplayer, source)
                                                    TriggerClientEvent("vrp_sound:source", source, "cuff", 0.1)
                                                    TriggerClientEvent("vrp_sound:source", nplayer, "cuff", 0.1)
                                                    vRPclient._setHandcuffed(nplayer, true)
                                                end)
                                        else
                                            TriggerClientEvent( "Notify", source, "negado", "Você não possui algemas.", 5 )
                                        end
                                    end
                                else
                                    TriggerClientEvent("Notify", source, "negado", "Nenhum jogador proximo.", 5)
                                end
                            elseif item == "chave_algemas" then
                                local nplayer = vRPclient.getNearestPlayer(source, 3)
                                if nplayer then
                                    if vRPclient.isHandcuffed(source) then
                                        if vRP.tryGetInventoryItem(user_id, "chave_algemas", 1, true, slot) then
                                            vRP.giveInventoryItem(user_id, "algemas", 1, true)
                                            TriggerClientEvent("vrp_sound:source", source, "uncuff", 0.4)
                                            TriggerClientEvent("vrp_sound:source", nplayer, "uncuff", 0.4)
                                            vRPclient._setHandcuffed(nplayer, false)
                                        else
                                            TriggerClientEvent( "Notify", source, "negado", "Você não possui chave de algemas.", 5 )
                                        end
                                    end
                                else
                                    TriggerClientEvent("Notify", source, "negado", "Nenhum jogador proximo.", 5)
                                end
                            end
                        end

						if itemType == "usarVIP" then
							if item == "alterarplaca" then
								vCLIENT._closeInventory(source)
								Wait(500)
								local numero = vRP.prompt(source, "Digite o numero: (MAX 8) (EXEMPLO: ABC12345)", "8 CARACTERES COM LETRAS MAIUSCULAS E/OU NÚMEROS.")
								if numero ~= nil and numero ~= "" and numero and string.len(numero) == 8 then
									if checkRG(numero) then
										if vRP.request(source, "Tem certeza que deseja alterar sua placa para <b>"..numero.."</b> ?", 30) then
											if vRP.tryGetInventoryItem(user_id,item,1, true, slot) then
												vRP.updateIdentity(user_id)
												vRP.execute("vRP/update_registro",{ user_id = user_id, registro = numero })
												TriggerClientEvent("Notify",source,"sucesso","Você trocou o sua placa para <b>"..numero.."</b>, aguarde a cidade reiniciar para alteração ser feita.", 15)
											end
										end
									else
										TriggerClientEvent("Notify",source,"negado","Este rg ja existe.", 5)
									end
								else
									TriggerClientEvent("Notify",source,"negado","Digite o rg correto. (EXEMPLO: ABC123)", 5)
								end
							elseif item == "alterarrg" then
								vCLIENT._closeInventory(source)
								Wait(500)
								local numero = vRP.prompt(source, "Digite o numero: (MAX 8) (EXEMPLO: ABC12345)", "")
								if numero ~= nil and numero ~= "" and numero and string.len(numero) == 8 then
									if checkRG(numero) then
										if vRP.request(source, "Tem certeza que deseja alterar seu rg para <b>"..numero.."</b> ?", 30) then
											if vRP.tryGetInventoryItem(user_id,item,1, true, slot) then
												vRP.updateIdentity(user_id)
												vRP.execute("vRP/update_registro",{ user_id = user_id, registro = numero })
												TriggerClientEvent("Notify",source,"sucesso","Você trocou o seu rg para <b>"..numero.."</b>, aguarde a cidade reiniciar para alteração ser feita.", 15)
											end
										end
									else
										TriggerClientEvent("Notify",source,"negado","Este rg ja existe.", 5)
									end
								else
									TriggerClientEvent("Notify",source,"negado","Digite o rg correto. (EXEMPLO: ABC123)", 5)
								end
							elseif item == "alterartelefone" then
								vCLIENT._closeInventory(source)
								Wait(500)
								local numero = vRP.prompt(source, "Digite o numero: (MAX 6) (EXEMPLO: 123456)", "")
								if tonumber(numero) ~= nil and numero ~= "" and tonumber(numero) and string.len(numero) == 6 then
									numero = formatNumber(numero)
									if checkNumber(numero) then
										if vRP.request(source, "Tem certeza que deseja alterar o numero de telefone para <b>"..numero.."</b> ?", 30) then
											if vRP.tryGetInventoryItem(user_id,item,1, true, slot) then
												vRP.execute("vRP/update_number",{ user_id = user_id, telefone = numero })
												TriggerClientEvent("Notify",source,"sucesso","Você trocou o numero de telefone para <b>"..numero.."</b>, aguarde a cidade reiniciar para alteração ser feita.", 15)
											end
										end
									else
										TriggerClientEvent("Notify",source,"negado","Este numero de telefone ja existe.", 5)
									end
								else
									TriggerClientEvent("Notify",source,"negado","Digite o numero de telefone correto. (EXEMPLO: 123456)", 5)
								end
							end
						end

						if itemType == "equipar" then
                            func:setCooldown(user_id, "inventario", 5)

                            local data = vRP.getUserDataTable(user_id)
                            local myWeapons = data.weapons
                            local blockWeapons = {}
                            local bloqueado = false

                            for k,v in pairs(myWeapons) do
                                local categoria = classWeapons[k]
                                if categoria ~= nil then
                                    blockWeapons[categoria] = true
                                end

                                local categoria2 = classWeapons[item]
                                if categoria2 ~= nil then
                                    if blockWeapons[categoria2] ~= nil then
                                        bloqueado = true
                                    end
                                end
                            end

                            if not bloqueado then
                                if vRP.tryGetInventoryItem(user_id,item,1, true, slot) then
									delayGarmas[user_id] = os.time()
									
                                    local weapons = {}
                                    weapons[item] = { ammo = 0 }
                                    vRPclient._giveWeapons(source,weapons)

                                    vCLIENT._updateWeapons(source)
                                    vRP.sendLog(webhook.equipar, "O ID "..user_id.." equipou a arma "..vRP.getItemName(item)..".")
                                end
                            else
                                TriggerClientEvent("Notify",source,"negado","Você ja possui uma arma dessa classe equipada!", 5)
                            end
                        end

						if itemType == "recarregar" then
							func:setCooldown(user_id, "inventario", 5)

							local weapon = string.gsub(item, "AMMO_","WEAPON_")
							local municao = vRPclient.getAmmo(source, weapon)
							local maxMunicao = 250
							if vRPclient.checkWeapon(source, weapon) then
								if municao < 250 then
									if maxMunicao <= amount then
										maxMunicao = maxMunicao - municao
										amount = maxMunicao
									else
										maxMunicao = maxMunicao - municao
										if amount > maxMunicao then
											amount = maxMunicao
										end
									end
				
									if vRP.tryGetInventoryItem(user_id, item, amount, true, slot) then
										local weapons = {}
										weapons[weapon] = { ammo = amount }
										vRPclient._giveWeapons(source,weapons,false)

										vRP.sendLog(webhook.equipar, "O ID "..user_id.." recarregou a municao "..vRP.getItemName(item).." na quantidade de "..amount.." x.")
									end
								else
									TriggerClientEvent("Notify",source,"negado","Sua <b>"..vRP.getItemName(weapon).."</b> ja esta com seu maximo de munição", 5)
								end
							else
								TriggerClientEvent("Notify",source,"negado","Você precisa estar com a <b>"..vRP.getItemName(weapon).."</b> na mão para recarregar.", 5)
							end
						end

						if itemType == "beber" then
							func:setCooldown(user_id, "inventario", 5)

							local fome,sede = vRP.itemFood(item)
							if item == "energetico" then 
								if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
									TriggerClientEvent("progress",source, 10*amount)
									play_drink(source, item, 10*amount)
									SetTimeout((10*amount)*1000, function()
										vRP.varyThirst(user_id, tonumber(sede)*amount)
										TriggerClientEvent("Notify",source,"sucesso","Energetico utilizado com sucesso.", 5)
										vCLIENT._setEnergetico(source, true)
										SetTimeout(30*1000, function() 
											TriggerClientEvent("Notify",source,"negado","O Efeito do energetico acabou.", 5)
											vCLIENT._setEnergetico(source, false)
										end)
									end)
								end
							elseif vRP.tryGetInventoryItem(user_id, item, amount, true, slot) then
								TriggerClientEvent("progress",source, 10*amount)
								play_drink(source, item, 10*amount)
								SetTimeout((10*amount)*1000, function()
									vRP.varyThirst(user_id, tonumber(sede)*amount)
									if item == "water" then
										vRP.giveInventoryItem(user_id, "emptybottle", amount, true)
									end
								end)
							end
						end

						--if itemType == "beber" then
						--	func:setCooldown(user_id, "inventario", 5)
--
						--	local fome,sede = vRP.itemFood(item)
						--	if vRP.tryGetInventoryItem(user_id, item, amount, true, slot) then
						--		TriggerClientEvent("progress",source, 10*amount)
						--		play_drink(source, item, 10*amount)
						--		SetTimeout((10*amount)*1000, function()
						--			vRP.varyThirst(user_id, tonumber(sede)*amount)
						--			if item == "energetico" then
						--				TriggerClientEvent("Notify",source,"sucesso","Energetico utilizado com sucesso.", 5)
						--				vCLIENT._setEnergetico(source, true)
				--
						--				SetTimeout(30*1000, function() 
						--					TriggerClientEvent("Notify",source,"negado","O Efeito do energetico acabou.", 5)
						--					vCLIENT._setEnergetico(source, false)
						--				end)
						--			elseif item == "water" then
						--				vRP.giveInventoryItem(user_id, "emptybottle", amount, true)
						--			end
						--		end)
						--	end
						--end

						if itemType == "comer" then
							func:setCooldown(user_id, "inventario", 5)
							local fome,sede = vRP.itemFood(item)

							TriggerClientEvent("progress",source, 10*amount)
							play_eat(source, item, 10*amount)
				
							if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
								SetTimeout((10*amount), function() vRP.varyHunger(user_id, tonumber(fome)*amount) end)
							end
				
							vCLIENT._updateInventory(source)
							vCLIENT._updateDrop(source)
						end

						if itemType == "bebera" then
							local fome,sede = vRP.itemFood(item)
							func:setCooldown(user_id, "inventario", 10*amount)

							TriggerClientEvent("progress",source, 10*amount,"Bebendo")
							play_drink(source, item, 10*amount)
				
							if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
								SetTimeout(15*1000, function()
									vRPclient._playScreenEffect(source, "RaceTurbo", 60*amount)
									vRPclient._playScreenEffect(source, "DrugsTrevorClownsFight", 60*amount)
									vCLIENT._SetAnim(source, amount)
								end)
							end
						end

						if itemType == "remedio" then
							func:setCooldown(user_id, "inventario", 5)

							if item == "bandagem" then
								if vRP.tryGetInventoryItem(user_id, item, 1, true, slot) then
									vRPclient._CarregarObjeto(source,"amb@world_human_clipboard@male@idle_a","idle_c","v_ret_ta_firstaid",49,60309)

									TriggerClientEvent("progress",source, 15)
									SetTimeout(15*1000, function()
										vRPclient._DeletarObjeto(source)
										vCLIENT._useBandagem(source)
										TriggerClientEvent( "Notify", source, "importante", "Você utilizou a bandagem, não tome nenhum tipo de dano para não ser cancelada..", 5 )
									end)
									
								end
							end
						end

                        vCLIENT._updateInventory(source, "updateMochila")
                else
                    TriggerClientEvent( "Notify", source, "negado", "Aguarde <b>" .. time .. " segundo(s)</b> para utilizar isso novamente.", 5 )
                end
            end
        end
    end
end

function src.droparItem(slot,amount)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local status,time = func:getCooldown(user_id, "drop")

		if GetPlayerRoutingBucket(source) ~= 0 then
			TriggerClientEvent( "Notify", source, "negado", "Você não pode item agora.", 5 )
			return
		end

		if status then
			func:setCooldown(user_id, "drop", 2)

			local inv = vRP.getInventory(user_id)
			if inv then
				if not inv[tostring(slot)] or inv[tostring(slot)].item == nil then
					return
				end

				local itemName = inv[tostring(slot)].item

				if itemName == "WEAPON_COMBATPDW" or itemName == "WEAPON_COMBATPISTOL" or itemName == "WEAPON_CARBINERIFLE" then
					TriggerClientEvent( "Notify", source, "negado", "Você não pode mexer com essa arma!", 5 )
					return
				end
				
				if vRP.tryGetInventoryItem(user_id,itemName, parseInt(amount), true, slot) then
					vRPclient._playAnim(source,true,{{"pickup_object","pickup_low"}},false)
					createDropItem(itemName,parseInt(amount),source)
					vCLIENT._updateInventory(source, "updateMochila")

					vRP.sendLog(webhook.dropar, "O ID "..user_id.." dropou o item "..vRP.getItemName(itemName).." na quantidade de "..amount.."x.")
				end
			end
		else
			TriggerClientEvent( "Notify", source, "negado", "Aguarde <b>" .. time .. " segundo(s)</b> para utilizar isso novamente.", 5 )
		end
	end
end

function src.pegarItem(id,slot,amount)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local status,time = func:getCooldown(user_id, "pegar")
        if GetPlayerRoutingBucket(source) ~= 0 then
            TriggerClientEvent( "Notify", source, "negado", "Você não pode pegar item agora.", 5 )
            return
        end

        if status then
            func:setCooldown(user_id, "pegar", 3)

            if droplist[id] == nil then
                return
            end
            
            if dropCooldown[id] then
                return
            end
            dropCooldown[id] = true

			if amount > droplist[id].count then
				print("ID - "..user_id.. " Tentando dumpar . ")
				return
			end


            if vRP.computeInvWeight(user_id)+vRP.getItemWeight(tostring(droplist[id].item))*parseInt(amount) <= vRP.getInventoryMaxWeight(user_id) then
                if tostring(droplist[id].item) == "money" then
                    vRP.giveInventoryItem(user_id,tostring(droplist[id].item),parseInt(amount), true, vRP.getItemInSlot(user_id, "money", slot))
                else
                    vRP.giveInventoryItem(user_id,tostring(droplist[id].item),parseInt(amount), true, slot)
                end
                vCLIENT._updateInventory(source, "updateMochila")

                if (droplist[id].count - amount) >= 1 then 
                    vCLIENT._removeDrop(-1, id)
                    
                    local newamount = droplist[id].count - amount
                    createDropItem(droplist[id].item, newamount, source)
					
					vRP.sendLog(webhook.ground, "O ID "..user_id.." pegou o item do chão "..tostring(droplist[id].item).." na quantidade de "..newamount.."x.")

					droplist[id] = nil
                    idgens:free(id)
                else
                    vCLIENT._removeDrop(-1, id)
                    droplist[id] = nil
                    idgens:free(id)
                end
            else
                TriggerClientEvent( "Notify", source, "negado", "Mochila cheia.", 5 )
            end

            dropCooldown[id] = nil
        else
			vCLIENT._closeInventory(source)
            TriggerClientEvent( "Notify", source, "negado", "Aguarde <b>" .. time .. " segundo(s)</b> para utilizar isso novamente.", 5 )
        end
    end
end

function src.sendItem(item,slot,amount)
	local source = source
    local user_id = vRP.getUserId(source)
	if user_id then
		local status,time = func:getCooldown(user_id, "enviar")
		if GetPlayerRoutingBucket(source) ~= 0 then
			TriggerClientEvent( "Notify", source, "negado", "Você não enviar item agora.", 5 )
			return
		end

		if status then
			func:setCooldown(user_id, "enviar", 5)

			if amount == nil or amount <= 0 then
				amount = vRP.getInventoryItemAmount(user_id, item)
			end

			local nplayer = vRPclient.getNearestPlayer(source, 3)
			if nplayer then
				local nuser_id = vRP.getUserId(nplayer)
				if vRP.computeInvWeight(nuser_id)+vRP.getItemWeight(tostring(item))*parseInt(amount) <= vRP.getInventoryMaxWeight(nuser_id) then

					if item == "WEAPON_COMBATPDW" or item == "WEAPON_COMBATPISTOL" or item == "WEAPON_CARBINERIFLE" then
						TriggerClientEvent( "Notify", source, "negado", "Você não pode mexer com essa arma!", 5 )
						return
					end

					if item == "money" or item == "dirty_money" then

						if amount >= 15000000 then
							vRP.setBanned(user_id, true)
							DropPlayer(source, "VOCÊ FOI BANIDO DO SERVIDOR POR SUSPEITA DE HACKER")
							if item == "money" then 
								vRP.sendLog(webhook.enviar, "@everyone | [ID] "..user_id.." ENVIAR MONEY "..amount.." PARA O ID "..nuser_id.."  (SUSPEITO HACK)")
							else 
								vRP.sendLog(webhook.enviar, "@everyone | [ID] "..user_id.." ENVIAR DIRTY_MONEY "..amount.." PARA O ID "..nuser_id.." (SUSPEITO HACK)")
							end
						elseif amount >= 1500000 then
							if vRP.tryGetInventoryItem(user_id, item, parseInt(amount), true, slot) then 
								vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
								vRP.giveInventoryItem(nuser_id, item, parseInt(amount), true)
								vRPclient._playAnim(nplayer,true,{{"mp_common","givetake1_a"}},false)
								if item == "money" then 
									vRP.sendLog(webhook.enviar, "@everyone | [ID] "..user_id.." ENVIAR MONEY "..amount.." PARA O ID "..nuser_id.." (SUSPEITO HACK)")
								else 
									vRP.sendLog(webhook.enviar, "@everyone | [ID] "..user_id.." ENVIAR DIRTY_MONEY "..amount.." PARA O ID "..nuser_id.." (SUSPEITO HACK)")
								end
							end
						else
							if vRP.tryGetInventoryItem(user_id, item, parseInt(amount), true, slot) then 
								vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
								vRP.giveInventoryItem(nuser_id, item, parseInt(amount), true)
								vRPclient._playAnim(nplayer,true,{{"mp_common","givetake1_a"}},false)
								if item == "money" then 
									vRP.sendLog(webhook.enviar, "@everyone | [ID] "..user_id.." ENVIAR MONEY "..amount.." PARA O ID "..nuser_id.." (SUSPEITO HACK)")
								else 
									vRP.sendLog(webhook.enviar, "@everyone | [ID] "..user_id.." ENVIAR DIRTY_MONEY "..amount.." PARA O ID "..nuser_id.." (SUSPEITO HACK)")
								end
							end
						end
						
					elseif item == "WEAPON_PISTOL_MK2" or item == "WEAPON_SPECIALCARBINE_MK2" or item == "WEAPON_ASSAULTRIFLE_MK2" then

							if amount >= 9 then
								if vRP.tryGetInventoryItem(user_id, item, parseInt(amount), true, slot) then 
	
								vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
								vRP.giveInventoryItem(nuser_id, item, parseInt(amount), true)
								vRPclient._playAnim(nplayer,true,{{"mp_common","givetake1_a"}},false)
								vRP.sendLog(webhook.enviar, "@everyone | O ID "..user_id.." enviou o item "..vRP.getItemName(item).." na quantidade de "..amount.."x para o id "..nuser_id..".")
								end
							else
								if vRP.tryGetInventoryItem(user_id, item, parseInt(amount), true, slot) then 
									vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
									vRP.giveInventoryItem(nuser_id, item, parseInt(amount), true)
									vRPclient._playAnim(nplayer,true,{{"mp_common","givetake1_a"}},false)
									vRP.sendLog(webhook.enviar, "O ID "..user_id.." enviou o item "..vRP.getItemName(item).." na quantidade de "..amount.."x para o id "..nuser_id..".")
								end
							end

					elseif vRP.tryGetInventoryItem(user_id, item, parseInt(amount), true, slot) then
						vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
						vRP.giveInventoryItem(nuser_id, item, parseInt(amount), true)
						vRPclient._playAnim(nplayer,true,{{"mp_common","givetake1_a"}},false)
						vRP.sendLog(webhook.enviar, "O ID "..user_id.." enviou o item "..vRP.getItemName(item).." na quantidade de "..amount.."x para o id "..nuser_id..".")
					end


				else
					TriggerClientEvent( "Notify", source, "negado", "Mochila do jogador cheia.", 5)
				end 

				vCLIENT._updateInventory(nplayer, "updateMochila")
				vCLIENT._updateInventory(source, "updateMochila")
			else
				TriggerClientEvent( "Notify", source, "negado", "Nenhum jogador proximo.", 5 )
			end
		else
			TriggerClientEvent( "Notify", source, "negado", "Aguarde "..time.." para enviar outro item!", 5 )
		end
	end
end

function src.updateSlot(itemName, slot, target, targetName, targetamount, amount)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local firstItemAmount = vRP.getInventoryItemAmount(user_id, itemName)

		if amount == nil or amount <= 0 then 
			amount = 1 
		end

		if targetamount == nil or targetamount <= 0 then 
			targetamount = 1
		end

		local inv = vRP.getInventory(user_id)
		if inv then
			if targetName ~= nil then
				if itemName ~= targetName then
					if vRP.tryGetInventoryItem(user_id, itemName, firstItemAmount, false, slot) then
						if vRP.tryGetInventoryItem(user_id, targetName, targetamount, false, target) then 
							vRP.giveInventoryItem(user_id, itemName, firstItemAmount, false, target)
							vRP.giveInventoryItem(user_id, targetName, targetamount, false, slot)
						end
					end
				else
					if vRP.tryGetInventoryItem(user_id, itemName, amount, false, slot) then
						vRP.giveInventoryItem(user_id, itemName, amount, false, target)
					end
				end
			else
				if vRP.tryGetInventoryItem(user_id, itemName, amount, false, slot) then
					vRP.giveInventoryItem(user_id, itemName, amount, false, target)
				end
			end
		end
	end
end

function src.checkPermission(permission)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, permission) then
			return true
		end
	end
end

function src.checkPermissioninvsee(permission)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, "developer.permissao") then
			return true
		end
	end
end



function checkPlate(plate)
	local rows = vRP.query("vRP/getPlate", {placa = plate} ) or nil
	if not rows[1] then
		return true
	end
end

function checkNumber(numero)
	local rows = vRP.query("vRP/getNumber", {telefone = numero} ) or nil
	if not rows[1] then
		return true
	end
end

function checkRG(numero)
	local rows = vRP.query("vRP/getRegistro", {registro = numero} ) or nil
	if not rows[1] then
		return true
	end
end

function formatNumber(n)
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1-'):reverse())..right
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE INVENTARIO DE VEICULOS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local openedVehicle = {}
local userVehicleOppened = {}
local dataVehicle = {}

function src.openVehicles(plate,name)
	plate = plate:gsub(" ", "")

	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local amountMoc = vRP.getMochilaAmount(user_id)

	if user_id then
		if plate and name then
			if openedVehicle[plate] == user_id or vRP.hasPermission(user_id, "developer.permissao") then
				local inv = vRP.getInventory(user_id)
				local myInventory = {}
				if inv then
					for k,v in pairs(inv) do
						if allItems[v["item"]] then
							v["amount"] = parseInt(v["amount"])
							v["name"] = allItems[v["item"]].name
							v["peso"] = allItems[v["item"]].weight
							v["index"] = allItems[v["item"]].tipo
							v["key"] = v["item"]
							v["slot"] = k
							myInventory[k] = v
						end
					end
				end

				if dataVehicle[plate..":"..name] == nil then
					local nuser_id = vRP.getUserByRegistration(plate)
					if nuser_id then
						local rows = vRP.query("vRP/get_portaMalas",{ user_id = parseInt(nuser_id), veiculo = string.lower(name) }) or {}
						if #rows > 0 then
							local malas = json.decode(rows[1].portamalas) or {}
							dataVehicle[plate..":"..name] = { malas,name,plate,false }
						else
							local rows = vRP.getSData("tmpChest:"..name.."_"..plate)
							dataVehicle[plate..":"..name] = { json.decode(rows) or {}, name, plate,true }
						end
					else
						local rows = vRP.getSData("tmpChest:"..name.."_"..plate)
						dataVehicle[plate..":"..name] = { json.decode(rows) or {}, name, plate,true }
					end
				end

				local myVehicle = {}
				local weight = 0.0
				if dataVehicle[plate..":"..name] then
					for k,v in pairs(dataVehicle[plate..":"..name][1]) do
						if allItems[v["item"]] then
							myVehicle[k] = {
								["amount"] = parseInt(v["amount"]),
								["name"] = allItems[v["item"]].name,
								["peso"] = allItems[v["item"]].weight,
								["index"] = allItems[v["item"]].tipo,
								["key"] = v["item"],
								["slot"] = k
							}

							weight = weight + (allItems[v["item"]].weight*parseInt(v["amount"]))
						end
					end
				end

				if not weebhook.vehicles[user_id] then
					weebhook.vehicles[user_id] = ""
				end

				return myInventory,myVehicle,vRP.computeInvWeight(user_id),vRP.getInventoryMaxWeight(user_id),weight,vRP.getVehicleTrunk(name),{identity["nome"].." "..identity["sobrenome"],user_id}, { plate,vRP.getVehicleName(name) },amountMoc
			else
				vCLIENT._closeInventory(source)
			end
			
		end
	end
end

function src.colocarVehicle(item,amount,slot,plate,name)
	plate = plate:gsub(" ", "")
	
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id and plate then
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end
		if GetPlayerPing(source) > 0 then
			if item == "money" then
				TriggerClientEvent( "Notify", source, "negado", "Você não pode fazer isso com esse item.", 5 )
				return
			end

			if openedVehicle[plate] and openedVehicle[plate] == user_id and dataVehicle[plate..":"..name][1] ~= nil or vRP.hasPermission(user_id, "developer.permissao") then
				if vRP.computeItemsWeight(dataVehicle[plate..":"..name][1])+vRP.getItemWeight(item)*parseInt(amount) <= vRP.getVehicleTrunk(name) then
					if vRP.tryGetInventoryItem(user_id, item, amount, true) then
						dataVehicle[plate..":"..name][1][tostring(slot)] =  { amount = amount, item = item }
						weebhook.vehicles[user_id] = weebhook.vehicles[user_id].. "\nCOLOCOU: "..vRP.getItemName(item).." "..amount.." x"
					end
				else
					TriggerClientEvent( "Notify", source, "negado", "Porta malas cheio.", 5 )
				end
			else
				vCLIENT._closeInventory(source)
			end
		end
	end

end

function src.retirarVehicle(item,amount,slot,target,plate,name)
	plate = plate:gsub(" ", "")

	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if amount < 0 then
			vRP.setBanned(user_id, true, "Inventario retirarVehicle")
			DropPlayer(source, "=D")
			return
		end
		amount = parseInt(amount)

		if amount > dataVehicle[plate..":"..name][1][tostring(slot)].amount then
			vRP.setBanned(user_id, true, "Inventario retirarVehicle VALID")
			DropPlayer(source, "=D")
			return
		end

		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end

		if GetPlayerPing(source) > 0 then
			if plate then
				if openedVehicle[plate] and dataVehicle[plate..":"..name] and openedVehicle[plate] == user_id and dataVehicle[plate..":"..name][1][tostring(slot)].item ~= nil or vRP.hasPermission(user_id, "developer.permissao") then
					if vRP.computeInvWeight(user_id)+vRP.getItemWeight(tostring(dataVehicle[plate..":"..name][1][tostring(slot)].item))*parseInt(amount) <= vRP.getInventoryMaxWeight(user_id) then
						if item == "money" then
							vRP.giveInventoryItem(user_id, dataVehicle[plate..":"..name][1][tostring(slot)].item, amount, true, vRP.getItemInSlot(user_id, "money", target))
						else
							vRP.giveInventoryItem(user_id, dataVehicle[plate..":"..name][1][tostring(slot)].item, amount, true, target)
						end

						dataVehicle[plate..":"..name][1][tostring(slot)].amount = dataVehicle[plate..":"..name][1][tostring(slot)].amount - amount
						if dataVehicle[plate..":"..name][1][tostring(slot)].amount <= 0 then
							dataVehicle[plate..":"..name][1][tostring(slot)] = nil
						end

						weebhook.vehicles[user_id] = weebhook.vehicles[user_id].. "\nRETIROU: "..vRP.getItemName(item).." "..amount.."x "
					else
						TriggerClientEvent( "Notify", source, "negado", "Mochila cheia.", 5 )
					end
				else
					vCLIENT._closeInventory(source)
				end
			end
		end
	end
	
end

function src.updateVehicleSlots(itemName, slot, target, targetName, targetamount, amount, plate, name)
	local source = source
	local user_id = vRP.getUserId(source)
	local plate = string.gsub(plate, " ","")

	if user_id and plate then
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end
		if openedVehicle[plate] == user_id or vRP.hasPermission(user_id, "developer.permissao") then
			if amount == nil or amount <= 0 then 
				amount = 1 
			end

			if targetamount == nil or targetamount <= 0 then 
				targetamount = 1
			end

			if itemName ~= targetName then
				dataVehicle[plate..":"..name][1][tostring(slot)].amount = dataVehicle[plate..":"..name][1][tostring(slot)].amount - amount
				dataVehicle[plate..":"..name][1][tostring(target)] = { amount = amount, item = itemName }

				if itemName and targetName then
					dataVehicle[plate..":"..name][1][tostring(slot)] = { amount = targetamount, item = targetName }
				end

				if dataVehicle[plate..":"..name][1][tostring(slot)].amount <= 0 then
					dataVehicle[plate..":"..name][1][tostring(slot)] = nil
				end

				if dataVehicle[plate..":"..name][1][tostring(target)].amount <= 0 then
					dataVehicle[plate..":"..name][1][tostring(target)] = nil
				end
				
			else
				dataVehicle[plate..":"..name][1][tostring(slot)].amount = dataVehicle[plate..":"..name][1][tostring(slot)].amount - amount
				dataVehicle[plate..":"..name][1][tostring(target)].amount = dataVehicle[plate..":"..name][1][tostring(target)].amount + amount

				if dataVehicle[plate..":"..name][1][tostring(slot)].amount <= 0 then
					dataVehicle[plate..":"..name][1][tostring(slot)] = nil
				end

				if dataVehicle[plate..":"..name][1][tostring(target)].amount <= 0 then
					dataVehicle[plate..":"..name][1][tostring(target)] = nil
				end
			end
		else
			vCLIENT._closeInventory(source)
		end

	end
end

RegisterCommand('maravilha',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"suporte.permissao")  then
		openedOrg = {}
	end
end)

function src.checkVehicleOpen(plate)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local mPlaca,mName = vRPclient.ModelName(source, 5)
		local identity = vRP.getUserIdentity(user_id)
		if mPlaca == identity.registro or vRP.hasPermission(user_id, "perm.policia") or vRP.hasPermission(user_id, "perm.policiacivil") or vRP.hasPermission(user_id, "developer.permissao") then
			local plate = string.gsub(plate, " ","")
			if plate == identity.registro or vRP.hasPermission(user_id, "perm.policia") or vRP.hasPermission(user_id, "perm.policiacivil") or vRP.hasPermission(user_id, "developer.permissao") then
				if openedVehicle[plate] == nil then
					openedVehicle[plate] = user_id
					userVehicleOppened[user_id] = plate
					return true
				else
					TriggerClientEvent("Notify",source,"negado","Este porta malas ja esta sendo utilizado por outra pessoa.", 3)
				end
			else
				TriggerClientEvent("Notify",source,"negado","Este veículo é de outra pessoa, você não pode abrir o porta-malas do mesmo!")
			end
		else
			TriggerClientEvent("Notify",source,"negado","Este veículo é de outra pessoa, você não pode abrir o porta-malas do mesmo!")
		end
	end
end

function src.setVehicleClose(plate, name)
	local source = source
	local user_id = vRP.getUserId(source)
	local plate = string.gsub(plate, " ","")
	if user_id then
		if weebhook.vehicles[user_id] then
			Log("https://discord.com/api/webhooks/1064667543031267449/-qVyCpi725MX73yC3WbDOaSlGKQOZ4L2HuRurAWIw0X_H6FOT2w29mbv-F34_oO75EbY", "```prolog\n[USER_ID]: "..user_id.." [VEICULO]: "..name.." [PLACA]: "..plate.."\n\n[ACOES]: "..weebhook.vehicles[user_id].."```")
		end
		
		weebhook.vehicles[user_id] = nil
		openedVehicle[plate] = nil
		userVehicleOppened[user_id] = nil
	end
end

function save_vehicles_chest()
	local count = 0

	for k in pairs(dataVehicle) do
		local nuser_id = vRP.getUserByRegistration(dataVehicle[k][3])
		if nuser_id then
			if not dataVehicle[k][4] then
				if openedVehicle[dataVehicle[k][3]] == nil then
					vRP.execute("vRP/update_portaMalas",{ user_id = nuser_id, veiculo = dataVehicle[k][2], portamalas = json.encode(dataVehicle[k][1]) })
					dataVehicle[k] = nil
					count = count + 1
				end
			else
				if openedVehicle[dataVehicle[k][3]] == nil then
					vRP.setSData("tmpChest:"..dataVehicle[k][2].."_"..dataVehicle[k][3], json.encode(dataVehicle[k][1]))
					dataVehicle[k] = nil
					count = count + 1
				end
			end
		else
			if openedVehicle[dataVehicle[k][3]] == nil then
				vRP.setSData("tmpChest:"..dataVehicle[k][2].."_"..dataVehicle[k][3], json.encode(dataVehicle[k][1]))
				dataVehicle[k] = nil
				count = count + 1
			end
		end
	end

	if count > 0 then
		--print("^1[INVENTARIO] ^0Total de porta malas salvo(s): ^1"..count)
	end

	SetTimeout(10*1000,save_vehicles_chest)
end

function Log(webhook,message)
    if webhook ~= "none" then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE INVENTARIO DE FACTOPMS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local openedOrg = {}
local userOrgOppened = {}
local dataOrgChest = {}

function src.openOrgChest(id,org,maxbau)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local amountMoc = vRP.getMochilaAmount(user_id)

		if openedOrg[org] == user_id or vRP.hasPermission(user_id, "dono.permissao") then
			local inv = vRP.getInventory(user_id)
			local myInventory = {}
			if inv then
				for k,v in pairs(inv) do
					if allItems[v["item"]] then
						if v.amount > 0 then
							v["amount"] = parseInt(v["amount"])
							v["name"] = allItems[v["item"]].name
							v["peso"] = allItems[v["item"]].weight
							v["index"] = allItems[v["item"]].tipo
							v["key"] = v["item"]
							v["slot"] = k

							myInventory[k] = v
						end
					end
				end
			end

			if dataOrgChest[org] == nil then
				local rows = vRP.getSData("orgChest:"..org)
				dataOrgChest[org] = { json.decode(rows) or {} }
			end

			local myOrgChest = {}
			local weight = 0.0
			for k,v in pairs(dataOrgChest[org][1]) do
				if allItems[v["item"]] then
					myOrgChest[k] = {
						["amount"] = parseInt(v["amount"]),
						["name"] = allItems[v["item"] ].name,
						["peso"] = allItems[v["item"] ].weight,
						["index"] = allItems[v["item"] ].tipo,
						["key"] = v["item"],
						["slot"] = k
					}

					weight = weight + (allItems[v["item"]].weight*parseInt(v["amount"]))
				end
			end 

			return myInventory,myOrgChest,vRP.computeInvWeight(user_id),vRP.getInventoryMaxWeight(user_id),weight,maxbau,{identity["nome"].." "..identity["sobrenome"],user_id}, { id,org },amountMoc
		else
			vCLIENT._closeInventory(source)
		end
	end
end

function src.colocarOrgChest(item,amount,slot, org, maxBau, id)
	local source = source
	local user_id = vRP.getUserId(source)

	if user_id and org then
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end
		if openedOrg[org] == user_id or vRP.hasPermission(user_id, "dono.permissao") then
			if item == "money" then
				TriggerClientEvent( "Notify", source, "negado", "Você não pode fazer isso com esse item.", 5 )
				return
			end

			if vRP.computeItemsWeight(dataOrgChest[org][1])+vRP.getItemWeight(item)*parseInt(amount) <= maxBau then
				if vRP.tryGetInventoryItem(user_id, item, amount, true) then
					dataOrgChest[org][1][tostring(slot)] =  { amount = amount, item = item }

					if cfg.chestOrgs[id] then
						if cfg.chestOrgs[id].weebhook ~= nil then
							vRP.sendLog(cfg.chestOrgs[id].weebhook, "```css\n["..org.."]\n"..os.date("[%d/%m/%Y] [%X]").." O (ID: "..user_id..") colocou o item ("..vRP.getItemName(item).. " " ..amount.."x)```")
						end
					end
				end
			else
				TriggerClientEvent( "Notify", source, "negado", "Bau cheio.", 5 )
			end
		else
			vCLIENT._closeInventory(source)
		end
	end

end

function src.retirarOrgChest(item,amount,slot,target, org, id)
	local source = source
	local user_id = vRP.getUserId(source)

	if user_id then
		if amount > dataOrgChest[org][1][tostring(slot)].amount then
			vRP.setBanned(user_id, true, "Inventario retirarOrgChest VALID")
			DropPlayer(source, "=D")
			return
		end

		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end

		if openedOrg[org] == user_id or vRP.hasPermission(user_id, "dono.permissao") then
			if vRP.computeInvWeight(user_id)+vRP.getItemWeight(tostring(dataOrgChest[org][1][tostring(slot)].item))*parseInt(amount) <= vRP.getInventoryMaxWeight(user_id) then
				if item == "money" then
					vRP.giveInventoryItem(user_id, dataOrgChest[org][1][tostring(slot)].item, amount, true, vRP.getItemInSlot(user_id, "money", target))
				else
					vRP.giveInventoryItem(user_id, dataOrgChest[org][1][tostring(slot)].item, amount, true, target)
				end

				dataOrgChest[org][1][tostring(slot)].amount = dataOrgChest[org][1][tostring(slot)].amount - amount
				if dataOrgChest[org][1][tostring(slot)].amount <= 0 then
					dataOrgChest[org][1][tostring(slot)] = nil
				end

				if cfg.chestOrgs[id] then
					if cfg.chestOrgs[id].weebhook ~= nil then
						vRP.sendLog(cfg.chestOrgs[id].weebhook, "```css\n["..org.."]\n"..os.date("[%d/%m/%Y] [%X]").." O (ID: "..user_id..") retirou o item ("..vRP.getItemName(item).. " " ..amount.."x)```")
					end
				end
			else
				TriggerClientEvent( "Notify", source, "negado", "Mochila cheia.", 5 )
			end
		else
			vCLIENT._closeInventory(source)
		end
	end
	
end

function src.updateOrgSlots(itemName, slot, target, targetName, targetamount, amount, org)
	local source = source
	local user_id = vRP.getUserId(source)

	if user_id and org then
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end
		if openedOrg[org] == user_id or vRP.hasPermission(user_id, "developer.permissao") then
			if amount == nil or amount <= 0 then 
				amount = 1 
			end

			if targetamount == nil or targetamount <= 0 then 
				targetamount = 1
			end

			if itemName ~= targetName then
				if dataOrgChest[org] ~= nil then
					dataOrgChest[org][1][tostring(slot)].amount = dataOrgChest[org][1][tostring(slot)].amount - amount
					dataOrgChest[org][1][tostring(target)] = { amount = amount, item = itemName }

					if itemName and targetName then
						dataOrgChest[org][1][tostring(slot)] = { amount = targetamount, item = targetName }
					end

					if dataOrgChest[org][1][tostring(slot)].amount <= 0 then
						dataOrgChest[org][1][tostring(slot)] = nil
					end

					if dataOrgChest[org][1][tostring(target)].amount <= 0 then
						dataOrgChest[org][1][tostring(target)] = nil
					end
				end
			else
				dataOrgChest[org][1][tostring(slot)].amount = dataOrgChest[org][1][tostring(slot)].amount - amount
				dataOrgChest[org][1][tostring(target)].amount = dataOrgChest[org][1][tostring(target)].amount + amount

				if dataOrgChest[org][1][tostring(slot)].amount <= 0 then
					dataOrgChest[org][1][tostring(slot)] = nil
				end

				if dataOrgChest[org][1][tostring(target)].amount <= 0 then
					dataOrgChest[org][1][tostring(target)] = nil
				end
			end

		else
			vCLIENT._closeInventory(source)
		end
	end
end

function src.checkOrgOpen(permission, org)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, permission) then
			if openedOrg[org] == nil then
				openedOrg[org] = user_id
				userOrgOppened[user_id] = org
	
				return true
			else
				TriggerClientEvent("Notify",source,"negado","Este bau ja esta sendo utilizado por outra pessoa.", 3)
			end
		end
	end
end

function src.setOrgClose(org)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		openedOrg[org] = nil
		userOrgOppened[user_id] = nil
	end
end

function save_org_chest()
	for k in pairs(dataOrgChest) do
		if openedOrg[k] == nil then
			vRP.setSData("orgChest:"..k, json.encode(dataOrgChest[k][1]))
			dataOrgChest[k] = nil
		end
	end

	SetTimeout(60*1000,save_org_chest)
end

RegisterCommand('baufacadm', function(source,args)
	local user_id = vRP.getUserId(source)
	if not user_id then return end
	if not vRP.hasPermission(user_id, "dono.permissao") then return end
	
	local t = ""
	for i in pairs(cfg.chestOrgs) do
		t = t.. cfg.chestOrgs[i].org..", "
	end

	local promptOrg = vRP.prompt(source, "Escolha a Fac: ", t)
	if not promptOrg or promptOrg == "" then
		return
	end

	for i in pairs(cfg.chestOrgs) do
		if cfg.chestOrgs[i].org == promptOrg then
			TriggerClientEvent('openAdminChest', source, i, cfg.chestOrgs[i].org, cfg.chestOrgs[i].maxbau)
			return
		end
	end

	TriggerClientEvent( "Notify", source, "negado", "Bau de facção não encontrado...", 5 )
	return
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- INVENTARIO HOUSE
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local openedHouseChest = {}
local userHouseOppened = {}
local dataHouseChest = {}

function src.openHouseChest(id, houseID, maxBau)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local amountMoc = vRP.getMochilaAmount(user_id)

		if openedHouseChest[id] == user_id then
			local inv = vRP.getInventory(user_id)
			local myInventory = {}
			if inv then
				for k,v in pairs(inv) do
					if allItems[v["item"]] then
						v["amount"] = parseInt(v["amount"])
						v["name"] = allItems[v["item"]].name
						v["peso"] = allItems[v["item"]].weight
						v["index"] = allItems[v["item"]].tipo
						v["key"] = v["item"]
						v["slot"] = k

						myInventory[k] = v
					end
				end
			end

			if dataHouseChest[id] == nil then
				local rows = vRP.query("mirtin/allInfoHome", { id = id })
				dataHouseChest[id] = { json.decode(rows[1].bau) or {}, houseID, maxBau }
			end

			local myHouseChest = {}
			local weight = 0.0
			for k,v in pairs(dataHouseChest[id][1]) do
				if allItems[v["item"]] then
					myHouseChest[k] = {
						["amount"] = parseInt(v["amount"]),
						["name"] = allItems[v["item"]].name,
						["peso"] = allItems[v["item"]].weight,
						["index"] = allItems[v["item"]].tipo,
						["key"] = v["item"],
						["slot"] = k
					}
					weight = weight + (allItems[v["item"]].weight*parseInt(v["amount"]))
				end
			end 

			return myInventory,myHouseChest,vRP.computeInvWeight(user_id),vRP.getInventoryMaxWeight(user_id),weight,dataHouseChest[id][3] + 0.0,{identity["nome"].." "..identity["sobrenome"],user_id}, { houseID },amountMoc
		else
			TriggerClientEvent("Notify",source,"negado","Este bau ja esta sendo utilizado por outra pessoa.", 3)
			vCLIENT._closeInventory(source)
		end
	end
end

function src.colocarHousehest(item,amount,slot, id)
	local source = source
	local user_id = vRP.getUserId(source)

	if user_id and id then
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end
		if openedHouseChest[id] == user_id or vRP.hasPermission(user_id, "developer.permissao") then
			if item == "money" then
				TriggerClientEvent( "Notify", source, "negado", "Você não pode fazer isso com esse item.", 5 )
				return
			end

			if vRP.computeItemsWeight(dataHouseChest[id][1])+vRP.getItemWeight(item)*parseInt(amount) <= dataHouseChest[id][3] + 0.0 then
				if vRP.tryGetInventoryItem(user_id, item, amount, true) then
					dataHouseChest[id][1][tostring(slot)] =  { amount = amount, item = item }
				end

				vRP.sendLog(webhook.casascolocar, "** COLOCOU ** O ID "..user_id.." colocou o item "..vRP.getItemName(item).." na quantidade de "..amount.."x da propriedade "..dataHouseChest[id][2].." ")
			else
				TriggerClientEvent( "Notify", source, "negado", "Bau cheio.", 5 )
			end
		else
			vCLIENT._closeInventory(source)
		end
	end

end

function src.retirarHouseChest(item,amount,slot,target, id)
	local source = source
	local user_id = vRP.getUserId(source)

	if user_id then
		if amount > dataHouseChest[id][1][tostring(slot)].amount then
			vRP.setBanned(user_id, true, "Inventario retirarHouseChest VALID")
			DropPlayer(source, "=D")
			return
		end
		
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end

		if openedHouseChest[id] == user_id or vRP.hasPermission(user_id, "admin.permissao") then
			if vRP.computeInvWeight(user_id)+vRP.getItemWeight(tostring(dataHouseChest[id][1][tostring(slot)].item))*parseInt(amount) <= vRP.getInventoryMaxWeight(user_id) then
				if item == "money" then
					vRP.giveInventoryItem(user_id, dataHouseChest[id][1][tostring(slot)].item, amount, true, vRP.getItemInSlot(user_id, "money", target))
				else
					vRP.giveInventoryItem(user_id, dataHouseChest[id][1][tostring(slot)].item, amount, true, target)
				end

				dataHouseChest[id][1][tostring(slot)].amount = dataHouseChest[id][1][tostring(slot)].amount - amount
				if dataHouseChest[id][1][tostring(slot)].amount <= 0 then
					dataHouseChest[id][1][tostring(slot)] = nil
				end

				vRP.sendLog(webhook.casasretirar, "** RETIRAR ** O ID "..user_id.." retirou o item "..vRP.getItemName(item).." na quantidade de "..amount.."x da propriedade "..dataHouseChest[id][2].." ")
			else
				TriggerClientEvent( "Notify", source, "negado", "Mochila cheia.", 5 )
			end
		else
			vCLIENT._closeInventory(source)
		end
	end
	
end

function src.updateHouseSlots(itemName, slot, target, targetName, targetamount, amount, id)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id and id then
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end
		if openedHouseChest[id] == user_id or vRP.hasPermission(user_id, "developer.permissao") then
			if amount == nil or amount <= 0 then 
				amount = 1 
			end

			if targetamount == nil or targetamount <= 0 then 
				targetamount = 1
			end

			if itemName ~= targetName then
				dataHouseChest[id][1][tostring(slot)].amount = dataHouseChest[id][1][tostring(slot)].amount - amount
				dataHouseChest[id][1][tostring(target)] = { amount = amount, item = itemName }

				if itemName and targetName then
					dataHouseChest[id][1][tostring(slot)] = { amount = targetamount, item = targetName }
				end

				if dataHouseChest[id][1][tostring(slot)].amount <= 0 then
					dataHouseChest[id][1][tostring(slot)] = nil
				end

				if dataHouseChest[id][1][tostring(target)].amount <= 0 then
					dataHouseChest[id][1][tostring(target)] = nil
				end
				
			else
				dataHouseChest[id][1][tostring(slot)].amount = dataHouseChest[id][1][tostring(slot)].amount - amount
				dataHouseChest[id][1][tostring(target)].amount = dataHouseChest[id][1][tostring(target)].amount + amount

				if dataHouseChest[id][1][tostring(slot)].amount <= 0 then
					dataHouseChest[id][1][tostring(slot)] = nil
				end

				if dataHouseChest[id][1][tostring(target)].amount <= 0 then
					dataHouseChest[id][1][tostring(target)] = nil
				end
			end
		else
			vCLIENT._closeInventory(source)
		end
	end
end

function src.checkHouseChest(id)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if openedHouseChest[id] == nil then
			openedHouseChest[id] = user_id
			userHouseOppened[user_id] = id
			return true
		else
			TriggerClientEvent("Notify",source,"negado","Este bau ja esta sendo utilizado por outra pessoa.", 3)
		end
	end
end

function src.setHouseClose(id)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		openedHouseChest[id] = nil
		userHouseOppened[user_id] = nil
	end
end

function save_house_chest()
	local count = 0
	for k in pairs(dataHouseChest) do
		if openedHouseChest[k] == nil then
			vRP.execute("mirtin/updateBau", { id = k, bau = json.encode(dataHouseChest[k][1])} )
			dataHouseChest[k] = nil
		end
	end

	SetTimeout(60*1000,save_house_chest)
end

RegisterCommand('bauadm', function(source,args)
	local user_id = vRP.getUserId(source)
	if not user_id then return end
	if not vRP.hasPermission(user_id, "developer.permissao") then return end
	
	local promptHouse = vRP.prompt(source, "Digite o Id da casa: ", t)
	if not promptHouse or promptHouse == "" then
		return
	end

	local rows = vRP.query("mirtin/ownerPropriedade", { houseID = promptHouse })
	if #rows == 0 then
		TriggerClientEvent("Notify",source,"negado","Propriedade não encontrada.", 3)
		return
	end

	TriggerClientEvent('mirt1n:myHouseChest', source, rows[1].id, promptHouse, 1000)
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE INVENTARIO REVISTAR
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local openedRevistar = {}

function src.openRevistar(nuser_id)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local nplayer = vRP.getUserSource(parseInt(nuser_id))
	if user_id then
		local amountMoc = vRP.getMochilaAmount(user_id)

		if nplayer then
			if openedRevistar[nuser_id] == user_id then
				local identity2 = vRP.getUserIdentity(nuser_id)

				local inv = vRP.getInventory(user_id)
				local myInventory = {}
				if inv then
					for k,v in pairs(inv) do
						if allItems[v["item"]] then
							v["amount"] = parseInt(v["amount"])
							v["name"] = allItems[v["item"]].name
							v["peso"] = allItems[v["item"]].weight
							v["index"] = allItems[v["item"]].tipo
							v["key"] = v["item"]
							v["slot"] = k

							myInventory[k] = v
						end
					end
				end

				local inv2 = vRP.getInventory(nuser_id)
				local myHouseChest = {}
				local weight = 0.0

				for k,v in pairs(inv2) do
					if allItems[v["item"]] then
						myHouseChest[k] = {
							["amount"] = parseInt(v["amount"]),
							["name"] = allItems[v["item"]].name,
							["peso"] = allItems[v["item"]].weight,
							["index"] = allItems[v["item"]].tipo,
							["key"] = v["item"],
							["slot"] = k
						}
						weight = weight + (allItems[v["item"]].weight*parseInt(v["amount"]))
					end
				end 
				return myInventory,myHouseChest,vRP.computeInvWeight(user_id),vRP.getInventoryMaxWeight(user_id),weight,vRP.getInventoryMaxWeight(nuser_id),{identity["nome"].." "..identity["sobrenome"],user_id}, { identity2.nome, identity2.sobrenome, nuser_id },amountMoc
			else
				vCLIENT._closeInventory(source)
			end

		end
	end
end

function src.checkOpenRevistar(AdminMode, PlyId)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local nplayer

		-- if arena.inArena(source) then
		-- 	TriggerClientEvent("Notify",source,"negado","Você não pode revistar nessa dimensão.", 3)
		-- 	return 
		-- end

		if AdminMode then
			nplayer = vRP.getUserSource(parseInt(PlyId))
		else
			nplayer = vRPclient.getNearestPlayer(source, 5)
		end

		print("Passed AdminMode")

		if nplayer then
			local nuser_id = vRP.getUserId(nplayer)
			if not AdminMode or not vRP.hasPermission(user_id, 'admin.permissao') then
				if vRP.hasPermission(nuser_id, "perm.policia")  then
					print("passando por aqui")
					TriggerClientEvent("Notify",source,"negado","Você não pode saquear um policial em patrulhamento.", 3)
					return
				end

				if vRP.hasPermission(nuser_id, "perm.policiacivil")  then
					TriggerClientEvent("Notify",source,"negado","Você não pode saquear um policia em patrulhamento.", 3)
					return
				end

				if vRP.hasPermission(nuser_id, "perm.hospital") then
					TriggerClientEvent("Notify",source,"negado","Você não pode saquear um medico.", 3)
					return
				end

				if vRP.hasPermission(nuser_id, "perm.mecanico") then
					TriggerClientEvent("Notify",source,"negado","Você não pode saquear um mecanico.", 3)
					return
				end

				if vRP.hasPermission(nuser_id, "perm.cot")  then
					TriggerClientEvent("Notify",source,"negado","Você não pode saquear um policial.", 3)
					return
				end
			end

			if openedRevistar[nuser_id] == nil then
				if not vRP.hasPermission(user_id, 'admin.permissao') then
					if GetEntityHealth(GetPlayerPed(nplayer)) > 105 and not (vRP.request(nplayer,"Você aceita ser revistado ?", 30)) then --not vCLIENT.checkAnim(nplayer) and not vRPclient.isHandcuffed(nplayer)
						TriggerClientEvent("Notify",source,"negado","O jogador precisa estar em coma ou aceitar sua revista.", 3)
						return
					end
				end

				TriggerClientEvent("Notify",source,"sucesso","Iniciando revista...", 3)
				TriggerClientEvent("Notify",nplayer,"negado","Você está sendo revistado...", 3)

				local weapons = vRPclient.replaceWeapons(nplayer,{})
				for k,v in pairs(weapons) do
						vRP.giveInventoryItem(nuser_id, k, 1, true)
					if v.ammo > 0 then
						local weapon = string.gsub(k, "WEAPON_","AMMO_")
						vRP.giveInventoryItem(nuser_id, weapon, v.ammo, true)
					end
				end
				
				vCLIENT._updateWeapons(nplayer)
				vCLIENT._closeInventory(nplayer)

				return nuser_id
			else
				TriggerClientEvent("Notify",source,"negado","Este jogador ja esta sendo revistado por outra pessoa.", 3)
			end
		end

		return false
	end
end

function src.setRevistar(id, status)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if status then
			openedRevistar[id] = user_id
		else
			openedRevistar[id] = nil
		end
	end
end

local itensblock = {
	["algemas"] = true,
	["chave_algemas"] = true,
	["c4"] = true,
	--["bolsadinheiro"] = true,
	["masterpick"] = true,
	["pendrive"] = true,
	["furadeira"] = true,
	["lockpick"] = true,
	["m-aco"] = true,
	["m-capa_colete"] = true,
	["m-corpo_ak47_mk2"] = true,
	["m-corpo_g3"] = true,
	["m-corpo_machinepistol"] = true,
	["m-corpo_pistol_mk2"] = true,
	["m-corpo_shotgun"] = true,
	["m-corpo_smg_mk2"] = true,
	["m-corpo_snspistol_mk2"] = true,
	["m-gatilho"] = true,
	["capsulas"] = true,
	["polvora"] = true,
	["pecadearma"] = true,
	["metal"] = true,
	["molas"] = true,
	["gatilho"] = true,
	["m-malha"] = true,
	["m-placametal"] = true,
	["m-tecido"] = true,
	["c-cobre"] = true,
	["c-ferro"] = true,
	["c-fio"] = true,
	["c-polvora"] = true,
	["l-alvejante"] = true,
	["folhamaconha"] = true,
	["maconha"] = true,
	["pastabase"] = true,
	["cocaina"] = true,
	["acidolsd"] = true,
	["body_armor"] = true,
	["capuz"] = true,
	["dirty_money"] = true,
	["scubagear"] = true,
	["relogioroubado"] = true,
	["colarroubado"] = true,
	["anelroubado"] = true,
	["brincoroubado"] = true,
	["pulseiraroubada"] = true,
	["carnedepuma"] = true,
	["carnedelobo"] = true,
	["carnedejavali"] = true,
	["lsd"] = true,
	["morfina"] = true,
	["heroina"] = true,
	["anfetamina"] = true,
	["metanfetamina"] = true,
	["tartaruga"] = true,
	["WEAPON_SNSPISTOL_MK2"] = true,
	["AMMO_SNSPISTOL_MK2"] = true,
	["WEAPON_PISTOL_MK2"] = true,
	["WEAPON_GUSENBERG"] = true,
	["WEAPON_PISTOL50"] = true,
	["WEAPON_HEAVYPISTOL"] = true,
	["WEAPON_HATCHET"] = true,
	["AMMO_PISTOL_MK2"] = true,
	["WEAPON_COMBATPISTOL"] = true,
	["WEAPON_COMBATPDW"] = true,
	["AMMO_COMBATPISTOL"] = true,
	["WEAPON_MACHINEPISTOL"] = true,
	["AMMO_MACHINEPISTOL"] = true,
	["WEAPON_SMG_MK2"] = true,
	["AMMO_SMG_MK2"] = true,
	["WEAPON_SMG"] = true,
	["AMMO_SMG"] = true,
	["WEAPON_ASSAULTSMG"] = true,
	["AMMO_ASSAULTSMG"] = true,
	["WEAPON_SAWNOFFSHOTGUN"] = true,
	["AMMO_SAWNOFFSHOTGUN"] = true,
	["WEAPON_PUMPSHOTGUN_MK2"] = true,
	["AMMO_PUMPSHOTGUN_MK2"] = true,
	["WEAPON_ASSAULTRIFLE_MK2"] = true,
	["AMMO_ASSAULTRIFLE_MK2"] = true,
	["WEAPON_SPECIALCARBINE_MK2"] = true,
	["AMMO_SPECIALCARBINE_MK2"] = true,
	["WEAPON_CARBINERIFLE"] = true,
	["AMMO_CARBINERIFLE"] = true,
	["WEAPON_SPECIALCARBINE"] = true,
	["AMMO_SPECIALCARBINE"] = true,
	["WEAPON_STUNGUN"] = true,
	["WEAPON_PETROLCAN"] = true,
	["AMMO_PETROLCAN"] = true,
	["WEAPON_HEAVYSNIPER"] = true,
	["AMMO_HEAVYSNIPER"] = true,
}

function src.addItemRevistar(id, item, target, amount)
	local source = source
	local user_id = vRP.getUserId(source)
	local nplayer = vRP.getUserSource(id)
	if user_id then
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end
		if not vRP.hasPermission(user_id, "developer.permissao") then 
			return 
		end
		if item == "WEAPON_COMBATPDW" or item == "WEAPON_COMBATPISTOL" or item == "WEAPON_CARBINERIFLE" then
			TriggerClientEvent( "Notify", source, "negado", "Você não pode mexer com essa arma!", 5 )
			return
		end

		local nplayer = vRP.getUserSource(id)
		if nplayer then
			if vRP.tryGetInventoryItem(user_id, item, amount, true) then
				vRP.giveInventoryItem(id, item, amount, target)
			end
		end
	end
end

function src.retirarItemRevistar(id, item, target, amount, slot)
	local source = source
	local user_id = vRP.getUserId(source)
	local nplayer = vRP.getUserSource(id)
	if user_id then
		if GetPlayerPing(source) > 400 then
			TriggerClientEvent( "Notify", source, "negado", "Você está com um ping alto, então você não pode utilizar os baús.", 5 )
			vCLIENT._closeInventory(source)
            return false
		end
		if nplayer then
			if openedRevistar[id] == user_id then

				if vRP.hasPermission(user_id,"perm.policia") or vRP.hasPermission(user_id,"perm.policiacivil") then
					if itensblock[item] ~= nil then
						TriggerClientEvent("Notify",source,"negado","Você não pode pegar esse item de bandidos.", 3)
						return
					end
				end

				if item == "WEAPON_COMBATPDW" or item == "WEAPON_COMBATPISTOL" or item == "WEAPON_CARBINERIFLE" then
					TriggerClientEvent( "Notify", source, "negado", "Você não pode mexer com essa arma!", 5 )
					return
				end

				if item == "WEAPON_STUNGUN" then
					TriggerClientEvent("Notify",source,"negado","Você não pode pegar esse item.", 3)
					return
				end

				if vRP.computeInvWeight(user_id)+vRP.getItemWeight(tostring(item))*parseInt(amount) <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.tryGetInventoryItem(id, item, amount, true, slot) then
						if item == "money" then
							vRP.giveInventoryItem(user_id, item, amount, true, vRP.getItemInSlot(user_id, "money", target))
						else
							vRP.giveInventoryItem(user_id, item, amount, true, target)
						end

						vRP.sendLog(webhook.saquear, "O ID "..user_id.." saqueou o item "..vRP.getItemName(item).." na quantidade "..amount.."x do ID "..id..".")
					end
				else
					TriggerClientEvent( "Notify", source, "negado", "Mochila cheia.", 5 )
				end
				
			else
				vCLIENT._closeInventory(source)
			end
		end
	end
end


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- NUIS CALLBACKS STORES
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.openStore(id)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local amountMoc = vRP.getMochilaAmount(user_id)
		local inv = vRP.getInventory(user_id)
		local myInventory = {}
		if inv then
			for k,v in pairs(inv) do
				if (parseInt(v["amount"]) <= 0 or allItems[v.item] == nil) then
					vRP.removeInventoryItem(user_id,v.item,parseInt(v["amount"]))
				else
					v["amount"] = parseInt(v["amount"])
					v["name"] = allItems[v["item"]].name
					v["peso"] = allItems[v["item"]].weight
					v["index"] = allItems[v["item"]].tipo
					v["key"] = v["item"]
					v["slot"] = k

					myInventory[k] = v
				end
			end
		end

		if cfg.stores[id] then
			local items = cfg.stores[id].items
			local myStore = {}
			for k,v in pairs(items) do
				if allItems[v.item] then
					v["name"] = allItems[v.item].name
					v["buyPrice"] = v.priceBuy
					v["sellPrice"] = v.priceSell
					v["key"] = v.item

					myStore[v.slot] = v
				end
			end

			return myInventory,myStore,vRP.computeInvWeight(user_id),vRP.getInventoryMaxWeight(user_id),0,9999,{identity["nome"].." "..identity["sobrenome"],user_id}, { id },amountMoc
		end

	end
end

function src.buyStore(id, item, target, amount)
	amount = parseInt(amount)
	
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if amount < 0 then
			amount = 1
			vRP.setBanned(user_id, true, "[MONEY INJECT] BUY STORE")
			DropPlayer(source, ":)")
			return
		end

		local dist = checkStoreDistance(source, id)
		if not dist then
			vRP.setBanned(user_id, true, "[MONEY INJECT] BUY STORE ²")
			DropPlayer(source, ":)")
			return
		end

		if cfg.stores[id] then
			local items = cfg.stores[id].items
			if items[item].priceBuy ~= nil then
				if vRP.computeInvWeight(user_id)+vRP.getItemWeight(tostring(item))*parseInt(amount) <= vRP.getInventoryMaxWeight(user_id) then
					if parseInt(items[item].priceBuy) == 0 or vRP.tryFullPayment(user_id, parseInt(items[item].priceBuy)*amount) then --vRP.tryPayment(user_id, parseInt(items[item].priceBuy)*amount)
						vRP.giveInventoryItem(user_id, item, amount, true, target)
						
						if parseInt(items[item].priceBuy)*amount > 0 then
							TriggerClientEvent( "Notify", source, "sucesso", "Você pagou <b>$ "..vRP.format(parseInt(items[item].priceBuy)*amount).."</b>.", 5 )
						end
					else
						TriggerClientEvent( "Notify", source, "negado", "Você não possui dinheiro.", 5 )
					end
				else
					TriggerClientEvent( "Notify", source, "negado", "Mochila cheia.", 5 )
				end
			end
		end
	end
end

function src.sellStore(id, item, amount)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if cfg.stores[id] then
			local items = cfg.stores[id].items
			local bonus = cfg.stores[id].bonus
			local dinheiro = cfg.stores[id].money

			if amount < 0 then
				amount = 1
				vRP.setBanned(user_id, true, "[MONEY INJECT] SELL STORE")
				DropPlayer(source, ":)")
				return
			end
	
			local dist = checkStoreDistance(source, id)
			if not dist then
				vRP.setBanned(user_id, true, "[MONEY INJECT] SELL STORE ²")
				DropPlayer(source, ":)")
				return
			end

			if dinheiro == "limpo" then dinheiro = "money" elseif dinheiro == "sujo" then dinheiro = "dirty_money" else return end
			if item and items[item] and items[item].sellPrice ~= nil then 
				if vRP.tryGetInventoryItem(user_id, item, amount) then
					if bonus then
						vRP.giveInventoryItem(user_id, dinheiro, parseInt(items[item].sellPrice)*amount, true)
					else
						vRP.giveInventoryItem(user_id, dinheiro, parseInt(items[item].sellPrice)*amount, true)
					end
	
					vCLIENT._updateInventory(source, "updateStore")
				else
					TriggerClientEvent( "Notify", source, "negado", "Você não possui dinheiro.", 5 )
				end
			 end
			 
		end
	end
end

function checkStoreDistance(source, id)
	for index in pairs(cfg.storesLocs) do
		local store = cfg.storesLocs[index]
		if id == store.type then
			local plyCoords = GetEntityCoords(GetPlayerPed(source))
			if (#(store.coords - plyCoords) <= 20) then
				return true
			end
		end
	end

	return false
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE DROPAR DROPAR ITEM
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function createDropItem(item,count,source)
    local id = idgens:gen()
    local coords = GetEntityCoords(GetPlayerPed(source))

    droplist[id] = { item = item, count = count, x = coords[1], y = coords[2], z = coords[3], name = vRP.getItemName(item), key = item, index = vRP.getItemType(item), peso = vRP.getItemWeight(item) }
	vCLIENT._updateDrops(source,id,droplist[id]) 

	local nplayers = vRPclient.getNearestPlayers(source, 100)
	for k in pairs(nplayers) do
		vCLIENT._updateDrops(k, id,droplist[id]) 
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES DE UTILIZAÇÃO DE ITENS INVENTARIO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function play_eat(source, tipo, segundos)
	local prop = ""
	-- COMIDAS
	if tipo == "pao" then
		prop = "prop_food_burg2"
	elseif tipo == "sanduiche" then
		prop = "prop_cs_burger_01"
	elseif tipo == "pizza" then
		prop = "prop_taco_01"
	elseif tipo == "barrac" then
		prop = "prop_choc_meto"
	elseif tipo == "cachorroq" then
		prop = "prop_cs_hotdog_01"
	elseif tipo == "pipoca" then
		prop = "ng_proc_food_chips01b"
	elseif tipo == "donut" then
		prop = "prop_amb_donut"
	elseif tipo == "paoq" then
		prop = "prop_food_cb_nugets"
	elseif tipo == "marmita" then
		prop = "prop_taco_01"
	elseif tipo == "coxinha" then
		prop = "prop_food_cb_nugets"
	else
		prop = "prop_cs_burger_01"
	end

	vRPclient._CarregarObjeto(source,"amb@code_human_wander_eating_donut@male@idle_a","idle_c",prop,49,28422)
	SetTimeout(segundos*1000, function() vRPclient._DeletarObjeto(source) end)
end

function play_drink(source, tipo, segundos)
	local prop = ""
	-- BEBIDAS
	if tipo == "energetico" then
		prop = "prop_energy_drink"
	elseif tipo == "water" then
		prop = "prop_ld_flow_bottle"
	elseif tipo == "cafe" then
		prop = "prop_fib_coffee"
	elseif tipo == "cocacola" then
		prop = "ng_proc_sodacan_01a"
	elseif tipo == "sucol" then
		prop = "ng_proc_sodacan_01b"
	elseif tipo == "sucol2" then
		prop = "ng_proc_sodacan_01b"
	elseif tipo == "sprunk"then
		prop = "ng_proc_sodacan_01b"

	-- BEBIDAS ALCOLICAS
	elseif tipo == "cerveja" then
		prop = "prop_amb_beer_bottle"
	elseif tipo == "whisky" then
		prop = "prop_drink_whisky"
	elseif tipo == "vodka" then
		prop = "p_whiskey_notop" 
	elseif tipo == "pinga" then
		prop = "p_whiskey_notop" 
	elseif tipo == "corote" then
		prop = "ng_proc_sodacan_01b"
	elseif tipo == "absinto" then
		prop = "prop_drink_whisky"
	elseif tipo == "skolb" then
		prop = "ng_proc_sodacan_01b"
	else
		prop = "prop_ld_flow_bottle"
	end
	
	vRPclient._CarregarObjeto(source,"amb@world_human_drinking@beer@male@idle_a","idle_a",prop,49,28422)
    SetTimeout(segundos*1000, function() vRPclient._DeletarObjeto(source) end)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMANDOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rscuba', function(source,args)
	local user_id = vRP.getUserId(source)
    if user_id then
		local status,time = func:getCooldown(user_id, "rscuba")

        local ok = vRP.request(source, "Você deseja retirar a sua scuba?", 30)
        if ok and (GetEntityHealth(GetPlayerPed(source)) > 105) and status then
			func:setCooldown(user_id, "enviar", 5)

            if vCLIENT.checkScuba(source) then
                vCLIENT._setScuba(source, false)
                TriggerClientEvent("Notify",source,"negado","Você retirou sua scuba, não conseguimos recuperar ela houve um vazamento.", 5)
            else
                TriggerClientEvent("Notify",source,"negado","Você não possui scuba equipada.", 5)
            end
        end
	end
end)

RegisterCommand('reparar', function(source,args)
	local user_id = vRP.getUserId(source)
    if user_id then
		if not vRPclient.isInVehicle(source) then
			local vehicle = vRPclient.getNearestVehicle(source, 7)
			if vRP.hasPermission(user_id, "mecanico.permissao") then
				vRPclient._playAnim(source, false, {{"mini@repair", "fixing_a_player"}}, true )
				TriggerClientEvent("progress", source, 30)
				
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

RegisterCommand('garmas', function(source,args)
    local user_id = vRP.getUserId(source)
    if user_id then
        local ok = vRP.request(source, "Você deseja guardar suas armas?", 30)
		local status, time = exports['vrp']:getCooldown(user_id, "garmas")
        if ok and GetEntityHealth(GetPlayerPed(source)) > 105 and status then
            exports['vrp']:setCooldown(user_id, "garmas", 10)

            if not vRP.hasPermission(user_id, 'perm.policia') then
                local weapons = vRPclient.replaceWeapons(source,{})
                local mensagem = ""
				delayGarmas[user_id] = os.time()
                vCLIENT._updateWeapons(source)

                for k,v in pairs(weapons) do
                    if k == "WEAPON_STUNGUN" or k == "WEAPON_PETROLCAN" then 
                        TriggerClientEvent("Notify",source,"negado","Não é possivel guardar <b>"..vRP.getItemName(k).."</b> na mochila..", 5)
                    else
                        vRP.giveInventoryItem(user_id, k, 1, true)

                        if v.ammo > 0 then
                            local ammo = string.gsub(k, "WEAPON_","AMMO_")
                            vRP.giveInventoryItem(user_id, ammo, v.ammo, true)
                        end
                        
						if v.ammo >= 250 then
                            mensagem = mensagem.. "(Arma: "..k.." Municao: "..v.ammo.."x) - @everyone"
                        elseif v.ammo > 0 then
                            mensagem = mensagem.. "(Arma: "..k.." Municao: "..v.ammo.."x) - "
                        else
                            mensagem = mensagem.. "(Arma: "..k.." Municao: 0x) - "
                        end
                    end
                end

                TriggerClientEvent("Notify",source,"sucesso","Você guardou seu armamento na mochila.", 5)
                vRP.sendLog(webhook.garmas, "O ID "..user_id.." guardou  [ "..mensagem.." ] ")
            else
                TriggerClientEvent("Notify",source,"negado","Você não pode guardar armas em patrulhamento.", 5)
            end
        end
    end
end)

AddEventHandler("vRP:playerLeave",function(user_id,source)
    if user_id then
        if delayGarmas[user_id] then
			if (os.time() - delayGarmas[user_id] <= 5) then
				delayGarmas[user_id] = nil
				vRP.execute("mirtin/insertBanned", { user_id = user_id, motivo = "Dupando Armas", banimento = os.date("%d/%m/%Y as %H:%M"), desbanimento = "Nunca", time = 0, hwid = 1 })
				return
			end

			delayGarmas[user_id] = nil
		end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- REPARAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryreparar")
AddEventHandler("tryreparar",function(nveh)
	TriggerClientEvent("syncreparar",-1,nveh)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- REPARAR PNEUS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryrepararpneus")
AddEventHandler("tryrepararpneus",function(nveh)
	TriggerClientEvent("syncrepararpneus",-1,nveh)
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	vRP.execute("vRP/inv_deltmpchest",{})
end)

AddEventHandler("vRP:playerLeave",function(user_id,source)
	if user_id then 
		if userOrgOppened[user_id] then
			print("(ID: "..user_id.. ") Quitou/Crashou com Bau da Organização ("..userOrgOppened[user_id]..") aberto.")
			
			openedOrg[userOrgOppened[user_id]] = nil
			userOrgOppened[user_id] = nil
		end

		if userHouseOppened[user_id] then
			print("(ID: "..user_id.. ") Quitou/Crashou com Bau da Casa ("..userHouseOppened[user_id]..") aberto.")
			
			openedHouseChest[userHouseOppened[user_id]] = nil
			userHouseOppened[user_id] = nil
		end

		if userVehicleOppened[user_id] then
			print("(ID: "..user_id.. ") Quitou/Crashou com Bau do Carro ("..userVehicleOppened[user_id]..") aberto.")
			
			openedVehicle[userVehicleOppened[user_id]] = nil
			userVehicleOppened[user_id] = nil
		end

		if weebhook.vehicles[user_id] then
			weebhook.vehicles[user_id] = nil
		end
		
	end
end)

CreateThread(function()
	allItems = vRP.getAllItens()

	save_org_chest()
	save_vehicles_chest()
	save_house_chest()
end)


RegisterServerEvent("saveInventory")
AddEventHandler("saveInventory",function()
	print("Inventarios Salvos...")
	save_org_chest()
	save_vehicles_chest()
	save_house_chest()
end)