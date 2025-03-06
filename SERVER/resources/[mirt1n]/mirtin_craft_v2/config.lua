Config = {
     images = 'http://177.54.148.31:4020/inventario/', -- URL DAS SUAS IMAGENS
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
 --
                          requires = {                                  -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 20 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 10 },
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
                               { item = "pecadearma",        amount = 40 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
 --
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 60 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 30 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
 --
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 200 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 20 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
 --
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 220 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 45 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "molas", amount = 45 },
                               { item = "metal",      amount = 45 },
                          }
                     },
                     {
                         item = 'WEAPON_ASSAULTSMG',                          -- SPAWN DO ITEM
                         amount = 1,                                  -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 60,                               -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,                      -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                         -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
--
                         requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "pecadearma",        amount = 220 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "gatilho",   amount = 45 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                               { item = "pecadearma",        amount = 280 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                               { item = "gatilho",   amount = 50 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
 --
                          requires = {                                 -- ITENS NECESSARIOS PARA O CRAFT
                               { item = "pecadearma",        amount = 320 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                    status = false,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                    percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                               },
                               dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                    status = true,       -- Se o sistema ta ativo ou não
                                    zone = 'Armas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                    bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                               },
                               itensList = {
                                    { item = "pecadearma",        minAmount = 5, maxAmount = 10, percentual = 50 }, -- CASO QUEIRA UM VALOR FIXO Colocar valor do minAmount igual do maxAmount
                                    { item = "molas",   minAmount = 5, maxAmount = 10, percentual = 50 },
                                    { item = "metal", minAmount = 5, maxAmount = 10, percentual = 50 }, -- CASO QUEIRA UM VALOR FIXO Colocar valor do minAmount igual do maxAmount
                                    { item = "gatilho",      minAmount = 5, maxAmount = 10, percentual = 50 },
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
                                   { item = "pecadearma", minAmount = 2, maxAmount = 7, type = 'ilegal', payment = 200 }, -- ( TYPE legal = dinheiro normal, ilegal = dinheiro sujo) ( payment valor por unidade )
                              },
                         },
                    },
               },
 
               locations = {  
                    -- LOCALIZACOES DESSAS BANCADAS

                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Lagunapark',
                         coords = vec3(-3226.49,817.57,14.07), -- COORDENADAS DA BANCADA

                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Lagunapark'
                         },
                         amountSlots = 9999,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "perm.lagunapark",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.lagunapark",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.lagunapark", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                     -- BLIP DO CHAO
                    },

                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    name = 'MacacoMorro',
                    coords = vec3(-398.83,1532.6,381.31), -- COORDENADAS DA BANCADA

                    requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                         active = true,
                         name = 'MacacoMorro'
                    },
                    amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                    tablePermission = "perm.macaco",          -- PERMISSAO PARA ACESSAR A BANCADA
                    craftPermission = "perm.lider.macaco",    -- PERMISSAO PARA CRAFTAR ITEM
                    withdrawPermission = "perm.lider.macaco", -- PERMISSAO PARA RETIRAR ITEM

                    drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                    end,                                    -- BLIP DO CHAO
               },

               {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
               name = 'Helipa',
               coords = vec3(1407.63,-730.47,68.9), -- COORDENADAS DA BANCADA

               requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                    active = true,
                    name = 'Helipa'
               },
               amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

               tablePermission = "perm.helipa",          -- PERMISSAO PARA ACESSAR A BANCADA
               craftPermission = "perm.lider.helipa",    -- PERMISSAO PARA CRAFTAR ITEM
               withdrawPermission = "perm.lider.helipa", -- PERMISSAO PARA RETIRAR ITEM

               drawMarker = function(coords, dist)
                    if dist <= 5.0 then
                         DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                         DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                         255, 180, 0, 0, 0, 1)
                    end
               end,                                    -- BLIP DO CHAO
               },

                  --- {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                  ---      name = 'Recantodosol',
                  ---      coords = vec3(-3366.52,1134.02,9.65), -- COORDENADAS DA BANCADA

                  ---      requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                  ---           active = true,
                  ---           name = 'Recantodosol'
                  ---      },
                  ---      amountSlots = 9999,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                  ---      tablePermission = "perm.recantodosol",          -- PERMISSAO PARA ACESSAR A BANCADA
                  ---      craftPermission = "perm.recantodosol",    -- PERMISSAO PARA CRAFTAR ITEM
                  ---      withdrawPermission = "perm.recantodosol", -- PERMISSAO PARA RETIRAR ITEM

                  ---      drawMarker = function(coords, dist)
                  ---           if dist <= 5.0 then
                  ---                DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                  ---                DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                  ---                255, 180, 0, 0, 0, 1)
                  ---           end
                  ---      end,                                   -- BLIP DO CHAO
                  --- },

                    --{                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    --     name = 'Goiania',
                    --     coords = vec3(-3278.17,580.11,6.13), -- COORDENADAS DA BANCADA
--
                    --     requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                    --          active = true,
                    --          name = 'Goiania'
                    --     },
                    --     amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
