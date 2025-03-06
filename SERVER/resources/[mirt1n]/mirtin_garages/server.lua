---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PREPARES/QUERYS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("mirtin_garages/GetAllUserVehicles", "SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id")
vRP._prepare("mirtin_garages/GetSpawnVehInfo", "SELECT * FROM vrp_user_veiculos WHERE veiculo = @veiculo AND user_id = @user_id")
vRP._prepare("mirtin_garages/updateVehicleInfos", "UPDATE vrp_user_veiculos SET motor = @motor, lataria = @lataria, gasolina = @gasolina WHERE user_id = @user_id AND veiculo = @veiculo")
vRP._prepare("mirtin_garages/getStatus", "SELECT status,ipva FROM vrp_user_veiculos WHERE veiculo = @veiculo AND user_id = @user_id")
vRP._prepare("mirtin_garages/updateStatus", "UPDATE vrp_user_veiculos SET status = @status WHERE user_id = @user_id AND veiculo = @veiculo")
vRP._prepare("mirtin_garages/updateIpva", "UPDATE vrp_user_veiculos SET ipva = @ipva WHERE user_id = @user_id AND veiculo = @veiculo")
vRP._prepare("mirtin_garages/updateOwner", "UPDATE vrp_user_veiculos SET user_id = @new_user_id WHERE veiculo = @veiculo AND user_id = @old_user_id")

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local garages = {}
local userJobCar = {}
local userPersonalCar = {}
local allSpawnedCars = {}
local ALLOWED_PLAYER = {}
local KEYS_ALLOWED = {}

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
                local allowed = false
                if plateOwnerId and KEYS_ALLOWED[plateOwnerId] and KEYS_ALLOWED[plateOwnerId][user_id] then
                    allowed = true
                end

                if plateOwnerId and (plateOwnerId == user_id or allowed) then
                    local status = GetVehicleDoorLockStatus(entity)
                    SetVehicleDoorsLocked(entity, ((status == 2) and 1 or 2))

                    vTunnel._garageAnimLock(source, vnetid, status)
                end
            end
        end
    end
end

function servicevehicle(vehicle, nearestGarage)
	for _, v in pairs(nearestGarage) do
		if v.vehicle == vehicle then 
			return true
		end 
	end
	return false
end

function serviceperm(user_id, permission)
	if permission ~= nil then
		if vRP.hasPermission(user_id, permission) then
			return true
		end
		return false
	else
		return true
	end
end


function garages:trySpawnVehicle(source, user_id, name, public, spawnCoords,opengarage)
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

                --exports['PL_PROTECT']:setSpawnClient(source,GetHashKey(name)) 

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

        if  Garages.List[opengarage] and Garages.List[opengarage].vehicles and servicevehicle(name, Garages.List[opengarage].vehicles) and serviceperm(user_id,  Garages.List[opengarage].permiss) then 
            if userJobCar[name..":"..user_id] then
                if (DoesEntityExist(NetworkGetEntityFromNetworkId(userJobCar[name..":"..user_id])) == 1) then
                    return false,"Você já possui um veiculo desse fora da garagem."
                end

                userJobCar[name..":"..user_id] = nil
            end
            
            ALLOWED_PLAYER[user_id] = GetHashKey(name)

            --exports['PL_PROTECT']:setSpawnClient(source,GetHashKey(name)) 

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
end

function garages:storeVehicle(source, user_id, name, gcoords, public)
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

local delay_find = {}
function garages:findVehicle(source, user_id, name)
    if not vRP.hasPermission(user_id, "rastreador.permissao") then
        TriggerClientEvent("Notify",source,"negado","Você não tem permissão para rastrear veiculos.", 5)
        return
    end

    if not userPersonalCar[name..":"..user_id] then
        TriggerClientEvent("Notify",source,"negado","Este veiculo não está fora da garagem.", 5)
        return
    end

    local entity = NetworkGetEntityFromNetworkId(userPersonalCar[name..":"..user_id])
    if not DoesEntityExist(entity) then
        TriggerClientEvent("Notify",source,"negado","Este veiculo não está fora da garagem.", 5)
        return
    end

    if delay_find[user_id..":"..name] and delay_find[user_id..":"..name] > os.time() then
        TriggerClientEvent("Notify",source,"negado","Você não pode rastrear este veiculo por enquanto.", 5)
        return
    end
    delay_find[user_id..":"..name] = os.time() + (60 * 5)


    local coords = GetEntityCoords(entity)
    TriggerClientEvent("Notify",source,"sucesso","Você rastreou o veiculo com sucesso, olhe a marcação no seu mapa.", 5)
    TriggerClientEvent("track:vehicle",source,coords)
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

