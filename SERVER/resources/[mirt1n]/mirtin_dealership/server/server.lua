------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- QUERYS DEALERSHIP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("mirtin_garages/dealership/createTable", "CREATE TABLE IF NOT EXISTS `mirtin_dealership` ( `vehicle` varchar(50) NOT NULL, `stock` int(11) DEFAULT 0, PRIMARY KEY (`vehicle`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; ")
vRP._prepare("mirtin_garages/dealership/getVehicles", "SELECT * FROM mirtin_dealership")
vRP._prepare("mirtin_garages/dealership/updateStock", "UPDATE mirtin_dealership SET stock = @stock WHERE vehicle = @vehicle")
vRP._prepare("mirtin_garages/dealership/removeVehicle", "DELETE FROM mirtin_dealership WHERE vehicle = @vehicle")
vRP._prepare("mirtin_garages/dealership/addVehicle", "REPLACE INTO mirtin_dealership(vehicle,stock) VALUES(@vehicle,@stock)")
vRP._prepare("mirtin_garages/dealership/createNewVehicleStock", "INSERT INTO mirtin_dealership (vehicle, stock) VALUES (@vehicle, @stock) ON DUPLICATE KEY UPDATE stock = @stock;")
vRP._prepare("mirtin_garages/dealership/getVehicle", "SELECT veiculo FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @vehicle")
vRP._prepare("mirtin_garages/dealership/totalVehicles", "SELECT COUNT(veiculo) as qtd FROM vrp_user_veiculos WHERE user_id = @user_id")
vRP._prepare("mirtin_garages/dealership/addUserVehicle", "INSERT IGNORE INTO vrp_user_veiculos(user_id,veiculo,ipva) VALUES(@user_id,@vehicle,@ipva)")
vRP._prepare("mirtin_garages/dealership/removeUserVehicle", "DELETE FROM vrp_user_veiculos WHERE veiculo = @vehicle AND user_id = @user_id")

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS DEALERSHIP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local dealership = {
    list = {}
}

function dealership:addCar(index, value, insert)
    self.list[index] = value

    if insert then
        vRP._execute("mirtin_garages/dealership/addVehicle", { vehicle = index, stock = self.list[index].stock })
    end
end

function dealership:remCar(index)
    if not self.list[index] then return end

    self.list[index] = nil
    vRP._execute("mirtin_garages/dealership/removeVehicle", { vehicle = index })
end

function dealership:getCar(index)
    if not index then return false end
    if not self.list[index] then print("Cadastrar o veiculo: "..index) return false end

    return self.list[index] or {}
end

function dealership:updateStock(index, amount)
    if not self.list[index] then return end

    self.list[index].stock = amount
    vRP._execute("mirtin_garages/dealership/updateStock", { vehicle = index, stock = self.list[index].stock })
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("mirtin_garages/dealership/getPromoVeh", "SELECT * FROM bm_promoveh")
function RegisterTunnel.dealershipRequest(type, value)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if type == "addCar" then
            if not vRP.hasPermission(user_id, 'admin.permissao') then return end
            
            dealership:addCar(value.vehicle, {
                name = exports.mirtin_garages:getVehicleName(value.vehicle),
                stock = value.stock,
                price = exports.mirtin_garages:getVehiclePrice(value.vehicle),
                type = exports.mirtin_garages:getVehicleType(value.vehicle),
                vip = value.vip,
            }, true)

            return
        end

        if type == "remCar" then
            if not vRP.hasPermission(user_id, 'admin.permissao') then return end
            
            dealership:remCar(value)
            return
        end

        if type == "updateCar" then
            if not vRP.hasPermission(user_id, 'admin.permissao') then return end
            
            dealership:updateStock(value.vehicle, value.amount)
            return
        end

        if type == "requestList" then
            return dealership.list
        end

        if type == 'promoVeh' then
            local query = vRP.query("mirtin_garages/dealership/getPromoVeh", { user_id = user_id })
            if query[1] then
                return query
            end
        end

        if type == "requestMyVehicles" then
            local query = vRP.query("mirtin_garages/GetAllUserVehicles", { user_id = user_id })
            local t = {}
            
            for i = 1, #query do
                local vehPrice = exports.mirtin_garages:getVehiclePrice(query[i].veiculo)

                t[#t + 1] = {
                    spawn =  query[i].veiculo,
                    name = exports.mirtin_garages:getVehicleName(query[i].veiculo),
                    price = parseInt(vehPrice - (vehPrice * dealershipConfig.main['sellVehicle'] / 100)),
                    type = exports.mirtin_garages:getVehicleType(query[i].veiculo) or "nenhum",
                    stock = dealership:getCar(query[i].veiculo) and dealership:getCar(query[i].veiculo).stock or 0,
                    trunk = dealership:getCar(query[i].veiculo) and dealership:getCar(query[i].veiculo).trunk or 0,
                    vip = dealership:getCar(query[i].veiculo) and dealership:getCar(query[i].veiculo).vip or 0,
                }
            end

            return t
        end
    end
