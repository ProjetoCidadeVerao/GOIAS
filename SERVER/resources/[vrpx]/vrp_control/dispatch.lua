-----------------------------------------------------------------------------------------------------------------------------------------
-- DISPATCH
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	for i = 1,120 do
		EnableDispatchService(i,false)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NAO ATIRAR COM RADIO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
		local time = 1000
        local ped = PlayerPedId()

		if GetSelectedPedWeapon(ped) ~= -1569615261 then
			time = 5
			 
			if IsEntityPlayingAnim(ped, "random@arrests","generic_radio_enter", 3) then
				DisablePlayerFiring(PlayerId() , true)
			end
		end 

		Citizen.Wait(time)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DESABILITAR A CORONHADA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
		local ped = PlayerPedId()
		local idle = 1000
		if IsPedArmed(ped,6) then
			idle = 5
            DisableControlAction(0,140,true)
            DisableControlAction(0,141,true)
            DisableControlAction(0,142,true)
		end
		Citizen.Wait(idle)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- NAO RECUPERAR VIDA / STAMINA INFINITA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
		SetPlayerHealthRechargeMultiplier(PlayerId(),0)
		RestorePlayerStamina(PlayerId(),1.0)
		Citizen.Wait(500)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DESATIVAR WEAPONS NPCS E DROP
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		if GetPlayerWantedLevel(PlayerId()) ~= 0 then
            SetPlayerWantedLevel(PlayerId(), 0, false)
            SetPlayerWantedLevelNow(PlayerId(), false)
        end
        Citizen.Wait(3000)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- FICAR NO BANCO ESCOLHIDO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	local total = 0
    while true do
        local time = 1000
        if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
            time = 5
            if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) == GetPlayerPed(-1) then
                if GetIsTaskActive(GetPlayerPed(-1), 165) then
                    SetPedIntoVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
                end
            end

			if IsPedShooting(PlayerPedId()) then
				ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 1.01)
				SetGameplayCamShakeAmplitude(0.08)
			end
        end

        Citizen.Wait(time)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ESTOURAR OS PNEUS QUANDO CAPOTA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local time = 300
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped) then
            local vehicle = GetVehiclePedIsIn(ped)
            if GetPedInVehicleSeat(vehicle,-1) == ped then
				time = 100
                local roll = GetEntityRoll(vehicle)
                if (roll > 75.0 or roll < -75.0) and GetEntitySpeed(vehicle) < 2 then
                    if IsVehicleTyreBurst(vehicle, wheel_rm1, 0) == false then
						SetVehicleTyreBurst(vehicle, 0, 1)
						Citizen.Wait(100)
						SetVehicleTyreBurst(vehicle, 1, 1)
						Citizen.Wait(100)
						SetVehicleTyreBurst(vehicle, 2, 1)
						Citizen.Wait(100)
						SetVehicleTyreBurst(vehicle, 3, 1)
						Citizen.Wait(100)
						SetVehicleTyreBurst(vehicle, 4, 1)
						Citizen.Wait(100)
						SetVehicleTyreBurst(vehicle, 5, 1)
						Citizen.Wait(100)
						SetVehicleTyreBurst(vehicle, 45, 1)
						Citizen.Wait(100)
						SetVehicleTyreBurst(vehicle, 47, 1)
                    end
                end
            end
        end

		Citizen.Wait(time)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVER HUD
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	AddTextEntry("FE_THDR_GTAO","GOIAS RP")
	AddTextEntry('PM_PANE_LEAVE', 'Sair')
	StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE");
	SetAudioFlag("PoliceScannerDisabled",true);

	for i = 1,51 do
		if i ~= 10 and i ~= 14 and i ~= 16 and i ~= 19 then
			SetHudComponentPosition(i,  1000.0001, 1000.0001)
		end
	end

	while true do
		DisableControlAction(0,44,true)
		DisableControlAction(0,36,true)
		DisableControlAction(0,157,false)
		
		N_0xf4f2c0d4ee209e20()
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.4) 
		N_0x4757f00bc6323cfe(-1553120962, 0.0) 
		
		DisableVehicleDistantlights(true)
		DisablePlayerVehicleRewards(PlayerId())
		SetPedSuffersCriticalHits(PlayerPedId(), true)
			
		Citizen.Wait(5)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ AUTO CAPACETE ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread( function()
    while true do
		local time = 1000
        
        local veh = GetVehiclePedIsUsing(PlayerPedId())
        if veh ~= 0 then 
			time = 5
            SetPedConfigFlag(PlayerPedId(),35,false) 
        end

		Citizen.Wait(time)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DRIFT
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local time = 1000
		local ped = PlayerPedId()
		if IsPedInAnyVehicle(ped) then
			time = 5
			local vehicle = GetVehiclePedIsIn(PlayerPedId())
			local speed = GetEntitySpeed(vehicle) * 2.236936
			if GetPedInVehicleSeat(vehicle,-1) == ped then
				if speed <= 80.0 then
					if IsControlPressed(1,21) then
						SetVehicleReduceGrip(vehicle,true)
					else
						SetVehicleReduceGrip(vehicle,false)
					end
				end
			end
		end
		Citizen.Wait(time)
	end
end)