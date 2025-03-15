---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PREPARES/QUERYS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("mirtin_garages/GetAllUserVehicles", "SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id")
vRP._prepare("mirtin_garages/GetSpawnVehInfo", "SELECT * FROM vrp_user_veiculos WHERE veiculo = @veiculo AND user_id = @user_id")
vRP._prepare("mirtin_garages/updateVehicleInfos", "UPDATE vrp_user_veiculos SET motor = @motor, lataria = @lataria, gasolina = @gasolina WHERE user_id = @user_id AND veiculo = @veiculo")
vRP._prepare("mirtin_garages/getStatus", "SELECT status,ipva FROM vrp_user_veiculos WHERE veiculo = @veiculo AND user_id = @user_id")
vRP._prepare("mirtin_garages/updateStatus", "UPDATE vrp_user_veiculos SET status = @status WHERE user_id = @user_id AND veiculo = @veiculo")
vRP._prepare("mirtin_garages/updateIpva", "UPDATE vrp_user_veiculos SET ipva = @ipva WHERE user_id = @user_id AND veiculo = @veiculo")

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local garages = {}
local userJobCar = {}
local userPersonalCar = {}
local allSpawnedCars = {}
local ALLOWED_PLAYER = {}

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function garages:getUserVehicles(user_id)
    local query = vRP.query("mirtin_garages/GetAllUserVehicles", { user_id = user_id })
    local t = {}

    for i = 1, #query do
        local vehPrice = getVehiclePrice(query[i].veiculo) 
        if not vehPrice then
            vehPrice = 0
        end
        
        local payment = parseInt(vehPrice * Garages.Main['ipvaValue'])
        
        t[#t + 1] = {
            ['vehicle'] = query[i].veiculo,
            ['name'] = getVehicleName(query[i].veiculo),
            ['engine'] = query[i].motor,
            ['body'] = query[i].lataria,
            ['fuel'] = query[i].gasolina,
            ['ipva'] = false--[[ (query[i].ipva+Garages.Main.ipvaVencimento*24*60*60 <= os.time()) and payment or false ]]
        }
    end

    return t
end

function garages:tryLockVehicle(source, user_id, vehid)
    if user_id then
        local entity = NetworkGetEntityFromNetworkId(vehid)
        if entity > 0 then
            plate = GetVehicleNumberPlateText(entity)
            if plate then
                plate = plate:gsub(" ","")

                local plateOwnerId = vRP.getUserByRegistration(plate)
                if plateOwnerId and (plateOwnerId == user_id) then
                    local status = GetVehicleDoorLockStatus(entity)
                    SetVehicleDoorsLocked(entity, ((status == 2) and 1 or 2))
                    
                    vTunnel._garageAnimLock(source, vnetid, status)
                end
            end
        end
    end
end

function garages:trySpawnVehicle(source, user_id, name, public, spawnCoords)
    if user_id then
        local identity = vRP.getUserIdentity(user_id)

        if public then
            local query = vRP.query("mirtin_garages/GetSpawnVehInfo", { user_id = user_id, veiculo = name })
            if #query > 0 then
                if userPersonalCar[name..":"..user_id] then
                    if (DoesEntityExist(NetworkGetEntityFromNetworkId(userPersonalCar[name..":"..user_id])) == 1) then
                        return false,"Você já possui um veiculo desse fora da garagem."
                    end

                    allSpawnedCars[userPersonalCar[name..":"..user_id] ] = nil
                    userPersonalCar[name..":"..user_id] = nil
                end

                if (query[1].ipva+Garages.Main.ipvaVencimento*24*60*60 <= os.time()) or (query[1].status > 0) then
                    garages:paymentVehicle(source, user_id, name)
                    return false, "Acerte seus debitos, para spawnar esse veiculo."
                end

                ALLOWED_PLAYER[user_id] = GetHashKey(name)

                vTunnel._garageSpawnVehicle(source, {
                    vehicle = name,
                    plate = identity.registration,
                    engine = query[1].motor or 1000,
                    body = query[1].lataria or 1000,
                    fuel = query[1].gasolina or 100,
                    custom = json.decode(query[1].tunagem) or {}
                }, public, spawnCoords)

                return true
            end

            return false, "Ocorreu um problema ao spawnar esse veiculo."
        end

        if userJobCar[name..":"..user_id] then
            if (DoesEntityExist(NetworkGetEntityFromNetworkId(userJobCar[name..":"..user_id])) == 1) then
                return false,"Você já possui um veiculo desse fora da garagem."
            end

            userJobCar[name..":"..user_id] = nil
        end
        
        ALLOWED_PLAYER[user_id] = GetHashKey(name)

        vTunnel._garageSpawnVehicle(source, {
            vehicle = name,
            plate = identity.registration,
            engine = 1000,
            body = 1000,
            fuel = 100,
            custom = {}
        }, public, spawnCoords)

        return true
    end