function RegisterTunnel.trySpawnVehicle(vehicle, public, spawnCoords,opengarage)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return garages:trySpawnVehicle(source, user_id, vehicle, public, spawnCoords,opengarage)
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
        if vRP.hasPermission(user_id, permiss) or vRP.hasPermission(user_id, "admin.permissao") then
            return true
        end

        return false
    end
end

function RegisterTunnel.findVehicle(spawn)
    local source = source
    local user_id = vRP.getUserId(source)

    return garages:findVehicle(source, user_id, spawn)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMANDOS
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('dv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"moderador.permissao") or vRP.hasPermission(user_id,"dv.permissao") or vRP.hasPermission(user_id,"perm.lidermecanico") then
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

RegisterCommand('sveh',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
    if not user_id then 
        return 
    end

    local query = vRP.query("mirtin_garages/GetAllUserVehicles", { user_id = user_id })
    local myVehicles = {}
    for i = 1, #query do
        myVehicles[#myVehicles + 1] = query[i].veiculo
    end

    local chooseVehicle = vRP.prompt(source, 'Escolha o Veículo que deseja Vender', table.concat(myVehicles, ' , '))
    local validVehicle = false
    for _, v in pairs(myVehicles) do
        if v == chooseVehicle then
            validVehicle = true
        end
    end
    if not validVehicle then
        TriggerClientEvent("Notify",source,"negado","Veiculo Não encontrado.", 5)
        return
    end

    local price = vRP.prompt(source, 'Digite o preço que deseja vender o veiculo', 10000)
    price = tonumber(price)
    if not price or price == '' or price < 1 then
        TriggerClientEvent("Notify",source,"negado","Preço Inválido.", 5)
        return
    end
    
    local target_id = vRP.prompt(source, 'Digite o ID do usuário que deseja vender o veiculo', 1)
    target_id = tonumber(target_id)
    if not target_id or target_id == '' or target_id < 1 then
        TriggerClientEvent("Notify",source,"negado","ID Inválido.", 5)
        return
    end

    local target_source = vRP.getUserSource(target_id)
    if not target_source then
        TriggerClientEvent("Notify",source,"negado","Usuário Não encontrado.", 5)
        return
    end

    TriggerClientEvent("Notify",source,"sucesso","Aguardando confirmação do comprador...", 5)
    local vehName = getVehicleName(chooseVehicle)
    if vRP.request(target_source, "Você deseja comprar o veiculo "..vehName.." por R$ "..vRP.format(price).." ?", 20) then
        if vRP.tryFullPayment(target_id, price) then
            TriggerClientEvent("Notify",target_source,"sucesso","Você comprou o veiculo "..vehName.." por R$ "..vRP.format(price)..".", 5)
            TriggerClientEvent("Notify",source,"sucesso","Você vendeu o veiculo "..vehName.." por R$ "..vRP.format(price)..".", 5)  
            vRP._execute("mirtin_garages/updateOwner", { new_user_id = target_id, old_user_id = user_id, veiculo = chooseVehicle })
        else
            TriggerClientEvent("Notify",source,"negado","O usuário não possui dinheiro suficiente.", 5)
        end
    end
end)

RegisterCommand('eveh',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
    if not user_id then 
        return 
    end

    local query = vRP.query("mirtin_garages/GetAllUserVehicles", { user_id = user_id })
    local myVehicles = {}
    for i = 1, #query do
        myVehicles[#myVehicles + 1] = query[i].veiculo
    end

    local chooseVehicle = vRP.prompt(source, 'Escolha o Veículo que deseja Emprestar a chave', table.concat(myVehicles, ' , '))
    local validVehicle = false
    for _, v in pairs(myVehicles) do
        if v == chooseVehicle then
            validVehicle = true
        end
    end
    if not validVehicle then
        TriggerClientEvent("Notify",source,"negado","Veiculo Não encontrado.", 5)
        return
    end
    
    local target_id = vRP.prompt(source, 'Digite o ID do usuário que deseja emprestar a chave do veiculo', 1)
    target_id = tonumber(target_id)
    if not target_id or target_id == '' or target_id < 1 then
        TriggerClientEvent("Notify",source,"negado","ID Inválido.", 5)
        return
    end

    local target_source = vRP.getUserSource(target_id)
    if not target_source then
        TriggerClientEvent("Notify",source,"negado","Usuário Não encontrado.", 5)
        return
    end

    TriggerClientEvent("Notify",source,"sucesso","Aguardando confirmação do jogador...", 5)
    local vehName = getVehicleName(chooseVehicle)
    if vRP.request(target_source, "Você deseja aceitar a chave do veiculo "..vehName.." do id "..user_id.." ?", 20) then
        if not KEYS_ALLOWED[user_id] then
            KEYS_ALLOWED[user_id] = {}
        end

        KEYS_ALLOWED[user_id][target_id] = chooseVehicle    
        TriggerClientEvent("Notify",target_source,"sucesso","Você recebeu a chave do veiculo "..vehName..".", 5)
        TriggerClientEvent("Notify",source,"sucesso","Você emprestou a chave do veiculo "..vehName.." para o id "..target_id..".", 5) 
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

-- RegisterNetEvent('hydrus:setPlayerInTestBucket', function(_, vehHash)
--     local source = source
--     local user_id = vRP.getUserId(source)
--     if not user_id then 
--         return
--     end
    
--     ALLOWED_PLAYER[user_id] = vehHash
-- end)

local EVENTS_BYPASS_CAR = {}
AddEventHandler('event:ByPassCar', function(carModel)
    EVENTS_BYPASS_CAR[carModel] = true
end)

AddEventHandler("entityCreating", function(ent)
    local source = NetworkGetFirstEntityOwner(ent)
    if not source then
        CancelEvent()
    end

    if GetEntityType(ent) == 2 and source then
        local model = GetEntityModel(ent)

        local user_id = vRP.getUserId(source)
        if user_id and not vRP.hasPermission(user_id, "admin.permissao") then
            if not EVENTS_BYPASS_CAR[model] then
                if not ALLOWED_PLAYER[user_id] or ALLOWED_PLAYER[user_id] ~= model then
                   -- print(('%s user_id try spawn vehicle model %s | not authorized'):format(user_id, model))
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

-- local active_while = false
-- local byPassModels = {}
-- CreateThread(function()
--     for _, v in pairs(Garages.VehList) do
--         byPassModels[GetHashKey(v.model)] = true
--     end
-- end)

-- RegisterCommand('block_veh', function(source,args)
--     if not args[1] then
--         active_while = not active_while
--         print('Block Veh', active_while)
--     end

--     if active_while then
--         CreateThread(function()
--             while active_while do 
--                 local models = {}
--                 for _, v in pairs(GetAllVehicles()) do
--                     models[#models + 1] = GetEntityModel(v)
--                     if not byPassModels[GetEntityModel(v)] then
--                         local source = NetworkGetFirstEntityOwner(v)
--                         print('deletando entidade da source', source)
--                         DeleteEntity(v)

--                         local user_id = vRP.getUserId(source)
--                         if user_id then
--                             print('Deletando Entitidade do user_id: ', user_id)
--                         end
--                     end
--                 end
        
--                 Wait(100)
--             end
--         end)
--     end
-- end)

-- local protect_models = false
-- RegisterCommand('protect_models', function(source, args)
--     protect_models = not protect_models
--     print('Protect Models', protect_models)

--     CreateThread(function()
--         while protect_models do
--             for _, v in pairs(GetAllObjects()) do
--                  DeleteEntity(v)
--             end

--             Wait(1000)
--         end
--     end)
-- end)

