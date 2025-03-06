function getUsers()
    return vRP.getUsers()
end

function getUserSource(user_id)
    return vRP.getUserSource(user_id)
end

function getUserId(source)
    return vRP.getUserId(source)
end

function getUserIdentity(user_id)
    local identity = vRP.getUserIdentity(user_id)
    return { 
        name = identity.nome,
        firstname = identity.sobrenome,
        age = identity.idade,
        phone = identity.telefone,
        registration = identity.registro
    }
end

function hasPermission(user_id, perm)
    return vRP.hasPermission(user_id, perm)
end

function addUserGroup(user_id, group)
    return vRP.addUserGroup(user_id, group)
end

function removeUserGroup(user_id, group)
    return vRP.removeUserGroup(user_id, group)
end

function getUData(user_id,key)
    return vRP.getUData(user_id, key)
end

function setUData(user_id, key, value)
    vRP.setUData(user_id, key, value)
end

function getUserDataTable(user_id)
    return vRP.getUserDataTable(user_id)
end

function setBanned(user_id,reason)
    return vRP.setBanned(user_id, 1,reason)
end