end

function RegisterTunnel.dealershipBuyVehicle(name)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local status, time = exports['vrp']:getCooldown(user_id, "conce")
        if status then
            exports['vrp']:setCooldown(user_id, "conce", 5)

            local car = dealership:getCar(name)
            if car then
                car.stock = parseInt(car.stock)

                if car.stock <= 0 then
                    TriggerClientEvent("Notify",source,"negado","Veiculo sem stock.", 5)
                    return
                end

                local query = vRP.query("mirtin_garages/dealership/getVehicle", { user_id = user_id, vehicle = name })
                if #query > 0 then
                    TriggerClientEvent("Notify",source,"negado","Você já possui esse veiculo em sua garagem.", 5)
                    return
                end

                local maxCars, totalCars = getUserAmountCars(user_id)
                if totalCars >= maxCars then
                    TriggerClientEvent("Notify",source,"negado","Você não possui mais vagas na garagem.", 5)
                    return
                end

                if exports.mirtin_garages:getVehicleType(name) == "vip" then
                    TriggerClientEvent("Notify",source,"negado","Você não pode comprar um carro vip.", 5)
                    return
                end

                local vips = dealershipConfig.main['zoneVips']
                local discount = 0
                for i = 1, #dealershipConfig.main['zoneVips'] do
                    if vRP.hasPermission(user_id, vips[i].permission) then
                        discount = vips[i].discount
                    end
                end

                local price = parseInt(car.price - ( car.price * discount/100 ))
                if vRP.tryFullPayment(user_id, price) then
                    TriggerClientEvent("Notify",source,"sucesso","Parabens pela compra!!! Você comprou um <b>"..car.name.."</b> por <b>R$ "..vRP.format(price).."</b>", 5)
                    vRP.sendLog("https://discordapp.com/api/webhooks/1145039343988248729/Gp9YGHrwy-HyLL1-8f8agOqWcga3AQjA9692CWVv-gL4hYY5K8AxBZqobOFjWB2r3XWc", "```prolog\n[USER_ID]: "..user_id.."\n[COMPROU]: "..car.name.."\n[POR]: "..vRP.format(price).."```")
                    vRP.execute("mirtin_garages/dealership/addUserVehicle", { user_id = user_id, vehicle = name, ipva = os.time() })
                    dealership:updateStock(name, (car.stock - 1))
                else
                    TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro.", 5)
                end
            end
        end
    end
end

