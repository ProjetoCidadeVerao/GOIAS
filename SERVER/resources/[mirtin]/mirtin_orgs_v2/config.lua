Config = {}

Config.Main = {
    cmd = 'painelfac', -- Comando para abrir Painel
    createAutomaticOrganizations = true,
    storeUrl = 'https://discord.gg/MPm3Pptfn5', -- Link da Sua Loja
    serverLogo = "https://cdn.discordapp.com/attachments/1220512492250337295/1222014150264356964/logo_sem_fundo.png?ex=6614ac5d&is=6602375d&hm=33693ed8eb138aba40feb4c6e59e46968ef51ec193cb57bbea05aa04650e33e1&",
    blackList = 7, -- Tempo de black em dias (7 Dia(s))
    clearChestLogs = 15, -- Logs do Bau limpar automaticamente de 15 em 15 dias. ( Evitar consumo da tabela )
}

Config.defaultPermissions = { 
    invite = { -- Permissao Para Convidar
        name = "Convidar",
        description = "Esta permissao permite vc convidar as pessoas para sua facção."
    },
    demote = { -- Permissao Para Rebaixar
        name = "Rebaixar",
        description = "Essa permissão permite que o cargo selecionado rebaixe um cargo inferior."
    }, 
    promote = { -- Permissao Para Promover
        name = "Promover",
        description = "Essa permissão permite que o cargo selecionado promova um cargo."
    }, 
    dismiss = { -- Permissao Para Rebaixar
        name = "Demitir",
        description = "Essa permissão permite que o cargo selecionado demita um cargo inferior."
    }, 
    withdraw = { -- Permissao Para Sacar Dinheiro
        name = "Sacar dinheiro",
        description = "Permite que esse cargo selecionado possa sacar dinheiro do banco da facção."
    }, 
    deposit = { -- Permissao Para Depositar Dinheiro
        name = "Depositar dinheiro",
        description = "Permite que esse cargo selecionado possa depositar dinheiro no banco da facção."
    }, 
    message = { -- Permissao para Escrever nas anotaçoes
        name = "Escrever anotações",
        description = "Permite que esse cargo selecionado possa escrever anotações."
    },
    alerts = { -- Permissao para enviar alertas
        name = "Escrever Alertas",
        description = "Permite que esse cargo selecionado possa enviar alertas para todos jogadores."
    },
    chat = { -- Permissao para Falar no chat
        name = "Escrever no chat",
        description = "Permite que esse cargo selecionado possa se comunicar no chat da facção"
    },
}

Config.Groups = {
    ['Mafia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 50000, -- Valor que vai receber
                time = 10, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [MAFIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Gerente [MAFIA]'] = {
                prefix = 'Gerente',
                tier = 2
            },
            ['Membro [MAFIA]'] = {
                prefix = 'Membro',
                tier = 3
            },
        }
    },

    ['Moto Club'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = true, -- Se vai esta ativo ou nao
                amount = 50000, -- Valor que vai receber
                time = 10, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-malha'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['c-cobre'] = 10, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [MOTOCLUBE]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Gerente [MOTOCLUBE]'] = {
                prefix = 'Gerente',
                tier = 2
            },
            ['Membro [MOTOCLUBE]'] = {
                prefix = 'Membro',
                tier = 3
            },
        }
    },

}

