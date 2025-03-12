Config = {
    main = {
        command = 'passe', -- Comando para abrir passe de batalha
        resetDays = 30, -- em dia(s) tempo para resetar o passe
        minPerLevel = 180, -- Minutos necessario para upar 1 level do passe ( 60 = 1 hora, 120 = 2 horas ... )

        premiumPermission = 'perm.passedebatalha3', -- Grupo que identifica que o jogador tem o passe de batalha.

        dirs = { -- Lista de diretorios para encontrar a imagem do item.
            ['item'] = 'http://191.96.81.87/inventario',
            ['car'] = 'http://191.96.81.87/carros',
            ['others'] = 'http://191.96.81.87/inventario'
        }
    },

    payments = { -- CONFIGS DE PAGAMENTOS
        giveItem = function(source, user_id, item, amount, notify)
            vRP.giveInventoryItem(user_id, item, amount, notify)
        end,

        giveCar = function(source, user_id, car)
            -- CASO SUA TABELA SEJA: vrp_user_veiculos MATENHA.
            exports["oxmysql"]:executeSync('INSERT IGNORE INTO vrp_user_veiculos(user_id,veiculo,ipva) VALUES(?,?,?)', { user_id, car, os.time() })

            -- CASO SUA TABELA SEJA: vrp_user_vehicles DESCOMENTE.
            --exports["oxmysql"]:executeSync('INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,tax) VALUES(@user_id,@vehicle,@tax)', { user_id, car, os.time() })
        end,

        giveGroup = function(source, user_id, group)
            vRP.addUserGroup(user_id, group)
        end,

        giveMoney = function(source, user_id, amount)
            vRP.giveMoney(user_id, amount)
        end,
    },

    pass = { -- ITENS DO PASSE DE BATALHA

        free = { -- ITENS GRATUITOS DO PASSE
            [1] = {
                spawn = 'c4', -- spawn
                name = 'C4', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 10, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [2] = {
                spawn = 'bandagem', -- spawn
                name = 'Bandagem', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 10, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn)
                end
            },
            [3] = {
                spawn = 'algemas', -- spawn
                name = 'Algemas', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [4] = {
                spawn = 'shotaro', -- spawn
                name = 'shotaro', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [5] = {
                spawn = 'repairkit', -- spawn
                name = 'Kit de Reparação', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 10, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [6] = {
                spawn = 'pop110i', -- spawn
                name = 'pop110i', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [7] = {
                spawn = 'celular', -- spawn
                name = 'Celular', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [8] = {
                spawn = 'money', -- spawn
                name = 'Money', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 10000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [9] = {
                spawn = 'c4', -- spawn
                name = 'C4', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 10, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [10] = {
                spawn = 'WEAPON_SPECIALCARBINE_MK2', -- spawn
                name = 'WEAPON_SPECIALCARBINE_MK2', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 2, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [11] = {
                spawn = 'AMMO_SPECIALCARBINE_MK2', -- spawn
                name = 'AMMO_SPECIALCARBINE_MK2', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 250, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [12] = {
                spawn = 'WEAPON_PISTOL_MK2', -- spawn
                name = 'WEAPON_PISTOL_MK2', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 2, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [13] = {
                spawn = 'AMMO_PISTOL_MK2', -- spawn
                name = 'AMMO_PISTOL_MK2', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 150, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [14] = {
                spawn = 'metanfetamina', -- spawn
                name = 'Metanfetamina', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 100, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [15] = {
                spawn = 'xre2019', -- spawn
                name = 'xre2019', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [16] = {
                spawn = 'money', -- spawn
                name = '100 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 100000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [17] = {
                spawn = 'money', -- spawn
                name = '150 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 150000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [18] = {
                spawn = 'money', -- spawn
                name = '200 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 200000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [19] = {
                spawn = 'money', -- spawn
                name = '300 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 300000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [20] = {
                spawn = 'money', -- spawn
                name = '500 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 500000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            }
        },

        paid = { -- ITENS PAGOS DO PASSE
            [1] = {
                spawn = 'money', -- spawn
                name = '100 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 100000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [2] = {
                spawn = 'cbtwister22k', -- spawn
                name = 'cbtwister22k', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [3] = {
                spawn = 'money', -- spawn
                name = '150 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 150000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [4] = {
                spawn = 'c4', -- spawn
                name = 'c4', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 20, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn)
                end
            },
            [3] = {
                spawn = 'money', -- spawn
                name = '200 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 200000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [6] = {
                spawn = 'GolG5', -- spawn
                name = 'GolG5', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [7] = {
                spawn = 'balinha', -- spawn
                name = 'balinha', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 100, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn)
                end
            },
            [8] = {
                spawn = 'impronta4', -- spawn
                name = 'Ferrari Impronta', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [9] = {
                spawn = 'money', -- spawn
                name = '250 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 250000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [10] = {
                spawn = '1300', -- spawn
                name = 'R1300', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [11] = {
                spawn = 'money', -- spawn
                name = '250 mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 250000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn)
                end
            },
            [12] = {
                spawn = 'km1000rr', -- spawn
                name = '1000RR', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [13] = {
                spawn = 'money', -- spawn
                name = '350 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 350000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [14] = {
                spawn = 'money', -- spawn
                name = '400 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 400000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [15] = {
                spawn = 'money', -- spawn
                name = '450 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 450000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [16] = {
                spawn = 'money', -- spawn
                name = '500 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 500000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [17] = {
                spawn = 'money', -- spawn
                name = '550 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 550000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [18] = {
                spawn = 'money', -- spawn
                name = '600 Mil', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 550000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [19] = {
                spawn = 'BC_gt3hycade', -- spawn
                name = 'Exclusivo GT3', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [20] = {
                spawn = 'fxiaop', -- spawn
                name = 'Drone 2 Lugares', -- Nome do Carro
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1000, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            }
        }
    }
}


Config.Langs = {
    ['onPlayerJoinMessage'] = function() TriggerEvent("Notify","importante","Bem vindo utilize o comando <b>/"..Config.main.command.."</b> para resgatar suas recompensas conforme suas horas jogadas", 15000) end,
    ['rewardItem'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você resgatou sua recompensa.", 5000) end,
    ['rewardAllItems'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você resgatou todas suas recompensa disponiveis.", 5000) end,
    ['isNoReward'] = function(source) TriggerClientEvent("Notify",source,"negado","Não tem recompensa disponivel para você resgatar.", 5000) end
}

if IsDuplicityVersion() then
    function getUserId(source)
        return vRP.getUserId(source)
    end

    function getUserIdentity(user_id)
        local identity = vRP.getUserIdentity(user_id)

        if identity.nome then
            identity.name = identity.nome
        end

        if identity.sobrenome then
            identity.firstname = identity.sobrenome
        end

        if identity.name2 then
            identity.firstname = identity.name2
        end

        return identity
    end

    function hasPermission(user_id, group)
        return vRP.hasPermission(user_id, group)
    end

    AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
        TriggerEvent('mirtin_battlepass:playerSpawn', user_id, source, first_spawn)
    end)

    AddEventHandler("playerDropped", function()
        local source = source
        local user_id = vRP.getUserId(source)
        if not user_id then return end

        TriggerEvent('mirtin_battlepass:playerDropped', source, user_id)
    end)
end