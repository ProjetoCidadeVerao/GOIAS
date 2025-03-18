local menu_state = {}
local segundos = 0

function tvRP.openMenuData(menudata)
	SendNUIMessage({ act = "open_menu", menudata = menudata })
end

function tvRP.closeMenu()
	SendNUIMessage({ act = "close_menu" })
end

function tvRP.prompt(title,default_text)
	SendNUIMessage({ act = "prompt", title = title, text = tostring(default_text) })
	SetNuiFocus(true)
end

function tvRP.request(id,text,time)
	SendNUIMessage({ act = "request", id = id, text = tostring(text), time = time })
end

RegisterNUICallback("menu",function(data,cb)
	if data.act == "close" then
		vRPserver._closeMenu(data.id)
	elseif data.act == "valid" then
		vRPserver._validMenuChoice(data.id,data.choice,data.mod)
	end
end)

RegisterNUICallback("menu_state",function(data,cb)
	menu_state = data
end)

RegisterNUICallback("prompt",function(data,cb)
	if data.act == "close" then
		SetNuiFocus(false)
		vRPserver._promptResult(data.result)
	end
end)

RegisterNUICallback("request",function(data,cb)
	if data.act == "response" then
		vRPserver._requestResult(data.id,data.ok)
	end
end)

RegisterNUICallback("init",function(data,cb)
	SendNUIMessage({ act = "cfg", cfg = {} })
	TriggerEvent("vRP:NUIready")
end)

function tvRP.setDiv(name,css,content)
	SendNUIMessage({ act = "set_div", name = name, css = css, content = content })
end

function tvRP.setDivContent(name,content)
	SendNUIMessage({ act = "set_div_content", name = name, content = content })
end

function tvRP.removeDiv(name)
	SendNUIMessage({ act = "remove_div", name = name })
end

function tvRP.loadAnimSet(dict)
	RequestAnimSet(dict)
	while not HasAnimSetLoaded(dict) do
		Citizen.Wait(10)
	end
	SetPedMovementClipset(PlayerPedId(),dict,0.25)
end

function tvRP.CarregarAnim(dict)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(10)
	end
end

function tvRP.CarregarObjeto(dict,anim,prop,flag,mao,altura,pos1,pos2,pos3)
	local ped = PlayerPedId()

	RequestModel(GetHashKey(prop))
	while not HasModelLoaded(GetHashKey(prop)) do
		Citizen.Wait(10)
	end

	if altura then
		local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
		object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
		SetEntityCollision(object,false,false)

		AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,mao),altura,pos1,pos2,pos3,260.0,60.0,true,true,false,true,1,true)
	else
		tvRP.CarregarAnim(dict)
		TaskPlayAnim(ped,dict,anim,3.0,3.0,-1,flag,0,0,0,0)
		local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
		object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
		SetEntityCollision(object,false,false)
		AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,mao),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
	end
	SetEntityAsMissionEntity(object,true,true)
end

