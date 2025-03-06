---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local nearestGarages = {}
local cache = {}
local blockDuplicate = {}
local segundos = 0
local lastVehicle
local opennedGarage
local cam
local spawnnedCar
local opengarageu = {}
local vehicleClasses = { [0] = "vehicle", [1] = "vehicle", [2] = "vehicle", [3] = "vehicle", [4] = "vehicle", [5] = "vehicle", [6] = "vehicle", [7] = "vehicle", [8] = "vehicle", [9] = "vehicle", [10] = "none", [11] = "none", [12] = "vehicle", [13] = "vehicle", [14] = "boat", [15] = "heli", [16] = "heli", [17] = "none", [18] = "vehicle", [19] = "vehicle", [20] = "vehicle", }

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function openGarage(table)
    Wait(150)
    local coords = GetEntityCoords(PlayerPedId())
    opennedGarage = table

    cache.plyCds = coords

    DisplayRadar(false)
    SendNUIMessage({ action = "show", location = GetStreetNameFromHashKey(GetStreetNameAtCoord(coords.x,coords.y,coords.z)), public = (opennedGarage.type == "public") })
    SetNuiFocus(true, true)
end

function CloseGarage()
    SendNUIMessage({ action = "hide" })
    SetNuiFocus(false, false)
end

function CreateCam()
    SetEntityCoords(PlayerPedId(), Garages.Main.previewCar.camCoords)
    
    RequestCollisionAtCoord(Garages.Main.previewCar.camCoords.x, Garages.Main.previewCar.camCoords.y, Garages.Main.previewCar.camCoords.z)
    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", Garages.Main.previewCar.camCoords.x, Garages.Main.previewCar.camCoords.y, Garages.Main.previewCar.camCoords.z, 360.00, 0.00, 0.00, 80.00, false, 0)
    PointCamAtCoord(cam, Garages.Main.previewCar.camPosition.x, Garages.Main.previewCar.camPosition.y, Garages.Main.previewCar.camPosition.z)
    SetCamActive(cam, true)

    RenderScriptCams(true, true, 1, true, true)
    SetEntityVisible(PlayerPedId(), false)

    SetEntityCoords(PlayerPedId(), Garages.Main.previewCar.camCoords)
end

function DeleteCam()
    RenderScriptCams(false)
    DestroyCam(cam)
    SetNuiFocus(false, false)
end

function garageCheckSpawnLock()
    local spawnCoords
    
    for k,v in pairs(opennedGarage.spawnCoords) do
        if GetClosestVehicle(v.x,v.y,v.z, 4.0, 0 ,71) == 0 then
            spawnCoords = v
            break;
        end
    end

    return spawnCoords
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- THREADS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    while true do
        local SLEEP_TIME = 1000
        local plyCds = GetEntityCoords(PlayerPedId())

        for i in pairs(nearestGarages) do

            if nearestGarages[i] then
                SLEEP_TIME = 0
                local coords = nearestGarages[i].coords

                DrawMarker(36,coords.x,coords.y,coords.z,0,0,0,0,0,0,1.0,1.0,1.0, 153, 0, 153, 155, 1,1,1,1)
                DrawMarker(27,coords.x,coords.y,coords.z-0.97,0,0,0,0,0,0,1.0,1.0,0.5, 153, 0, 153, 155, 0,0,0,1)

                local distance = #(plyCds - nearestGarages[i].coords)
                if distance <= 2 then
                    if IsControlJustPressed(0,38) then
                        if nearestGarages[i].permiss  == nil then
                            opengarageu = i
                            openGarage(nearestGarages[i])
                        end

                        if nearestGarages[i].permiss ~= nil and vTunnel.checkPermission(nearestGarages[i].permiss) then
                            opengarageu = i
                            openGarage(nearestGarages[i])
                        end
                    end
                end
            end

        end

        Wait( SLEEP_TIME )
    end
end)

CreateThread(function()
    while true do
        local plyCds = GetEntityCoords(PlayerPedId())

        for i in pairs(Garages.List) do
            local distance = #(plyCds - Garages.List[i].coords)
            if distance <= 35 then
                nearestGarages[i] = Garages.List[i]
            elseif nearestGarages[i] then
                nearestGarages[i] = nil
            end
        end

        Wait( 1000 )
    end
end)

