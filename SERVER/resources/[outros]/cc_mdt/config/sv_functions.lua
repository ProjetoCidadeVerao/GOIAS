Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
--[ PREPAREs ]----------------------------------------------------------------------------------------------------------------


--[ CONFIGURAÇÃO ]----------------------------------------------------------------------------------------------------------------

Config.hasPermission = vRP.hasPermission

Config.tryPayment = vRP.tryPayment

Config.getGroupTitle = vRP.getUserGroupByType

Config.getIdentity = function (nuser_id)
    local identidade = vRP.getUserIdentity(nuser_id)

    if identidade then
        return {
            nome = identidade.nome,
            sobrenome = identidade.sobrenome,
            idade = identidade.idade,
            registro = identidade.registro
        }
    end
end

Config.getMultas = function (nuser_id)
    return vRP.getMultas(nuser_id)
end 

Config.setMultas = function (source, nuser_id, multa)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    local multas_antes = vRP.getUData(parseInt(nuser_id),"vRP:multas")
    multas_antes = tonumber(multas_antes)
    
    if type(multas_antes) == "nil" then
        multas_antes = 0
    end
    
    if multas_antes >= 0 then
        local multa_total = multa + multas_antes
        vRP.setUData(nuser_id,"vRP:multas",multa_total)
    end
end


Config.setPrisao = function (nuser_id, pena)
    local uPrisao = vRP.getUData(parseInt(nuser_id), 'cc:Prisao')
    local prisao = json.decode(uPrisao) or -1
    vRP.setUData(parseInt(nuser_id), 'cc:Prisao', json.encode(parseInt(prisao) + parseInt(pena)))
end

Config.getPrisao = function (nuser_id)
    local uPrisao = vRP.getUData(nuser_id, 'cc:Prisao')
    return json.decode(uPrisao) or -1
end

Config.initAnimacao = function (nsource)
    SetPlayerRoutingBucket(nsource, parseInt(nsource))
end

Config.initPrisao = function (source)
    TriggerClientEvent('cc_mdt:statusPrisao', source, true)
	prisonLoop(vRP.getUserId(source))
end

Config.endPrisao = function (source)
    TriggerClientEvent('cc_mdt:statusPrisao', source, false)
    vRP.removeCloak(source)
    vRPclient.teleport(source, 1850.5, 2604.0, 45.5)
end

Config.recompensaMulta = function (source, multaTotal)
    local random = math.random( 0.8 * multaTotal, multaTotal)
    vRP.giveMoney(vRP.getUserId(source) , parseInt(random))
    TriggerClientEvent("Notify", source, "aviso", "Você recebeu <b>R$"..random.." </b> de bonificação.")
end

Config.recompensaFianca = function (source, fiancaTotal)
    vRP.giveMoney(vRP.getUserId(source) , parseInt(fiancaTotal))
end

--[[ WISE ]-----------------------------------------------------------------------------------------------------------------------
Para funcionar em bases com banco da loja Wise Resources. Você deve adicionar os Prepares no local indicado e alterar as funcoes 
"Config.getMultas" e "Config.setMultas". 
*Prestamos suporte quanto a adaptações para sua base, mas não para incompatibilidades de terceiros.

    vRP.prepare("cc_mdt/getMultasWise","SELECT SUM(valor) as total FROM wise_multas WHERE user_id = @user_id)")
    vRP.prepare("cc_mdt/multarWise","INSERT IGNORE INTO wise_multas(user_id,motivo,valor,descricao) VALUES(@user_id,@motivo,@multas,@descricao)")

    Config.getMultas = function (nuser_id)
        local getMulta = vRP.query("cc_mdt/getMultasWise",{ user_id = nuser })
        local multasbalance = json.encode(getMulta[1].total)
        return multasbalance:gsub('%"', '')
    end 

    Config.setMultas = function (nuser_id, multa)
        local identity = vRP.getUserIdentity(vRP.getUserId(source))
        vRP.execute("cc_mdt/multarWise",{ user_id = nuser, motivo = 'Multa aplicada por '..identity.nome.." "..identity.sobrenome, multas = multa, descricao = motivo}) 
    end

]]