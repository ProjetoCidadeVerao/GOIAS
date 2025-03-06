------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config = {
    command = 'box', -- COMANDO PARA ABRIR

    dirs = { -- DIRETORIO DE IMAGENS
        item = 'http://191.96.81.87/inventario/',
        car = 'http://177.54.148.31:4020/base/carros/',
        others = 'http://177.54.148.31:4020/others/'
    },

    rewards = { -- Givar Pontos com jogador online
        active = true, -- Ligado / Desativado
        alertPlayer = true, -- Se vai aletar o jogador que ele recebeu os pontos.
        time = 30, -- Tempo que vai givar os pontos em minuto(s)
        points = 1, -- Quantidade de Coins que vai givar
    },

    ranking = {
        reset_time = 7, -- Tempo para resetar o ranking em dia(s)
        rewardPositions = {
            [1] = '1x Vale Compras na loja Vip [100 R$] ',
            [2] = '1x Vale Compras na loja Vip [90 R$]',
            [3] = '1x Vale Compras na loja Vip [80 R$]',
            [4] = '1x Vale Compras na loja Vip [70 R$]',
            [5] = '1x Vale Compras na loja Vip [60 R$]',
            [6] = '1x Vale Compras na loja Vip [50 R$]',
            [7] = '1x Vale Compras na loja Vip [40 R$]',
            [8] = '1x Vale Compras na loja Vip [30 R$]',
            [9] = '1x Vale Compras na loja Vip [20 R$]',
            [10] = '1x Vale Compras na loja Vip [10 R$]',
        },    
    },

    chance = { -- RARIDADES
        uncommon = 80, -- 80%
        common = 60, -- 60%
        rare = 50, -- 50%
        epic = 5, -- 30%
        legendary = 1, -- 1%
    },

    rarityColors = { -- CORES DAS RARIDADES
        uncommon = "#D9D9D9BF",
        common = "#A7F383BF",
        rare = "#FFCF53BF",
        epic = "#9814FFBF",
        legendary = "#FF5454BF"
    },

    weebhook = {
        color = 6356736,
        logo = "https://cdn.discordapp.com/attachments/941082057449279498/951537784433303663/logo_sem_fundo.png?ex=65e9fe9e&is=65d7899e&hm=653c1d7e9eaeb8a7e973e7eef5b394348a99d615fa56294ec5139f196135ccf3&",
        footer = "© MIRTIN STORE"
    },


    langs = {
        giveCoin = function(source, amount) 
            TriggerClientEvent("Notify",source,"sucesso","[GOIAS_BOX]<br>Você acaba de receber <b>"..amount.." point(s)</b> para utilizar no <b>/"..Config.command.."</b>.", 5000)
        end,

        notMoney = function(source) 
            TriggerClientEvent("Notify",source,"negado","Você não possui coins/points suficiente para essa compra.", 5000)
        end,

        buyItem = function(source) 
            TriggerClientEvent("Notify",source,"sucesso","Você comprou este item.", 5000)
        end,
    },

    payments = {
        giveItem = function(source, user_id, item, amount, notify)
            vRP.giveInventoryItem(user_id, item, amount, notify)
        end,

        giveCar = function(source, user_id, car, amount)
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
    }
}

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG CAIXA DE POINTS 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.cratesPoints = { -- Todas que vao ser usada por [ Points ] 
    { -- CAIXA COMUM
        crate = "Comum", -- Nome da Caixa
        weebhook = "https://discord.com/api/webhooks/1318227644197765200/X1QGpYZ1JLy8Uvx-B8pM2gmaXkGAOKAvavyPL7WBMBLaT4_c7LiFxaL9NhDbYqM4LGow", -- WEEBHOOK Dessa Caixa
        price = 60, -- PREÇO Dessa Caixa

        itensList = { -- Itens das Caixas

            {
                rarity = "uncommon", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "money", -- INDEX Que vai passar no execute abaixo
                name = "Money", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 50000, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveMoney(source, user_id, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "celular", -- INDEX Que vai passar no execute abaixo
                name = "Celular", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "mochila", -- INDEX Que vai passar no execute abaixo
                name = "Mochila", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 10, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "epic", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "radio", -- INDEX Que vai passar no execute abaixo
                name = "Radio", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "lockpick", -- INDEX Que vai passar no execute abaixo
                name = "Lockpick", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "uncommon", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "skate", -- INDEX Que vai passar no execute abaixo
                name = "Skate", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },
            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "repairkit", -- INDEX Que vai passar no execute abaixo
                name = "Kit Reparo", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },
            {
                rarity = "epic", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "algemas", -- INDEX Que vai passar no execute abaixo
                name = "Algemas", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "uncommon", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "roupas", -- INDEX Que vai passar no execute abaixo
                name = "Roupas", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
                index = "corda", -- INDEX Que vai passar no execute abaixo
                name = "Corda", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },
        }
    },

    { -- CAIXA LENDARIA
        crate = "Lendaria", -- Nome da Caixa
        weebhook = "https://discord.com/api/webhooks/1318227786695053363/jGSvBnpymqvHTY3hZwePHlmI1aEEflK5QXn15a4t41zjX-pVMrFN8vPeoJVsGVLBubG3", -- WEEBHOOK Dessa Caixa
        price = 50, -- PREÇO Dessa Caixa

        itensList = { -- Itens das Caixas

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "t20", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "T20", -- Nome da Recompensa
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "instagram", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Verificado Instagram", -- Nome da Recompensa
                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveGroup(source, user_id, "Verificado")
                end,
            },

            
           --{
           --    rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

           --    index = "vipdiamante", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
           --    name = "Vip Diamante", -- Nome da Recompensa
           --    type = 'other', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
           --    amount = 1, -- Quantidade da Recompensa

           --    execute = function(source, user_id, index, amount)
           --        Config.payments.giveGroup(source, user_id, "vipdiamante")
           --    end,
           --},

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "WEAPON_SPECIALCARBINE_MK2", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "G3", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "safira", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Safira", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 200, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "uncommon", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "amoxilina", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Amoxilina", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 30, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "metanfetamina", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Metanfetamina", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 100, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "lsd", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "LSD", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 150, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "body_armor", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Colete", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 5, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "dirty_money", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Dinheiro Sujo", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 500000, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },
        }
    }, 

    { -- CAIXA MAGNIFICA
        crate = "Magnifica", -- Nome da Caixa
        weebhook = "https://discord.com/api/webhooks/1318228221094920253/jno6ax1dvtl_8tQVT8BiYr10xwZPy9w2UXJ4Wnp9_7a0DzxKK0yN5VYjG5NHotEF1lyE", -- WEEBHOOK Dessa Caixa
        price = 50, -- PREÇO Dessa Caixa

        itensList = { -- Itens das Caixas

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "furia", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Furia", -- Nome da Recompensa
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "instagram", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Verificado Instagram", -- Nome da Recompensa
                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveGroup(source, user_id, "Verificado")
                end,
            },

            
           -- {
           --     rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
--
           --     index = "vipruby", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
           --     name = "Vip Ruby", -- Nome da Recompensa
           --     type = 'other', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
           --     amount = 1, -- Quantidade da Recompensa
--
           --     execute = function(source, user_id, index, amount)
           --         Config.payments.giveCar(source, user_id, "vipruby")
           --     end,
           -- },

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "WEAPON_SPECIALCARBINE_MK2", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Parafal", -- Nome da Recompensa
                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "rubi", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Rubi", -- Nome da Recompensa
                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 200, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "uncommon", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "bandagem", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Bandagem", -- Nome da Recompensa
                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 20, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "heroina", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "heroina", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 100, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "uncommon", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "camisinha", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Camisinha", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 20, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "body_armor", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Colete", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 5, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "dirty_money", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Dinheiro Sujo", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 1000000, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },
        }
    }, 

    { -- CAIXA Fantastica
        crate = "Fantastica", -- Nome da Caixa
        weebhook = "https://discord.com/api/webhooks/1318228356612886629/PctBpXskJzlAAaV8KEeKxRlKqWlgJQBGKBH2VEfEH-3SEXf6OGUdL3LyuglMoSkQek7S", -- WEEBHOOK Dessa Caixa
        price = 50, -- PREÇO Dessa Caixa

        itensList = { -- Itens das Caixas

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "krieger", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Krieger", -- Nome da Recompensa
                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "instagram", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Verificado Instagram", -- Nome da Recompensa
                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS [ car, item, others ]
                amount = 1, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveGroup(source, user_id, "Verificado")
                end,
            },

            
           -- {
           --     rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
--
           --     index = "vipruby", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
           --     name = "Vip Ruby", -- Nome da Recompensa
           --     type = 'other', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
           --     amount = 1, -- Quantidade da Recompensa
--
           --     execute = function(source, user_id, index, amount)
           --         Config.payments.giveGroup(source, user_id, "vipruby")
           --     end,
           -- },

            --{
            --    rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
--
            --    index = "WEAPON_BULLPUPRIFLE", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
            --    name = "Bullpup", -- Nome da Recompensa
            --    type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
            --    amount = 1, -- Quantidade da Recompensa
--
            --    execute = function(source, user_id, index, amount)
            --        Config.payments.giveItem(source, user_id, "WEAPON_BULLPUPRIFLE")
            --    end,
            --},

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "ferro", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Ferro", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 200, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "uncommon", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "energetico", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Energetico", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 20, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "morfina", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Morfina", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 100, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "uncommon", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "agua", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Agua", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 40, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "rare", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "attachs", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Attachs", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 5, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveGroup(source, user_id, "attachs")
                end,
            },

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                index = "dirty_money", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Dinheiro Sujo", -- Nome da Recompensa
                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                amount = 1500000, -- Quantidade da Recompensa

                execute = function(source, user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },
        }
    }, 
}

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG CAIXA DE COINS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.cratesCoins = { -- Todas que vao ser usada por [ Coins ] 
    { -- CAIXA DE PACOTES VIPS
        crate = "Caixa da Maldade", -- Nome da Caixa
        weebhook = "https://discord.com/api/webhooks/1318228480877662208/3ccMrkOTMBjCibR94_c2Nss2eb7QbPJD4-4I-bSU-1Cf37h41v63riVcHChXS4K7Eblo", -- WEEBHOOK Dessa Caixa
        price = 50, -- PREÇO Dessa Caixa

        itensList = { -- Itens das Caixas
         
            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "VipPrata", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "VIP Prata", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveGroup(source, user_id, 'VipPrata')
                    Config.payments.giveCar(source, user_id, 'adder')
                    Config.payments.giveMoney(source, user_id, 5000)
                end,
            },        
            
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "VipLendario", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "VIP Lendario", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveGroup(source, user_id, 'VipLendario')
                    Config.payments.giveCar(source, user_id, 't20')
                    Config.payments.giveMoney(source, user_id, 500000)
                end,
            },       
           
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "urus", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Lamborghini Urus", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "pendrive", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Pendrive", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    
            
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "440i", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "BMW 440i", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "tornado5", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Tornado 5", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "c4", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "C4", -- Nome da Recompensa
                amount = 5, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "WEAPON_COMBATPDW", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Pdw", -- Nome da Recompensa
                amount = 2, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "heroina", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "heroina", -- Nome da Recompensa
                amount = 500, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "hakuchou2", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Hakuchou", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    
            
        }
    },

    { -- CAIXA DE PACOTES VIPS
        crate = "Caixa de Pandora", -- Nome da Caixa
        weebhook = "https://discord.com/api/webhooks/1318228480877662208/3ccMrkOTMBjCibR94_c2Nss2eb7QbPJD4-4I-bSU-1Cf37h41v63riVcHChXS4K7Eblo", -- WEEBHOOK Dessa Caixa
        price = 50, -- PREÇO Dessa Caixa

        itensList = { -- Itens das Caixas
        
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "VipOuro", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "VIP Ouro", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveGroup(source, user_id, 'VipOuro')
                    Config.payments.giveMoney(source, user_id, 5000)
                end,
            },        
            
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "evo10", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Lancer Evolution", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveGroup(source, user_id, 'VipLendario')
                    Config.payments.giveCar(source, user_id, 't20')
                    Config.payments.giveMoney(source, user_id, 500000)
                end,
            },       
        
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "havok", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "havok", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "pendrive", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Pendrive", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    
            
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "mgt", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Mustang", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "gsrx", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Suzuki GSXR1000", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "lockpick", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "lockpick", -- Nome da Recompensa
                amount = 15, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "WEAPON_ASSAULTRIFLE_MK2", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "MK2", -- Nome da Recompensa
                amount = 5, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "WEAPON_COMBATMG", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Combat MG", -- Nome da Recompensa
                amount = 2, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "lectro", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Lectro", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    
            
        }
    },

    { -- CAIXA DE PACOTES VIPS
        crate = "Caixa do Madruga", -- Nome da Caixa
        weebhook = "https://discord.com/api/webhooks/1318228480877662208/3ccMrkOTMBjCibR94_c2Nss2eb7QbPJD4-4I-bSU-1Cf37h41v63riVcHChXS4K7Eblo", -- WEEBHOOK Dessa Caixa
        price = 50, -- PREÇO Dessa Caixa

        itensList = { -- Itens das Caixas
        
          --  {
          --      rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]
--
          --      type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
          --      index = "VipRuby", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
          --      name = "VIP Ruby", -- Nome da Recompensa
          --      amount = 1, -- Quantidade da Recompensa
--
          --      execute = function(user_id, index, amount)
          --          Config.payments.giveGroup(source, user_id, 'VipRuby')
          --          Config.payments.giveCar(source, user_id, 'zentorno')
          --          Config.payments.giveMoney(source, user_id, 50000)
          --      end,
          --  },        
            
          -- {
          --     rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

          --     type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
          --     index = "VipLendario", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
          --     name = "VIP Lendario", -- Nome da Recompensa
          --     amount = 1, -- Quantidade da Recompensa

          --     execute = function(user_id, index, amount)
          --         Config.payments.giveGroup(source, user_id, 'VipLendario')
          --         Config.payments.giveCar(source, user_id, 't20')
          --         Config.payments.giveMoney(source, user_id, 500000)
          --     end,
          -- },       
        
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "zentorno", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "zentorno", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "c4", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "c4", -- Nome da Recompensa
                amount = 10, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    
            
            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "amggt63s", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Mercedes Amg GT63", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "velociraptor", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Ranger Velociraptor 6X6", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "common", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "lockpick", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "lockpick", -- Nome da Recompensa
                amount = 15, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "WEAPON_COMBATPDW", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Pdw", -- Nome da Recompensa
                amount = 2, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "maconha", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "maconha", -- Nome da Recompensa
                amount = 500, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveItem(source, user_id, index, amount, true)
                end,
            },    

            {
                rarity = "legendary", --  DIFICULDADE DESSE ITEM [ uncommon, common, rare, epic, legendary ]

                type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
                index = "hakuchou2", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
                name = "Hakuchou", -- Nome da Recompensa
                amount = 1, -- Quantidade da Recompensa

                execute = function(user_id, index, amount)
                    Config.payments.giveCar(source, user_id, index, amount, true)
                end,
            },    
            
        }
    },
}

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG LOJA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config.store = { -- Loja
    {
        index = "VipPrata", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
        name = "VIP Prata", -- Nome da Recompensa
        type = 'others', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
        amount = 500,
        
        payment_type = 'points', -- coins/points
        payment_value = 5000, -- valor do item

        execute = function(user_id, index, amount)
            Config.payments.giveGroup(source, user_id, 'Prata')
            Config.payments.giveCar(source, user_id, 'adder')
            Config.payments.giveMoney(source, user_id, 5000)
        end,
    },        

    {
        index = "mochila", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
        name = "Mochila", -- Nome da Recompensa
        type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
        amount = 5, -- Quantidade da Recompensa
        
        payment_type = 'coins', -- coins/points
        payment_value = 25, -- valor do item

        execute = function(user_id, index, amount)
            Config.payments.giveItem(source, user_id, index, amount)
        end,
    },     

    {
        index = "t20", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
        name = "T20", -- Nome da Recompensa
        type = 'car', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
        amount = 1, -- Quantidade da Recompensa
        
        payment_type = 'coins', -- coins/points
        payment_value = 400, -- valor do item

        execute = function(user_id, index, amount)
            Config.payments.giveCar(source, user_id, index, amount)
        end,
    },
    
    {
        index = "WEAPON_ASSAULTRIFLE", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
        name = "Ak-47", -- Nome da Recompensa
        type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
        amount = 1, -- Quantidade da Recompensa
        
        payment_type = 'coins', -- coins/points
        payment_value = 300, -- valor do item

        execute = function(user_id, index, amount)
            Config.payments.giveItem(source, user_id, index, amount)
        end,
    }, 

    {
        index = "lockpick", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
        name = "Lockpick", -- Nome da Recompensa
        type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
        amount = 1, -- Quantidade da Recompensa
        
        payment_type = 'coins', -- coins/points
        payment_value = 300, -- valor do item

        execute = function(user_id, index, amount)
            Config.payments.giveItem(source, user_id, index, amount)
        end,
    }, 

    {
        index = "vipouro", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
        name = "Vip Ouro", -- Nome da Recompensa
        type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
        amount = 1, -- Quantidade da Recompensa
        
        payment_type = 'points', -- coins/points
        payment_value = 7000, -- valor do item

        execute = function(user_id, index, amount)
            Config.payments.giveGroup(source, user_id, index, amount)
        end,
    }, 

    {
        index = "camisinha", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
        name = "Camisinha", -- Nome da Recompensa
        type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
        amount = 1, -- Quantidade da Recompensa
        
        payment_type = 'coins', -- coins/points
        payment_value = 300, -- valor do item

        execute = function(user_id, index, amount)
            Config.payments.giveItem(source, user_id, index, amount)
        end,
    }, 

    {
        index = "WEAPON_KNIFE", -- INDEX Que vai passar no execute abaixo e tambem ser utilizado para identificar a imagem.
        name = "Faca", -- Nome da Recompensa
        type = 'item', -- PARA O SCRIPT IDENTIFICAR A URL DAS IMAGENS DOS VEICULOS [ car, item, others ]
        amount = 1, -- Quantidade da Recompensa
        
        payment_type = 'coins', -- coins/points
        payment_value = 300, -- valor do item

        execute = function(user_id, index, amount)
            Config.payments.giveItem(source, user_id, index, amount)
        end,
    }, 
}

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if IsDuplicityVersion() then
    -- COMANDOS
    RegisterCommand('addpoints', function(source,args)
        local user_id = vRP.getUserId(source)
        if user_id then
            if vRP.hasPermission(user_id, "admin.permissao") then
                local id = parseInt(args[1])
                if not id then return end
                id = parseInt(id)

                local amount = parseInt(args[2])
                if not amount then return end
                amount = parseInt(amount)

                if id <= 0 or amount <= 0 then return end
                
                box:updatePoints(id, box:getPoints(user_id) + amount, true)
                TriggerClientEvent("Notify",source,"sucesso","Você adicionou "..amount.." points no ID: "..id..".")
            end
        end
    end)

    RegisterCommand('addcoins', function(source,args)
        local user_id = vRP.getUserId(source)
        if user_id then
            if vRP.hasPermission(user_id, "admin.permissao") then
                local id = parseInt(args[1])
                if not id then return end
                id = parseInt(id)

                local amount = parseInt(args[2])
                if not amount then return end
                amount = parseInt(amount)

                if id <= 0 or amount <= 0 then return end
                
                box:updateCoins(id, box:getCoins(user_id) + amount, true)
                TriggerClientEvent("Notify",source,"sucesso","Você adicionou "..amount.." coins no ID: "..id..".")
            end
        end
    end)

    RegisterCommand('coins', function(source,args)
        local user_id = vRP.getUserId(source)
        if user_id then
            if vRP.hasPermission(user_id, "admin.permissao") then
                local id = parseInt(args[1])
                if not id then return end
                
                TriggerClientEvent("Notify",source,"sucesso","Total de Coins ".. user:getCoins(id) .." .")
            end
        end
    end)

    RegisterCommand('points', function(source,args)
        local user_id = vRP.getUserId(source)
        if user_id then
            if vRP.hasPermission(user_id, "admin.permissao") then
                local id = parseInt(args[1])
                if not id then return end
                
                TriggerClientEvent("Notify",source,"sucesso","Total de Coins ".. user:getPoints(id) .." .")
            end
        end
    end)
    
    -- EXPORTS
    exports('addCoins', function(id, amount) -- como utilizar: exports.mirtin_box:addCoins(user_id, 100)
        box:updateCoins(id, box:getCoins(id) + amount, true)
    end)

    exports('addPoints', function(id, amount) -- como utilizar: exports.mirtin_box:addPoints(user_id, 100)
        box:updatePoints(id, box:getPoints(id) + amount, true)
    end)

    -- FUNCTIONS
    function getUserId(source)
        return vRP.getUserId(source)
    end

    function getUserIdentity(user_id)
        return vRP.getUserIdentity(user_id)
    end

    AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
        TriggerEvent('mirtin_box:playerSpawn', user_id, source, first_spawn)
    end)

    AddEventHandler("playerDropped", function()
        local source = source
        local user_id = vRP.getUserId(source)
        if not user_id then return end

        TriggerEvent('mirtin_box:playerDropped', source, user_id)
    end)
end