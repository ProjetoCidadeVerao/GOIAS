local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

cnVRP = {}
Tunnel.bindInterface("goias_blip", cnVRP)
vCLIENT = Tunnel.getInterface("goias_blip")

-- validação
--vRP.prepare("blip_create_table", "CREATE TABLE IF NOT EXISTS blip (id BIGINT auto_increment NOT NULL, x varchar(20) NOT NULL, y varchar(20) NOT NULL, z varchar(20) NOT NULL, icone varchar(20) NOT NULL, cor varchar(20) NOT NULL, nome varchar(20) NOT NULL, tamanho varchar(20) NOT NULL, CONSTRAINT NewTable_pk PRIMARY KEY (id));")
vRP.prepare("blip_read_data", "SELECT * FROM blip")
vRP.prepare("blip_insert_data", "INSERT INTO blip (x, y, z, icone, cor, nome, tamanho) VALUES(@x, @y, @z, @icone, @cor, @nome, @tamanho);")
vRP.prepare("blip_delete_data", "DELETE FROM blip WHERE id=@id;")

-- Citizen.CreateThread(function ()
    -- vRP.execute("blip_create_table", {})
-- end)

function cnVRP.read()
    local rows = vRP.query("blip_read_data", {})
    return rows;
end

function cnVRP.create(data)
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "developer.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
        vRP.execute("blip_insert_data", data)
        TriggerClientEvent("monkey-blips:atualizar", -1)
    end
end

function cnVRP.hasPermission()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "developer.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
        return true
    end
    return false
end

function cnVRP.remove(data)
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "developer.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
        vRP.execute("blip_delete_data", data)
        TriggerClientEvent("monkey-blips:atualizar",- 1)
    end
end

function cnVRP.getInfo()
    local user_id = vRP.getUserId(source)
    local infoPlayer = vRP.getInformation(user_id)
    local nome = "Admin"
    return nome
end