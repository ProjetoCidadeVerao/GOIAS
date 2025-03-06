-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VRP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP","mirtin_snippets")

src = {}
Tunnel.bindInterface("mirtin_snippets",src)
vSERVER = Tunnel.getInterface("mirtin_snippets")

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS GERAIS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local segundos = 0
local PLAY_DELAY = GetGameTimer()

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE TRANCA DE PORTAS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local doors = config.doors
local nearestLocks = {}
local doorsLocked = {}

RegisterNetEvent("doors:load", function(doorsList)
    for k in pairs(doorsList) do
        doorsLocked[k] = true
    end
end)

AddStateBagChangeHandler('syncDoor', 'global', function(bagName, _, door, _, _)
    doorsLocked[door.id] = door.status
end)

RegisterKeyMapping("synclock","Trancar / Destrancar","keyboard","e")
RegisterCommand('synclock', function(source,args)
	if (PLAY_DELAY - GetGameTimer()) <= 0 then
		PLAY_DELAY = (GetGameTimer() + 5000)

		local gate = nearestGate()
		if gate ~= 0 then
			TriggerServerEvent("tryLockDoor", gate)
		end

		local door = nearestDoor()
		if door ~= 0 then
			TriggerServerEvent("tryLockDoor", door)
		end
	end
end)

CreateThread(function()
    while true do
        local time = 1000
        local plyCds = GetEntityCoords(PlayerPedId())

        for k in pairs(nearestLocks) do
            time = 200

            if nearestLocks[k] then 
                local objId = GetClosestObjectOfType(nearestLocks[k].x, nearestLocks[k].y,nearestLocks[k].z, 15.0, nearestLocks[k].hash,false,false,false)
                if objId ~= 0 then
                    if not doorsLocked[k] then
                        NetworkRequestControlOfEntity(objId)
                        FreezeEntityPosition(objId, false)
                    else
                        local _,heading = GetStateOfClosestDoorOfType(nearestLocks[k].hash, nearestLocks[k].x,nearestLocks[k].y,nearestLocks[k].z)
                        if heading > -0.02 and heading < 0.02 then
                            NetworkRequestControlOfEntity(objId)
                            FreezeEntityPosition(objId, true)
                        end
                    end
                end
            end

        end

        Wait( time )
    end
end)

CreateThread(function()
    while true do
        local time = 1000
        local minDist = 10.0
		local plyCds = GetEntityCoords(PlayerPedId())

        for k in pairs(nearestLocks) do
            local distance = #(plyCds - vec3(nearestLocks[k].x, nearestLocks[k].y,nearestLocks[k].z))
            if not doorsLocked[k] then
                if distance <= (nearestLocks[k].dist or minDist) then
                    time = 0
                    DrawText3Ds(nearestLocks[k].x, nearestLocks[k].y,nearestLocks[k].z+0.2,"[PORTA]: ~g~Aberta",370)
                end
            else
                if distance <= (nearestLocks[k].dist or minDist) then
                    time = 0
                    DrawText3Ds(nearestLocks[k].x, nearestLocks[k].y,nearestLocks[k].z+0.2,"[PORTA]: ~r~Fechada",370)
                end
            end
        end

        Wait(time)
    end
end)

CreateThread(function()
    while true do
        for k in pairs(doors) do
            if doors[k] then
                local distance = #(GetEntityCoords(PlayerPedId()) - vec3(doors[k].x, doors[k].y,doors[k].z))
                if distance <= 100 then
                    nearestLocks[k] = doors[k]
                elseif nearestLocks[k] then
                    nearestLocks[k] = nil
                end
            end
        end

        Wait( 1000 )
    end
end)

function nearestGate()
    local plyCds = GetEntityCoords(PlayerPedId())
    local min = 15.0001
    local gateID = 0
    for k in pairs(nearestLocks) do
        if nearestLocks[k].isGate then
            local dist = #(plyCds - vec3(nearestLocks[k].x, nearestLocks[k].y,nearestLocks[k].z))
            if dist < min then
                min = dist
                gateID = k
            end
        end
    end

    return gateID
end

