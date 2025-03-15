Config = {
    main = {
        command = 'passe', -- Comando para abrir passe de batalha
        resetDays = 30, -- em dia(s) tempo para resetar o passe
        minPerLevel = 120, -- Minutos necessario para upar 1 level do passe ( 60 = 1 hora, 120 = 2 horas ... )

        premiumPermission = 'passedebatalha.permissao', -- Grupo que identifica que o jogador tem o passe de batalha.

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
                spawn = 'mochila', -- spawn
                name = 'Mochila', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [2] = {
                spawn = 'skate', -- spawn
                name = 'Skate', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
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
                spawn = 'pneus', -- spawn
                name = 'Pneus', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [5] = {
                spawn = 'repairkit', -- spawn
                name = 'Kit de Reparação', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [6] = {
                spawn = 'radio', -- spawn
                name = 'Rádio', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
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
                spawn = 'apple_watch', -- spawn
                name = 'Apple Watch', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [9] = {
                spawn = 'c4', -- spawn
                name = 'C4', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [10] = {
                spawn = 'furadeira', -- spawn
                name = 'Furadeira', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [11] = {
                spawn = 'lockpick', -- spawn
                name = 'Lockpick', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [12] = {
                spawn = 'maconha', -- spawn
                name = 'Maconha', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [13] = {
                spawn = 'cocaina', -- spawn
                name = 'Cocaína', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [14] = {
                spawn = 'metanfetamina', -- spawn
                name = 'Metanfetamina', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            },
            [15] = {
                spawn = 'heroina', -- spawn
                name = 'Heroína', -- Nome do Item
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveItem(source, user_id, spawn, amount, true)
                end
            }
        },

        paid = { -- ITENS PAGOS DO PASSE
            [1] = {
                spawn = '18velar', -- spawn
                name = '18 Velar', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [2] = {
                spawn = '440i', -- spawn
                name = '440i', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [3] = {
                spawn = '718caymans', -- spawn
                name = '718 Caymans', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [4] = {
                spawn = 'akuma', -- spawn
                name = 'Akuma', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [5] = {
                spawn = 'furia', -- spawn
                name = 'Furia', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [6] = {
                spawn = 'gsxr', -- spawn
                name = 'GSXR', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [7] = {
                spawn = 'guardian', -- spawn
                name = 'Guardian', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [8] = {
                spawn = 'hakuchou', -- spawn
                name = 'Hakuchou', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [9] = {
                spawn = 'hakuchou2', -- spawn
                name = 'Hakuchou2', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [10] = {
                spawn = 'impaler', -- spawn
                name = 'Impaler', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [11] = {
                spawn = 'infernus2', -- spawn
                name = 'Infernus2', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [12] = {
                spawn = 'innovation', -- spawn
                name = 'Innovation', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
                execute = function(source, user_id, spawn, amount)
                    Config.payments.giveCar(source, user_id, spawn)
                end
            },
            [13] = {
                spawn = 'komoda', -- spawn
                name = 'Komoda', -- Nome do Carro
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- quantidade
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