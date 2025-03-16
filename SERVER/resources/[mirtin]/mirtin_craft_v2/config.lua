Config = {
     images = 'http://191.96.81.87/inventario/', -- URL DAS SUAS IMAGENS
     storeLink = '',                                   -- LINK DA SUA LOJA
     dirtymoney = 'dirty_money', -- SPAWN DO DINHEIRO SUJO
  
     Tables = {
          ['Armas'] = {                                             -- INICIO DE UMA BANCADA, NUNCA REPETIR ESSE NOME
                craft = {                                             -- ZONA DE CRAFT 
                     {
                          item = 'WEAPON_SNSPISTOL_MK2',                  -- SPAWN DO ITEM
                          amount = 1,                                   -- Quantidade de item que vai receber por unidade selecionada.
                          itemTime = 60,                                -- 30 segundo(s) para a maquina concluir o craft.
                          requirePayment = false,                       -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                          givePayment = false,                          -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                          requires = {                                  -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 70 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 1 },
                               { item = "molas", amount = 10 },
                               { item = "metal",      amount = 10 },
                          }
                     },
                     {
                          item = 'WEAPON_PISTOL_MK2',                       -- SPAWN DO ITEM
                          amount = 1,                                   -- Quantidade de item que vai receber por unidade selecionada.
                          itemTime = 60,                                -- 30 segundo(s) para a maquina concluir o craft.
                          requirePayment = false,                       -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                          givePayment = false,                          -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                          requires = {                                  -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 120 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "molas", amount = 20 },
                               { item = "metal",      amount = 20 },
                          }
                     },
                     {
                          item = 'WEAPON_MACHINEPISTOL',                   -- SPAWN DO ITEM
                          amount = 1,                                  -- Quantidade de item que vai receber por unidade selecionada.
                          itemTime = 60,                               -- 30 segundo(s) para a maquina concluir o craft.
                          requirePayment = false,                      -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                          givePayment = false,                         -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 220 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "molas", amount = 30 },
                               { item = "metal",      amount = 30 },
                          }
                     },
                     {
                          item = 'WEAPON_SMG',                   -- SPAWN DO ITEM
                          amount = 1,                                  -- Quantidade de item que vai receber por unidade selecionada.
                          itemTime = 60,                               -- 30 segundo(s) para a maquina concluir o craft.
                          requirePayment = false,                      -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                          givePayment = false,                         -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 200 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "molas", amount = 20 },
                               { item = "metal",      amount = 20 },
                          }
                     },
                     {
                          item = 'WEAPON_ASSAULTRIFLE',                          -- SPAWN DO ITEM
                          amount = 1,                                  -- Quantidade de item que vai receber por unidade selecionada.
                          itemTime = 60,                               -- 30 segundo(s) para a maquina concluir o craft.
                          requirePayment = false,                      -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                          givePayment = false,                         -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 320 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "molas", amount = 45 },
                               { item = "metal",      amount = 45 },
                          }
                     },
                     {
                          item = 'WEAPON_ASSAULTRIFLE_MK2',                         -- SPAWN DO ITEM
                          amount = 1,                                  -- Quantidade de item que vai receber por unidade selecionada.
                          itemTime = 60,                               -- 30 segundo(s) para a maquina concluir o craft.
                          requirePayment = false,                      -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                          givePayment = false,                         -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 380 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "molas", amount = 50 },
                               { item = "metal",      amount = 50 },
                          }
                     },
                     {
                          item = 'WEAPON_SPECIALCARBINE_MK2',                      -- SPAWN DO ITEM
                          amount = 1,                                  -- Quantidade de item que vai receber por unidade selecionada.
                          itemTime = 60,                               -- 30 segundo(s) para a maquina concluir o craft.
                          requirePayment = false,                      -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                          givePayment = false,                         -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 420 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "molas", amount = 60 },
                               { item = "metal",      amount = 60 },
                          }
                     },
                },
 
                farm = { -- ZONA DE FARM
                     list = {
                          {
                               randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                               routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                    'NORTE',
                                    'SUL'
                               },
 
                               dangerRoute = {
                                    status = true,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                    percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                               },
                               dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                    status = true,       -- Se o sistema ta ativo ou não
                                    zone = 'Armas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                    bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                               },
                               itensList = {
                                    { item = "pecadearma",        minAmount = 15, maxAmount = 30, percentual = 100 }, -- CASO QUEIRA UM VALOR FIXO Colocar valor do minAmount igual do maxAmount
                                    { item = "molas",   minAmount = 8, maxAmount = 12, percentual = 100 },
                                    { item = "metal", minAmount = 8, maxAmount = 12, percentual = 100 }, -- CASO QUEIRA UM VALOR FIXO Colocar valor do minAmount igual do maxAmount
                                    { item = "gatilho",      minAmount = 1, maxAmount = 3, percentual = 100 },
                               },
                          },
                     },
                },

               delivery = {
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )

                              dangerRoute = {
                                   status = true,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 50, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },

                              itensList = {
                                   { item = "pecadearma", minAmount = 15, maxAmount = 15, type = 'ilegal', payment = 2000 }, -- ( TYPE legal = dinheiro normal, ilegal = dinheiro sujo) ( payment valor por unidade )
                              },
                         },
                    },
               },
 
               locations = {  
                    -- LOCALIZACOES DESSAS BANCADAS



                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'MACACOMORRO',
                         coords = vec3(-459.72,1547.8,407.28), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'MACACOMORRO'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "perm.macaco",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.macaco",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.macaco", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'CDA',
                         coords = vec3(1722.26,4734.88,42.12), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'CDA'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "cda.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "cda.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "cda.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Milicia',
                         coords = vec3(-27.85,2879.0,59.18), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Milicia'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "milicia.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "milicia.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "milicia.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Antares',
                         coords = vec3(279.46,6782.46,15.69), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Antares'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "antares.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "antares.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "antares.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Yakuza',
                         coords = vec3(255.62,3183.38,42.73), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Yakuza'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "yakuza.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "yakuza.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "yakuza.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Jacarezinho',
                         coords = vec3(-1048.64,-523.17,36.58), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Jacarezinho'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "jacarezinho.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "jacarezinho.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "jacarezinho.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Elements',
                         coords = vec3(-522.54,-2195.65,6.39), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Elements'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "elements.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "elements.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "elements.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Babilonia',
                         coords = vec3(-571.91,-1596.26,27.11), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Babilonia'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "babilonia.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "babilonia.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "babilonia.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Vidigal',
                         coords = vec3(-1298.0,-1612.4,4.09), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Vidigal'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "vidigal.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "vidigal.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "vidigal.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Colorado',
                         coords = vec3(1142.44,-1338.01,34.66), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Colorado'
                         },
                         amountSlots = 2,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "colorado.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "colorado.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "colorado.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },                     
               },
          }, -- FIM DE UMA BANCADA
 
          ['Municoes'] = {
               craft = {
                    {
                         item = 'AMMO_SNSPISTOL_MK2',      -- SPAWN DO ITEM
                         amount = 10,                            -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                         -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,                -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                   -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                           -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 50 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 100 },
                         }
                    },
                    {
                         item = 'AMMO_PISTOL_MK2',           -- SPAWN DO ITEM
                         amount = 10,                            -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                         -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,                -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                   -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                           -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 120 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 100 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_ASSAULTRIFLE',        -- SPAWN DO ITEM
                         amount = 10,                            -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                         -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,                -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                   -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                           -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 150 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 100 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_SMG',       -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 135 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 100 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_MACHINEPISTOL',              -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 140 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 100 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_ASSAULTRIFLE_MK2',             -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 190 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 100 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_SPECIALCARBINE_MK2',          -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 200 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 100 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
 
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Municao',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "capsulas", minAmount = 20, maxAmount = 25, percentual = 100 }, -- CASO QUEIRA UM VALOR FIXO Colocar valor do minAmount igual do maxAmount
                                   { item = "polvora", minAmount = 20, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },

               locations = { -- LOCALIZACOES DESSAS BANCADAS
                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Rocinha',
                         coords = vec3(2623.07,3246.43,55.25), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Rocinha'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "rocinha.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "rocinha.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "rocinha.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                   -- BLIP DO CHAO
                    },
                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Franca',
                         coords = vec3(-2416.97,1761.55,187.97), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Franca'
                         },
                         amountSlots = 5,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "perm.franca",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.franca",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.franca", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },
                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Amarelinho',
                         coords = vec3(1268.39,-1710.09,54.76), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Amarelinho'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "amarelinho.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "amarelinho.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "amarelinho.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                   -- BLIP DO CHAO
                    },

                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Dende',
                         coords = vec3(-415.22,2961.18,25.0), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Dende'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "dende.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "dende.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "dende.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                   -- BLIP DO CHAO
                    },

                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Bairro13',
                         coords = vec3(2039.36,3190.74,45.16), -- COORDENADAS DA BANCADA

                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Bairro13'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "bairro13.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "bairro13.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "bairro13.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                   -- BLIP DO CHAO
                    },

               },
          },
 
          ['Lavagem'] = {
               craft = {
                    {
                         item = 'money',                                 -- SPAWN DO ITEM
                         amount = 100000,                                -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 15,                                  -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,                         -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                            -- Caso Deseja Efetuar um  pagamento ao craftar este item .
 
                         requires = {                                    -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "dirty_money", amount = 115000 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "l-alvejante", amount = 100 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    }
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Lavagem',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "l-alvejante", minAmount = 10, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },

               locations = {                                  -- LOCALIZACOES DESSAS BANCADAS
                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Cassino',
                         coords = vec3(961.77,21.9,76.99), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Cassino'
                         },
                         amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "cassino.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "cassino.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "cassino.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                 -- BLIP DO CHAO
                    },

                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Bahamas',
                         coords = vec3(-1367.43,-625.46,30.31), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Bahamas'
                         },
                         amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "bahamas.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "bahamas.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "bahamas.permissao", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                 -- BLIP DO CHAO
                    },

                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Vanilla',
                         coords = vec3(94.44,-1294.08,29.27), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Vanilla'
                         },
                         amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "perm.redline",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.redline",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.redline", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                 -- BLIP DO CHAO
                    },
               },
          },
 
          ['Desmanche'] = {
               craft = {
                    {
                         item = 'lockpick',                     -- SPAWN DO ITEM
                         amount = 1,                          -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 10,                       -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,              -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                 -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                         -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "ferro", amount = 25 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "aluminio", amount = 25 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Desmanche',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "anfetamina", minAmount = 5, maxAmount = 20, percentual = 100 },
                              },
                         },
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Desmanche',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "ferro", minAmount = 3, maxAmount = 6, percentual = 100 }, -- CASO QUEIRA UM VALOR FIXO Colocar valor do minAmount igual do maxAmount
                                   { item = "aluminio", minAmount = 3, maxAmount = 6, percentual = 100 },
                              },
                         },
                    },
               },         
 
               locations = {                                    -- LOCALIZACOES DESSAS BANCADAS
                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Palmeiras',
                         coords = vec3(-314.22, -1349.31, 31.46), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Palmeiras'
                         },
                         amountSlots = 4,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "apalmeiras.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderpalmeiras.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderpalmeiras.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                   -- BLIP DO CHAO
                    },
                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Santos',
                         coords = vec3(1347.6, 3709.32, 34.24), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Santos'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "asantos.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "lidersantos.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "lidersantos.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end, -- BLIP DO CHAO
                    },
               },
          },
 
          ['Maconha'] = {
               craft = {
                    {
                         item = 'maconha',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "folhamaconha", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Drogas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "folhamaconha", minAmount = 10, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Paraisopolis',
                         coords = vec3(1277.66, -156.05, 98.54), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Paraisopolis'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "aparaisopolis.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderparaisopolis.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderparaisopolis.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                    -- BLIP DO CHAO
                    },
 
                    {                                         -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'PCC',
                         coords = vec3(793.24, -308.9, 66.32), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                    -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'PCC'
                         },
                         amountSlots = 2,                             -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "apcc.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderpcc.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderpcc.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                    -- BLIP DO CHAO
                    },
 
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Brasilandia',
                         coords = vec3(1348.24, -674.38, 88.55), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Brasilandia'
                         },
                         amountSlots = 2,                                     -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "abrasilandia.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderbrasilandia.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderbrasilandia.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                     -- BLIP DO CHAO
                    },
 
                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Pirituba',
                         coords = vec3(-3093.79, 1469.52, 25.24), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Pirituba'
                         },
                         amountSlots = 2,                                  -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "apirituba.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderpirituba.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderpirituba.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                   -- BLIP DO CHAO
                    },
 
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Mooca',
                         coords = vec3(-1186.5, -1730.36, 11.9), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Mooca'
                         },
                         amountSlots = 2,                               -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "amooca.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "lidermooca.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "lidermooca.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end, -- BLIP DO CHAO
                    },
 
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Heliópolis',
                         coords = vec3(-1724.67, -221.9, 61.72), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Heliópolis'
                         },
                         amountSlots = 2,                                    -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "aheliopolis.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderheliopolis.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderheliopolis.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                               if dist <= 5.0 then
                                    DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                    DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                    255, 180, 0, 0, 0, 1)
                               end
                         end,                                    -- BLIP DO CHAO
                    },
 
               },
          },

          ['Heroina'] = {
               craft = {
                    {
                         item = 'heroina',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "opiopapoula", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Drogas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "opiopapoula", minAmount = 10, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Paraisopolis',
                         coords = vec3(1277.66, -156.05, 98.54), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Paraisopolis'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "aparaisopolis.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderparaisopolis.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderparaisopolis.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },
               },
          },

          ['Cocaina'] = {
               craft = {
                    {
                         item = 'cocaina',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "pastabase", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Drogas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "pastabase", minAmount = 10, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Paraisopolis',
                         coords = vec3(1277.66, -156.05, 98.54), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Paraisopolis'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "aparaisopolis.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderparaisopolis.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderparaisopolis.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },
               },
          },

          ['Metanfetamina'] = {
               craft = {
                    {
                         item = 'metanfetamina',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "anfetamina", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Drogas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "anfetamina", minAmount = 10, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Paraisopolis',
                         coords = vec3(1277.66, -156.05, 98.54), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Paraisopolis'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "aparaisopolis.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderparaisopolis.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderparaisopolis.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },
               },
          },

          ['Opio'] = {
               craft = {
                    {
                         item = 'opio',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "opiopapoula", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Drogas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "opiopapoula", minAmount = 10, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Paraisopolis',
                         coords = vec3(1277.66, -156.05, 98.54), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Paraisopolis'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "aparaisopolis.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderparaisopolis.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderparaisopolis.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },
               },
          },

          ['Balinha'] = {
               craft = {
                    {
                         item = 'balinha',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "lancaperfume", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Drogas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "lancaperfume", minAmount = 10, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Paraisopolis',
                         coords = vec3(1277.66, -156.05, 98.54), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Paraisopolis'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "aparaisopolis.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderparaisopolis.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderparaisopolis.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },
               },
          },

          ['Lsd'] = {
               craft = {
                    {
                         item = 'lsd',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "acidolsd", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'NORTE',
                                   'SUL'
                              },
                              dangerRoute = {
                                   status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Drogas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "acidolsd", minAmount = 10, maxAmount = 25, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Paraisopolis',
                         coords = vec3(1277.66, -156.05, 98.54), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Paraisopolis'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "aparaisopolis.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "liderparaisopolis.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "liderparaisopolis.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },
               },
          },
     },

     -- CONFIGURACAO DOS ARMAZENS
     Storages = {
          -- ARMAS


          ['MACACOMORRO'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['CDA'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Milicia'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Antares'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
          
          ['Yakuza'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          
          -- MUNICOES
          ['Rocinha'] = {
               itens = {
                    ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Franca'] = {
               itens = {
                    ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Dende'] = {
               itens = {
                    ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          -- LAVAGEM
          ['Cassino'] = {
               itens = {
                    ['dirty_money'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Bahamas'] = {
               itens = {
                    ['dirty_money'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Vanilla'] = {
               itens = {
                    ['dirty_money'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          -- DESMANCHE

          ['Desmanche'] = {
               itens = {
                    ['ferro'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['aluminio'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Maconha'] = {
               itens = {
                    ['folhamaconha'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Heroina'] = {
               itens = {
                    ['opiopapoula'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Cocaina'] = {
               itens = {
                    ['pastabase'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Metanfetamina'] = {
               itens = {
                    ['anfetamina'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Opio'] = {
               itens = {
                    ['opiopapoula'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Balinha'] = {
               itens = {
                    ['lancaperfume'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Lsd'] = {
               itens = {
                    ['acidolsd'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
     },
 
     -- LOCALIZAÇÕES DAS ROTAS DE COLETA
     Locations = {
          ["Outros"] = {
               ["SUL"] = {
                    { ['x'] = -801.9, ['y'] = -922.02, ['z'] = 18.77 },
                    { ['x'] = -978.39, ['y'] = -1108.45, ['z'] = 2.14 },
                    { ['x'] = -801.99, ['y'] = -921.37, ['z'] = 18.8 },
                    { ['x'] = -1277.45, ['y'] = -1336.2, ['z'] = 4.25 },
                    { ['x'] = -1753.49, ['y'] = -694.36, ['z'] = 10.14 },
                    { ['x'] = -1965.0, ['y'] = -297.0, ['z'] = 41.1 },
                    { ['x'] = -1245.66, ['y'] = 376.54, ['z'] = 75.34 },
                    { ['x'] = -355.85, ['y'] = 469.81, ['z'] = 112.64 },
                    { ['x'] = 412.67, ['y'] = 151.02, ['z'] = 103.2 },
                    { ['x'] = 888.61, ['y'] = -141.81, ['z'] = 78.33 },
                    { ['x'] = 378.24, ['y'] = -371.92, ['z'] = 46.89 },
                    { ['x'] = 255.78, ['y'] = -665.48, ['z'] = 38.18 },
                    { ['x'] = -229.0, ['y'] = -1118.0, ['z'] = 23.02 },
                    { ['x'] = -545.01, ['y'] = -1228.0, ['z'] = 18.45 },
                    { ['x'] = -786.0, ['y'] = -1045.0, ['z'] = 12.97 },
                    { ['x'] = -1053.86, ['y'] = -1144.02, ['z'] = 2.16 },
                    { ['x'] = -1090.52, ['y'] = -954.19, ['z'] = 2.43 },
                    { ['x'] = -1053.13, ['y'] = -908.42, ['z'] = 4.3 },
                    { ['x'] = -812.91, ['y'] = -980.45, ['z'] = 14.17 },
 
               },
 
               ["NORTE"] = {
                    { ['x'] = 2527.79, ['y'] = 2617.42, ['z'] = 37.95 },
                    { ['x'] = 1194.12, ['y'] = 2722.04, ['z'] = 38.62 },
                    { ['x'] = 719.57, ['y'] = 2312.06, ['z'] = 50.33 },
                    { ['x'] = 1195.76, ['y'] = 1819.46, ['z'] = 78.92 },
                    { ['x'] = 218.13, ['y'] = 2602.17, ['z'] = 45.78 },
                    { ['x'] = -1122.76, ['y'] = 2682.2, ['z'] = 18.7 },
                    { ['x'] = -2544.01, ['y'] = 2316.69, ['z'] = 33.21 },
                    { ['x'] = -2198.2, ['y'] = 4272.57, ['z'] = 48.53 },
                    { ['x'] = -841.16, ['y'] = 5401.46, ['z'] = 34.61 },
                    { ['x'] = -319.88, ['y'] = 6085.84, ['z'] = 31.46 },
                    { ['x'] = -36.13, ['y'] = 6639.88, ['z'] = 30.46 },
                    { ['x'] = -128.5, ['y'] = 6341.23, ['z'] = 31.49 },
                    { ['x'] = 1743.06, ['y'] = 6409.65, ['z'] = 35.1 },
                    { ['x'] = 2241.04, ['y'] = 5163.42, ['z'] = 58.44 },
                    { ['x'] = 1726.63, ['y'] = 4682.85, ['z'] = 43.66 },
                    { ['x'] = 2471.33, ['y'] = 4110.86, ['z'] = 38.06 },
                    { ['x'] = 1846.28, ['y'] = 3914.6, ['z'] = 33.46 },
                    { ['x'] = 1296.0, ['y'] = 3629.93, ['z'] = 33.03 },
                    { ['x'] = 191.21, ['y'] = 3082.03, ['z'] = 43.47 },
               },
          },
     },
 
     -- LOCALIZAÇÕES DAS ENTREGAS
     DeliveryLocations = {
           { ['x'] = 793.07788085938, ['y'] = -80.896865844727, ['z'] = 80.597717285156 },
           { ['x'] = 678.32855224609, ['y'] = 74.091705322266, ['z'] = 83.143112182617 },
           { ['x'] = 538.548828125, ['y'] = 101.41902923584, ['z'] = 96.517349243164 },
           { ['x'] = 541.44567871094, ['y'] = 205.19020080566, ['z'] = 101.73239135742 },
           { ['x'] = 768.12103271484, ['y'] = 224.23774719238, ['z'] = 86.035125732422 },
           { ['x'] = 875.54992675781, ['y'] = 537.98229980469, ['z'] = 125.35605621338 },
           { ['x'] = 372.32107543945, ['y'] = 429.78726196289, ['z'] = 144.9995880127 },
           { ['x'] = 317.87084960938, ['y'] = 562.69799804688, ['z'] = 154.53968811035 },
           { ['x'] = 231.54277038574, ['y'] = 675.58410644531, ['z'] = 189.68579101563 },
           { ['x'] = 128.33358764648, ['y'] = 567.26513671875, ['z'] = 183.34147644043 },
           { ['x'] = -125.81213378906, ['y'] = 507.18685913086, ['z'] = 143.40142822266 },
           { ['x'] = -354.94763183594, ['y'] = 470.34353637695, ['z'] = 112.5164642334 },
           { ['x'] = -415.900390625, ['y'] = 549.51708984375, ['z'] = 122.56336975098 },
           { ['x'] = -510.02575683594, ['y'] = 576.07641601563, ['z'] = 119.97872161865 },
           { ['x'] = -709.70874023438, ['y'] = 492.37371826172, ['z'] = 109.0931854248 },
           { ['x'] = -863.19561767578, ['y'] = 459.45748901367, ['z'] = 88.133857727051 },
           { ['x'] = -974.84039306641, ['y'] = 389.55419921875, ['z'] = 74.75658416748 },
           { ['x'] = -1232.8532714844, ['y'] = 387.41723632813, ['z'] = 75.410766601563 },
           { ['x'] = -1551.0252685547, ['y'] = 210.70138549805, ['z'] = 58.849128723145 },
           { ['x'] = -1626.8759765625, ['y'] = 77.364471435547, ['z'] = 61.738861083984 },
           { ['x'] = -1481.1151123047, ['y'] = 50.853820800781, ['z'] = 53.557266235352 },
           { ['x'] = -1440.1412353516, ['y'] = -107.67637634277, ['z'] = 50.796947479248 },
           { ['x'] = -1365.4597167969, ['y'] = -277.80230712891, ['z'] = 42.449138641357 },
           { ['x'] = -1388.1552734375, ['y'] = -422.57485961914, ['z'] = 36.609424591064 },
           { ['x'] = -1293.5606689453, ['y'] = -657.04772949219, ['z'] = 26.514207839966 },
           { ['x'] = -1209.5826416016, ['y'] = -824.3486328125, ['z'] = 15.414174079895 },
           { ['x'] = -1127.6937255859, ['y'] = -942.69604492188, ['z'] = 2.6477360725403 },
           { ['x'] = -1055.0397949219, ['y'] = -1016.2841796875, ['z'] = 2.1091120243073 },
           { ['x'] = -1018.9131469727, ['y'] = -1118.3740234375, ['z'] = 2.1360456943512 },
           { ['x'] = -1077.9276123047, ['y'] = -1166.6501464844, ['z'] = 2.1554975509644 },
           { ['x'] = -1224.8940429688, ['y'] = -1207.9514160156, ['z'] = 8.2698411941528 },
           { ['x'] = -1147.3654785156, ['y'] = -1378.4047851563, ['z'] = 4.8769469261169 },
           { ['x'] = -1077.0355224609, ['y'] = -1498.3112792969, ['z'] = 5.1053643226624 },
           { ['x'] = -1023.5092163086, ['y'] = -1614.4097900391, ['z'] = 4.9913740158081 },
           { ['x'] = -1131.7121582031, ['y'] = -1502.2861328125, ['z'] = 4.388973236084 },
           { ['x'] = -1220.0477294922, ['y'] = -1498.6058349609, ['z'] = 4.3429250717163 },
           { ['x'] = -1353.5001220703, ['y'] = -1226.7258300781, ['z'] = 4.6184649467468 },
           { ['x'] = -1317.7858886719, ['y'] = -831.81939697266, ['z'] = 16.966159820557 },
           { ['x'] = -1204.7236328125, ['y'] = -583.56982421875, ['z'] = 27.324947357178 },
     },
 
     -- TRADUÇÕES
     Langs = {
          backpackFull = 'Mochila cheia.',
          waitCollect = 'Aguarde para coletar.',
          notHaveItem = 'Você não possui nenhum desse item em seu inventario para guarda-lo.',
          maxStorage = 'O Armazem ja possui a quantidade maxima desse item atingido.',
          errorItem = 'Houve um problema ao retirar o item de seu inventario, contate um administrador',
          storageItem = 'Você guardou o item: %s na quantidade de %s x',
          limitTable = 'Esta mesa ja excedeu o limite de craft simultaneo, caso queira mais contate um administrador.',
          notNecessaryItens = 'O Armazem não possui os itens necessarios para realizar o craft.',
          notItensStorage = 'Você não possui nenhum desses itens em seu inventario para guarda-lo.',
          notPermission = 'Você não possui permissão para isso.',
          waitCraft = 'Aguarde para craftar.',
          notMoney = 'Você não possui $ %s para fabricar este item.',
     }
 }
 
 
 -- OUTRAS CONFIGURAÇÕES
 if SERVER then
     function identity(user_id)
          return vRP.getUserIdentity(user_id)
     end
 
     function userId(source)
          return vRP.getUserId(source)
     end
 
     function getUserSource(user_id)
          return vRP.getUserSource(user_id)
     end
 
     function hasPermission(user_id, permission)
          return vRP.hasPermission(user_id, permission)
     end
 
     function getItemName(item)
          local getItemName = vRP.getItemName(item)
          if getItemName then
               return vRP.getItemName(item)
          end
 
          local itemNameList = vRP.itemNameList(item)
          if itemNameList then
               return itemNameList
          end
 
          return item
     end
 
     function getInventoryItemAmount(user_id, item)
          return vRP.getInventoryItemAmount(user_id, item)
     end
 
     function giveInventoryItem(user_id, item, amount)
          return vRP.giveInventoryItem(user_id, item, amount, true)
     end
 
     function tryGetInventoryItem(user_id, item, amount)
          return vRP.tryGetInventoryItem(user_id, item, amount, true)
     end
 
     function avaliableBackpack(user_id, item, amount)
          if vRP.computeInvWeight(user_id) + vRP.getItemWeight(item) * parseInt(amount) <= vRP.getInventoryMaxWeight(user_id) then
               return true
          end
 
          return false
     end

     function giveMoney(user_id, amount)
          return vRP.giveMoney(user_id, amount)
     end

     function tryPayment(user_id, amount)
          return vRP.tryPayment(user_id, amount)
     end

     function getUsersByPermission(perm)
          return vRP.getUsersByPermission(perm)
     end

     function callPolice(coords) -- CHAMAR A POLICIA
          local polices = vRP.getUsersByPermission("perm.policia") 
          for l,w in pairs(polices) do
              async(function() 
                  local player = vRP.getUserSource(parseInt(w))
                  if not player then return end
      
                  
                  TriggerClientEvent("modules_craft:addBlip", player, coords) 
                  vRPclient._playSound(player,"CONFIRM_BEEP","HUD_MINI_GAME_SOUNDSET")
                  TriggerClientEvent("Notify",player, "sucesso", "DENUNCIA ILEGAL")
              end)
          end
      end
 else
     function DrawText3Ds(x, y, z, text)
          local onScreen, _x, _y = World3dToScreen2d(x, y, z)
          SetTextFont(4)
          SetTextScale(0.35, 0.35)
          SetTextColour(255, 255, 255, 200)
          SetTextEntry("STRING")
          SetTextCentre(1)
          AddTextComponentString(text)
          DrawText(_x, _y)
     end
 end