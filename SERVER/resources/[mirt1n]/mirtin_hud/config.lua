--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIGS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Config = {
    Hud = {
        threadPlyDelay = 800, -- Delay da a pé ( quanto menor mais rapido a atualizacao da hud mas menos otimizado.. )
        threadVehicleDelay = 50, -- Delay da Thread No Veiculo ( quanto menor mais rapido a atualizacao da hud mas menos otimizado.. )
        maxhealth = 400, -- Maximo de vida no servidor
        speedometer = 3.6, -- Multiplicador da velocidade [ ATUALMENTE EM KM/h ]

        cupom = { -- SISTEMA DE CUPOM
            active = true, -- Ativado / Desativado

            name = "GOIAS35" -- nome do cupom
        },
        
        assault = { -- Horario de Assalto
            active = true, -- Ativado / Desativado

            hourInit = "00", -- Hora que inicia
            hourFinish = "05" -- Hora que acaba
        },

        foodSystem = { -- SISTEMA DE FOME E SEDE
            active = true, -- Ativado / Desativado
            eventHunger = "vrp_hud:updateHunger",
            eventThrist = "vrp_hud:updateThrist"
        },
        
        seatbelt = { -- SISTEMA DE CINTO DE SEGURANCA
            key = "g", -- Tecla para colocar/retirar o cinto
        },

        colors = { -- Cores da HUD
            primaryBgColor = "#transparent", -- Cor do lado esquerdo do gradient do background
            secundaryBgColor = "#transparent", -- Cor do lado direito do gradient do background
            primaryIconColor = "#3a3a3a", -- Cor do lado esquerdo do gradiente do icone
            secondaryIconColor = "#3a3a3a", -- Cor do lado direito do gradiente do icone
            borderColor = "transparent", -- Cor da borda
            titleColor = "#ffffff", -- Cor dos titulos
            subtitleColor = "#fff", -- Cor dos textos em baixo
        },

        events = { -- CONFIGURE SEUS EVENTOS PARA SEU VOIP FUNCIONAR 100% COM A HUD
            range = "pma-voice:setTalkingMode", -- SEU EVENTO QUE SEU VOIP ENVIA PARA ALTERAR AS INFORMACOES NA HUD ( ALTERAR DISTANCIA DO VOIP )
            radio = "pma-voice:setPlayerRadio", -- SEU EVENTO QUE SEU VOIP ENVIA PARA ALTERAR AS INFORMACOES NA HUD ( ALTERAR FREQUENCIA DO RADIO )
        },
    },

    Notify = {
        eventName = "Notify",

        colors = { -- CORES DA NOTIFY ( SIM, POSSIVEL VC CRIAR MAIS TIPOS DE NOTIFYS )
            ["aviso"] = {
                title = "#4A93FF",
                background = "#4E95FF",
                border = "#5D7CAB"
            },
            ["sucesso"] = {
                title = "#5CA795",
                background = "#46BFBF",
                border = "#5CA795"
            },
            ["negado"] = {
                title = "#FD4E4E",
                background = "#FD4E4E",
                border = "#A75C5C"
            },
            ["importante"] = {
                title = "#FFEB81",
                background = "#FFE34F",
                border = "#A79B5C"
            },
        }
    },
    
    Chat = {
        eventNameAlerts = "NotifyAlert", -- Notify de Alertas
        eventNameChat = "chatMessage",
        
        Alerts = { -- COMANDOS DE ALERTAS ( NOTIFY DIFERENCIADA )
            {
                commandName = "adm", -- Comando
                permiss = "admin.permissao", -- Permissao para usar o comando
                SeePermission = nil, -- Permissao que vai ver essa notificação ( nil =  todos )
                author = true, -- Se vai enviar o nome do author ex: mirtin zera enviou...
                time = 60, -- Tempo em segundo(s) que o alerta vai ficar na tela
                title = "Prefeitura", -- Titulo do alerta
                color = {
                    title = "#5CA795",
                    background = "#2F2E62",
                    border = "#5E5CA7"
                }
            },

            {
                commandName = "ilegal", -- Comando
                permiss = "perm.ilegal", -- Permissao para usar o comando
                SeePermission = nil, -- Permissao que vai ver essa notificação ( nil =  todos )
                author = true, -- Se vai enviar o nome do author ex: mirtin zera enviou...
                time = 60, -- Tempo em segundo(s) que o alerta vai ficar na tela
                title = "Ilegal Informa:", -- Titulo do alerta
                color = {
                    title = "#5CA795",
                    background = "#2F2E62",
                    border = "#5E5CA7"
                }
            },

            {
                commandName = "aems", -- Comando
                permiss = "perm.hospital", -- Permissao para usar o comando
                SeePermission = nil, -- Permissao que vai ver essa notificação ( nil =  todos )
                author = true, -- Se vai enviar o nome do author ex: mirtin zera enviou...
                time = 60, -- Tempo em segundo(s) que o alerta vai ficar na tela
                title = "Hospital", -- Titulo do alerta
                color = {
                    title = "#5CA795",
                    background = "#2F2E62",
                    border = "#5E5CA7"
                }
            },

            {
                commandName = "race", -- Comando
                permiss = "perm.race", -- Permissao para usar o comando
                SeePermission = nil, -- Permissao que vai ver essa notificação ( nil =  todos )
                author = true, -- Se vai enviar o nome do author ex: mirtin zera enviou...
                time = 60, -- Tempo em segundo(s) que o alerta vai ficar na tela
                title = "Mecanica", -- Titulo do alerta
                color = {
                    title = "#5CA795",
                    background = "#2F2E62",
                    border = "#5E5CA7"
                }
            }
            
        },
       
        Commands = { -- CHAT PARA ORGANIZACOES E ETC
            {
                commandName = "192",
                permiss = "perm.hospital", -- Permissao para usar o comando
                SeePermission = nil, -- Permissao que vai ver essa notificação ( nil =  todos )
                author = true, -- Se vai enviar o nome do author ex: mirtin zera enviou...
                title = "HOSPITAL: ", -- Titulo da mensagem
                color = { 
                    background = "#FF0000", -- Cor do Fundo da Mensagem em RGB
                },
            },

            {
                commandName = "mec",
                permiss = "perm.mecanico", -- Permissao para usar o comando
                SeePermission = nil, -- Permissao que vai ver essa notificação ( nil =  todos )
                author = true, -- Se vai enviar o nome do author ex: mirtin zera enviou...
                title = "MECANICA: ", -- Titulo da mensagem
                color = { 
                    background = "#45D805", -- Cor do Fundo da Mensagem em RGB
                },
            },
            
            -- {
            --     commandName = "ilegal",
            --     permiss = "perm.policia", -- Permissao para usar o comando
            --     SeePermission = nil, -- Permissao que vai ver essa notificação ( nil =  todos )
            --     author = false, -- Se vai enviar o nome do author ex: mirtin zera enviou...
            --     title = "ILEGAL: ", -- Titulo da mensagem
            --     color = { 
            --         background = "#000000", -- Cor do Fundo da Mensagem em RGB
            --     },
            -- },

            {
                commandName = "190",
                permiss = "perm.policia", -- Permissao para usar o comando
                SeePermission = nil, -- Permissao que vai ver essa notificação ( nil =  todos )
                author = true, -- Se vai enviar o nome do author ex: mirtin zera enviou...
                title = "190: ", -- Titulo da mensagem
                color = { 
                    background = "#2647F4", -- Cor do Fundo da Mensagem em RGB
                },
            },
        },
        
        Proximity = { -- CHATS PARA JOGADORES PROXIMOS
            active = true, -- SE O CHAT PARA JOGADORES PROXIMO FOR ATIVO.
            
            List = {
                {
                    permiss = "admin.permissao", -- Permissao
                    prefix = "[ADMIN]", -- Prefix da mensagem [ADMIN]: Enviou
                    distance = 30.0, -- Defina a distancia de quem pode ver esse chat
                    color = { 
                        background = "#2F2E62", -- Cor do Fundo da Mensagem em HEX
                    },
                },

                {
                    permiss = "vip.permissao", -- Permissao
                    prefix = "[VIP]", -- Prefix da mensagem [ADMIN]: Enviou
                    distance = 30.0, -- Defina a distancia de quem pode ver esse chat
                    color = { 
                        background = "#2F2E62", -- Cor do Fundo da Mensagem em HEX
                    },
                },

                { -- CHAT PARA JOGADORES SEM PERMISSAO, DISTANCIA 30.0 METROS ( SEMPRE DEIXAR EM ULTIMO CASO QUEIRA HABILITAR PARA RANDOLAS )
                    permiss = nil, -- Permissao
                    prefix = "[PLAYER]", -- Prefix da mensagem [PLAYER]: Enviou
                    distance = 30.0, -- Defina a distancia de quem pode ver esse chat
                    color = { 
                        background = "#2F2E62", -- Cor do Fundo da Mensagem em HEX
                    },
                },
            }
        },

        filter = { -- FILTRO DE COMANDOS
            { command = "/dancar", desc = "Dance com seus amigos." },
            { command = "/namorar", desc = "Namore alguem." },
            { command = "/mirtin", desc = "Gatão." },
            { command = "/boliva", desc = "Feioso." },
        },

        Langs = { -- Traduçoes
            ['notPermiss'] = function(source) TriggerClientEvent(Config.Notify.eventName, source, "negado","Você não possui permissão.", 5000) end,
        }
    },
    
    ProgressBar = {
        eventName = "progress",

        color = {
            title = "#5CA795",
            background = "#2F2E62",
            border = "#5E5CA7"
        }
    },
    
    NotifyItens = {
        eventName = "NotifyItem",
        imgDir = "http://191.96.81.87/inventario/"
    }
}