function tvRP.DeletarObjeto()
	tvRP.stopAnim(true)
	TriggerEvent("binoculos")
	if DoesEntityExist(object) then
		DetachEntity(object,false,false)
		TriggerServerEvent("trydeleteobj",ObjToNet(object))
		object = nil
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- BLOQUEAR ARMAS QUANDO ESTIVER COM ANIMACAO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
        local time = 1000
        local ped = PlayerPedId()
        if IsEntityPlayingAnim(ped,"anim@amb@nightclub@peds@","rcmme_amanda1_stand_loop_cop",3) or IsEntityPlayingAnim(ped,"anim@mp_player_intupperface_palm","idle_a",3) or IsEntityPlayingAnim(ped,"anim@heists@heist_corona@single_team","single_team_loop_boss",3) or IsEntityPlayingAnim(ped,"anim@mp_player_intupperfinger","idle_a_fp",3) or IsEntityPlayingAnim(ped,"random@arrests@busted","idle_a",3) or IsEntityPlayingAnim(ped,"random@mugging3","handsup_standing_base",3) or IsEntityPlayingAnim(ped,"mini@strip_club@idles@bouncer@base","base",3) or IsEntityPlayingAnim(ped,"rcmnigel1c","hailing_whistle_waive_a",3) or IsEntityPlayingAnim(ped,"anim@mp_player_intupperthumbs_up","enter",3) or IsEntityPlayingAnim(ped,"anim@mp_player_intcelebrationmale@face_palm","face_palm",3) or IsEntityPlayingAnim(ped,"anim@mp_player_intcelebrationmale@salute","salute",3) then
            time = 500
            SetCurrentPedWeapon(ped,GetHashKey("WEAPON_UNARMED"),true)
        end
        Citizen.Wait(time)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ANTI DUMP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("antiDump", function(data, cb)
	vRPserver._banAntiDump()
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- TASKBAR
-----------------------------------------------------------------------------------------------------------------------------------------
local chance = 0
local skillGap = 0
local activeTasks = 0
local taskInProcess = false

function tvRP.taskBar(difficulty,skillGapSent)
	Citizen.Wait(100)

	skillGap = skillGapSent

	if skillGap < 5 then
		skillGap = 5
	end

	if taskInProcess then
		return false
	end

	chance = math.random(20,80)

	local length = math.ceil(difficulty*1.0)

	taskInProcess = true
	local taskIdentifier = "taskid"..math.random(1000000)
	openGui(length,taskIdentifier,chance,skillGap)
	activeTasks = 1

	local maxcount = GetGameTimer() + length

	while activeTasks == 1 do
		Citizen.Wait(1)
		local curTime = GetGameTimer()
		if curTime > maxcount then
			activeTasks = 2
		end
		local updater = 100 - (((maxcount - curTime)/length)*100)
		updater = math.min(100,updater)
		updateGui(updater,taskIdentifier,chance,skillGap)
	end

	closeGui()
	taskInProcess = false

	if activeTasks == 2 then
		return false
	else
		return true
	end
end

function openGui(sentLength,taskID,chancesent,skillGapSent)
	SetNuiFocus(true,false)
	SendNUIMessage({ runProgress = true, Length = sentLength, Task = taskID, chance = chancesent, skillGap = skillGapSent })
end

function updateGui(sentLength,taskID,chancesent,skillGapSent)
	SendNUIMessage({ runUpdate = true, Length = sentLength, Task = taskID, chance = chancesent, skillGap = skillGapSent })
end

function closeGui()
	SetNuiFocus(false,false)
	SendNUIMessage({ closeProgress = true })
end

function closeNormalGui()
	SetNuiFocus(false,false)
end

RegisterNUICallback("taskEnd",function(data,cb)
	if (tonumber(data.taskResult) > chance) and tonumber(data.taskResult) < (chance + skillGap + 3) then
		activeTasks = 3
		closeNormalGui()
	else
		activeTasks = 2
		closeNormalGui()
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SYNCCLEAN
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("syncclean")
AddEventHandler("syncclean",function(index)
	if NetworkDoesNetworkIdExist(index) then
		local v = NetToVeh(index)
		if DoesEntityExist(v) then
			if IsEntityAVehicle(v) then
				SetVehicleDirtLevel(v,0.0)
				SetVehicleUndriveable(v,false)
				tvRP.DeletarObjeto()
			end
		end
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- KEY MAPPING MENU
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("keybind",function(source,args)
	if not IsPauseMenuActive() then
		local ped = PlayerPedId()
		-- if GetEntityHealth(ped) > 105 then
			
			if args[1] == "left" and menu_state.opened then
				tvRP.playSound("NAV_LEFT_RIGHT","HUD_FRONTEND_DEFAULT_SOUNDSET")
				SendNUIMessage({ act = "event", event = "LEFT" })

			elseif args[1] == "right" and menu_state.opened then
				tvRP.playSound("NAV_LEFT_RIGHT","HUD_FRONTEND_DEFAULT_SOUNDSET")
				SendNUIMessage({ act = "event", event = "RIGHT" })

			elseif args[1] == "up" and menu_state.opened then
				tvRP.playSound("NAV_UP_DOWN","HUD_FRONTEND_DEFAULT_SOUNDSET")
				SendNUIMessage({ act = "event", event = "UP" })

			elseif args[1] == "down" and menu_state.opened then
				tvRP.playSound("NAV_UP_DOWN","HUD_FRONTEND_DEFAULT_SOUNDSET")
				SendNUIMessage({ act = "event", event = "DOWN" })

			elseif args[1] == "select" and menu_state.opened then
				tvRP.playSound("SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET")
				SendNUIMessage({ act = "event", event = "SELECT" })

			elseif args[1] == "accept" then
				SendNUIMessage({ act = "event", event = "Y" })

			elseif args[1] == "reject" then
				SendNUIMessage({ act = "event", event = "U" })

			elseif args[1] == "exit" then
				SendNUIMessage({ act = "event", event = "CANCEL" })
				
			elseif args[1] == "exit2" then
				SendNUIMessage({ act = "event", event = "CANCEL" })
			end

		-- end
	end
end)

-- RegisterKeyMapping("keybind accept","Aceitar chamado","keyboard","y")
-- RegisterKeyMapping("keybind reject","Rejeitar chamado","keyboard","u")
-- RegisterKeyMapping("keybind left","Menu Esquerda","keyboard","left")
-- RegisterKeyMapping("keybind right","Menu Direita","keyboard","right")
-- RegisterKeyMapping("keybind up","Menu Cima","keyboard","up")
-- RegisterKeyMapping("keybind down","Menu Baixo","keyboard","down")
-- RegisterKeyMapping("keybind select","Menu Select","keyboard","return")
-- RegisterKeyMapping("keybind exit","Fechar Menu","keyboard","escape")
-- RegisterKeyMapping("keybind exit2","Fechar Menu 2","keyboard","BACK")

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- KEY MAPPING DE EMOTES
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local agachar = false
local apontar = false
local object = nil

RegisterCommand('emote', function(source,args)
	if not IsPauseMenuActive() then
		local ped = PlayerPedId()
		if GetEntityHealth(ped) > 105 and not menu_state.opened then
			if not IsPedInAnyVehicle(ped) then
				if args[1] == "aguardar" then
					if IsEntityPlayingAnim(ped,"anim@amb@nightclub@peds@","rcmme_amanda1_stand_loop_cop",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"anim@amb@nightclub@peds@","rcmme_amanda1_stand_loop_cop"}},true)
					end
				elseif args[1] == "aguardar2" then
					if IsEntityPlayingAnim(ped,"mini@strip_club@idles@bouncer@base","base",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"mini@strip_club@idles@bouncer@base","base"}},true)
					end
				elseif args[1] == "dedomeio" then
					if IsEntityPlayingAnim(ped,"anim@mp_player_intupperfinger","idle_a_fp",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"anim@mp_player_intupperfinger","idle_a_fp"}},true)
					end
				elseif args[1] == "assobiar" then
					if IsEntityPlayingAnim(ped,"rcmnigel1c","hailing_whistle_waive_a",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"rcmnigel1c","hailing_whistle_waive_a"}}, false)
					end
				elseif args[1] == "joia" then
					if IsEntityPlayingAnim(ped,"anim@mp_player_intupperthumbs_up","enter",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"anim@mp_player_intupperthumbs_up","enter"}}, false)
					end
				elseif args[1] == "lamentar" then
					if IsEntityPlayingAnim(ped,"anim@mp_player_intupperface_palm","idle_a",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"anim@mp_player_intupperface_palm","idle_a"}},false)
					end
				elseif args[1] == "saudacao" then
					if IsEntityPlayingAnim(ped,"anim@mp_player_intcelebrationmale@salute","salute",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"anim@mp_player_intcelebrationmale@salute","salute"}},false)
					end
				elseif args[1] == "maonacabeca" then
					if IsEntityPlayingAnim(ped,"random@arrests@busted","idle_a",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"random@arrests@busted","idle_a"}},true)
					end
				elseif args[1] == "levantarmao" then
					SetCurrentPedWeapon(ped,GetHashKey("WEAPON_UNARMED"),true)
					if IsEntityPlayingAnim(ped,"random@mugging3","handsup_standing_base",3) then
						tvRP.DeletarObjeto()
					else
						tvRP.playAnim(true,{{"random@mugging3","handsup_standing_base"}},true)
					end
				elseif args[1] == "apontar" then
					tvRP.CarregarAnim("anim@mp_point")
					if not apontar then
						SetPedCurrentWeaponVisible(ped,0,1,1,1)
						SetPedConfigFlag(ped,36,1)
						Citizen.InvokeNative(0x2D537BA194896636,ped,"task_mp_pointing",0.5,0,"anim@mp_point",24)
						apontar = true
					else
						Citizen.InvokeNative(0xD01015C7316AE176,ped,"Stop")
						if not IsPedInjured(ped) then
							ClearPedSecondaryTask(ped)
						end
						if not IsPedInAnyVehicle(ped) then
							SetPedCurrentWeaponVisible(ped,1,1,1,1)
						end
						SetPedConfigFlag(ped,36,0)
						ClearPedSecondaryTask(ped)
						apontar = false
					end
				elseif args[1] == "agachar" then
					if not IsPedInAnyVehicle(ped) then
						if agachar then
							ResetPedMovementClipset(ped,0.25)
							ResetPedStrafeClipset(ped)
							agachar = false
						else
							RequestAnimSet("move_ped_crouched")
							RequestAnimSet("move_ped_crouched_strafing")

							SetPedMovementClipset(ped,"move_ped_crouched",0.25)
							SetPedStrafeClipset(ped,"move_ped_crouched_strafing")
							agachar = true
						end
					end
				end
			else
				if args[1] == "motor" then
					local vehicle = GetVehiclePedIsIn(ped,false)
					if GetPedInVehicleSeat(vehicle,-1) == ped then
						tvRP.DeletarObjeto()
						local running = Citizen.InvokeNative(0xAE31E7DF9B5B132E,vehicle)
						SetVehicleEngineOn(vehicle,not running,true,true)
						if running then
							SetVehicleUndriveable(vehicle,true)
						else
							SetVehicleUndriveable(vehicle,false)
						end
					end
				end
			end
		end
	end
