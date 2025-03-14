Config = {
    DebugMode = false, -- DEBUGS DE PRINTS

    delayThread = 3000, -- DELAY DA THREAD QUE CONTABILIZA OS PONTOS DA DOMINACAO ( MEXA SO SE TIVER NECESSIDADE )
    minHealth = 101, -- MINIMO DE VIDA DO SEU SERVIDOR
    saveZones = false, -- SALVAR OS DADOS NO BANCO DE DADOS ( MANTER AS AREAS DOMINADAS SE REINICIAR O SERVIDOR OU SCRIPT )

    CreateModePerm = "admin.permissao", -- Permissao para o comando /create_zone, feito para facilitar a desenhar a zona de dominação.
    debugPoly = false, -- DEBUG DAS coordsZone da dominação. ( ATIVAR APENAS QUANDO ESTIVER CRIANDO AS AREAS )

    Zones = {
        
        { -- INICIO DE UMA ZONA
            name = "Armas", -- NOME DA ZONA DE DOMINACAO

            coords = vec3(54.64,3712.75,39.75), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
            coordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
                vec3(252.6,4278.99,37.67),
                vec3(-252.69,3738.82,54.74),
                vec3(452.37,3386.69,42.21),
                vec3(627.29,4177.31,36.01),
                vec3(243.13,4281.86,33.2)
            },

            permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
                { org = "Mafia 01", permission = "perm.mafia01" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "China", permission = "perm.china" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Tokyo", permission = "perm.tokyo" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
            },

            dominationConfig = {
                dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
                vehicles = true, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
                playerPoints = 1, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
                totalPoints = 1000, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
                cooldown = 5, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
            },

            avaliableWeapons = {
                ["Pistola"] = true,
                ["Metralhadora"] = true,
                ["Smg"] = false,
                ["Fuzil"] = false,
                ["Sniper"] = true,
                ["Shotgun"] = true,
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
            --[[ local users = vRP.getUsersByPermission(permission)
                for source,user_id in pairs(users) do
                    async(function()
                        vRP.giveInventoryItem(user_id, "dinheiro-sujo", 30) -- GIVANDO DINHEIRO NO INVENTARIO
                    end)
                end  ]]
            ------- FIM EXEMPLO ------

            end,
            
        }, -- FIM DE UMA ZONA

        { -- INICIO DE UMA ZONA
            name = "Municao", -- NOME DA ZONA DE DOMINACAO

            coords = vec3(3534.51,3737.94,36.7), -- LOCALIZAÇÃO DA ZONA DE DOMINAÇÃO
            coordsZone = { -- CORDENADAS DA ZONA DE DOMINAÇÃO ( LIGUE OS PONTOS EM LINHA RETAS SEM CRUZAR )
                vec3(3621.62,3821.55,32.88),
                vec3(3375.78,3777.33,46.06),
                vec3(3369.31,3644.85,60.34),
                vec3(3623.84,3571.19,56.54),
                vec3(3702.35,3712.28,37.5),
                vec3(3626.78,3819.64,31.46)
            },

            permissions = { -- PERMISSOES DE QUEM VAI PODER DOMINAR O LOCAL
                { org = "Mafia 01", permission = "perm.mafia01" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "China", permission = "perm.china" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
                { org = "Tokyo", permission = "perm.tokyo" }, -- SE FOR ADICIONAR A MESMA PERMISSAO EM OUTRO LOCAL, MANTER A ORG COM MESMO NOME!!
            },

            dominationConfig = {
                dominationDebug = true, -- DEBUG PARA APARECER PARA TODOS JOGADORES PROXIMOS A ZONA DEMARCADA.
                vehicles = false, -- SE VAI PERMITIR TRANSIÇÃO DE VEICULOS DENTRO DA ZONA.
                playerPoints = 100, -- PONTUACAO QUE CADA JOGADOR VAI SOMAR NA DOMINACAO
                totalPoints = 1000, -- TOTAL DE PONTOS NECESSARIOS PARA DOMINAR A ZONA
                cooldown = 5, -- COOLDOWN EM MINUTOS, PARA A ZONA APOS SER DOMINADA.
            },

            avaliableWeapons = {
                ["Pistola"] = false,
                ["Metralhadora"] = true,
                ["Smg"] = false,
                ["Fuzil"] = false,
                ["Sniper"] = true,
                ["Shotgun"] = true,
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
            --[[ local users = vRP.getUsersByPermission(permission)
                for source,user_id in pairs(users) do
                    async(function()
                        vRP.giveInventoryItem(user_id, "dinheiro-sujo", 30) -- GIVANDO DINHEIRO NO INVENTARIO
                    end)
                end  ]]
            ------- FIM EXEMPLO ------

            end,
            
        }, -- FIM DE UMA ZONA
        
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