end

function garages:storeVehicle(source, user_id, name, gcoords, public)
    if not name then return end
    
    if public then
        if userPersonalCar[name..":"..user_id] then
            local entity = NetworkGetEntityFromNetworkId(userPersonalCar[name..":"..user_id])
            if (DoesEntityExist(entity) == 1) then
                if #(GetEntityCoords(entity) - vec3(gcoords.x, gcoords.y, gcoords.z)) >= 100 then
                    return false, "negado", "Este veiculo que você está tentando guardar, está muito longe de você."
                end

                if (GetPedInVehicleSeat(entity, -1) > 0) then
                    return false, "negado", "Você não pode guardar este veiculo, pois ele está em uso."
                end
            end
            
            if allSpawnedCars[userPersonalCar[name..":"..user_id]] then
                SaveVehicleInfos(allSpawnedCars[userPersonalCar[name..":"..user_id]][1],allSpawnedCars[userPersonalCar[name..":"..user_id]][2],allSpawnedCars[userPersonalCar[name..":"..user_id]][3], entity, source)
            end

            DeleteVehicle(entity)

            if userPersonalCar[name..":"..user_id] then
                allSpawnedCars[userPersonalCar[name..":"..user_id]] = nil
                userPersonalCar[name..":"..user_id] = nil
            end
            
            return false, "sucesso", "Você guardou este veiculo."
        else
            return false, "negado", "Este veiculo não está fora de sua garagem."
        end
    end

    if userJobCar[name..":"..user_id] then
        local entity = NetworkGetEntityFromNetworkId(userJobCar[name..":"..user_id])

        if (DoesEntityExist(entity) == 1) then
            if (GetPedInVehicleSeat(entity, -1) > 0) then
                return false, "negado", "Você não pode guardar este veiculo, pois ele está em uso."
            end
        end

        if userJobCar[name..":"..user_id] then
            userJobCar[name..":"..user_id] = nil
        end

        DeleteVehicle(entity)
        return false, "sucesso", "Você guardou este veiculo."
    end

    return false, "negado", "Este veiculo não está fora da garagem."
end