function RegisterTunnel.dealershipSellVehicle(name)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local status, time = exports['vrp']:getCooldown(user_id, "conce")
        if status then
            exports['vrp']:setCooldown(user_id, "conce", 5)

            local car = dealership:getCar(name)
            if car then
                local query = vRP.query("mirtin_garages/dealership/getVehicle", { user_id = user_id, vehicle = name })
                if #query > 0 then
                    if exports.mirtin_garages:getVehicleType(name) == "vip" then
                        TriggerClientEvent("Notify",source,"negado","Você não pode vender um carro vip.", 5)
                        return
                    end

                    if name:lower() == "benson" or name:lower() == "burrito4" or name:lower() == "burrito3" or name:lower() == "burrito2" then 
                        TriggerClientEvent("Notify",source,"negado","Você não pode vender este veículo.", 5)
                        return
                    end

                    local price = parseInt(car.price - (car.price * dealershipConfig.main['sellVehicle'] / 100))

                    vRP.giveMoney(user_id, price)
                    TriggerClientEvent("Notify",source,"sucesso","Você vendeu seu veiculo <b>"..car.name.."</b> para concessionaria e recebeu R$ ".. price, 5)

                    vRP.execute("mirtin_garages/dealership/removeUserVehicle", { user_id = user_id, vehicle = name })
                    vRP.sendLog("", "```prolog\n[USER_ID]: "..user_id.."\n[VENDEU]: "..car.name.."\n[POR]: "..price.."```")
                else
                    TriggerClientEvent("Notify",source,"negado","Você não possui esse veiculo em sua garagem.", 5)
                end
            end
        end
    end
end

function RegisterTunnel.setDimension(status, model)
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return end
    -- VALIDAR SE ELE TA NO RANGE DO TESTE DRIVE
    if status then
        SetPlayerRoutingBucket(source, user_id)
        TriggerEvent('requestAllowedVehicle', user_id, model)
    else
        SetPlayerRoutingBucket(source, 0)
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OTHERS FUNCTIONS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function getUserAmountCars(user_id)
    if user_id then
        local query = vRP.query("mirtin_garages/dealership/totalVehicles", { user_id = user_id })
        if query then
            local maxCars = dealershipConfig.main['maxCars']
            local vips = dealershipConfig.main['zoneVips']
            local totalCars = query[1].qtd
            
            for i = 1, #dealershipConfig.main['zoneVips'] do
                if vRP.hasPermission(user_id, vips[i].permission) then
                    maxCars = maxCars + vips[i].maxCars
                end
            end

            if user_id == 300 then
                maxCars = maxCars + 5  
            end

            return maxCars,totalCars
        end
    end
end

exports('getUserAmountCars', function(user_id)
    return getUserAmountCars(user_id)
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LOAD DEALERSHIP VEHICLES
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    vRP._execute("mirtin_garages/dealership/createTable", {})

    local query = vRP.query("mirtin_garages/dealership/getVehicles", {})
    for i = 1, #query do    
        dealership:addCar(query[i].vehicle, {
            name = exports.mirtin_garages:getVehicleName(query[i].vehicle),
            stock = query[i].stock,
            price = exports.mirtin_garages:getVehiclePrice(query[i].vehicle),
            type = exports.mirtin_garages:getVehicleType(query[i].vehicle),
            trunk = exports.mirtin_garages:getVehicleTrunk(query[i].vehicle),
            vip = query[i].vip,
        }, false)
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('conce', function(source, args)
    local user_id = vRP.getUserId(source)
    if user_id then
        if not vRP.hasPermission(user_id, "admin.permissao") then return end

        local query = vRP.query("mirtin_garages/dealership/getVehicles", {})
        local t = ""

        for i = 1, #query do
            t = t..", "..query[i].vehicle
        end

        local v_value = vRP.prompt(source, "Digite o veiculo: ", t)
        if v_value == "" or not v_value then
            return
        end

        local s_value = vRP.prompt(source, "Digite a quantidade de estoque: ", 100)
        if s_value == "" or not s_value then
            return
        end

        dealership:addCar(v_value, {
            name = exports.mirtin_garages:getVehicleName(v_value),
            stock = s_value,
            price = exports.mirtin_garages:getVehiclePrice(v_value),
            type = exports.mirtin_garages:getVehicleType(v_value),
            trunk = exports.mirtin_garages:getVehicleTrunk(v_value),
            vip = false,
        }, false)

        vRP._execute("mirtin_garages/dealership/createNewVehicleStock", { vehicle = v_value, stock = s_value })
        TriggerClientEvent("Notify",source,"sucesso","Você alterou o stock do veiculo: "..v_value.." para "..s_value.."x .", 5)
    end
end)