Config = {
    InteractionsMenu = {
        [1] = {
            name = "Roupas",
            desc = "Mudança de Roupas",
            image = "clothes",
            type = "clothes",

            body = {
                [1] = {
                    name = "Slot 1",
                    desc = "Disponivel",
                    image = "clothes2",

                    execute = function(source, user_id, index) 
              
                    end,
                },

                [2] = {
                    name = "Slot 2",
                    desc = "Disponivel",
                    image = "clothes2",

                    execute = function(source, user_id, index) 
                        
                    end,
                },

                [3] = {
                    name = "Slot 3",
                    desc = "Disponivel",
                    image = "clothes2",

                    execute = function(source, user_id, index) 

                    end,
                },
                [4] = {
                    name = "Slot 4",
                    desc = "Disponivel",
                    image = "clothes2",

                    execute = function(source, user_id, index) 
              
                    end,
                },

                [5] = {
                    name = "Slot 5",
                    desc = "Disponivel",
                    image = "clothes2",

                    execute = function(source, user_id, index) 
                        
                    end,
                },

                [6] = {
                    name = "Slot 6",
                    desc = "Disponivel",
                    image = "clothes2",

                    execute = function(source, user_id, index) 

                    end,
                },
            }
        },

        -- [2] = {
        --     name = "Jogador",
        --     desc = "Jogador mais proximo de você.",
        --     image = "player",
        --     type = "player",

        --     body = {
        --         [1] = {
        --             name = "Carregar nos ombros",
        --             desc = "Carregar a pessoa mais proxima.",
        --             image = "carry",

        --             execute = function(source, user_id, index) 
        --                 local nplayer = vRPclient.getNearestPlayer(source,3)
        --                 if not nplayer then TriggerClientEvent("Notify",source,"negado","Nenhum jogador proximo.",6000) return false end

        --                 TriggerClientEvent('carregar_ombro', source)
        --                 return true
        --             end,
        --         },

        --         [2] = {
        --             name = "Colocar no Porta-Malas",
        --             desc = "Coloque o jogador mais proximo no portamalas.",
        --             image = "trunkin",

        --             execute = function(source, user_id, index) 
        --                 return exports.vrp_admin:putTrunk(source, user_id)
        --             end,
        --         },

        --         [3] = {
        --             name = "Retirar do Porta-Malas",
        --             desc = "Retire o jogador proximo, que esteja no porta-malas.",
        --             image = "trunk",

        --             execute = function(source, user_id, index) 
        --                 return exports.vrp_admin:admin(source, user_id)
        --             end,
        --         },

        --         -- [4] = {
        --         --     name = "Enviar Dinheiro",
        --         --     desc = "Envie dinheiro para um jogador mais proximo de você.",
        --         --     image = "money",

        --         --     execute = function(source, user_id, index) 
        --         --         local nplayer = vRPclient.getNearestPlayer(source,3)

        --         --         if not nplayer then
        --         --             TriggerClientEvent("Notify",source,"negado","Nenhum jogador proximo.",6000)
        --         --             return false
        --         --         end
                        
        --         --         SetTimeout(100, function()
        --         --             local nuser_id = vRP.getUserId(nplayer)
        --         --             local amount = vRP.prompt(source, "Digite a quantidade que deseja enviar: ", 1000)
        --         --             if not amount or amount == "" or not tonumber(amount) then return false end
        --         --             amount = parseInt(amount)
                            
        --         --             if vRP.request(source, "Você deseja enviar R$ "..amount.." para o ID: "..nuser_id, 30) then
        --         --                 if vRP.tryFullPayment(user_id, amount) then
        --         --                     vRP.giveMoney(nuser_id, amount)
        --         --                     TriggerClientEvent("Notify",source,"sucesso","Você enviou R$ "..amount.." .",6000)
        --         --                     TriggerClientEvent("Notify",nplayer,"sucesso","Você recebeu R$ "..amount,6000)
        --         --                 end
        --         --             end
        --         --         end)

        --         --         return true
        --         --     end,
        --         -- },
        --     }
        -- },
    }
}