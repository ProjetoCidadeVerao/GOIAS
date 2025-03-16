--- SAFE ZONE


local zones = {
	{ ['x'] = 168.40252685547, ['y'] = -996.16967773438, ['z'] = 29.35410118103, range = 120.0}, -- 168.40252685547,-996.16967773438,29.35410118103,
	{ ['x'] = -40.35, ['y'] = -1096.67, ['z'] = 26.43, range = 20.0},
	{ ['x'] = 191.61, ['y'] = -946.28, ['z'] = 31.44, range = 100.0},
	{ ['x'] = 1678.6, ['y'] = 2513.39, ['z'] = 45.57, range = 240.0},
	{ ['x'] = -445.61, ['y'] = -315.64, ['z'] = 34.92, range = 120.0},
	{ ['x'] = 1163.83, ['y'] = -1524.21, ['z'] = 36.48, range = 100.0},
	{ ['x'] = 1825.09, ['y'] = 3794.26, ['z'] = 33.33, range = 200.0},
	{ ['x'] = 232.58, ['y'] = -1681.38, ['z'] = 29.67, range = 80.0},
	{ ['x'] = -315.61, ['y'] = -947.05, ['z'] = 33.75, range = 80.0},
	{ ['x'] = 939.97, ['y'] = -1026.1, ['z'] = 41.27, range = 120.0},
	{ ['x'] = 198.06, ['y'] = -915.96, ['z'] = 44.01, range = 120.0},
	{ ['x'] = -482.95, ['y'] = -1002.89, ['z'] = 38.28, range = 50.0}, -- HOSPITAL
	
}
local notifIn = false
local notifOut = false
local closestZone = 1


--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
----------------------------Criando Blips nos locais.----------X
------- Você pode comentar esta seção se não quiser nenhuma mensagem mostrando as zonas no mapa.--------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

-- Citizen.CreateThread(function()
-- 	while not NetworkIsPlayerActive(PlayerId()) do
-- 		Citizen.Wait(0)
-- 	end
	
-- 	for i = 1, #zones, 1 do
-- 		local szBlip = AddBlipForCoord(zones[i].x, zones[i].y, zones[i].z)
-- 		SetBlipAsShortRange(szBlip, true)
-- 		SetBlipColour(szBlip, 2)  --Mudar a cor do blip: https://gtaforums.com/topic/864881-all-blip-color-ids-pictured/
-- 		SetBlipSprite(szBlip, 398) -- Mudar o próprio blip: https://marekkraus.sk/gtav/blips/list.html
-- 		BeginTextCommandSetBlipName("STRING")
-- 		AddTextComponentString("SAFE ZONE") -- O que ele dirá quando você passar o mouse sobre a mancha em seu mapa.
-- 		EndTextCommandSetBlipName(szBlip)
-- 	end
-- end)

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
----------------   Obtendo sua distância de qualquer um dos locais  --------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	while true do
		local playerPed = GetPlayerPed(-1)
		local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		local minDistance = 100000
		for i = 1, #zones, 1 do
			dist = Vdist(zones[i].x, zones[i].y, zones[i].z, x, y, z)
			if dist < minDistance then
				minDistance = dist
				closestZone = i
			end
		end
		Citizen.Wait(15000)
	end
end)

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
---------   Ativando e desativando fogo amigo, desativando suas armas e enviando pNoty   -----------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	while true do
		Citizen.Wait(0)
		local player = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(player, true))
		local dist = Vdist(zones[closestZone].x, zones[closestZone].y, zones[closestZone].z, x, y, z)

		if dist <= zones[closestZone].range then  -- Aqui você pode alterar o RAIO da Zona de Segurança. Lembre-se, tudo o que você colocar aqui DOBRARÁ porque 
			if not notifIn then	-- é uma esfera. Portanto, 50 resultará em um diâmetro de 100. Presumo que sejam metros. Nenhuma pista para ser honesto.																		  
				NetworkSetFriendlyFireOption(false)
				ClearPlayerWantedLevel(PlayerId())
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true)
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>Você está em uma SafeZone</b>",
					type = "success",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
				notifIn = true
				notifOut = false
			end
		else
			if not notifOut then
				NetworkSetFriendlyFireOption(true)
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>Você NÃO ESTÁ MAIS numa SafeZone</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
				notifOut = true
				notifIn = false
			end
		end
		if notifIn then
		DisableControlAction(2, 37, true) -- desabilitar roda de arma (Tab)
		DisablePlayerFiring(player,true) -- Desativa o disparo todos juntos se, de alguma forma, ignorarem inzone Mouse Disable
      	DisableControlAction(0, 106, true) -- Desative os controles do mouse no jogo
			if IsDisabledControlJustPressed(2, 37) then --se Tab for pressionado, enviar mensagem de erro
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true) -- se a guia for pressionada, eles serão desarmados (isso é para cobrir a falha do veículo até que eu resolva tudo)
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>Você não pode usar armas em uma zona segura</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
			if IsDisabledControlJustPressed(0, 106) then --se o botão esquerdo for pressionado, enviar mensagem de erro
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true) -- Se eles clicarem, serão desarmados
				TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>Você não pode fazer isso em uma zona segura</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})
			end
		end
		-- Comente as linhas 142 - 145 se você não quiser um marcador.
	 	--if DoesEntityExist(player) then	      --The -1.0001 will place it on the ground flush		-- SIZING CIRCLE |  x    y    z | R   G    B   alpha| *more alpha more transparent*
	 	--	DrawMarker(1, zones[closestZone].x, zones[closestZone].y, zones[closestZone].z-1.0001, 0, 0, 0, 0, 0, 0, 100.0, 100.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0) -- heres what all these numbers are. Honestly you dont really need to mess with any other than what isnt 0.
	 		--DrawMarker(type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, int p19(LEAVE AS 2), BOOL rotate, char* textureDict, char* textureName, BOOL drawOnEnts)
	 	--end
	end
end)