--
                    --     tablePermission = "perm.goiania",          -- PERMISSAO PARA ACESSAR A BANCADA
                    --     craftPermission = "perm.goiania",    -- PERMISSAO PARA CRAFTAR ITEM
                    --     withdrawPermission = "perm.goiania", -- PERMISSAO PARA RETIRAR ITEM
--
                    --     drawMarker = function(coords, dist)
                    --          if dist <= 5.0 then
                    --               DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                    --               DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                    --               255, 180, 0, 0, 0, 1)
                    --          end
                    --     end,                                   -- BLIP DO CHAO
                    --},

                   -- {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                   -- name = 'Web',
                   -- coords = vec3(-1518.23,112.29,50.04), -- COORDENADAS DA BANCADA
   
                   -- requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                   --      active = true,
                   --      name = 'Web'
                   -- },
                   -- amountSlots = 5,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
   
                   -- tablePermission = "perm.web",          -- PERMISSAO PARA ACESSAR A BANCADA
                   -- craftPermission = "perm.web",    -- PERMISSAO PARA CRAFTAR ITEM
                   -- withdrawPermission = "perm.web", -- PERMISSAO PARA RETIRAR ITEM
   
                   -- drawMarker = function(coords, dist)
                   --      if dist <= 5.0 then
                   --           DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                   --           DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                   --           255, 180, 0, 0, 0, 1)
                   --      end
                   -- end,                                     -- BLIP DO CHAO
                   -- },
                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    name = 'Yakuza',
                    coords = vec3(-3366.52,1134.02,9.65), -- COORDENADAS DA BANCADA

                    requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                         active = true,
                         name = 'Yakuza'
                    },
                    amountSlots = 5,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                    tablePermission = "perm.yakuza",          -- PERMISSAO PARA ACESSAR A BANCADA
                    craftPermission = "perm.lider.yakuza",    -- PERMISSAO PARA CRAFTAR ITEM
                    withdrawPermission = "perm.lider.yakuza", -- PERMISSAO PARA RETIRAR ITEM

                    drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                    end,                                     -- BLIP DO CHAO
                    },
                    {                                         -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Veracruz',
                         coords = vec3(191.21,750.94,208.63), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                    -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Veracruz'
                         },
                         amountSlots = 5,                             -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.veracruz",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.veracruz",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.veracruz", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                    -- BLIP DO CHAO
                    },
          
                   --{     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                   --     name = 'Jardimnovomundo',
                   --     coords = vec3(-2238.61,-159.44,86.52), -- COORDENADAS DA BANCADA

                   --     requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                   --          active = true,
                   --          name = 'Jardimnovomundo'
                   --     },

                   --     amountSlots = 8,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                   --     tablePermission = "perm.jardimnovomundo",          -- PERMISSAO PARA ACESSAR A BANCADA
                   --     craftPermission = "perm.lider.jardimnovomundo",    -- PERMISSAO PARA CRAFTAR ITEM
                   --     withdrawPermission = "perm.lider.jardimnovomundo", -- PERMISSAO PARA RETIRAR ITEM

                   --     drawMarker = function(coords, dist)
                   --          if dist <= 5.0 then
                   --               DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                   --               DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                   --               255, 180, 0, 0, 0, 1)
                   --          end
                   --     end,                                     -- BLIP DO CHAO
                   --},
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
                              { item = "polvora", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 15 },
                         }
                    },
                    {
                         item = 'AMMO_PISTOL_MK2',           -- SPAWN DO ITEM
                         amount = 10,                            -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                         -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,                -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                   -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                           -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_ASSAULTRIFLE',        -- SPAWN DO ITEM
                         amount = 10,                            -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                         -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,                -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                   -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 ---
                         requires = {                           -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_SMG',       -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 ---
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_ASSAULTSMG',       -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 ---
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_MACHINEPISTOL',              -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 ---
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_ASSAULTRIFLE_MK2',             -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 ---
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'AMMO_SPECIALCARBINE_MK2',          -- SPAWN DO ITEM
                         amount = 10,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 ---
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "polvora", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "capsulas", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                   { item = "capsulas", minAmount = 8, maxAmount = 12, percentual = 50 }, -- CASO QUEIRA UM VALOR FIXO Colocar valor do minAmount igual do maxAmount
                                   { item = "polvora", minAmount = 8, maxAmount = 12, percentual = 50 },
                              },
                         },
                    },
               },

               locations = { -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Grota',
                         coords = vec3(1402.28,1136.67,109.74), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Grota'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.grota",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.lider.grota",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.lider.grota", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Chapadao',
                         coords = vec3(2323.65,4025.44,41.11), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Chapadao'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.chapadao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.lider.chapadao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.lider.chapadao", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },
                    {     -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    name = 'Web',
                    coords = vec3(1264.07,-896.71,75.39), -- COORDENADAS DA BANCADA

                    requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                         active = true,
                         name = 'Web'
                    },
                    amountSlots = 5,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                    tablePermission = "perm.web",          -- PERMISSAO PARA ACESSAR A BANCADA
                    craftPermission = "perm.web",    -- PERMISSAO PARA CRAFTAR ITEM
                    withdrawPermission = "perm.web", -- PERMISSAO PARA RETIRAR ITEM

                    drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                    end,                                     -- BLIP DO CHAO
                    },
                   --{                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                   --     name = 'Yakuza',
                   --     coords = vec3(-3366.52,1134.02,9.65), -- COORDENADAS DA BANCADA

                   --     requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                   --          active = true,
                   --          name = 'Yakuza'
                   --     },
                   --     amountSlots = 9999,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                   --     tablePermission = "perm.yakuza",          -- PERMISSAO PARA ACESSAR A BANCADA
                   --     craftPermission = "perm.lider.yakuza",    -- PERMISSAO PARA CRAFTAR ITEM
                   --     withdrawPermission = "perm.lider.yakuza", -- PERMISSAO PARA RETIRAR ITEM

                   --     drawMarker = function(coords, dist)
                   --          if dist <= 5.0 then
                   --               DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                   --               DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                   --               255, 180, 0, 0, 0, 1)
                   --          end
                   --     end,                                   -- BLIP DO CHAO
                   --},
                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Buenavista',
                         coords = vec3(-2678.94,1330.04,140.88), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Buenavista'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.franca",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.lider.franca",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.lider.franca", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                   -- BLIP DO CHAO
                    },

                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Franca',
                         coords = vec3(-2366.53,1746.91,215.48), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Franca'
                         },
                         amountSlots = 9999999,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.franca",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.lider.franca",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.lider.franca", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                   -- BLIP DO CHAO
                    },

                    

                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Vovo',
                         coords = vec3(-2683.47,2334.22,21.13), -- COORDENADAS DA BANCADA

                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Vovo'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "perm.vovo",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.vovo",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.vovo", -- PERMISSAO PARA RETIRAR ITEM

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

          ['Muamba'] = {
               craft = {
                    {
                         item = 'algemas',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "c-ferro", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'capuz',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "c-fio", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'keycard',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "plastico", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'pendrive',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "plastico", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "c-ferro", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'mochila ',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "c-fio", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "plastico", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'furadeira',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                         { item = "c-fio", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         { item = "plastico", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         { item = "c-ferro", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'c4',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "c-fio", amount = 6 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "plastico", amount = 6 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "c-ferro", amount = 6 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'body_armor',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "c-fio", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "c-ferro", amount = 2 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'corda',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "c-fio", amount = 10 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                   zone = 'Muamba',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "c-fio", minAmount = 5, maxAmount = 10, percentual = 50 },
                                   { item = "c-ferro", minAmount = 5, maxAmount = 10, percentual = 50 },
                                   { item = "plastico", minAmount = 5, maxAmount = 10, percentual = 50 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS

                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    name = 'CaixaBaixa',
                    coords = vec3(1380.52,-1298.26,75.64), -- COORDENADAS DA BANCADA

                    requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                         active = true,
                         name = 'CaixaBaixa'
                    },
                    amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                    tablePermission = "perm.caixabaixa",          -- PERMISSAO PARA ACESSAR A BANCADA
                    craftPermission = "perm.caixabaixa",    -- PERMISSAO PARA CRAFTAR ITEM
                    withdrawPermission = "perm.caixabaixa", -- PERMISSAO PARA RETIRAR ITEM

                    drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                    end,                                 -- BLIP DO CHAO
               },
               {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    name = 'Madregermano',
                    coords = vec3(-1418.24,1604.54,150.23), -- COORDENADAS DA BANCADA

                    requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                         active = true,
                         name = 'Madregermano'
                    },
                    amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                    tablePermission = "perm.madregermano",          -- PERMISSAO PARA ACESSAR A BANCADA
                    craftPermission = "perm.madregermano",    -- PERMISSAO PARA CRAFTAR ITEM
                    withdrawPermission = "perm.madregermano", -- PERMISSAO PARA RETIRAR ITEM

                    drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                    end,                                    -- BLIP DO CHAO
               },
               {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    name = 'Macacomuamba',
                    coords = vec3(-399.12,1533.33,384.21), -- COORDENADAS DA BANCADA

                    requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                         active = true,
                         name = 'Macacomuamba'
                    },
                    amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                    tablePermission = "perm.macaco",          -- PERMISSAO PARA ACESSAR A BANCADA
                    craftPermission = "perm.lider.macaco",    -- PERMISSAO PARA CRAFTAR ITEM
                    withdrawPermission = "perm.lider.macaco", -- PERMISSAO PARA RETIRAR ITEM

                    drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                    end,                                    -- BLIP DO CHAO
               },
               --{                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
          --     name = 'Tequila',
          --     coords = vec3(-561.95,281.64,85.68), -- COORDENADAS DA BANCA
          --     requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
          --          active = true,
          --          name = 'Tequila'
          --     },
          --     amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site
          --     tablePermission = "perm.tequila",          -- PERMISSAO PARA ACESSAR A BANCADA
          --     craftPermission = "perm.tequila",    -- PERMISSAO PARA CRAFTAR ITEM
          --     withdrawPermission = "perm.tequila", -- PERMISSAO PARA RETIRAR IT
          --     drawMarker = function(coords, dist)
          --          if dist <= 5.0 then
          --               DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
          --               DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
          --               255, 180, 0, 0, 0, 1)
          --          end
          --     end,                                    -- BLIP DO CHAO
          --},

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
                              { item = "l-alvejante", amount = 160 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                   status = true,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Lavagem',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "l-alvejante", minAmount = 70, maxAmount = 100, percentual = 80 },
                              },
                         },
                    },
               },

               locations = {                                  -- LOCALIZACOES DESSAS BANCADAS
                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'RedLine',
                         coords = vec3(94.45,-1294.18,29.27), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'RedLine'
                         },
                         amountSlots = 7,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
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

                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Franca1',
                         coords = vec3(-2364.32,1747.47,215.48), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Franca1'
                         },
                         amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.franca",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.lider.franca",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.lider.franca", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                 -- BLIP DO CHAO
                    },
                     {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Brasil',
                         coords = vec3(-2238.58,-159.75,86.52), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Brasil'
                         },
                         amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.brasil",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.brasil",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.brasil", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                 -- BLIP DO CHAO
                    },
                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Grotalavagem',
                         coords = vec3(1402.51,1139.87,109.74), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Grotalavagem'
                         },
                         amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.grota",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.lider.grota",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.lider.grota", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                 -- BLIP DO CHAO
                    },

                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Tequila',
                         coords = vec3(-562.18,282.43,85.68), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Tequila'
                         },
                         amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.tequila",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.tequila",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.tequila", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                 -- BLIP DO CHAO
                    },
                    
                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Vinhedo',
                         coords = vec3(-1868.51,2064.35,135.44), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Vinhedo'
                         },
                         amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.vinhedo",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.vinhedo",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.vinhedo", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                 -- BLIP DO CHAO
                    },

                   -- {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                   --      name = 'Cassino',
                   --      coords = vec3(930.3,37.36,81.1), -- COORDENADAS DA BANCADA
 --
                   --      requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                   --           active = true,
                   --           name = 'Cassino'
                   --      },
                   --      amountSlots = 2,                                 -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 --
                   --      tablePermission = "perm.ilegal",          -- PERMISSAO PARA ACESSAR A BANCADA
                   --      craftPermission = "perm.ilegal",    -- PERMISSAO PARA CRAFTAR ITEM
                   --      withdrawPermission = "perm.ilegal", -- PERMISSAO PARA RETIRAR ITEM
 --
                   --      drawMarker = function(coords, dist)
                   --           if dist <= 5.0 then
                   --                DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                   --                DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                   --                255, 180, 0, 0, 0, 1)
                   --           end
                   --      end,                                 -- BLIP DO CHAO
                   -- },


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
                              { item = "ferro", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                              { item = "aluminio", amount = 15 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                   { item = "ferro", minAmount = 6, maxAmount = 9, percentual = 100 }, -- CASO QUEIRA UM VALOR FIXO Colocar valor do minAmount igual do maxAmount
                                   { item = "aluminio", minAmount = 6, maxAmount = 9, percentual = 100 },
                              },
                         },
                    },
               },         
 
               locations = {                                    -- LOCALIZACOES DESSAS BANCADAS
                  --{                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                  --     name = 'Cartel',
                  --     coords = vec3(1402.67,1136.68,109.74), -- COORDENADAS DA BANCADA
 
                  --     requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                  --          active = true,
                  --          name = 'Cartel'
                  --     },
                  --     amountSlots = 4,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                  --     tablePermission = "perm.cartel",          -- PERMISSAO PARA ACESSAR A BANCADA
                  --     craftPermission = "perm.cartel",    -- PERMISSAO PARA CRAFTAR ITEM
                  --     withdrawPermission = "perm.cartel", -- PERMISSAO PARA RETIRAR ITEM
 
                  --     drawMarker = function(coords, dist)
                  --     if dist <= 5.0 then
                  --          DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                  --          DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                  --          255, 180, 0, 0, 0, 1)
                  --     end
                  --     end,                                   -- BLIP DO CHAO
                  --},
                    {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'MacacoDesmanche',
                         coords = vec3(612.47,2229.63,63.39), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'MacacoDesmanche'
                         },
                         amountSlots = 4,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.macaco",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.macaco",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.macaco", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                   -- BLIP DO CHAO
                    },
                    {                                          -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Vilacanaa',
                         coords = vec3(149.71,328.99,111.88), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                     -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Vilacanaa'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.vilacanaa",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.vilacanaa",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.vilacanaa", -- PERMISSAO PARA RETIRAR ITEM
 
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
                         amount = 4,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "folhamaconha", amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                   { item = "folhamaconha", minAmount = 6, maxAmount = 9, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS

                    {                                         -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'RedLinemaconha',
                         coords = vec3(96.89,-1292.03,29.27), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                    -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'RedLinemaconha'
                         },
                         amountSlots = 2,                             -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.redline",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.redline",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.redline", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                         end,                                    -- BLIP DO CHAO
                    },
                    
                 -- {                                         -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                 --      name = 'Veracruz',
                 --      coords = vec3(191.21,750.94,208.63), -- COORDENADAS DA BANCADA
 
                 --      requireStorage = {                    -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                 --           active = true,
                 --           name = 'Veracruz'
                 --      },
                 --      amountSlots = 5,                             -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                 --      tablePermission = "perm.veracruz",          -- PERMISSAO PARA ACESSAR A BANCADA
                 --      craftPermission = "perm.veracruz",    -- PERMISSAO PARA CRAFTAR ITEM
                 --      withdrawPermission = "perm.veracruz", -- PERMISSAO PARA RETIRAR ITEM
 
                 --      drawMarker = function(coords, dist)
                 --      if dist <= 5.0 then
                 --           DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                 --           DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                 --           255, 180, 0, 0, 0, 1)
                 --      end
                 --      end,                                    -- BLIP DO CHAO
                 -- },
 
 
 
               },
          },
                                   ------- MODIFICAR O GRUPO A BAIXO. -------------
          ['Heroina'] = {
               craft = {
                    {
                         item = 'heroina',                     -- SPAWN DO ITEM
                         amount = 4,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "opiopapoula", amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                   { item = "opiopapoula", minAmount = 6, maxAmount = 9, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Test',
                         coords = vec3(432.58,3020.47,43.81), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Test'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.test",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.test",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.test", -- PERMISSAO PARA RETIRAR ITEM

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
--- DE CIMA PRECISA ARRUMAR --
          ['Cocaina'] = {
               craft = {
                    {
                         item = 'cocaina',                     -- SPAWN DO ITEM
                         amount = 4,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "pastabase", amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                   { item = "pastabase", minAmount = 6, maxAmount = 10, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
               {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    name = 'Novaesperanca',
                    coords = vec3(-445.63,-1290.43,27.62), -- COORDENADAS DA BANCADA

                    requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                         active = true,
                         name = 'Novaesperanca'
                    },
                    amountSlots = 9999,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                    tablePermission = "perm.novaesperanca",          -- PERMISSAO PARA ACESSAR A BANCADA
                    craftPermission = "perm.novaesperanca",    -- PERMISSAO PARA CRAFTAR ITEM
                    withdrawPermission = "perm.novaesperanca", -- PERMISSAO PARA RETIRAR ITEM

                    drawMarker = function(coords, dist)
                         if dist <= 5.0 then
                              DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                              DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                              255, 180, 0, 0, 0, 1)
                         end
                    end,                                    -- BLIP DO CHAO
               },

               {                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Mafia',
                         coords = vec3(-3278.17,580.11,6.13), -- COORDENADAS DA BANCADA

                         requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Mafia'
                         },
                         amountSlots = 2,                                -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "perm.mafia",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.mafia",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.mafia", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                   -- BLIP DO CHAO
                    },

               {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    name = 'Tiradentes',
                    coords = vec3(1692.64,1062.22,132.47), -- COORDENADAS DA BANCADA

                    requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                         active = true,
                         name = 'Tiradentes'
                    },
                    amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                    tablePermission = "perm.tiradentes",          -- PERMISSAO PARA ACESSAR A BANCADA
                    craftPermission = "perm.tiradentes",    -- PERMISSAO PARA CRAFTAR ITEM
                    withdrawPermission = "perm.tiradentes", -- PERMISSAO PARA RETIRAR ITEM

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
-------------- ALTERAR O DE BAIXO
          ['Metanfetamina'] = {
               craft = {
                    {
                         item = 'metanfetamina',                     -- SPAWN DO ITEM
                         amount = 4,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "anfetamina", amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                         name = 'CartelMeta',
                         coords = vec3(1396.61,1154.75,108.61), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'CartelMeta'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.cartel",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.cartel",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.cartel", -- PERMISSAO PARA RETIRAR ITEM
 
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
                         amount = 4,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "opiopapoula", amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                         name = 'Test',
                         coords = vec3(1277.66, -156.05, 98.54), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Test'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "admin.permissao",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "admin.permissao",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "admin.permissao", -- PERMISSAO PARA RETIRAR ITEM
 
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
                         amount = 4,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "lancaperfume", amount = 1 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
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
                                   { item = "lancaperfume", minAmount = 5, maxAmount = 10, percentual = 1 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'Parqueoeste',
                         coords = vec3(-1539.91,323.9,87.25), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'Parqueoeste'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.parqueoeste",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.parqueoeste",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.parqueoeste", -- PERMISSAO PARA RETIRAR ITEM
 
                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },

                    ---{                                            -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                    ---     name = 'CartelBalinha',
                    ---     coords = vec3(1396.61,1154.75,108.61), -- COORDENADAS DA BANCADA
 ---
                    ---     requireStorage = {                       -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                    ---          active = true,
                    ---          name = 'CartelBalinha'
                    ---     },
                    ---     amountSlots = 4,                                   -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 ---
                    ---     tablePermission = "perm.cartel",          -- PERMISSAO PARA ACESSAR A BANCADA
                    ---     craftPermission = "perm.cartel",    -- PERMISSAO PARA CRAFTAR ITEM
                    ---     withdrawPermission = "perm.cartel", -- PERMISSAO PARA RETIRAR ITEM
 ---
                    ---     drawMarker = function(coords, dist)
                    ---     if dist <= 5.0 then
                    ---          DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                    ---          DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                    ---          255, 180, 0, 0, 0, 1)
                    ---     end
                    ---     end,                                   -- BLIP DO CHAO
                    ---},

                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'EmilioPovoa',
                         coords = vec3(-1904.83,4528.95,20.59), -- COORDENADAS DA BANCADA

                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'EmilioPovoa'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )

                         tablePermission = "perm.emiliopovoa",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.emiliopovoa",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.emiliopovoa", -- PERMISSAO PARA RETIRAR ITEM

                         drawMarker = function(coords, dist)
                              if dist <= 5.0 then
                                   DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                                   DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                                   255, 180, 0, 0, 0, 1)
                              end
                         end,                                    -- BLIP DO CHAO
                    },

                   --- {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                   ---      name = 'Macaco',
                   ---      coords = vec3(-1805.35,572.33,167.05), -- COORDENADAS DA BANCADA
---
                   ---      requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                   ---           active = true,
                   ---           name = 'Macaco'
                   ---      },
                   ---      amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
---
                   ---      tablePermission = "perm.macaco",          -- PERMISSAO PARA ACESSAR A BANCADA
                   ---      craftPermission = "perm.macaco",    -- PERMISSAO PARA CRAFTAR ITEM
                   ---      withdrawPermission = "perm.macaco", -- PERMISSAO PARA RETIRAR ITEM
---
                   ---      drawMarker = function(coords, dist)
                   ---           if dist <= 5.0 then
                   ---                DrawText3Ds(coords.x, coords.y, coords.z + 0.1, "Pressione ~b~[E]~w~ para acessar a bancada.")
                   ---                DrawMarker(27, coords.x, coords.y, coords.z - 0.95, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, 0, 179,
                   ---                255, 180, 0, 0, 0, 1)
                   ---           end
                   ---      end,                                    -- BLIP DO CHAO
                   --- },

                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'QuebraCaixote',
                         coords = vec3(-636.05,2165.93,126.14), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'QuebraCaixote'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.quebracaixote",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.quebracaixote",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.quebracaixote", -- PERMISSAO PARA RETIRAR ITEM
 
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
          

          ['craftproibido'] = {
               craft = {
                    {
                         item = 'cartaoazul',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "placademetal", amount = 5 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'cartaovermelho',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "placademetal", amount = 8 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
                    {
                         item = 'planta',                     -- SPAWN DO ITEM
                         amount = 1,                           -- Quantidade de item que vai receber por unidade selecionada.
                         itemTime = 1,                        -- 30 segundo(s) para a maquina concluir o craft.
                         requirePayment = false,               -- Caso Necessitar de Pagamento para craftar este item ( PAGAR PARA CRAFTAR )
                         givePayment = false,                  -- Caso Deseja Efetuar um  pagamento ao craftar este item ( Pode ser UTILIZADO Para Lavagem de Dinheiro )
 
                         requires = {                          -- ITENS NECESSARIOS PARA O CRAFT
                              { item = "placademetal", amount = 10 }, -- ITEM NECESSARIO, QUANTIDADE NECESSARIA
                         }
                    },
               },
 
               farm = { -- ZONA DE FARM
                    list = {
                         {
                              randomicRoutes = false, -- ROTAS RANDOMICAS ( EXEMPLO: DA 1 PULA PRA 3/4 )
                              routes = {              -- ROTAS QUE VAI APARECER PARA INICIAR
                                   'FAIXADEGAZA1',
                                   'NORTE'
                              },
                              dangerRoute = {
                                   status = true,       -- Rota Perigosa ( CHANCE DE CHAMAR A POLICIA )
                                   percentualPolice = 3, -- 3% De chamar A Policia ( APENAS SE O DangerRoute For ativo )
                              },
                              dominationBonus = {       -- Caso utilize o script mirtin_dominacao e queira dobrar/triplicar o farm se tiver a zona dominada.
                                   status = true,       -- Se o sistema ta ativo ou não
                                   zone = 'Drogas',         -- Qual a zona que precisa ter dominada para boostar o farm. Exemplo: [ 'Armas', 'Municao' ou etc ]
                                   bonus = 2,            -- 2x Quantidade que o farm vai duplicar quando estiver com a zona dominada.
                              },
                              itensList = {
                                   { item = "placademetal", minAmount = 1, maxAmount = 2, percentual = 100 },
                              },
                         },
                    },
               },
 
               locations = {                                   -- LOCALIZACOES DESSAS BANCADAS
                    {                                           -- POSSIVEL ADICIONAR VARIAS LOCALIZACOES E VARIAS ORGANIZACOES DIFERENTE
                         name = 'craftproibido',
                         coords = vec3(929.71,38.17,81.1), -- COORDENADAS DA BANCADA
 
                         requireStorage = {                      -- SE VAI PUXAR OS ITENS DO ARMAZEM NA HORA DE FABRICAR ( Caso for true configurar na parte Storages )
                              active = true,
                              name = 'craftproibido'
                         },
                         amountSlots = 2,                                      -- Quantidade maxima que a mesa consegue fabricar ao mesmo tempo. ( Possivel Utilizar para vendas no site )
 
                         tablePermission = "perm.ilegal",          -- PERMISSAO PARA ACESSAR A BANCADA
                         craftPermission = "perm.ilegal",    -- PERMISSAO PARA CRAFTAR ITEM
                         withdrawPermission = "perm.ilegal", -- PERMISSAO PARA RETIRAR ITEM
 
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
          --['Goiania'] = {
          --     itens = {
          --          ['pecadearma'] = 5000,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
          --          ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
          --          ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
          --          ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
          --     },
          --},

          ['Jardimnovomundo'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Helipa'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['MacacoMorro'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          --['Yakuza'] = {
          --     itens = {
          --          ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
          --          ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
          --     },
          --},

          ['Lagunapark'] = {
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
          ['Grota'] = {
               itens = {
                    ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
          ['Chapadao'] = {
               itens = {
                    ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
          
          ['Web'] = {
               itens = {
                    ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Buenavista'] = {
               itens = {
                    ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Franca'] = {
               itens = {
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['polvora'] = 9999999, 
               },
          },

          ['Vovo'] = {
               itens = {
                    ['polvora'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['capsulas'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          -- LAVAGEM
          ['RedLine'] = {
               itens = {
                    ['dirty_money'] = 99999999999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 99999999999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Vinhedo'] = {
               itens = {
                    ['dirty_money'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Deboxe'] = {
               itens = {
                    ['dirty_money'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
          ['Grotalavagem'] = {
               itens = {
                    ['dirty_money'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
          ['Franca1'] = {
               itens = {
                    ['dirty_money'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

         


          -- DESMANCHE
          
          ['Cartel'] = {
               itens = {
                    ['ferro'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['aluminio'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['MacacoDesmanche'] = {
               itens = {
                    ['ferro'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['aluminio'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Vilacanaa'] = {
               itens = {
                    ['ferro'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['aluminio'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['macarico'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
          ----- muamba 

          ['Brasil'] = {
               itens = {
                    ['dirty_money'] = 99999999999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 99999999999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Tequila'] = {
               itens = {
                    ['dirty_money'] = 99999999999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['l-alvejante'] = 99999999999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Macacomuamba'] = {
               itens = {
                    ['plastico'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['c-fio'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['c-ferro'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Madregermano'] = {
               itens = {
                    ['plastico'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['c-fio'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['c-ferro'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['CaixaBaixa'] = {
               itens = {
                    ['plastico'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['c-fio'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['c-ferro'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ---maconha 
          ['RedLinemaconha'] = {
               itens = {
                    ['folhamaconha'] = 99999999999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Veracruz'] = {
               itens = {
                    ['pecadearma'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['gatilho'] = 9999999,   -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['molas'] = 9999999, -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
                    ['metal'] = 9999999,      -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

                    -- COCAÍNA

          ['Novaesperanca'] = {
               itens = {
                    ['pastabase'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
          ['Mafia'] = {
               itens = {
                    ['pastabase'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          ['Tiradentes'] = {
               itens = {
                    ['pastabase'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },

          -- balinha
          ['QuebraCaixote'] = {
               itens = {
                    ['lancaperfume'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },  
          ['CartelMeta'] = {
               itens = {
                    ['anfetamina'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },                  

          ['EmilioPovoa'] = {
               itens = {
                    ['lancaperfume'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
               },
          },
          
          ['Parqueoeste'] = {
               itens = {
                    ['lancaperfume'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
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
          ['craftproibido'] = {
               itens = {
                    ['keycard'] = 9999999,        -- ITEM / QUANTIDADE MAXIMA QUE CONSEGUE GUARDAR
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

               ["FAIXADEGAZA1"] = {
                    { ['x'] = 524.76, ['y'] = 3080.42, ['z'] = 40.91 },   
                    { ['x'] = 67.97, ['y'] = 3693.43, ['z'] = 40.51 }, 
                    { ['x'] = 435.76, ['y'] = 2996.35, ['z'] = 41.28}, 
                    { ['x'] = 1980.16, ['y'] = 3049.24, ['z'] = 50.43 },    
                    { ['x'] = 218.13, ['y'] = 2602.17, ['z'] = 45.78 },
                    { ['x'] = -1122.76, ['y'] = 2682.2, ['z'] = 18.7 },
                    { ['x'] = -2544.01, ['y'] = 2316.69, ['z'] = 33.21 },
                    { ['x'] = -2198.2, ['y'] = 4272.57, ['z'] = 48.53 },
                    { ['x'] = 2336.35, ['y'] = 4859.36, ['z'] = 41.8 }, 
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