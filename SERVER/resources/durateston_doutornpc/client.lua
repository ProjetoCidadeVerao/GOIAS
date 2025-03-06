local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPS = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
durateston = Tunnel.getInterface("durateston_doutornpc")

local Active = false
local Revived = false
local calledHelp = false
local veh = nil
local ped1 = nil
local ped2 = nil
local ANIM_DICT = "mini@cpr@char_a@cpr_str"
local REVIVE_TIME = Config.ReviveTime * 1000
local PRICE = Config.Price

local lastDoctorTime = 0
local sleep = 200

local Cowldown = 0
Citizen.CreateThread(function()
    while true do
        if Cowldown > 0 then
            Cowldown = Cowldown - 1
        end    
        Citizen.Wait(1000)
    end
end)



AddEventHandler("12706710975091983",function()
    Cowldown = Config.Coldownroubos
end)

AddEventHandler("duratestoncaixa",function(source,args)
    Cowldown = Config.Coldownroubos
end)


RegisterCommand("socorro", function(source, args, raw)
    if not calledHelp then  
        if Cowldown == 0 then
            -- if GetEntityHealth(PlayerPedId()) ~= 100 then
            --     TriggerEvent("Notify","vermelho","voce ta vivo e nao pode executar este comando")
            --     return
            -- end
            if durateston.ChamarMedico() then
                calledHelp = true
                Revived = false
                lastDoctorTime = GetGameTimer()
                SpawnVehicle(GetEntityCoords(PlayerPedId()))
                Cowldown = Config.Coldown
            end    
        else
            TriggerEvent("Notify","vermelho","Espere "..Cowldown.." Segundos")
        end
    else
        TriggerEvent("Notify","vermelho","error voce ja efetuou um chamado ")
    end        
end)

function SpawnVehicle(x, y, z)
    spam = false
    local vehhash = GetHashKey("ambulance")
    -- print(vehhash)
    RequestModel(vehhash)
    RequestModel('s_m_m_paramedic_01')
    while not HasModelLoaded(vehhash) or not HasModelLoaded('s_m_m_paramedic_01') do
        Wait(1)
    end 

    local spawnRadius = 60
    local loc = GetEntityCoords(PlayerPedId())
    local found, spawnPos, spawnHeading = GetClosestVehicleNodeWithHeading(loc.x + math.random(-spawnRadius, spawnRadius), loc.y + math.random(-spawnRadius, spawnRadius), loc.z, 0, 3, 0)

    if DoesEntityExist(vehhash) then
        return
    end

    local docVeh = CreateVehicle(vehhash, spawnPos, spawnHeading, true, false)
    SetVehicleOnGroundProperly(docVeh)
    SetVehicleNumberPlateText(docVeh, "QUICKFIX")
    SetEntityAsMissionEntity(docVeh, true, true)
    SetVehicleEngineOn(docVeh, true, true, false)
    SetVehicleSiren(docVeh, true)

    local docPed = CreatePedInsideVehicle(docVeh, 26, GetHashKey('s_m_m_paramedic_01'), -1, true, false)
	local passengerPed = CreatePedInsideVehicle(docVeh, 26, GetHashKey('s_m_m_paramedic_01'), 0, true, false)
    docBlip = AddBlipForEntity(docVeh)
    SetBlipFlashes(docBlip, true)
    SetBlipColour(docBlip, 5)

    SetEntityInvincible(docPed, true)
    SetEntityInvincible(passengerPed, true)

    PlaySoundFrontend(-1, "Text_Arrive_Tone", "Phone_SoundSet_Default", 1)
    Wait(2000)

    local docDriver = GetPedInVehicleSeat(docVeh, -1)
    TaskVehicleDriveToCoord(docDriver, docVeh, loc.x, loc.y, loc.z, 20.0, 0, GetEntityModel(docVeh), 524863, 2.0)

    veh = docVeh
    ped1 = docPed
	ped2 = passengerPed
    Active = true
    docEnRoute()
end

function docEnRoute()
    while not Revived do
        sleep = 200
        local playerPed = GetPlayerPed(-1)
        local loc = GetEntityCoords(playerPed)
        local lc = GetEntityCoords(veh)
        local ld = GetEntityCoords(ped1)
        local dist = #(loc - lc)
        local dist1 = #(loc - ld)
        local time = GetGameTimer()
        local timer = (time - lastDoctorTime)/1000
        if Config.Debug then print('Doc En Route - Dist: '..dist, 'Dist1: '..dist1, 'Time: '..time, 'lastDoctorTime: '..lastDoctorTime, 'Timer: '..timer..' seconds') end
        if dist <= 10 then
            SetVehicleSiren(docVeh, false)
            if IsPedInAnyVehicle(playerPed, false) then
                local veh = GetVehiclePedIsIn(playerPed, false)
                TaskLeaveVehicle(playerPed, veh, 16)
            elseif Active then
                TaskGoToCoordAnyMeans(ped1, loc.x, loc.y, loc.z, 3.0, 0, 0, 786603, 0xbf800000)
            end
            if dist1 <= 1.5 then
                Active = false
                DoctorNPC()
                break
            end
        elseif lastDoctorTime > 0 and timer >= Config.TPTime then
            sleep = 3000
            SetVehicleSiren(docVeh, false)
            ClearPedTasksImmediately(ped1)
            if Config.Debug then print('TP to AI Doc Triggered') end
            if DoesEntityExist(ped1) then
                DoScreenFadeOut(500)
                SetEntityCoords(playerPed, ld.x + 5.0, ld.y + 5.0, ld.z, 0, 0, 0, 1)
                Wait(2500)
                DoScreenFadeIn(1500)
                lastDoctorTime = 0
            end
        end
        Wait(sleep)
    end
end

function DoctorNPC()
    if Config.Debug then print('DoctorNPC Triggered') end
	RequestAnimDict(ANIM_DICT)
	while not HasAnimDictLoaded(ANIM_DICT) do
		Wait(1000)
	end

	TaskPlayAnim(ped1, ANIM_DICT, "cpr_pumpchest", 1.0, 1.0, -1, 9, 1.0, 0, 0, 0)

	PlayAmbientSpeech1(ped1, "GENERIC_CURSE_HIGH", "SPEECH_PARAMS_FORCE", 3)
	Wait(2000)
	PlayAmbientSpeech1(ped2, "GENERIC_INSULT_HIGH", "SPEECH_PARAMS_FORCE", 3)
		ClearPedTasks(ped1)
		Wait(500)
		durateston.Reanimar()
        TriggerServerEvent('lb:charge')
		StopScreenEffect('DeathFailOut')
        TriggerEvent("Notify","verde","Tratamento Concluido Com Sucesso")
		-- TriggerServerEvent("qb-log:server:CreateLog", "commands", "Help Command Healed", "green", "Player **".. QBCore.Functions.GetPlayerData().name .. "** Character Name: **" .. QBCore.Functions.GetPlayerData().charinfo["firstname"] .. " " .. QBCore.Functions.GetPlayerData().charinfo["lastname"] .. "** was healed by the AI Doc.")
        calledHelp = false
        Revived = true

		--RemovePedElegantly(ped1)
		TaskEnterVehicle(ped1, veh, 0, 2, 3.0, 1, 0)
		TaskVehicleDriveWander(ped1, veh, 25.0, 524295)
		Wait(20000)
		DeleteEntity(veh)
		DeleteEntity(ped1)
		DeleteEntity(ped2)
	-- end)
end

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		DeleteEntity(veh)
		DeleteEntity(ped1)
		DeleteEntity(ped2)
    end
end)