end)

-- RegisterKeyMapping("emote aguardar","Executar Animação","keyboard","f1")
-- RegisterKeyMapping("emote aguardar2","Executar Animação","keyboard","f2")
-- RegisterKeyMapping("emote dedomeio","Executar Animação","keyboard","f3")
-- RegisterKeyMapping("emote assobiar","Executar Animação","keyboard","down")
-- RegisterKeyMapping("emote joia","Executar Animação","keyboard","left")
-- RegisterKeyMapping("emote lamentar","Executar Animação","keyboard","right")
-- RegisterKeyMapping("emote saudacao","Executar Animação","keyboard","up")
-- RegisterKeyMapping("emote maonacabeca","Executar Animação","keyboard","f10")
-- RegisterKeyMapping("emote levantarmao","Executar Animação","keyboard","x")
-- RegisterKeyMapping("emote motor","Executar Animação","keyboard","z")
-- RegisterKeyMapping("emote apontar","Executar Animação","keyboard","b")
-- RegisterKeyMapping("emote agachar","Executar Animação","keyboard","LCONTROL")


CreateThread(function()
	RegisterKeyMapping("exit_keybind 3","Beleza","keyboard","3")
	RegisterKeyMapping("exit_keybind 4","Saudação","keyboard","4")
	RegisterKeyMapping("exit_keybind 5","Assobiar","keyboard","5")
	RegisterKeyMapping("exit_keybind 6","Vergonha!","keyboard","6")
	RegisterKeyMapping("exit_keybind 7","Mãonacinta","keyboard","7")
	RegisterKeyMapping("exit_keybind 8","Mãonacintura","keyboard","8")
	RegisterKeyMapping("exit_keybind 9","Mãosnacabeça","keyboard","9")
	RegisterKeyMapping("exit_keybind f1","Cruzarosbraços","keyboard","f1")
	RegisterKeyMapping("exit_keybind f2","Aguardar","keyboard","f2")
	RegisterKeyMapping("exit_keybind f4","Dedodomeio","keyboard","f4")
	RegisterKeyMapping("exit_keybind f5","Puto","keyboard","f5")
	RegisterKeyMapping("exit_keybind f10","Mãosnacabeça","keyboard","f10")
	RegisterKeyMapping("exit_keybind x","Levantarasmãos","keyboard","x")
	RegisterKeyMapping("exit_keybind z","Ligarmotor","keyboard","z")
	RegisterKeyMapping("exit_keybind b","Apontarodedo","keyboard","b")
	RegisterKeyMapping("exit_keybind agachar","Agachar","keyboard","LCONTROL")
	RegisterKeyMapping("exit_keybind left","Esquerda","keyboard","left")
	RegisterKeyMapping("exit_keybind right","Direita","keyboard","right")
	RegisterKeyMapping("exit_keybind up","Cima","keyboard","up")
	RegisterKeyMapping("exit_keybind down","Baixo","keyboard","down")
	RegisterKeyMapping("exit_keybind select","Selecionar","keyboard","return")
	RegisterKeyMapping("exit_keybind cancel","Cancelar","keyboard","back")
	RegisterKeyMapping("exit_keybind delete","BindDelete","keyboard","delete")
	RegisterKeyMapping("exit_cancelAnims","Cancelaranimações","keyboard","f6")
	RegisterKeyMapping("exit_accept","Aceitar","keyboard","y")
	RegisterKeyMapping("exit_decline","Negar","keyboard","n")
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ABRIR MENUS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("open",function(source,args)
	if not IsPauseMenuActive() then
		local ped = PlayerPedId()
		if GetEntityHealth(ped) > 105 then
			if args[1] == "org" then
				vRPserver._openOrgMenu()
			end
		end
	end
end)

RegisterKeyMapping("open org","Abrir Menu da Org","keyboard","insert")

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local time = 1000
		if agachar then
			time = 5
			DisableControlAction(1,24,true)
			DisablePlayerFiring(GetPlayerPed(-1), true)
		end

        Citizen.Wait(time)
	end
end)