CreateThread(function()
    while true do
        if segundos > 0 then
            segundos = segundos - 1
        end

        Wait( 1000 )
    end
end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMANDOS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('lockvehicle', function(source,args)
    local plyCoords = GetEntityCoords(PlayerPedId())
    local vehicle = GetClosestVehiclePlayer(5.0)
    if vehicle then
        if segundos == 0 then
            segundos = 2

            vTunnel._garageTryLockVehicle(VehToNet(vehicle))
        end
    end
end)
RegisterKeyMapping('lockvehicle', 'Trancar/Destrancar Veiculo', 'keyboard', 'L')

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RegisterTunnel.garageAnimLock(index, v)
    local status = (v == 2) and 'Destrancado' or 'Trancado'
    TriggerEvent("Notify","importante","Veiculo <b>".. status .."</b>",5)
    vRP._playAnim(true, {{"anim@mp_player_intmenu@key_fob@","fob_click"}}, false)

    if NetworkDoesNetworkIdExist(index) then
        TriggerEvent("vrp_sound:source",'lock',0.1)

		local v = NetToVeh(index)
		if DoesEntityExist(v) then
			if IsEntityAVehicle(v) then
				SetVehicleLights(v,2)
				Wait(200)
				SetVehicleLights(v,0)
				Wait(200)
				SetVehicleLights(v,2)
				Wait(200)
				SetVehicleLights(v,0)
			end
		end
	end
end

function RegisterTunnel.garageGetNearestVehicle(distance)
    local veh = GetClosestVehiclePlayer(distance)

    if veh then
        return VehToNet(veh)
    end

    return false
end

function RegisterTunnel.garageSpawnVehicle(info, public, coords)
    Wait(1000)
    if not blockDuplicate[info.vehicle] then
        blockDuplicate[info.vehicle] = true
        SetTimeout(10 * 1000, function() blockDuplicate[info.vehicle] = false end)

        local mhash = GetHashKey(info.vehicle)
        while not HasModelLoaded(mhash) do
            RequestModel(mhash)
            Wait(200)
        end

        if coords then
            local veh = CreateVehicle(mhash, coords.x,coords.y,coords.z,coords.w, true, true)
                    
            while not DoesEntityExist(veh) do
                Wait(200)
            end

            while not NetworkDoesEntityExistWithNetworkId(VehToNet(veh)) do
                Wait(200)
            end

            local netid = VehToNet(veh)

            if not IsEntityAVehicle(veh) then
                return
            end

            SetVehicleNumberPlateText(veh, info.plate)
            SetEntityAsMissionEntity(veh, true, true)
            SetVehicleOnGroundProperly(veh)
            SetVehRadioStation(veh, "OFF")
            SetVehicleDirtLevel(veh, 0.0)
            SetVehicleDoorsLocked(veh, 2)
            SetVehicleEngineHealth(veh, info.engine + 0.0)
            SetVehicleBodyHealth(veh, info.body + 0.0)
            SetVehicleFuelLevel(veh, info.fuel + 0.0)
            SetModelAsNoLongerNeeded(mhash)
            SetVehicleMods(veh, info.custom)
            SetTimeout(200, function() SetPedIntoVehicle(PlayerPedId(),veh,-1) end)

            vTunnel._registerVehicle(info.vehicle, netid, public)
        end
    end
end

function RegisterTunnel.garageGetVehicleFuel(veh)
    if IsEntityAVehicle(NetToVeh(veh)) then
        return GetVehicleFuelLevel(NetToVeh(veh))
    end
end

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("requestGarages", function(data,cb)
    local t = {}
    
    if opennedGarage and opennedGarage.type == "public" then
        local myVehicles = vTunnel.getUserVehicles()

        for i = 1, #myVehicles do
            t[#t + 1] = {
                ['vehicle'] = myVehicles[i].vehicle,
                ['name'] = myVehicles[i].name,
                ['engine'] = myVehicles[i].engine / 10,
                ['body'] = myVehicles[i].body,
                ['fuel'] = myVehicles[i].fuel,
                ['ipva'] = myVehicles[i].ipva,
                ['aceleration'] = GetVehicleModelAcceleration(GetHashKey(myVehicles[i].vehicle)) or 0,
                ['maxspeed'] = GetVehicleModelEstimatedMaxSpeed(GetHashKey(myVehicles[i].vehicle)) * 3.605936 or 0,
                ['braking'] = GetVehicleModelMaxBraking(GetHashKey(myVehicles[i].vehicle)) or 0,
                ['agility'] = GetVehicleModelEstimatedAgility(GetHashKey(myVehicles[i].vehicle)) or 0,
            }
        end

        cb({ vehList = t })
        return
    end

    for i = 1, #opennedGarage.vehicles do
        if opennedGarage.vehicles[i] then
            t[#t + 1] = {
                ['vehicle'] = opennedGarage.vehicles[i].vehicle,
                ['name'] = opennedGarage.vehicles[i].vehicle:upper(),
                ['engine'] = 1000 / 10,
                ['body'] = 1000,
                ['fuel'] = 100,
                ['ipva'] = false,
                ['aceleration'] = GetVehicleModelAcceleration(GetHashKey(opennedGarage.vehicles[i].vehicle)) or 0,
                ['maxspeed'] = GetVehicleModelEstimatedMaxSpeed(GetHashKey(opennedGarage.vehicles[i].vehicle)) * 3.605936 or 0,
                ['braking'] = GetVehicleModelMaxBraking(GetHashKey(opennedGarage.vehicles[i].vehicle)) or 0,
                ['agility'] = GetVehicleModelEstimatedAgility(GetHashKey(opennedGarage.vehicles[i].vehicle)) or 0,
            }
        end
    end

    cb({ vehList = t })
    return
end)

RegisterNUICallback("selectVehicle", function(data,cb)
    if data then
        cb({ status = true })
    end
end)

RegisterNUICallback("withdrawVehicle", function(data,cb)
    if data then
        local spawnCoords = garageCheckSpawnLock()
        if spawnCoords then
            local result,message = vTunnel.trySpawnVehicle(data.spawn, opennedGarage.type == "public", spawnCoords,opengarageu)

            if result then
                CloseGarage()
                return
            end
            
            TriggerEvent("Notify", "negado", message)
        else
            TriggerEvent("Notify", "negado", "Vagas lotadas!")
        end
    end
end)

RegisterNUICallback("storeVehicle", function(data,cb)
    if data then
        local result,type,message = vTunnel.storeVehicle(data.spawn, GetEntityCoords(PlayerPedId()), opennedGarage.type == "public")

        if not result then
            TriggerEvent("Notify", type, message)
        end
    end
end)

RegisterNUICallback("paymentIPVA", function(data,cb)
    if data then
        cb(vTunnel.paymentVehicle(data.spawn))
    end
end)

RegisterNUICallback("findVehicle", function(data,cb)
    if data then
        cb(vTunnel.findVehicle(data.spawn))
    end
end)

RegisterNUICallback("close", function(data,cb)
    if data then
        CloseGarage() 
    end
end)

local blips = {}
RegisterNetEvent("track:vehicle", function(coords)
    local gen_id = (#blips + 1)
    blips[gen_id] = AddBlipForRadius(coords.x+math.random(10,25), coords.y+math.random(10,25), coords.z+math.random(10,25), 100.0)
    SetBlipColour(blips[gen_id], 1)
    SetBlipAlpha(blips[gen_id], 128)

    SetTimeout(5 * 60 * 1000, function()
        RemoveBlip(blips[gen_id])
        blips[gen_id] = nil
    end)
end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNAGEM
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local colors = {
	["cromado"] = { 120 },
	["metálico"] = { 0, 147, 1, 11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 27, 28, 29, 150, 30, 31, 32, 33, 34, 143, 35, 135, 137, 136, 36, 38, 138, 99, 90, 88, 89, 91, 49, 50, 51, 52, 53, 54, 92, 141, 61, 62, 63, 64, 65, 66, 67, 68, 69, 73, 70, 74, 96, 101, 95, 94, 97, 103, 104, 98, 100, 102, 99, 105, 106, 71, 72, 142, 145, 107, 111, 112 },
	["fosco"] = { 12, 13 ,14 ,131 ,83 ,82 ,84 ,149 ,148 ,39 ,40 ,41 ,42 ,55 ,128 ,151 ,155 ,152 ,153 ,154 },
	["metal"] = { 117 ,118 ,119 ,158 ,159 }
}

local mod = {
	["aerofólio"] = 0,
	["parachoque-dianteiro"] = 1,
	["parachoque-traseiro"] = 2,
	["saias"] = 3,
	["escapamento"] = 4,
	["roll-cage"] = 5,
	["grelha"] = 6,
	["capô"] = 7,
	["para-lama"] = 8,
	["teto"] = 10,
	["motor"] = 11,
	["freios"] = 12,
	["transmissão"] = 13,
	["buzina"] = 14,
	["suspensão"] = 15,
	["blindagem"] = 16,
	["turbo"] = 18,
	["smoke"] = 20,
	["farol"] = 22,
	["dianteira"] = 23,
	["traseira"] = 24,
	["ornaments"] = 28,
	["dashboard"] = 29,
	["dials"] = 30,
	["doors"] = 31,
	["seats"] = 32,
	["plaques"] = 35,
	["arch-cover"] = 42,
	["janela"] = 46,
	["decal"] = 48,
}

local wheeltype = {
	["stock"] = -1,
	["sport"] = 0,
	["muscle"] = 1,
	["lowrider"] = 2,
	["suv"] = 3,
	["offroad"] = 4,
	["tuner"] = 5,
	["highend"] = 7,
}

function SetVehicleMods(veh,myveh) 
	SetVehicleModKit(veh,0)
	if not myveh or not myveh.customPcolor then
		return
	end
	local bug = false
	local primary = myveh.color[1]
	local secondary = myveh.color[2]
	local cprimary = myveh.customPcolor
	if cprimary['1'] then
		bug = true
	end
	local csecondary = myveh.customScolor
	local perolado = myveh.extracolor[1]
	local wheelcolor = myveh.extracolor[2]
	local neoncolor = myveh.neoncolor
	local smokecolor = myveh.smokecolor
	ClearVehicleCustomPrimaryColour(veh)
	ClearVehicleCustomSecondaryColour(veh)
	SetVehicleWheelType(veh,myveh.wheeltype)
	SetVehicleColours(veh,primary,secondary)
	if bug then
		SetVehicleCustomPrimaryColour(veh,cprimary['1'],cprimary['2'],cprimary['3'])
		SetVehicleCustomSecondaryColour(veh,csecondary['1'],csecondary['2'],csecondary['3'])
	else
		SetVehicleCustomPrimaryColour(veh,cprimary[1],cprimary[2],cprimary[3])
		SetVehicleCustomSecondaryColour(veh,csecondary[1],csecondary[2],csecondary[3])
	end
	SetVehicleExtraColours(veh,perolado,wheelcolor)
	SetVehicleNeonLightsColour(veh,neoncolor[1],neoncolor[2],neoncolor[3])
	SetVehicleXenonLightsColour(veh,myveh.xenoncolor)
	SetVehicleNumberPlateTextIndex(veh,myveh.plateindex)
	SetVehicleWindowTint(veh,myveh.windowtint)
	for i,t in pairs(myveh.mods) do 
		if tonumber(i) == 22 or tonumber(i) == 18 then
			if t.mod > 0 then
				ToggleVehicleMod(veh,tonumber(i),true)
			else
				ToggleVehicleMod(veh,tonumber(i),false)
			end
		elseif tonumber(i) == 20 then
			smokeColor(veh,smokecolor)
		elseif tonumber(i) == 23 or tonumber(i) == 24 then
			SetVehicleMod(veh,tonumber(i),tonumber(t.mod),tonumber(t.variation))
		else
			SetVehicleMod(veh,tonumber(i),tonumber(t.mod))
		end
	end
	SetVehicleTyresCanBurst(veh,myveh.bulletProofTyres)
	if myveh.neon then
		for i = 0, 3 do
			SetVehicleNeonLightEnabled(veh,i,true)
		end
	else
		for i = 0, 3 do
			SetVehicleNeonLightEnabled(veh,i,false)
		end
	end

end

function setNeon(veh,toggle)
	for i = 0, 3 do
		SetVehicleNeonLightEnabled(veh,i,toggle)
	end
end

function setXenon(veh,toggle)
	ToggleVehicleMod(veh,mod["farol"],toggle)
end

function smokeColor(veh,color)
	local r,g,b = parseInt(color[1]),parseInt(color[2]),parseInt(color[3])
	ToggleVehicleMod(veh,mod["smoke"],true)
	SetVehicleTyreSmokeColor(veh,r,g,b)
end


CreateThread(function()
    for _, v in pairs(Garages.List) do
        if v.blip and v.type == 'public' then
            local blip = AddBlipForCoord(v.coords[1],v.coords[2],v.coords[3])
            SetBlipSprite(blip, 357)
            SetBlipAsShortRange(blip,true)
            SetBlipColour(blip, 38)
            SetBlipScale(blip,0.6)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Garagem')
            EndTextCommandSetBlipName(blip)
        end
    end
end)