if SERVER then -- CONFIGURE SUAS FUNCTIONS SERVER-SIDES
    function getUserId(source)
        return vRP.getUserId(source)
    end

    function getUserIdentity(user_id)
        return vRP.getUserIdentity(user_id)
    end

    function hasPermission(user_id, perm)
        return vRP.hasPermission(user_id, perm)
    end

    function getUsersByPermission(perm)
        return vRP.getUsersByPermission(perm)
    end

    AddEventHandler('onResourceStart', function(resourceName)
        if (GetCurrentResourceName() == resourceName) then
            ExecuteCommand("setr game_enableFlyThroughWindscreen true")
        end
    end)
end


--[[ 
    TUTORIAL: COMO USAR O CHAT

    SERVER-SIDE
    TriggerClientEvent('chatMessage', source, message) (MENSAGEM)
    TriggerClientEvent('chatMessage', source, "[CHAT LOCAL]", message) (PREFIX | MENSAGEM)
    TriggerClientEvent('chatMessage', source, "[CHAT LOCAL]", {255,0,0}, message) (PREFIX | COLOR | MENSAGEM)

    CLIENT-SIDE
    TriggerEvent('chatMessage', message) (MENSAGEM)
    TriggerEvent('chatMessage', "[CHAT LOCAL]", message) (PREFIX | MENSAGEM)
    TriggerEvent('chatMessage', "[CHAT LOCAL]", {255,0,0}, message) (PREFIX | COLOR | MENSAGEM)
]]