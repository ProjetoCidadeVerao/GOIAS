Config = {
    -- SISTEMA DE SURVIVAL
    Survival = {
        mouse = true, -- SE A TELA DE MORTE VAI TER MOUSE
        minHealth = 101, -- MINIMO DE VIDA NO SERVIDOR
        deathTime = 300, -- TEMPO DE MORTE
        showAttacker = true, -- MOSTRAR QUAL ID QUE TE MATOU

        -- WEEBHOOK DAS MORTES
        webhook = {
            url = 'https://discord.com/api/webhooks/1319755840030375947/0mAZfw4MNvsPH5CjogxmZaeVSLzfYi7FMuTNTb1_Ixri5aK-sAqhdcAtlY0bCtbS-lVs',
            logo = 'https://cdn.discordapp.com/attachments/941082057449279498/951537784433303663/logo_sem_fundo.png',
            color = 6356736
        },

        -- TELAS DE RESPAWNS
        respawns = {
            {
                image = 'assets/praca.png',
                name = 'Praça',
                coords = vec3(-301.92,-918.27,32.27),
            },

            {
                image = 'assets/hospital.png',
                name = 'Hospital',
                coords = vec3(-493.54,-977.2,24.21),
            },
        },

        -- DEPENDENCIAS ANTES DE EXECUTAR A TELA DE MORTE
        dependencyDeath = function()
            if in_arena then
                return
            end

            return true
        end,

        -- ATUALIZAR AS INFORMACOES QUANDO JOGADOR MORRER OU REVIVEREM ELE.
        updateDeath = function(type)
            if type == 'death' then
                -- TUDO QUE ESTIVER AQUI DENTRO VAI RODAR APENAS QUANDO O JOGADOR MORRER.
                TriggerEvent('radio:Outservers')
                TriggerServerEvent("pma-voice:toggleMutePlayer",true)
            end

            if type == 'revive' then
                -- TUDO QUE ESTIVER AQUI DENTRO VAI RODAR APENAS QUANDO ALGUEM REVIVER O JOGADOR OU /god.
                TriggerEvent('radio:Outservers')
                TriggerServerEvent("pma-voice:toggleMutePlayer",false)
            end
        end,

        -- SISTEMA DE ANIMAÇÃO AO MORRER
        animDeath = function(ped, firstAlert)
            --if not IsEntityPlayingAnim(ped,"misslamar1dead_body","dead_idle",3) then -- Caso voce queira utilizar por animação
                --vRP.playAnim(false,{{"misslamar1dead_body","dead_idle"}},true)
            --end 

            SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)

            --SetFollowPedCamViewMode(4) -- FORÇAR PED NA PRIMEIRA PESSOA
        end,

        -- VALIDAR QUANDO PLAYER CLICAR EM RESPAWNAR
        finishDeath = function(source, user_id)
            if SERVER then
                vRP.clearInventory(user_id)
                -- VERIFICAÇÕES SERVER-SIDE
            else
                -- VERIFICAÇÕES CLIENT-SIDE
                TriggerServerEvent("clearInventory")
                TriggerServerEvent("pma-voice:toggleMutePlayer", false)
                TriggerEvent("resetBleeding")
                TriggerEvent("resetDiagnostic")
            end
        end,
    },

    -- CONFIG SISTEMA DE KILL FEED
    KillFeed = {
        active = false, -- active = true ( Sistema Ativo ), active = false ( Sistema Desligado )
        command = 'feed', -- COMANDO PARA LIGAR / DESLIGAR KILL FEED ( SO VAI DESLIGAR PRA QUEM DIGITAR O COMANDO )
        keyboard = 'F5', -- ABRIR KILL FEED
        permiss = 'admin.permissao', -- PERMISSAO PARA ABRIR KILL FEED
    },

    -- CONFIG SISTEMA DE RANKS
    Ranks = {
        active = true, -- active = true ( Sistema Ativo ), active = false ( Sistema Desligado )
        keyButton = 'R', -- Para abrir o rank caso o mouse estiver desligado.

        reset = {
            active = true, -- se vai resetar ou não
            time = 7, -- 7 Dias para resetar os ranks
        },
    },

    -- CONFIG SISTEMA DE HS
    Headshot = {
        active = true, -- active = true ( Sistema Ativo ), active = false ( Sistema Desligado )

        weapons = {
            [GetHashKey('WEAPON_SNSPISTOL_MK2')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_PISTOL_MK2')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_COMBATPISTOL')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_MACHINEPISTOL')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_SMG_MK2')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_SMG')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_ASSAULTSMG')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_MICROSMG')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_MUSKET')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_CARBINERIFLE')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
            [GetHashKey('WEAPON_CARBINERIFLE_MK2')] = true, -- ARMA ATIVADA PARA HS A DISTANCIA
        }
    },

    -- CONFIG SISTEMA DE MARCADOR
    KillMarker = {
        active = true,

        img = {
            active = true, -- SISTEMA ATIVO
            time = 2, -- 2 Segundo(s) que vai ficar na tela
        },

        sound = {
            active = true, -- SISTEMA ATIVO
        }
    },

    -- CONFIG SISTEMA DE ANTI CL
    AntiCL = {
        active = true, -- active = true ( Sistema Ativo ), active = false ( Sistema Desligado )
        command = 'cl', -- COMANDO PARA LIGAR / DESLIGAR ANTI-CL ( SO VAI DESLIGAR PRA QUEM DIGITAR O COMANDO )
        hideDelay = 30, -- Delay que vai sumir a notifação no chão.

        marker = function(data)
            DrawText3D(data.coords.x,data.coords.y,data.coords.z, "~r~QUIT ~n~ ~w~ID: ".. data.user_id .." ~n~ Motivo: "..data.reason)
        end,
    },

    -- CONFIG SISTEMA DE ANTI VDM
    AntiVDM = {
        active = true, -- active = true ( Sistema Ativo ), active = false ( Sistema Desligado )
    },

    DeathReasons = {
        [0] = "Não especificado",
        [-1569615261] = "Soco",
        [-100946242] = "Animal",
        [148160082] = "Puma",
        [-1716189206] = "Arma Faca",
        [1737195953] = "Arma Cassetete",
        [1317494643] = "Arma Martelo",
        [-1786099057] = "Arma Taco de Baseball",
        [1141786504] = "Arma Taco de Golf",
        [-2067956739] = "Arma CrowBar",
        [911657153] = "Arma Tazer",
        [100416529] = "Arma Sniper",
        [205991906] = "Arma Heavy Sniper",
        [856002082] = "Arma Sniper Remota",
        [-1568386805] = "Arma Lança Granada",
        [1305664598] = "Arma Lança Granada Fumaça",
        [-1312131151] = "Arma RPG",
        [375527679] = "Arma Missel",
        [324506233] = "Arma Missel",
        [1752584910] = "WEAPON_STINGER",
        [1119849093] = "Arma Minigun",
        [-1813897027] = "Granada",
        [741814745] = "Bomba Adesiva",
        [-37975472] = "Granada de Fumaça",
        [-1600701090] = "Granada de Gas",
        [615608432] = "Molotov",
        [101631238] = "Extintor de Incendio",
        [600439132] = "Arma Bola de Tenis",
        [-1090665087] = "Missel Teleguiado",
        [1223143800] = "Espinhos",
        [-10959621] = "Afogamento",
        [1936677264] = "Afogamento com Veiculo",
        [-1955384325] = "Sangrando",
        [-1833087301] = "Eletrocutado",
        [539292904] = "Explosão",
        [-842959696] = "Pulou de um lugar muito alto",
        [910830060] = "ExaustÃo",
        [133987706] = "Prensado por Veiculo",
        [-1553120962] = "Atropelado",
        [341774354] = "WEAPON_HELI_CRASH",
        [-544306709] = "Pegando fogo",
        [GetHashKey('WEAPON_SNSPISTOL_MK2')] = "Arma WEAPON_SNSPISTOL_MK2",
        [GetHashKey('WEAPON_PISTOL_MK2')] = "Arma WEAPON_PISTOL_MK2",
        [GetHashKey('WEAPON_GUSENBERG')] = "Arma WEAPON_GUSENBERG",
        [GetHashKey('WEAPON_PISTOL50')] = "Arma WEAPON_PISTOL50",
        [GetHashKey('WEAPON_PISTOL')] = "Arma WEAPON_PISTOL",
        [GetHashKey('WEAPON_HEAVYPISTOL')] = "Arma WEAPON_HEAVYPISTOL",
        [GetHashKey('WEAPON_REVOLVER')] = "Arma WEAPON_REVOLVER",
        [GetHashKey('WEAPON_GADGETPISTOL')] = "Arma WEAPON_GADGETPISTOL",
        [GetHashKey('WEAPON_HATCHET')] = "Arma WEAPON_HATCHET",
        [GetHashKey('WEAPON_KNIFE')] = "Arma WEAPON_KNIFE",
        [GetHashKey('WEAPON_DAGGER')] = "Arma WEAPON_DAGGER",
        [GetHashKey('WEAPON_KNUCKLE')] = "Arma WEAPON_KNUCKLE",
        [GetHashKey('WEAPON_MACHETE')] = "Arma WEAPON_MACHETE",
        [GetHashKey('WEAPON_SWITCHBLADE')] = "Arma WEAPON_SWITCHBLADE",
        [GetHashKey('WEAPON_WRENCH')] = "Arma WEAPON_WRENCH",
        [GetHashKey('WEAPON_HAMMER')] = "Arma WEAPON_HAMMER",
        [GetHashKey('WEAPON_GOLFCLUB')] = "Arma WEAPON_GOLFCLUB",
        [GetHashKey('WEAPON_CROWBAR')] = "Arma WEAPON_CROWBAR",
        [GetHashKey('WEAPON_FLASHLIGHT')] = "Arma WEAPON_FLASHLIGHT",
        [GetHashKey('WEAPON_BAT')] = "Arma WEAPON_BAT",
        [GetHashKey('WEAPON_BOTTLE')] = "Arma WEAPON_BOTTLE",
        [GetHashKey('WEAPON_BATTLEAXE')] = "Arma WEAPON_BATTLEAXE",
        [GetHashKey('WEAPON_POOLCUE')] = "Arma WEAPON_POOLCUE",
        [GetHashKey('WEAPON_FLARE')] = "Arma WEAPON_FLARE",
        [GetHashKey('WEAPON_MACHINEPISTOL')] = "Arma WEAPON_MACHINEPISTOL",
        [GetHashKey('WEAPON_SMG_MK2')] = "Arma WEAPON_SMG_MK2",
        [GetHashKey('WEAPON_SMG')] = "Arma WEAPON_SMG",
        [GetHashKey('WEAPON_ASSAULTSMG')] = "Arma WEAPON_ASSAULTSMG",
        [GetHashKey('WEAPON_MICROSMG')] = "Arma WEAPON_MICROSMG",
        [GetHashKey('WEAPON_COMBATPDW')] = "Arma WEAPON_COMBATPDW",
        [GetHashKey('WEAPON_MINISMG')] = "Arma WEAPON_MINISMG",
        [GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = "Arma WEAPON_SAWNOFFSHOTGUN",
        [GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = "Arma WEAPON_PUMPSHOTGUN_MK2",
        [GetHashKey('WEAPON_ASSAULTSHOTGUN')] = "Arma WEAPON_ASSAULTSHOTGUN",
        [GetHashKey('WEAPON_BULLPUPSHOTGUN')] = "Arma WEAPON_BULLPUPSHOTGUN",
        [GetHashKey('WEAPON_HEAVYSHOTGUN')] = "Arma WEAPON_HEAVYSHOTGUN",
        [GetHashKey('WEAPON_DBSHOTGUN')] = "Arma WEAPON_DBSHOTGUN",
        [GetHashKey('WEAPON_COMBATSHOTGUN')] = "Arma WEAPON_COMBATSHOTGUN",
        [GetHashKey('WEAPON_ASSAULTRIFLE')] = "Arma WEAPON_ASSAULTRIFLE",
        [GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = "Arma WEAPON_ASSAULTRIFLE_MK2",
        [GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = "Arma WEAPON_SPECIALCARBINE_MK2",
        [GetHashKey('WEAPON_DOUBLEACTION')] = "Arma WEAPON_DOUBLEACTION",
        [GetHashKey('WEAPON_CARBINERIFLE')] = "Arma WEAPON_CARBINERIFLE",
        [GetHashKey('WEAPON_CARBINERIFLE_MK2')] = "Arma WEAPON_CARBINERIFLE_MK2",
        [GetHashKey('WEAPON_SPECIALCARBINE')] = "Arma WEAPON_SPECIALCARBINE",
        [GetHashKey('WEAPON_ADVANCEDRIFLE')] = "Arma WEAPON_ADVANCEDRIFLE",
        [GetHashKey('WEAPON_BULLPUPRIFLE')] = "Arma WEAPON_BULLPUPRIFLE",
        [GetHashKey('WEAPON_BULLPUPRIFLE_MK2')] = "Arma WEAPON_BULLPUPRIFLE_MK2",
        [GetHashKey('WEAPON_COMPACTRIFLE')] = "Arma WEAPON_COMPACTRIFLE",
        [GetHashKey('WEAPON_MILITARYRIFLE')] = "Arma WEAPON_MILITARYRIFLE",
        [GetHashKey('WEAPON_HEAVYRIFLE')] = "Arma WEAPON_HEAVYRIFLE",
        [GetHashKey('WEAPON_TACTICALRIFLE')] = "Arma WEAPON_TACTICALRIFLE",
        [GetHashKey('WEAPON_MG')] = "Arma WEAPON_MG",
        [GetHashKey('WEAPON_COMBATMG')] = "Arma WEAPON_COMBATMG",
        [GetHashKey('WEAPON_COMBATMG_MK2')] = "Arma WEAPON_COMBATMG_MK2",
        [GetHashKey('WEAPON_GUSENBERG')] = "Arma WEAPON_GUSENBERG",
        [GetHashKey('WEAPON_SNIPERRIFLE')] = "Arma WEAPON_SNIPERRIFLE",
        [GetHashKey('WEAPON_HEAVYSNIPER')] = "Arma WEAPON_HEAVYSNIPER",
        [GetHashKey('WEAPON_HEAVYSNIPER_MK2')] = "Arma WEAPON_HEAVYSNIPER_MK2",
        [GetHashKey('WEAPON_MARKSMANRIFLE')] = "Arma WEAPON_MARKSMANRIFLE",
        [GetHashKey('WEAPON_MARKSMANRIFLE_MK2')] = "Arma WEAPON_MARKSMANRIFLE_MK2",
        [GetHashKey('WEAPON_PRECISIONRIFLE')] = "Arma WEAPON_PRECISIONRIFLE",
        [GetHashKey('WEAPON_STUNGUN')] = "Arma WEAPON_STUNGUN",
    }
}

if SERVER then
    function getUserSource(user_id)
        return vRP.getUserSource(user_id)
    end

    function getUserId(source)
        return vRP.getUserId(source)
    end

    function getUserIdentity(user_id)
        local identity = vRP.getUserIdentity(user_id)

        return identity and ('%s %s'):format(identity.name, identity.firstname) or "Individuo Indigente"
    end

    function getUsersByPermission(perm)
        return vRP.getUsersByPermission(perm)
    end
    
    function hasPermission(user_id, perm)
        return vRP.hasPermission(user_id, perm)
    end

    local callPermission = {
        ['adm'] = 'admin.permissao',
        ['med'] = 'perm.hospital',
    }

    local cooldown = {}
    function RegisterTunnel.call(type)
        local source = source
        local user_id = vRP.getUserId(source)
        if not user_id then 
            return 
        end

        if cooldown[user_id] and cooldown[user_id] > os.time() then
            TriggerClientEvent("Notify", source, "negado", "Você precisa aguardar " .. (cooldown[user_id] - os.time()) .. " segundos para fazer um novo chamado.", 5)
            return
        end

        local accepted = false
        local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(source)))

        local desc = "Estou precisando de ajuda, por favor me ajude."
        if type == 'adm' then
            desc = vRP.prompt(source, "Descreva seu chamado:", "")

            if not desc then
                return
            end
        end

        cooldown[user_id] = (os.time() + 30)

        local players = vRP.getUsersByPermission(callPermission[type])
        for _, ply_id in pairs(players) do
            local player = vRP.getUserSource(parseInt(ply_id))
            if not player then
                goto continue
            end

            async(function()
                if not vRP.request(player, "Você deseja aceitar o chamado do ID:" .. user_id .. "? Motivo: " .. desc, 30) then
                    return
                end

                if accepted then
                    TriggerClientEvent("Notify", source, "negado", "Este chamado ja foi aceito.", 5)
                    return
                end

                local nidentity = vRP.getUserIdentity(parseInt(ply_id))
                
                accepted = true
                vRPclient._setGPS(player, x, y)
                TriggerClientEvent("Notify", source, "sucesso", "O <b> " .. nidentity.nome .. " " .. nidentity.sobrenome .. " </b> aceitou o seu chamado..", 5)
            end)

            ::continue::
        end

        TriggerClientEvent("Notify", source, "sucesso", "Você fez um chamado, aguarde para ser atendido.", 5)
    end
else
    vRPserver = Tunnel.getInterface("vRP","mirtin_survival")
    
    RegisterNetEvent("mirtin_survival:updateArena", function(boolean)
        in_arena = boolean
    end)

    RegisterNUICallback("call", function(data, cb)
        vTunnel._call(data.type)
    end)


    function DrawText3D(x,y,z, text)
        local onScreen,_x,_y=World3dToScreen2d(x,y,z)
        local px,py,pz=table.unpack(GetGameplayCamCoords())
        SetTextScale(0.45, 0.45)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255,255,255, 255)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end    
end