Config = {
    DebugMode = false, -- DEBUGS DE PRINTS

    delayThread = 3000, -- DELAY DA THREAD QUE CONTABILIZA OS PONTOS DA DOMINACAO ( MEXA SO SE TIVER NECESSIDADE )
    minHealth = 101, -- MINIMO DE VIDA DO SEU SERVIDOR
    saveZones = false, -- SALVAR OS DADOS NO BANCO DE DADOS ( MANTER AS AREAS DOMINADAS SE REINICIAR O SERVIDOR OU SCRIPT )

    CreateModePerm = "admin.permissao", -- Permissao para o comando /create_zone, feito para facilitar a desenhar a zona de dominação.
    debugPoly = true, -- DEBUG DAS coordsZone da dominação. ( ATIVAR APENAS QUANDO ESTIVER CRIANDO AS AREAS )

    Zones = {
        
        { -- INICIO DE UMA ZONA

            name = "MUNIÇÃO DOMINAÇÃO", -- NOME DA ZONA DE DOMINACAO

            coords = vec3(-126.52,-2375.39,9.32), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
            coordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
                vec3(-116.18,-2379.0,9.32),
                vec3(-211.68,-2378.41,9.32),
                vec3(-212.37,-2353.18,9.32),
                vec3(-121.6,-2354.53,9.32)
            },

            permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
                { org = "MorroDoChapadao", permission = "perm.chapadao" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Buenavista", permission = "perm.buenavista" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Franca", permission = "perm.franca" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Grota", permission = "perm.grota" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "WEB", permission = "perm.web" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Vanilla", permission = "perm.redline" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
            },
            -- fala pra eles dominar ok
            dominationConfig = {
                dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
                vehicles = false, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
                playerPoints = 1, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
                totalPoints = 1500, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
                cooldown = 60, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
            },

            avaliableWeapons = {
                ["Branca"] = false,
            },

            blip = { -- CONFIGURACAO DO BLIP DO MAPA
                display = true, -- ATIVAR/DESATIVAR BLIP NO MAPA PARA MOSTRAR ZONA DOMINADA POR XXX
                blipId = 84, -- ID DO BLIP
                blipColor = 1, -- ID DA COR
                blipScale = 0.8, -- TAMANHO DO BLIP
                blipName = "[%s] Dominado Por: %s" -- NOME DO BLIP
            },

            paymentWinner = function(org, permission) -- Caso queira dar recompensas a parte para jogadores da organizacao
            -------- EXEMPLO --------
             local users = vRP.getUsersByPermission(permission)
                for source,user_id in pairs(users) do
                    async(function()
                        --vRP.giveInventoryItem(user_id, "pecadearma", 30) -- GIVANDO DINHEIRO NO INVENTARIO
                        vRP.giveInventoryItem(user_id, "dirty_money",250000 ) -- GIVANDO DINHEIRO NO INVENTARIO
                        vRP.giveInventoryItem(user_id, "c4",1 ) -- GIVANDO DINHEIRO NO INVENTARIO
                    end)
                end
            ------- FIM EXEMPLO ------

            end,
            
        }, -- FIM DE UMA ZONA

        { -- INICIO DE UMA ZONA

            name = "ARMAS DOMINAÇÃO", -- NOME DA ZONA DE DOMINACAO

            coords = vec3(2654.25,1692.76,24.48), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
            coordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
                vec3(2694.64,1651.17,24.62),
                vec3(2650.55,1651.14,24.92),
                vec3(2649.46,1724.54,24.48),
                vec3(2693.1,1725.09,24.48),
            },

            permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
                { org = "Helipa", permission = "perm.helipa" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Jardimnovomundo", permission = "perm.jardimnovomundo" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Mafia", permission = "perm.mafia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Lagunapark", permission = "perm.lagunapark" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "MacacoMorro", permission = "perm.macaco" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Veracruz", permission = "perm.veracruz" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Yakuza", permission = "perm.yakuza" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
            },
            -- fala pra eles dominar ok
            dominationConfig = {
                dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
                vehicles = false, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
                playerPoints = 1, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
                totalPoints = 1500, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
                cooldown = 60, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
            },

            avaliableWeapons = {
                ["Branca"] = true,
            },

            blip = { -- CONFIGURACAO DO BLIP DO MAPA
                display = true, -- ATIVAR/DESATIVAR BLIP NO MAPA PARA MOSTRAR ZONA DOMINADA POR XXX
                blipId = 84, -- ID DO BLIP
                blipColor = 1, -- ID DA COR
                blipScale = 0.5, -- TAMANHO DO BLIP
                blipName = "[%s] Dominado Por: %s" -- NOME DO BLIP
            },

            paymentWinner = function(org, permission) -- Caso queira dar recompensas a parte para jogadores da organizacao
            -------- EXEMPLO --------
             local users = vRP.getUsersByPermission(permission)
                for source,user_id in pairs(users) do
                    async(function()
                        --vRP.giveInventoryItem(user_id, "pecadearma", 30) -- GIVANDO DINHEIRO NO INVENTARIO
                        vRP.giveInventoryItem(user_id, "dirty_money",250000 ) -- GIVANDO DINHEIRO NO INVENTARIO
                        vRP.giveInventoryItem(user_id, "c4",1 ) -- GIVANDO DINHEIRO NO INVENTARIO
                    end)
                end
            ------- FIM EXEMPLO ------

            end,
            
        }, -- FIM DE UMA ZONA

        { -- INICIO DE UMA ZONA

            name = "DESMANCHE DOMINAÇÃO", -- NOME DA ZONA DE DOMINACAO

            coords = vec3(2339.65,2570.1,47.72), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
            coordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
                vec3(2363.9,2525.98,46.66),
                vec3(2327.25,2503.6,46.51),
                vec3(2297.71,2521.32,46.61),
                vec3(2299.57,2547.95,46.66),
                vec3(2320.82,2619.96,46.69),
                vec3(2350.42,2630.06,46.66),
            },

            permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
                { org = "Grota", permission = "perm.grota" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "VilaCanaa", permission = "perm.vilacanaa" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "MacacoMorro", permission = "perm.macaco" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!
            },
            -- fala pra eles dominar ok
            dominationConfig = {
                dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
                vehicles = false, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
                playerPoints = 1, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
                totalPoints = 1500, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
                cooldown = 60, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
            },

            avaliableWeapons = {
                ["Branca"] = true,
            },

            blip = { -- CONFIGURACAO DO BLIP DO MAPA
                display = true, -- ATIVAR/DESATIVAR BLIP NO MAPA PARA MOSTRAR ZONA DOMINADA POR XXX
                blipId = 84, -- ID DO BLIP
                blipColor = 1, -- ID DA COR
                blipScale = 0.5, -- TAMANHO DO BLIP
                blipName = "[%s] Dominado Por: %s" -- NOME DO BLIP
            },

            paymentWinner = function(org, permission) -- Caso queira dar recompensas a parte para jogadores da organizacao
            -------- EXEMPLO --------
             local users = vRP.getUsersByPermission(permission)
                for source,user_id in pairs(users) do
                    async(function()
                        --vRP.giveInventoryItem(user_id, "pecadearma", 30) -- GIVANDO DINHEIRO NO INVENTARIO
                        vRP.giveInventoryItem(user_id, "dirty_money",250000 ) -- GIVANDO DINHEIRO NO INVENTARIO
                        vRP.giveInventoryItem(user_id, "c4",1 ) -- GIVANDO DINHEIRO NO INVENTARIO
                    end)
                end
            ------- FIM EXEMPLO ------

            end,
            
        }, -- FIM DE UMA ZONA

        { -- INICIO DE UMA ZONA

        name = "ORGS LEGAL DOMINAÇÃO", -- NOME DA ZONA DE DOMINACAO

        coords = vec3(645.1,635.78,129.05), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
        coordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
            vec3(586.46,607.44,128.9),
            vec3(600.66,650.29,128.9),
            vec3(645.71,664.21,128.9),
            vec3(665.07,630.82,128.9),
            vec3(647.97,581.69,129.04),
        },

        permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
        { org = "Rotam", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Civil", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Militar", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Militar01", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Prf", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Competcar", permission = "perm.competcar" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Deboxe", permission = "perm.deboxe" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Abelvolks", permission = "perm.abelvolks" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Bombeiro", permission = "perm.hospital" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        { org = "Hospital", permission = "perm.hospital" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        },
        -- fala pra eles dominar ok
        dominationConfig = {
            dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
            vehicles = false, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
            playerPoints = 1, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
            totalPoints = 150, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
            cooldown = 120, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
        },

        avaliableWeapons = {
            ["Branca"] = true,
        },

        blip = { -- CONFIGURACAO DO BLIP DO MAPA
            display = true, -- ATIVAR/DESATIVAR BLIP NO MAPA PARA MOSTRAR ZONA DOMINADA POR XXX
            blipId = 84, -- ID DO BLIP
            blipColor = 1, -- ID DA COR
            blipScale = 0.5, -- TAMANHO DO BLIP
            blipName = "[%s] Dominado Por: %s" -- NOME DO BLIP
        },

        paymentWinner = function(org, permission) -- Caso queira dar recompensas a parte para jogadores da organizacao
        -------- EXEMPLO --------
         local users = vRP.getUsersByPermission(permission)
            for source,user_id in pairs(users) do
                async(function()
                    --vRP.giveInventoryItem(user_id, "pecadearma", 30) -- GIVANDO DINHEIRO NO INVENTARIO
                    vRP.giveInventoryItem(user_id, "money",150000 ) -- GIVANDO DINHEIRO NO INVENTARIO
                    vRP.giveInventoryItem(user_id, "bandagem",1 ) -- GIVANDO DINHEIRO NO INVENTARIO
                end)
            end
        ------- FIM EXEMPLO ------

        end,
        
    }, -- FIM DE UMA ZONA


        ---permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
        ---        { org = "Rotam", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---        { org = "Civil", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---        { org = "Militar", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---        { org = "Prf", permission = "perm.policia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---        { org = "Deboxe", permission = "perm.deboxe" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---        { org = "Abelvolks", permission = "perm.abelvolks" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---        { org = "Bombeiro", permission = "perm.hospital" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---        { org = "Hospital", permission = "perm.hospital" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---    },
        
        ---{ -- INICIO DE UMA ZONA
        ---name = "Municao", -- NOME DA ZONA DE DOMINACAO
---
        ---coords = vec3(129.74,-3108.66,5.91), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
        ---coordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
        ---        vec3(184.04,-2958.9,6.09),
        ---        vec3(179.81,-3339.01,5.77),
        ---        vec3(108.27,-3338.57,6.0),
        ---        vec3(107.86,-2961.54,6.01),
        ---        vec3(184.06,-2958.74,6.1)
        ---    },
---
        ---permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
        ---    { org = "Buenavista", permission = "perm.buenavista" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---    { org = "Caveira", permission = "perm.caveira" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---    { org = "Medelin", permission = "perm.medelin" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---    { org = "Grota", permission = "perm.grota" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
        ---},
---
        ---dominationConfig = {
        ---    dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
        ---    vehicles = false, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
        ---    playerPoints = 1, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
        ---    totalPoints = 1000, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
        ---    cooldown = 60, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
        ---},
---
        ---avaliableWeapons = {
        ---    ["Pistola"] = true,
        ---    ["Metralhadora"] = true,
        ---    ["Smg"] = true,
        ---    ["Fuzil"] = true,
        ---    ["Sniper"] = true,
        ---    ["Shotgun"] = true,
        ---},
---
        ---blip = { -- CONFIGURACAO DO BLIP DO MAPA
        ---    display = true, -- ATIVAR/DESATIVAR BLIP NO MAPA PARA MOSTRAR ZONA DOMINADA POR XXX
        ---    blipId = 84, -- ID DO BLIP
        ---    blipColor = 1, -- ID DA COR
        ---    blipScale = 0.5, -- TAMANHO DO BLIP
        ---    blipName = "[%s] Dominado Por: %s" -- NOME DO BLIP
        ---},
---
        ---paymentWinner = function(org, permission) -- Caso queira dar recompensas a parte para jogadores da organizacao
        ----------- EXEMPLO --------
        --- local users = vRP.getUsersByPermission(permission)
        ---    for source,user_id in pairs(users) do
        ---        async(function()
        ---            vRP.giveInventoryItem(user_id, "capsulas", 30) -- GIVANDO DINHEIRO NO INVENTARIO
        ---            vRP.giveInventoryItem(user_id, "polvora", 30) -- GIVANDO DINHEIRO NO INVENTARIO
        ---        end)
        ---    end
        ---------- FIM EXEMPLO ------

 --       end,
 --       
 --   }, 

--   { -- INICIO DE UMA ZONA
--   name = "Lavagem", -- NOME DA ZONA DE DOMINACAO
--
--   coords = vec3(-220.02,-1998.79,27.75), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
--   coordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
--       vec3(-210.26,-1999.92,27.63),
--       vec3(-221.81,-1941.1,27.76),
--       vec3(-291.88,-1876.44,27.74),
--       vec3(-403.3,-1877.56,29.48),
--       vec3(-427.0,-1990.55,28.66),
--       vec3(-283.8,-2076.35,29.39),
--       vec3(-210.23,-2000.15,27.57)
--   },
--
--   permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
--       { org = "Cassino", permission = "perm.cassino" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--       { org = "Vinhedo", permission = "perm.vinhedo" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--       { org = "Garavelo", permission = "perm.garavelo" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--   },
--
--   dominationConfig = {
--       dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
--       vehicles = false, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
--       playerPoints = 1, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
--       totalPoints = 1000, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
--       cooldown = 60, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
--   },
--
--   avaliableWeapons = {
--       ["Pistola"] = true,
--       ["Metralhadora"] = true,
--       ["Smg"] = true,
--       ["Fuzil"] = true,
--       ["Sniper"] = true,
--       ["Shotgun"] = true,
--   },
--
--   blip = { -- CONFIGURACAO DO BLIP DO MAPA
--       display = true, -- ATIVAR/DESATIVAR BLIP NO MAPA PARA MOSTRAR ZONA DOMINADA POR XXX
--       blipId = 84, -- ID DO BLIP
--       blipColor = 1, -- ID DA COR
--       blipScale = 0.5, -- TAMANHO DO BLIP
--       blipName = "[%s] Dominado Por: %s" -- NOME DO BLIP
--   },
--
--   paymentWinner = function(org, permission) -- Caso queira dar recompensas a parte para jogadores da organizacao
--   -------- EXEMPLO --------
--    local users = vRP.getUsersByPermission(permission)
--       for source,user_id in pairs(users) do
--           async(function()
--               vRP.giveInventoryItem(user_id, "l-alvejante", 30) -- GIVANDO DINHEIRO NO INVENTARIO
--               vRP.giveInventoryItem(user_id, "m-tecido", 30) -- GIVANDO DINHEIRO NO INVENTARIO
--               vRP.giveInventoryItem(user_id, "m-malha", 30) -- GIVANDO DINHEIRO NO INVENTARIO
--           end)
--       end
--   ------- FIM EXEMPLO ------
--
--   end,
--   
--, 
--
-- -- INICIO DE UMA ZONA
--ame = "Drogas", -- NOME DA ZONA DE DOMINACAO
--
--oords = vec3(2750.73,1492.49,24.51), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
--oordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
--   vec3(2648.72,1726.06,24.49),
--   vec3(2647.07,1343.87,24.52),
--   vec3(2794.61,1336.74,31.48),
--   vec3(2911.82,1627.87,21.84),
--   vec3(2854.27,1726.12,27.08),
--   vec3(2645.02,1725.69,24.52)
--,
--
--ermissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
--   { org = "Coreia", permission = "perm.coreia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--   { org = "EmilioPovoa", permission = "perm.emiliopovoa" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--   { org = "Turquia", permission = "perm.turquia" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--   { org = "Parqueoeste", permission = "perm.parqueoeste" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--   { org = "QuebraCaixote", permission = "perm.quebracaixote" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--   { org = "Veracruz", permission = "perm.veracruz" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--   { org = "Tiradentes", permission = "perm.tiradentes" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--   { org = "Novaesperanca", permission = "perm.novaesperanca" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
--,
--
--ominationConfig = {
--   dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
--   vehicles = false, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
--   playerPoints = 1, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
--   totalPoints = 1000, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
--   cooldown = 60, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
--,
--
--valiableWeapons = {
--   ["Pistola"] = true,
--   ["Metralhadora"] = true,
--   ["Smg"] = true,
--   ["Fuzil"] = true,
--   ["Sniper"] = true,
--   ["Shotgun"] = true,
--,
--
--lip = { -- CONFIGURACAO DO BLIP DO MAPA
--   display = true, -- ATIVAR/DESATIVAR BLIP NO MAPA PARA MOSTRAR ZONA DOMINADA POR XXX
--   blipId = 84, -- ID DO BLIP
--   blipColor = 1, -- ID DA COR
--   blipScale = 0.5, -- TAMANHO DO BLIP
--   blipName = "[%s] Dominado Por: %s" -- NOME DO BLIP
--,
--
--aymentWinner = function(org, permission) -- Caso queira dar recompensas a parte para jogadores da organizacao
------- EXEMPLO --------
--local users = vRP.getUsersByPermission(permission)
--   for source,user_id in pairs(users) do
--       async(function()
--           vRP.giveInventoryItem(user_id, "dirty_money", 10000) -- GIVANDO DINHEIRO NO INVENTARIO
--       end)
--   end
------ FIM EXEMPLO ------
--
--nd,
--
--, 

        
    },

    Lang = {
        ['NotPermiss'] = function(source) TriggerClientEvent("Notify", source, "negado","Sua Organização não possui permissão para essa area.", 5000)  end,
        ['ZoneCooldown'] = function(source, time) TriggerClientEvent("Notify", source, "negado","Aguarde <b> "..time.." </b> para dominar essa area.", 15000)  end,
        ['YourZone'] = function(source) TriggerClientEvent("Notify", source, "negado","Está zona já e de sua organização", 5000)  end,
        ['InitZone'] = function(org, area) TriggerClientEvent('chatMessage', -1, "^1[DOMINACAO] ^0A Organização ^2"..org.."^0 acabou de iniciar uma zona de conflito em: ^2 "..area) end,
        ['ResumeZone'] = function(org, area) TriggerClientEvent('chatMessage', -1, "^1[DOMINACAO] ^0A Organização ^2"..org.."^0 acabou está retomando a zona de conflito em: ^2 "..area) end,
        ['WinnerZone'] = function(org, area) TriggerClientEvent('chatMessage', -1, "^1[DOMINACAO] ^0A Organização ^2"..org.."^0 venceu a zona de conflito: ^2 "..area) end,
        
        ['NoPermitVehicles'] = function() TriggerEvent("Notify", "negado","Não é permitido o trafego de veiculos nessa zona.", 15000)  end,
        ['NoPermitWeapon'] = function(list) TriggerEvent("Notify", "negado","Este tipo de arma não é permitido nessa dominação.<br><br> Permitidas: "..list, 15000)  end,
        ['enterZone'] = function() TriggerEvent("Notify", "sucesso","Você entrou na zona de dominação...", 15000)  end,
        ['leaveZone'] = function() TriggerEvent("Notify", "negado","Você saiu da zona de dominação...", 15000)  end
    },

    Nui = {
        ScoreboardPosition = {
            top = 0,
            left = 2,
            right = nil,
            bottom = 0
        }, -- 0 a 100 || os lados que não forem ficar, coloque nil
        
        KillFeedPosition = {
            top = 23,
            left = nil,
            right = 2,
            bottom = nil
        } -- 0 a 100 || os lados que não forem ficar, coloque nil
    }
}


if SERVER then
    function hasPermission(user_id, permission)
        return vRP.hasPermission(user_id, permission)
    end

    function getUserIdentity(user_id)
        local identity = vRP.getUserIdentity(user_id)
        return identity
    end

    function getUserSource(user_id)
        return vRP.getUserSource(user_id)
    end
else
    DominationBlipConfig = function(coords, name, domined) -- BLIP DA DOMINACAO CONFIG
        DrawText3Ds(coords.x, coords.y, coords.z, "~r~[".. name .."] ~n~ ~w~Pressione ~b~[E]~w~ para iniciar a dominacao. ~n~ Controlado por: ~b~"..domined)
        DrawMarker(27, coords.x, coords.y, coords.z-0.95,0,0,0,0, 0,0,1.5,1.5,1.5, 0,179,255, 180,0,0,0,1)
    end

    function DrawText3Ds(x,y,z,text)
        local onScreen,_x,_y = World3dToScreen2d(x,y,z)
        SetTextFont(4)
        SetTextScale(0.35,0.35)
        SetTextColour(255,255,255,200)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end

    function drawTxt(text, font, x, y, scale, r, g, b, a)
        SetTextFont(font)
        SetTextScale(scale, scale)
        SetTextColour(r, g, b, a)
        SetTextOutline()
        SetTextCentre(1)
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(x, y)
    end
end

--[[ 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUTORIAL
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    - Como verificar se o jogador tem alguma zona dominada?

    Este exemplo é apenas para SERVER-SIDE:
    local status,table = exports.mirtin_dominacao:GetUserDominationZone(user_id)

    Retorno da function acima:
    status = boolean [ true or false ]
    table = table [ zone, org ]

    Se o status == true, você/sua organização dominou uma zona
    Se o status == true, a table sera retornada da seguinte forma: table.org = Sua Organização, table.zone = Zona que sua organização dominou.

    Se o status == false, você/sua organização dominou não dominou nenhuma zona
    Se o status == false, a table sera retornada vazia {}

    Exemplo de um comando:

    RegisterCommand('dominei', function(source,args)
        local user_id = vRP.getUserId(source)
        if user_id then
            local status,table = exports.mirtin_dominacao:GetUserDominationZone(user_id)
            if status then
                print("Sua Organização: "..table.org.." Dominou a Area: "..table.zone)
            else
                print("Você não dominou nenhuma zona.")
            end
        end
    end)

    ]]