Config.Langs = {
    ['offlinePlayer'] = function(source) TriggerClientEvent("Notify", source,"negado","Este jogador não está online.",5000) end,
    ['alreadyFaction'] = function(source) TriggerClientEvent("Notify", source,"negado","Este jogador já esta em uma organização.",5000)  end,
    ['alreadyBlacklist'] = function(source) TriggerClientEvent("Notify", source,"negado","Você está na black-list, não pode receber convites.",5000)  end,
    ['alreadyUserBlacklist'] = function(source) TriggerClientEvent("Notify",source,"negado","Este jogador está em black-list.",5000)  end,
    ['sendInvite'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você enviou o convite.",5000)  end,
    ['acceptInvite'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você aceitou o convite.",5000) end,
    ['acceptedInvite'] = function(source, ply_id) TriggerClientEvent("Notify",source,"sucesso","O "..ply_id.." aceitou o convite. ",5000) end,
    ['bestTier'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não pode fazer isso com alguem com um cargo igual ou maior que o seu.",5000)   end,
    ['youPromoved'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi promovido.",5000)  end,
    ['youPromovedUser'] = function(source, ply_id, group) TriggerClientEvent("Notify",source,"sucesso","Você promoveu o ID: "..ply_id.." para "..group..".",5000) end,
    ['youDemote'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi rebaixado.",5000)  end,
    ['youDemoteUser'] = function(source, ply_id) TriggerClientEvent("Notify",source,"sucesso","Você rebaixou o ID: "..ply_id..".",5000) end,
    ['youDismiss'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi demitido de sua organização .",5000)  end,
    ['youDismissUser'] = function(source, ply_id) TriggerClientEvent("Notify", source,"sucesso","Você demitiu o ID "..ply_id.." .",5000)  end,
    ['waitCooldown'] = function(source) TriggerClientEvent("Notify",source,"negado","Aguarde para fazer isso..",5000) end,
    ['bankNotMoney'] = function(source) TriggerClientEvent("Notify",source,"negado","O Banco da organização não possui essa quantia.",5000)  end,
    ['rewardedGoal'] = function(source, amount) TriggerClientEvent("Notify",source,"sucesso","Você resgatou sua meta diaria e recebeu <b>R$ "..amount.."</b> por isso.",5000) end,
    ['notPermission'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não possui permissão.",5000)  end,
    ['notMoneyDeposit'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro para depositar.",5000)  end
}

if SERVER then
    -- CUSTOM QUERYS
    vRP.prepare('mirtin_orgs_v2/GetUsersGroup', " SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' ")
    vRP.prepare("mirtin_orgs_v2/getUserGroup", "SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' and user_id = @user_id")
    vRP.prepare("mirtin_orgs_v2/updateUserGroup", "UPDATE vrp_user_data SET dvalue = @dvalue WHERE user_id = @user_id and dkey = 'vRP:datatable'")

    -- CAPTURAR GRUPOS COM JOGADOR OFFLINE
    function getUserGroups(user_id)
        local rows = vRP.query("mirtin_orgs_v2/getUserGroup", { user_id = user_id })
        local data = json.decode(rows[1].dvalue) or {}

        if #rows == 0 then 
            return 
        end

        return data.groups
    end

    -- SETAR GRUPO COM JOGADOR OFFLINE
    function updateUserGroups(user_id, groups)
        local rows = vRP.query("mirtin_orgs_v2/getUserGroup", { user_id = user_id })
        local data = json.decode(rows[1].dvalue) or {}

        if #rows == 0 then 
            return 
        end

        if not groups then
            groups = {}
        end

        data.groups = groups

        vRP.execute("mirtin_orgs_v2/updateUserGroup", { user_id = user_id, dvalue = json.encode(data) })
    end

    -- PEGAR DINHEIRO DO BANCO DO JOGADOR
    function getBankMoney(user_id)
        return vRP.getBankMoney(user_id)
    end

    -- IDENTIDADE
    function getUserIdentity(user_id)
        local identity = vRP.getUserIdentity(user_id)
        if not identity then
            return
        end
        
        if identity.nome then
            identity.name = identity.nome
            identity.firstname = identity.sobrenome
        end

        if identity.name2 then
            identity.firstname = identity.name2
        end

        return identity
    end

    function getUserSource(user_id)
        return vRP.getUserSource(user_id)
    end

    function getUserId(source)
        return vRP.getUserId(source)
    end

    function getUsers()
        --user_id,source
        return vRP.getUsers()
    end

    function getUserMyGroups(user_id)
        return vRP.getUserGroups(user_id)
    end

    function hasGroup(user_id, group)
        return vRP.hasGroup(user_id, group)
    end

    function addUserGroup(user_id, group)
        return vRP.addUserGroup(user_id, group)
    end

    function tryFullPayment(user_id, amount)
        return vRP.tryFullPayment(user_id, amount)
    end

    function giveBankMoney(user_id, amount)
        return vRP.giveBankMoney(user_id, amount)
    end

    function getBankMoney(user_id)
        return vRP.getBankMoney(user_id)
    end

    function getItemName(item)
        return vRP.getItemName(item) or item
    end

    function request(source, text, time)
        return vRP.request(source, text, time)
    end

    function removeUserGroup(user_id, group)
        return vRP.removeUserGroup(user_id, group)
    end

    -- REMOVER BLACKLIST
    RegisterCommand('removerbl', function(source,args)
        local user_id = getUserId(source)
        if not user_id then return end

        local ply_id = tonumber(args[1])
        if not ply_id then return end

        if vRP.hasPermission(user_id,"admin.permissao") then
            TriggerClientEvent("Notify", source, "sucesso","Você removeu a blacklist do ID: "..ply_id..".",5000) 
            BLACKLIST:remUser(ply_id)
        end
    end)

    AddEventHandler('vRP:playerSpawn', function(user_id, source)
        TriggerEvent('mirtin_orgs_v2:playerSpawn', user_id, source)
    end)

    AddEventHandler('vRP:playerLeave', function(user_id)
        TriggerEvent('mirtin_orgs_v2:playerLeave', user_id)
    end)
end


--[[ 
    Como Utilizar EXPORT de Guardar / Retirar Item no Bau:
    ( Colocar Esse EXPORT na função de retirar/guardar item de seu inventario)
    
    user_id: user_id, -- ID Do Jogador,
    action: withdraw or deposit, -- Ação que foi feita Retirou/Depositou
    item: item, -- Spawn do item que foi retirado/guardado.
    amount: quantidade, -- Quantidade do item que foi depositada/retirada

    EXPORT: 
    exports.mirtin_orgs_v2:addLogChest(user_id, action, item, amount)
]]

--[[ 
    Como Utilizar EXPORT De METAS DIARIAS:
    ( Colocar esse EXPORT na função de Guardar Itens no Armazem ou Coletar Itens no Farm )

    user_id: user_id, -- ID Do Jogador,
    item: item, -- Spawn do item que foi guardado/farmado.
    amount: quantidade, -- Quantidade do item que foi guardada/farmada.

    EXPORT: 
    exports.mirtin_orgs_v2:addGoal(user_id, item, amount)
]]