function garages:paymentVehicle(source, user_id, name)
    local query = vRP.query("mirtin_garages/getStatus", { veiculo = name, user_id = user_id })
    if #query > 0 then
        local vehPrice = getVehiclePrice(name) 

        if query[1].status == 1 then
            local payment = parseInt(vehPrice * Garages.Main['detidoValue'])
            if vRP.tryFullPayment(user_id, payment) then
                vRP._execute("mirtin_garages/updateStatus", { status = 0, user_id = user_id, veiculo = name })
                TriggerClientEvent("Notify",source,"sucesso","Você Pagou $ "..vRP.format(payment).." para tirar o veiculo da apreensão.", 5)
            else
                TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro.", 5)

                return false
            end
        end

        if query[1].status == 2 then
            local payment = parseInt(vehPrice * Garages.Main['retidoValue']) 

            if vRP.tryFullPayment(user_id, payment) then
                vRP._execute("mirtin_garages/updateStatus", { status = 0, user_id = user_id, veiculo = name })
                TriggerClientEvent("Notify",source,"sucesso","Você Pagou $ "..vRP.format(payment).." para tirar o veiculo da retenção.", 5)
            else
                TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro.", 5)

                return false
            end
        end

        if (query[1].ipva+Garages.Main['ipvaVencimento']*24*60*60 <= os.time()) then
            local payment = 10000--[[ parseInt(vehPrice * Garages.Main['ipvaValue']) ]]

            if vRP.tryFullPayment(user_id, payment) then
                vRP._execute("mirtin_garages/updateIpva", { ipva = os.time(), user_id = user_id, veiculo = name })
                TriggerClientEvent("Notify",source,"sucesso","Você Pagou $ "..vRP.format(payment).." para deixar o ipva de seu veiculo em dia.", 5)
            else
                TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro.", 5)

                return false
            end
        end


        return true
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RegisterTunnel.getUserVehicles()
    local source = source
    local user_id = vRP.getUserId(source)

    return garages:getUserVehicles(user_id)
end

function RegisterTunnel.garageTryLockVehicle(netid)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        garages:tryLockVehicle(source, user_id, netid)
    end
end

function RegisterTunnel.trySpawnVehicle(vehicle, public, spawnCoords)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return garages:trySpawnVehicle(source, user_id, vehicle, public, spawnCoords)
    end
end

function RegisterTunnel.registerVehicle(vehicle, netid, public)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if public then
            if vehicle and netid then
                userPersonalCar[vehicle..":"..user_id] = netid
                allSpawnedCars[netid] = { user_id,vehicle,netid }
            end
        else
            if netid and vehicle then
                userJobCar[vehicle..":"..user_id] = netid
            end
        end
    end
end

function RegisterTunnel.storeVehicle(name, gcoords, public)
    local source = source
    local user_id = vRP.getUserId(source)

    return garages:storeVehicle(source, user_id, name, gcoords, public)
end

function RegisterTunnel.paymentVehicle(name)
    local source = source
    local user_id = vRP.getUserId(source)

    return garages:paymentVehicle(source, user_id, name)
end

function RegisterTunnel.checkPermission(permiss)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, permiss) then
            return true
        end

        return false
    end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMANDOS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('dv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"dv.permissao") then
        local vehicle = vTunnel.garageGetNearestVehicle(source,7)
		if vehicle then            
            if allSpawnedCars[vehicle] then
                SaveVehicleInfos(allSpawnedCars[vehicle][1],allSpawnedCars[vehicle][2],allSpawnedCars[vehicle][3], NetworkGetEntityFromNetworkId(vehicle), source)

                if userPersonalCar[allSpawnedCars[vehicle][2]..":"..allSpawnedCars[vehicle][1] ] then
                    userPersonalCar[allSpawnedCars[vehicle][2]..":"..allSpawnedCars[vehicle][1] ] = nil
                end

                allSpawnedCars[vehicle] = nil
            end

            DeleteVehicle(NetworkGetEntityFromNetworkId(vehicle))
		end
	end
end)