Citizen.CreateThread(function()
	while true do
		local time = 1000
        if apontar then
			local ped = PlayerPedId()

            time = 5
			local camPitch = GetGameplayCamRelativePitch()
			if camPitch < -70.0 then
				camPitch = -70.0
			elseif camPitch > 42.0 then
				camPitch = 42.0
			end
			camPitch = (camPitch + 70.0) / 112.0

			local camHeading = GetGameplayCamRelativeHeading()
			local cosCamHeading = Cos(camHeading)
			local sinCamHeading = Sin(camHeading)
			if camHeading < -180.0 then
				camHeading = -180.0
			elseif camHeading > 180.0 then
				camHeading = 180.0
			end
			camHeading = (camHeading + 180.0) / 360.0

			local blocked = 0
			local nn = 0
			local coords = GetOffsetFromEntityInWorldCoords(ped,(cosCamHeading*-0.2)-(sinCamHeading*(0.4*camHeading+0.3)),(sinCamHeading*-0.2)+(cosCamHeading*(0.4*camHeading+0.3)),0.6)
			local ray = Cast_3dRayPointToPoint(coords.x,coords.y,coords.z-0.2,coords.x,coords.y,coords.z+0.2,0.4,95,ped,7);
			nn,blocked,coords,coords = GetRaycastResult(ray)

			Citizen.InvokeNative(0xD5BB4025AE449A4E,ped,"Pitch",camPitch)
			Citizen.InvokeNative(0xD5BB4025AE449A4E,ped,"Heading",camHeading*-1.0+1.0)
			Citizen.InvokeNative(0xB0A6CFD2C69C1088,ped,"isBlocked",blocked)
			Citizen.InvokeNative(0xB0A6CFD2C69C1088,ped,"isFirstPerson",Citizen.InvokeNative(0xEE778F8C7E1142E2,Citizen.InvokeNative(0x19CAFA3C87F7C2FF))==4)
        end

        Citizen.Wait(time)
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Segundos Counter
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if segundos > 0 then
            segundos = segundos - 1
        end

        if segundos <= 0 then
            segundos = 0
        end
    end
end)
RegisterCommand("exit_keybind",function(source,args)
	if (IsPauseMenuActive() or GetEntityHealth(ply) <= 101 or menu_celular) then return end
	if args[1] == "3" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"anim@mp_player_intincarthumbs_upbodhi@ps@","enter",3) then
			StopAnimTask(ply,"anim@mp_player_intincarthumbs_upbodhi@ps@","enter",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"anim@mp_player_intincarthumbs_upbodhi@ps@","enter"}},false) end
	elseif args[1] == "4" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"anim@mp_player_intcelebrationmale@salute","salute",3) then
			StopAnimTask(ply,"anim@mp_player_intcelebrationmale@salute","salute",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"anim@mp_player_intcelebrationmale@salute","salute"}},false) end
	elseif args[1] == "5" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"rcmnigel1c","hailing_whistle_waive_a",3) then
			StopAnimTask(ply,"rcmnigel1c","hailing_whistle_waive_a",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"rcmnigel1c","hailing_whistle_waive_a"}},false) end
	elseif args[1] == "6" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"anim@mp_player_intcelebrationmale@face_palm","face_palm",3) then
			StopAnimTask(ply,"anim@mp_player_intcelebrationmale@face_palm","face_palm",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"anim@mp_player_intcelebrationmale@face_palm","face_palm"}},false) end
	elseif args[1] == "7" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"anim@heists@prison_heiststation@cop_reactions","cop_a_idle",3) then
			StopAnimTask(ply,"anim@heists@prison_heiststation@cop_reactions","cop_a_idle",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"anim@heists@prison_heiststation@cop_reactions","cop_a_idle"}},true) end
	elseif args[1] == "8" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"amb@world_human_cop_idles@female@base","base",3) then
			StopAnimTask(ply,"amb@world_human_cop_idles@female@base","base",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"amb@world_human_cop_idles@female@base","base"}},false) end
	elseif args[1] == "9" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"random@arrests@busted","idle_a",3) then
			StopAnimTask(ply,"random@arrests@busted","idle_a",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"random@arrests@busted","idle_a"}},false) end
	elseif args[1] == "f1" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"anim@heists@heist_corona@single_team","single_team_loop_boss",3) then
			StopAnimTask(ply,"anim@heists@heist_corona@single_team","single_team_loop_boss",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"anim@heists@heist_corona@single_team","single_team_loop_boss"}},true) end
	elseif args[1] == "f2" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"mini@strip_club@idles@bouncer@base","base",3) then
			StopAnimTask(ply,"mini@strip_club@idles@bouncer@base","base",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"mini@strip_club@idles@bouncer@base","base"}},true) end
	elseif args[1] == "f3" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		--if IsEntityPlayingAnim(ply,"anim@heists@prison_heiststation@cop_reactions","cop_a_idle",3) then
		--	StopAnimTask(ply,"anim@heists@prison_heiststation@cop_reactions","cop_a_idle",2.0)
		--	tvRP.stopAnimActived()
		--else tvRP.playAnim(true,{{"anim@heists@prison_heiststation@cop_reactions","cop_a_idle"}},true) end
	elseif args[1] == "f4" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"anim@mp_player_intupperfinger","idle_a_fp",3) then
			StopAnimTask(ply,"anim@mp_player_intupperfinger","idle_a_fp",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"anim@mp_player_intupperfinger","idle_a_fp"}},true) end
	elseif args[1] == "f5" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"misscarsteal4@actor","actor_berating_loop",3) then
			StopAnimTask(ply,"misscarsteal4@actor","actor_berating_loop",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"misscarsteal4@actor","actor_berating_loop"}},false) end
	elseif args[1] == "f10" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if IsEntityPlayingAnim(ply,"random@arrests@busted","idle_a",3) then
			StopAnimTask(ply,"random@arrests@busted","idle_a",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"random@arrests@busted","idle_a"}},false) end
	elseif args[1] == "x" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		SetCurrentPedWeapon(ply,joaat("WEAPON_UNARMED"),true)
		if IsEntityPlayingAnim(ply,"random@mugging3","handsup_standing_base",3) then
			StopAnimTask(ply,"random@mugging3","handsup_standing_base",2.0)
			tvRP.stopAnimActived()
		else tvRP.playAnim(true,{{"random@mugging3","handsup_standing_base"}},true) end
	elseif args[1] == "z" and not menu_state.opened and not cancelando then
		if not IsPedInAnyVehicle(ply) then return end
		local vehicle = GetVehiclePedIsUsing(ply)
		if not (GetPedInVehicleSeat(vehicle,-1) == ply) then return end
		tvRP.stopAnimActived()
		local running = GetIsVehicleEngineRunning(vehicle)
		SetVehicleEngineOn(vehicle,not running,true,true)
		if running then SetVehicleUndriveable(vehicle,true)
		else SetVehicleUndriveable(vehicle,false) end
		if GetVehicleClass(vehicle) == 8 then return end
		tvRP.playAnim(true,{{"veh@std@ds@base","start_engine"}},false)
	elseif args[1] == "b" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		animActived = false
		tvRP.CarregarAnim("anim@mp_point")
		if not apontar then
			SetPedCurrentWeaponVisible(ply,0,1,1,1)
			SetPedConfigFlag(ply,36,1)
			Citizen.InvokeNative(0x2D537BA194896636,ply,"task_mp_pointing",0.5,0,"anim@mp_point",24)
			apontar = true
		else
			Citizen.InvokeNative(0xD01015C7316AE176,ply,"Stop")
			if not IsPedInjured(ply) then ClearPedSecondaryTask(ply) end
			if not IsPedInAnyVehicle(ply) then SetPedCurrentWeaponVisible(ply,1,1,1,1) end
			SetPedConfigFlag(ply,36,0)
			ClearPedSecondaryTask(ply)
			apontar = false
		end
	elseif args[1] == "agachar" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		if agachar then
			ResetPedStrafeClipset(ply)
			ResetPedMovementClipset(ply,0.25)
			agachar = false
		else
			RequestAnimSet("move_ped_crouched")
			RequestAnimSet("move_ped_crouched_strafing")
			SetPedStrafeClipset(ply,"move_ped_crouched_strafing")
			SetPedMovementClipset(ply,"move_ped_crouched",0.25)
			agachar = true
		end
	elseif args[1] == "left" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		tvRP.playAnim(true,{{"anim@mp_player_intincarthumbs_uplow@ds@","enter"}},false)
	elseif args[1] == "right" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		tvRP.playAnim(true,{{"anim@mp_player_intupperface_palm","idle_a"}},false)
	elseif args[1] == "up" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		tvRP.playAnim(true,{{"mp_player_int_uppersalute","mp_player_int_salute"}},false)
	elseif args[1] == "down" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		tvRP.playAnim(true,{{"rcmnigel1c","hailing_whistle_waive_a"}},false)
	elseif args[1] == "left" and menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		SendNUIMessage({ act = "event", event = "LEFT" })
		tvRP.playSound("NAV_LEFT_RIGHT","HUD_FRONTEND_DEFAULT_SOUNDSET")
	elseif args[1] == "right" and menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		SendNUIMessage({ act = "event", event = "RIGHT" })
		tvRP.playSound("NAV_LEFT_RIGHT","HUD_FRONTEND_DEFAULT_SOUNDSET")
	elseif args[1] == "up" and menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		SendNUIMessage({ act = "event", event = "UP" })
		tvRP.playSound("NAV_UP_DOWN","HUD_FRONTEND_DEFAULT_SOUNDSET")
	elseif args[1] == "down" and menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		SendNUIMessage({ act = "event", event = "DOWN" })
		tvRP.playSound("NAV_UP_DOWN","HUD_FRONTEND_DEFAULT_SOUNDSET")
	elseif args[1] == "select" and menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		SendNUIMessage({ act = "event", event = "SELECT" })
		tvRP.playSound("SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET")
	elseif args[1] == "cancel" and menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		SendNUIMessage({ act = "event", event = "CANCEL" })
	elseif args[1] == "delete" and not menu_state.opened and not IsPedInAnyVehicle(ply) and not cancelando then
		tvRP.playAnim(true,{{"anim@mp_player_intincarthumbs_upbodhi@ps@","enter"}},false)
		tvRP.stopAnimActived()
	end
end)

RegisterCommand("exit_cancelAnims", function()
	if (GetEntityHealth(ply) <= 101 or menu_celular or cancelando or menu_state.opened or IsEntityPlayingAnim(ply,"reaction@intimidation@1h","intro",3) or IsEntityPlayingAnim(ply,"reaction@intimidation@1h","outro",3)) then return end
	tvRP.DeletarObjeto()
	tvRP.stopAnimActived()
	ClearPedTasks(ply)
end)

RegisterCommand("exit_accept", function()
    SendNUIMessage({ act = "event", event = "Y" })
end)

RegisterCommand("exit_decline", function()
    SendNUIMessage({ act = "event", event = "N" })
end)