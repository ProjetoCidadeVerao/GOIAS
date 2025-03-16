-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config = {
    dirty_money = 'dirty_money', -- Nome do item de dinheiro sujo que será dado ao jogador após desmanchar o veículo.
    dismantleTime = 5, -- Tempo em minutos para desmanchar o veículo. Se o tempo esgotar sem finalizar, o processo é cancelado.
    
    custom_vehicles = false, -- Define se a lista de veículos de desmanche será personalizada ou usará uma lista padrão.
    vehicles = { -- Lista personalizada de veículos (habilitada se custom_vehicles = true).
        [`adder`] = { spawn = 'adder', price = 40000 }, -- O valor do veículo é utilizado para calcular o montante final após aplicação de porcentagem.
        [`barracks`] = { spawn = 'barracks', price = 40000 }, -- Mais veículos podem ser adicionados aqui conforme necessário.
    },

    blacklist_vehicles = { -- Veiculos na blacklist, proibidos para desmanchar
        [`rhino`] = true
    },

    bones = { -- Configurações avançadas para desmanche por peças. Alterar com cuidado, requer entendimento de animações e propriedades.
        ["door_dside_f"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "imp_prop_impexp_car_door_04a",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "imp_prop_impexp_car_door_04a",
                offset = vec3(-1.3, 0.5, 1.8 ),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },

        ["door_dside_r"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "imp_prop_impexp_car_door_04a",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "imp_prop_impexp_car_door_04a",
                offset = vec3(-1.0, 0.5, 1.8),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },

        ["door_pside_f"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "imp_prop_impexp_car_door_04a",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "imp_prop_impexp_car_door_04a",
                offset = vec3(-0.7, 0.5, 1.8),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },

        ["door_pside_r"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "imp_prop_impexp_car_door_04a",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "imp_prop_impexp_car_door_04a",
                offset = vec3(-0.4, 0.5, 1.8),
                rot = vec3(0.0, 0.0, 0.0)
            }
        },

        ["wheel_lf"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(1.2, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_lr"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(0.93, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_rf"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(0.67, 0.0, 0.97),
                rot =  vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_rr"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(0.40, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_lm1"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(0.12, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["wheel_rm1"] = {
            minDist = 1,

            animation = {
                delay = 3,
                dict = "amb@medic@standing@tendtodead@idle_a",
                anim = "idle_a",
                forceCrouch = true
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_wheel_03",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.1,
                pos2 = -0.15,
                pos3 = 0.0,
            },

            shelve = {
                name = "prop_wheel_tyre",
                offset = vec3(-0.15, 0.0, 0.97),
                rot = vec3(0.0, 0.0, 90.0)
            }
        },

        ["engine"] = {
            minDist = 4,

            animation = {
                delay = 3,
                dict = nil,
                anim = "WORLD_HUMAN_WELDING",
                forceCrouch = false
            },

            prop = {
                dict = "anim@heists@box_carry@",
                anim = "idle",
                name = "prop_car_engine_01",
                flag = 49,
                hand = 28422,
                height = 0.0,
                pos1 = -0.5,
                pos2 = 0.4,
                pos3 = 0.0,
                
                motorcycle = { -- Se for uma Moto
                    dict = "anim@heists@box_carry@",
                    anim = "idle",
                    name = "prop_etricmotor_01",
                    flag = 49,
                    hand = 28422,
                    height = 0.0,
                    pos1 = 0.0,
                    pos2 = 0.0,
                    pos3 = 0.0,
                }
            },

            shelve = {
                name = "prop_car_engine_01",
                offset = vec3(1.0, 0.0, 0.17),
                rot = vec3(0.0, 0.0, 90.0),

                motorcycle = { -- Se for uma Moto
                    name = "prop_etricmotor_01",
                    offset = vec3(1.0, 0.0, 0.1),
                    rot = vec3(0.0, 0.0, 90.0)
                }
            }
        },
    }
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LOCATIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.Locations = {
    {
        permission = 'perm.vilacanaa', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(146.25,320.19,112.14),
            shelves = vec4(146.59,325.31,112.34,35.4)
        },
    },

    {
        permission = 'perm.grota', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(1456.7,1107.95,114.44),
            shelves = vec4(1450.88,1109.16,114.39,229.61)
        },
    },

    {
        permission = 'perm.mafia', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(633.38,920.22,247.57),
            shelves = vec4(622.65,922.42,247.57,82.98)
        },
    },

    {
        permission = 'perm.madregermano', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(-1221.62,834.24,193.37),
            shelves = vec4(-1228.64,845.08,193.37,316.15)
        },
    },

    {
        permission = 'desmanchesublime.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(-593.8, -1601.09, 27.01),
            shelves = vec4(-594.17,-1604.94,27.01,357.17)
        },
    },

    {
        permission = 'desmanchestreetrace.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(888.2, -2101.46, 30.46),
            shelves = vec4(888.51,-2097.94,30.46,175.75)
        },
    },

    {
        permission = 'desmanchelscustoms.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(-339.3, -95.15, 39.01),
            shelves = vec4(-332.79,-93.03,39.01,150.24)
        },
    },

    {
        permission = 'desmancheunderground.permissao', -- Permissão para acessar
        percentual = 40, -- 10% do valor do veiculo
        
        coords = {
            blip = vec3(2718.22, 3480.59, 55.25),
            shelves = vec4(2712.97,3479.87,55.25,297.64)
        },
    },
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LANGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.Langs = {
    ['dismantleFinished'] = function()
        TriggerEvent("Notify", "importante", "Desmanche finalizado, aguarde o último jogador entregar a peça na mesa para efetuarmos o pagamento. Caso ele não entregue em 60 segundo(s), vamos efetuar o pagamento.", 10000)
    end,
    
    ['canceledDismantle'] = function()
        TriggerEvent("Notify", "negado", "O Desmanche foi cancelado.", 5000)
    end,
    
    ['finishedDismantle'] = function()
        TriggerEvent("Notify", "importante", "Desmanche finalizado. O Pagamento foi feito para o autor do desmanche.", 5000)
    end,
    
    ['startedDismantle'] = function()
        TriggerEvent("Notify", "importante", "Desmanche Iniciado, Vocês têm " .. Config.dismantleTime .. " minuto(s) para desmanchar esse veículo, caso contrário o veículo será deletado.", 10000)
    end,

    ['cannotStartAnotherDismantle'] = function(source)
        TriggerClientEvent("Notify", source, "negado", "Você não pode iniciar outro desmanche, aguarde o seu finalizar.", 5000)
    end,
    
    ['noPermission'] = function(source)
        TriggerClientEvent("Notify", source, "negado", "Você não possui permissão.", 5000)
    end
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if SERVER then
    -- ADAPTAÇÕES
    vRP.getUserId = vRP.getUserId
    vRP.getUserSoruce = vRP.getUserSoruce 
    vRP.hasPermission = vRP.hasPermission

    vRP.prepare('mirtin_desmanche/getVehicle', 'SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @vehicle')
    function vehiclesValidations(source, user_id, vehicle, plate, model)
        -- Validar veiculo
        local vehInfo = getVehicleInfo(tostring(model))
        if not vehInfo then
            TriggerClientEvent("Notify",source,"negado","Veiculo Não configurado.", 5000)
            return false
        end

        -- Validar se a placa existe em algum jogador
        local owner_id = vRP.getUserByRegistration(plate)
        if not owner_id then
            TriggerClientEvent("Notify",source,"negado","Veiculo de Americano.", 5000)
            return false
        end

        -- Validar se o veiculo não é proprio
        if owner_id == user_id then
            TriggerClientEvent("Notify",source,"negado","Você não pode desmanchar seu proprio veiculo.", 5000)
            return false
        end

        -- Validar se o veiculo existe na garagem do jogador
        local query = vRP.query('mirtin_desmanche/getVehicle', { user_id = owner_id, vehicle = vehicle })
        if #query == 0 then
            TriggerClientEvent("Notify",source,"negado","Veiculo não encontrado na garagem de nenhum jogador.", 5000)
            return false
        end

        -- Validar se o veiculo não foi desmanchado
        if query[1].status > 0 then
            TriggerClientEvent("Notify",source,"negado","Este veiculo ja se encontra detido/retido.", 5000)
            return false
        end

        -- Validar se o veiculo não está na blacklist
        if Config.blacklist_vehicles[model] then
            TriggerClientEvent("Notify",source,"negado","Veiculo está na blacklist.", 5000)
            return false
        end

        return true
    end

    vRP.prepare('mirtin_desmanche/updateVehicle', 'UPDATE vrp_user_veiculos SET status = @status WHERE veiculo = @vehicle AND user_id = @user_id')
    function setVehicleDismantle(vehicle, plate, model)
        local vehInfo = getVehicleInfo(tostring(model))
        if not vehInfo then
            return false
        end

        local owner_id = vRP.getUserByRegistration(plate)
        if not owner_id then
            return false
        end

        vRP.execute('mirtin_desmanche/updateVehicle', { status = 1, vehicle = vehInfo.model, user_id = owner_id })
    end

    function paymentDismantle(user_id, vehicle, percentual, model)
        local source = vRP.getUserSource(user_id)

        local vehInfo = getVehicleInfo(tostring(model))
        if not vehInfo then
            TriggerClientEvent("Notify",source,"negado","Veiculo Não configurado.", 5000)
            return false
        end

        local vehPrice = vehInfo.price
        if parseInt(vehPrice) > 1000000 then 
            vehPrice = 1000000 
        end

        local payment = parseInt(vehPrice * (percentual/100))
        vRP.giveInventoryItem(user_id, Config.dirty_money, payment, true)

        if source then
            TriggerClientEvent("Notify",source,"sucesso","Você recebeu "..payment.." por desmanchar esse veiculo.", 5000)
        end
    end

    function getVehiclePrice(model)
        local vehInfo = getVehicleInfo(tostring(model))

        if not vehInfo then
            return false
        end
        
        -- Sua função de capturar preço do veiculo...
        return vehInfo.price or 0
    end

    function getVehicleInfo(model)
        if Config.custom_vehicles then
            if Config.vehicles[model] then
                return Config.vehicles[model]
            end

            return false
        end

        local vehInfo = exports.mirtin_garages:getVehInfos(tonumber(model))
        if vehInfo then
            return vehInfo
        end

        return false
    end
end 