function nearestDoor()
    local plyCds = GetEntityCoords(PlayerPedId())
    local min = 3.0001
    local doorID = 0
    for k in pairs(nearestLocks) do
        if not nearestLocks[k].isGate then
            local dist = #(plyCds - vec3(nearestLocks[k].x, nearestLocks[k].y,nearestLocks[k].z))
            if dist < min then
                min = dist
                doorID = k
            end
        end
    end

    return doorID
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE ELEVADOR
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local time = 1000
		local ped = PlayerPedId()
		local playercoords = GetEntityCoords(ped)
		
		for k,v in pairs(config.locationElevador) do
			local distance = #(playercoords - v.coords)
			if distance <= 2.0 then
				time = 5
				DrawMarker(20,v.coords[1],v.coords[2],v.coords[3]-0.7,0,0,0,0,0,130.0,0.4,0.1,0.5, 12,198,254,180 ,1,0,0,1)

				if IsControlJustReleased(1, 51) then
					if config.elevador[v.type] ~= nil then
						openElevador(v.type, v.andar, config.elevador[v.type].andares)
					end
				end
			end
		end

		Citizen.Wait(time)
	end
end)

function openElevador(tipo, andar, elevador)
	SetNuiFocus(true,true)
	SendNUIMessage({ showmenu = true, tipo = tipo, andar = andar, elevador = elevador })
end

function updateElevador(tipo, andar)
	local ped = PlayerPedId()
	DoScreenFadeOut(1000)

	Wait(1000)
	SetEntityCoordsNoOffset(ped,config.elevador[tipo].andares[andar][1],config.elevador[tipo].andares[andar][2],config.elevador[tipo].andares[andar][3], true,true,true)

	Wait(1000)
	SetNuiFocus(false)
	SendNUIMessage({ hidemenu = true })

	Wait(1000)
	DoScreenFadeIn(1000)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CALL BACKS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("closeNui",function(data,cb)
	SetNuiFocus(false)
	SendNUIMessage({ hidemenu = true })
end)

RegisterNUICallback("elevadorInit",function(data,cb)
	if segundos <= 0 then
		segundos = 5
		updateElevador(data.elevador, data.andar)
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SOUNDS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('vrp_sound:source')
AddEventHandler('vrp_sound:source',function(sound,volume)
	SendNUIMessage({ transactionType = 'playSound', transactionFile = sound, transactionVolume = volume })
end)

RegisterNetEvent('vrp_sound:distance')
AddEventHandler('vrp_sound:distance', function(playerNetId, maxDistance, soundFile, soundVolume)
    local lCoords = GetEntityCoords(GetPlayerPed(-1))
    local eCoords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(playerNetId)))
    local distIs = Vdist(lCoords.x, lCoords.y, lCoords.z, eCoords.x, eCoords.y, eCoords.z)
    if (distIs <= maxDistance) then
        SendNUIMessage({ transactionType = 'playSound', transactionFile = soundFile, transactionVolume = soundVolume })
    end
end)  

RegisterNetEvent('vrp_sound:fixed')
AddEventHandler('vrp_sound:fixed',function(playerid,x2,y2,z2,maxdistance,sound,volume)
	local ped = PlayerPedId()
	local x,y,z = table.unpack(GetEntityCoords(ped))
	local distance = GetDistanceBetweenCoords(x2,y2,z2,x,y,z,true)
	if distance <= maxdistance then
		SendNUIMessage({ transactionType = 'playSound', transactionFile = sound, transactionVolume = volume })
	end
end) 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BLIPS NO MAPA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	for k,v in pairs(config.blips) do
		local blip = AddBlipForCoord(v[1]+0.001,v[2]+0.001,v[3]+0.001)
		SetBlipSprite(blip,v[4])
		SetBlipAsShortRange(blip,true)
		SetBlipColour(blip,v[5])
		SetBlipScale(blip,v[7])
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v[6])
		EndTextCommandSetBlipName(blip)
	end
end)

function DrawText3Ds(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text))/370
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,80)
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONTADOR
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local time = 1000
		if segundos > 0 then
			segundos = segundos - 1
			
			if segundos <= 0 then
				segundos = 0
			end

		end
		Citizen.Wait(time)
	end
end)