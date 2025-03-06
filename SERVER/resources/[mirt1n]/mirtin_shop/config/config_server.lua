--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config = {}
config.oxmysql = true -- Caso use oxmysql coloque true

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGS GERAIS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config.permission = "admin.permissao" -- Permissao de Admin para criar/deletar mercados.
config.alert = 5 -- Quantidade maxima de alertas que o proprietario pode fazer por loja.

config.commands = {
    ['createStore'] = "criarloja", -- COMANDO PARA CRIAR A LOJA
    ['removeStore'] = "deletarloja", -- COMANDO PARA CRIAR A LOJA
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGS DAS LOJAS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config.stores = { -- Configure os tipos de loja
    ["Comida"] = {
        estoque = 1000, -- Valor maximo do estoque da loja ( obs: cada compra de unidade na loja será removido 1 estoque ) ( se a loja não estiver proprietario, não sera descontado estoque )
        percentual = 0.8, -- 80% Percentual de vendas que o proprietario recebe por unidade. ( se a loja não estiver proprietario, não recebera valor )
        abastecimento = 2, -- Valor da unidade para abastecimento ( ex: 1000 de estoque, para completar é R$ 2000 )
        blips = { show = true, blipid = 59, blipcolor = 2, blipscale = 0.5, blipname = "Restaurante" }, -- Blips no mapa ( caso não queira que apareça show = false )

        adjustValue = { -- Para o Proprietario alterar os valores dos itens na loja
            increase = { -- Aumentar o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 100 -- % Porcentagem maxima que ele consegue aumentar o valor dos itens
            },

            decrease = { -- Diminuir o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 10 -- % Porcentagem maxima que ele consegue diminuir o valor dos itens
            },
        },

        storeItens = {
            [1] = { spawn = "marmita", price = 500 },
            [2] = { spawn = "sanduiche", price = 350 },
        }
    },
    ["Contrabando"] = {
        estoque = 100000, -- Valor maximo do estoque da loja ( obs: cada compra de unidade na loja será removido 1 estoque ) ( se a loja não estiver proprietario, não sera descontado estoque )
        percentual = 0.8, -- 80% Percentual de vendas que o proprietario recebe por unidade. ( se a loja não estiver proprietario, não recebera valor )
        abastecimento = 2, -- Valor da unidade para abastecimento ( ex: 1000 de estoque, para completar é R$ 2000 )
        blips = { show = true, blipid = 59, blipcolor = 2, blipscale = 0.5, blipname = "Mercado" }, -- Blips no mapa ( caso não queira que apareça show = false )

        adjustValue = { -- Para o Proprietario alterar os valores dos itens na loja
            increase = { -- Aumentar o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 100 -- % Porcentagem maxima que ele consegue aumentar o valor dos itens
            },

            decrease = { -- Diminuir o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 10 -- % Porcentagem maxima que ele consegue diminuir o valor dos itens
            },
        },

        storeItens = {
            [1] = { spawn = "balinha", price = 500 },
            [2] = { spawn = "maconha", price = 350 },
            [3] = { spawn = "cocaina", price = 350 },
            [4] = { spawn = "WEAPON_SPECIALCARBINE_MK2", price = 300000 },
            [5] = { spawn = "WEAPON_PISTOL_MK2", price = 100000 },
            [6] = { spawn = "AMMO_PISTOL_MK2", price = 500 },
            [7] = { spawn = "AMMO_SPECIALCARBINE_MK2", price = 1000 },
            [8] = { spawn = "c4", price = 1000 },
            [9] = { spawn = "algemas", price = 5000 },

        }
    },

    ["Bebidas"] = {
        estoque = 1000, -- Valor maximo do estoque da loja ( obs: cada compra de unidade na loja será removido 1 estoque ) ( se a loja não estiver proprietario, não sera descontado estoque )
        percentual = 0.3, -- 30% Percentual de vendas que o proprietario recebe por unidade. ( se a loja não estiver proprietario, não recebera valor )
        abastecimento = 2, -- Valor da unidade para abastecimento ( ex: 1000 de estoque, para completar é R$ 2000 )
        blips = { show = true, blipid = 59, blipcolor = 2, blipscale = 0.5, blipname = "Mercado" }, -- Blips no mapa ( caso não queira que apareça show = false )

        adjustValue = { -- Para o Proprietario alterar os valores dos itens na loja
            increase = { -- Aumentar o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 80 -- % Porcentagem maxima que ele consegue aumentar o valor dos itens
            },

            decrease = { -- Diminuir o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 10 -- % Porcentagem maxima que ele consegue diminuir o valor dos itens
            },
        },
        
        storeItens = {
            [1] = { spawn = "cocacola", price = 500 },
            [2] = { spawn = "water", price = 1000 },
        }
    },

    ["Farmacia"] = {
        estoque = 1000, -- Valor maximo do estoque da loja ( obs: cada compra de unidade na loja será removido 1 estoque ) ( se a loja não estiver proprietario, não sera descontado estoque )
        percentual = 0.3, -- 30% Percentual de vendas que o proprietario recebe por unidade. ( se a loja não estiver proprietario, não recebera valor )
        abastecimento = 2, -- Valor da unidade para abastecimento ( ex: 1000 de estoque, para completar é R$ 2000 )
        blips = { show = true, blipid = 59, blipcolor = 2, blipscale = 0.5, blipname = "Mercado" }, -- Blips no mapa ( caso não queira que apareça show = false )

        adjustValue = { -- Para o Proprietario alterar os valores dos itens na loja
            increase = { -- Aumentar o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 80 -- % Porcentagem maxima que ele consegue aumentar o valor dos itens
            },

            decrease = { -- Diminuir o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 10 -- % Porcentagem maxima que ele consegue diminuir o valor dos itens
            },
        },
        
        storeItens = {
            [1] = { spawn = "bandagem", price = 15000 },
            [2] = { spawn = "water", price = 1000 },
        }
    },

    ["Oficina"] = {
        estoque = 10000, -- Valor maximo do estoque da loja ( obs: cada compra de unidade na loja será removido 1 estoque ) ( se a loja não estiver proprietario, não sera descontado estoque )
        percentual = 0.3, -- 30% Percentual de vendas que o proprietario recebe por unidade. ( se a loja não estiver proprietario, não recebera valor )
        abastecimento = 2, -- Valor da unidade para abastecimento ( ex: 1000 de estoque, para completar é R$ 2000 )
        blips = { show = false, blipid = 59, blipcolor = 2, blipscale = 0.5, blipname = "Mercado" }, -- Blips no mapa ( caso não queira que apareça show = false )

        adjustValue = { -- Para o Proprietario alterar os valores dos itens na loja
            increase = { -- Aumentar o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 80 -- % Porcentagem maxima que ele consegue aumentar o valor dos itens
            },

            decrease = { -- Diminuir o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 10 -- % Porcentagem maxima que ele consegue diminuir o valor dos itens
            },
        },
        
        storeItens = {
            [1] = { spawn = "repairkit", price = 500 },
            [2] = { spawn = "pneus", price = 500 },
        }
    },

    ["Mercado"] = {
        estoque = 10000, -- Valor maximo do estoque da loja ( obs: cada compra de unidade na loja será removido 1 estoque ) ( se a loja não estiver proprietario, não sera descontado estoque )
        percentual = 0.8, -- 30% Percentual de vendas que o proprietario recebe por unidade. ( se a loja não estiver proprietario, não recebera valor )
        abastecimento = 700, -- Valor da unidade para abastecimento. ( ex: 1000 de estoque, para completar é R$ 2000 )
        blips = { show = true, blipid = 59, blipcolor = 2, blipscale = 0.5, blipname = "Mercado" }, -- Blips no mapa ( caso não queira que apareça show = false )

        adjustValue = { -- Para o Proprietario alterar os valores dos itens na loja
            increase = { -- Aumentar o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 10 -- % Porcentagem maxima que ele consegue aumentar o valor dos itens
            },

            decrease = { -- Diminuir o valor dos itens
                enable = true, -- Ativado = true, Desativado = false
                max = 5 -- % Porcentagem maxima que ele consegue diminuir o valor dos itens
            },
        },

        storeItens = {
            [1] = { spawn = "marmita", price = 900 },
            [2] = { spawn = "donut", price = 1500 },
            [3] = { spawn = "cocacola", price = 300 },
            [4] = { spawn = "water", price = 800 },
            [5] = { spawn = "mochila", price = 1000 },
            [6] = { spawn = "celular", price = 1000 },
            [7] = { spawn = "roupas", price = 1000 },
            [8] = { spawn = "mochila", price = 500 },
            [9] = { spawn = "scubagear", price = 1000 },
            [10] = { spawn = "radio", price = 500 },
        }
    }
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TRADUÇOES
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config.lang = {
    ['storeNotFound'] = function() return "Tipo de loja não encontrada." end,
    ['storeNotFound2'] = function() return "Loja não encontrada." end,
    ['notPermiss'] = function() return "Você não possui permissao para isso." end,
    ['storeCreated'] = function(id) return "Você criou a loja <b>"..id.."</b>." end,
    ['storeRemove'] = function(id) return "Você deletou a loja <b>"..id.."</b>." end,
    ['buyItens'] = function(valor) return "Você pagou <b>R$ "..vRP.format(valor).."</b>." end,
    ['cartEmpty'] = function(valor) return "Carrinho Vazio." end,
    ['addDesc'] = function(desc) return "Você adicionou uma descricação no mercado para: "..desc.."." end,
    ['withDraw'] = function(amount) return "Você sacou $ "..amount.."."  end,
    ['deposit'] = function(amount) return "Você depositou $ "..amount.."."  end,
    ['notMoney'] = function() return "Você não possui dinheiro."  end,
    ['notMoneyN'] = function() return "O Jogador não possui dinheiro."  end,
    ['invFull'] = function() return "Seu Inventario está cheio."  end,
    ['notStock'] = function() return "A Empresa não possui estoque."  end,
    ['notMoneyW'] = function() return "Sua empresa não possui essa quantia."  end,
    ['notMoneyD'] = function() return "Você não possui essa quantia para depositar."  end,
    ['notMoneyR'] = function() return "Sua empresa não possui dinheiro para recarregar o estoque."  end,
    ['stockFull'] = function() return "Estoque Cheio."  end,
    ['fuelEmp'] = function() return "Você reabasteceu sua empresa com sucesso." end,
    ['buyEmp'] = function() return "Você comprou essa empresa." end,
    ['notPermiss'] = function() return "Você não possui permissão para comprar." end,
    ['alterName'] = function(nome) return "Você alterou o nome para: "..nome.."." end,
    ['errorAlterName'] = function() return "Digite entre 0-25 caracteres." end,
    ['errorAlterContact'] = function() return "Digite entre 0-10 caracteres." end,
    ['errorAddDesc'] = function() return "Digite entre 0-250 caracteres." end,
    ['alterContact'] = function(contato) return "Você alterou o contato para: "..contato.."." end,
    ['alterDiscount'] = function(valor) return "Você alterou sua loja para: "..valor.."% de desconto." end,
    ['increaseValue'] = function(valor) return "Você aumentou os valores da sua loja para: "..valor.."%." end,
    ['notEnableD'] = function() return "Você não pode alterar valores na sua loja." end,
    ['remDesc'] = function() return "Você removeu esse aviso." end,
    ['fullDesc'] = function() return "Sua empresa ja atingiu o maximo de avisos apague alguns para continuar." end,
    ['notOnline'] = function() return "O Jogador não se encontra na cidade." end,
    ['sucessSell'] = function() return "Você vendeu sua empresa com sucesso." end,
    ['notYourself'] = function() return "Você não pode vender para si mesmo. " end,
    ['sucessProposal'] = function(nid) return "Você enviou uma proposta para o (ID: "..nid..")." end,
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTRAS CONFIGS (CONFIGURE APENAS SE ESTIVER CERTEZA DAS FUNÇÕES DA SUA BASE)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterTunnel.checkPermission = function(user_id, permiss)
    return vRP.hasPermission(user_id, permiss) -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

RegisterTunnel.getPosition = function(source)
    return vRPclient.getPosition(source) -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

RegisterTunnel.getName = function(item)
    return vRP.getItemName(item) or item -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

RegisterTunnel.getImagem = function(item)
    return item -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

RegisterTunnel.getItemWeight = function(user_id, item)
    return vRP.getItemWeight(user_id, item) or 1.0 -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

RegisterTunnel.myInvWeight = function(user_id)
    return vRP.computeInvWeight(user_id) or 5.0 -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

RegisterTunnel.myTotalWeight = function(user_id)
    return vRP.getInventoryMaxWeight(user_id) or 5.0 -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

tryFullPayment = function(user_id, valor) 
    return vRP.tryFullPayment(user_id, parseInt(valor)) -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

giveInventoryItem = function(user_id, item, amount)
    vRP.giveInventoryItem(user_id, item, amount, true) -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

giveMoney = function(user_id, amount)
    vRP.giveMoney(user_id, amount, true) -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

RegisterTunnel.hasPermission = function(user_id, permissao)
    return vRP.hasPermission(user_id, permissao) -- CONFIGURE A FUNÇÃO CONFORME A SUA BASE
end

RegisterTunnel.request = function(source, desc)
    return vRP.request(source, desc, 30)
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- QUERYS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
vRP._prepare("mirtin_stores/getLojas", "SELECT * FROM mirtin_shops")
vRP._prepare("mirtin_stores/deleteLoja", "DELETE FROM mirtin_shops WHERE id = @id")
vRP._prepare("mirtin_stores/updateLoja", "UPDATE mirtin_shops SET estoque = @estoque, saldo = @saldo WHERE id = @id")
vRP._prepare("mirtin_stores/updateLojaDesc", "UPDATE mirtin_shops SET informacoes = @informacoes WHERE id = @id")
vRP._prepare("mirtin_stores/updateOwner", "UPDATE mirtin_shops SET proprietario = @proprietario WHERE id = @id")
vRP._prepare("mirtin_stores/updateConfigs", "UPDATE mirtin_shops SET config = @config WHERE id = @id")
vRP._prepare("mirtin_sotres/createDB", "CREATE TABLE IF NOT EXISTS `mirtin_shops` ( `id` int(11) NOT NULL AUTO_INCREMENT, `proprietario` int(11) DEFAULT NULL, `tipo` varchar(50) DEFAULT NULL, `coords` text DEFAULT NULL, `config` text DEFAULT NULL, `saldo` int(11) DEFAULT NULL, `informacoes` text DEFAULT NULL, `estoque` int(11) DEFAULT NULL, PRIMARY KEY (`id`) ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;")

if not config.oxmysql then
    vRP._prepare("mirtin_stores/criarLoja", "INSERT IGNORE INTO mirtin_shops(proprietario,tipo,coords,config,saldo,informacoes,estoque) VALUES (@proprietario,@tipo,@coords,@config,@saldo,@informacoes,@estoque); SELECT LAST_INSERT_ID() AS id")
end

async(function()
    vRP._execute("mirtin_sotres/createDB", {})
end)