exports('deleteVehicle', function(source)
    local vehicle = vTunnel.garageGetNearestVehicle(source,7)
    if vehicle then            
        if allSpawnedCars[vehicle] then
            SaveVehicleInfos(allSpawnedCars[vehicle][1],allSpawnedCars[vehicle][2],allSpawnedCars[vehicle][3], NetworkGetEntityFromNetworkId(vehicle), source)

            if userPersonalCar[allSpawnedCars[vehicle][2]..":"..allSpawnedCars[vehicle][1] ] then
                userPersonalCar[allSpawnedCars[vehicle][2]..":"..allSpawnedCars[vehicle][1] ] = nil
            end

            allSpawnedCars[vehicle] = nil
        end

        DeleteVehicle(NetworkGetEntityFromNetworkId(vehicle))
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SAVE VEHICLES INFOS / DELETE VEHICLE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function SaveVehicleInfos(user_id, name, netID, vehicle, source)
    if vehicle then
        local body = GetVehicleBodyHealth(vehicle) or 1000.0
        local engine = GetVehicleEngineHealth(vehicle) or 1000.0
        local fuel = vTunnel.garageGetVehicleFuel(source, netID) or 100.0

        vRP._execute("mirtin_garages/updateVehicleInfos", { lataria = body, motor = engine, gasolina = fuel, user_id = user_id, veiculo = name })
    end
end

function DeleteVehicle(entityID)
    if DoesEntityExist(entityID) then
        DeleteEntity(entityID)
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- EXPORTS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function getVehiclePrice(name)
    return (Garages.VehList[GetHashKey(name)] == nil) and 50000 or Garages.VehList[GetHashKey(name)].price
end

function getVehicleName(name)
    return (Garages.VehList[GetHashKey(name)] == nil) and name or Garages.VehList[GetHashKey(name)].name
end

function getVehicleTrunk(name)
    return (Garages.VehList[GetHashKey(name)] == nil) and 50 or Garages.VehList[GetHashKey(name)].trunk
end

function getVehicleType(name)
    return (Garages.VehList[GetHashKey(name)] == nil) and "Carros" or Garages.VehList[GetHashKey(name)].type
end

function getVehInfos(model)
    return Garages.VehList[model] or false
end


function getVehicleModel(hash)
    return (Garages.VehList[hash] == nil) and "Indefinido" or Garages.VehList[hash].model
end

exports('getVehiclePrice', function(name)
    return getVehiclePrice(name)
end)

exports('getVehicleTrunk', function(name)
    return getVehicleTrunk(name)
end)

exports('getVehicleName', function(name)
    return getVehicleName(name)
end)

exports('getVehicleType', function(name)
    return getVehicleType(name)
end)

exports('getVehInfos', function(model)
    return getVehInfos(model)
end)

exports('getListVehicles', function()
    return Garages.VehList
end)


AddEventHandler('onResourceStart', function(resource)
    if resource ~= GetCurrentResourceName() then return end

    local deleteCount = 0
    for k,v in ipairs(GetAllVehicles()) do 
        DeleteEntity(v)
        deleteCount = deleteCount + 1
    end

    print("Total de Veiculos Deletados: "..deleteCount)
end)

AddEventHandler('requestAllowedVehicle', function(user_id, vehHash)
    ALLOWED_PLAYER[user_id] = vehHash
end) 

RegisterNetEvent('hydrus:setPlayerInTestBucket', function(_, vehHash)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then 
        return
    end
    
    ALLOWED_PLAYER[user_id] = vehHash
end)

local EVENTS_BYPASS_CAR = {}
AddEventHandler('event:ByPassCar', function(carModel)
    EVENTS_BYPASS_CAR[carModel] = true
end)

AddEventHandler("entityCreating", function(ent)
    local source = NetworkGetFirstEntityOwner(ent)
    if GetEntityType(ent) == 2 and source then
        local user_id = vRP.getUserId(source)
        if user_id and not vRP.hasPermission(user_id, "admin.permissao") then
            local model = GetEntityModel(ent)
            
            if not EVENTS_BYPASS_CAR[model] then
                if not ALLOWED_PLAYER[user_id] or ALLOWED_PLAYER[user_id] ~= model then
                    print(('%s user_id try spawn vehicle model %s | not authorized'):format(user_id, model))
                    CancelEvent()
                    return
                end
            end

            if ALLOWED_PLAYER[user_id] then
                ALLOWED_PLAYER[user_id] = nil
            end
        end
    end
end)
