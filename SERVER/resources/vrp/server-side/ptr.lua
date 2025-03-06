function alertPolice(data)
    local policia = vRP.getUsersByPermission("perm.policia") 
    if #policia > 0 then
        for k,v in pairs(policia) do
            local nsource = vRP.getUserSource(parseInt(v))
            if nsource then
                TriggerClientEvent("NotifyPush", nsource, { x = data.x, y = data.y, z = data.z, blipID = data.blipID, blipColor = data.blipColor, blipScale = data.blipScale, time = data.time, code = data.code, title = data.title, name = data.name })
            end
        end
    end
end

exports("alertPolice", function(...)
    alertPolice(...)
end)