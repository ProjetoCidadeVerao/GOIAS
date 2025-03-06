local cooldown = {
	users = {}
}

function cooldown:set(user_id, name, time)
	self.users[user_id..':'..name] = (os.time() + time)
end

function cooldown:get(user_id, name)
	if self.users[user_id..':'..name] then
		if (self.users[user_id..':'..name] - os.time()) <= 0 then
			self.users[user_id..':'..name] = nil
			return true
		end

		return false,(self.users[user_id..':'..name] - os.time())
	end

	return true
end

exports("setCooldown", function(...)
    return cooldown:set(...)
end)

exports("getCooldown", function(...)
    return cooldown:get(...)
end)

CreateThread(function()
	while true do
		for k in pairs(cooldown.users) do
			if (cooldown.users[k] - os.time() <= 0) then
				cooldown.users[k] = nil
			end
		end

		Wait(5 * 60 * 1000)
	end
end)

--[[
    COMO USAR:

    exports['vrp']:setCooldown(user_id, name, time)
    - name = nome da funcao bloqueada
    - time = tempo da funcao bloqueada ( segundos )
    
    exports['vrp']:getCooldown(user_id, name)
    - name = nome da funcao bloqueada
    - obs: Checa se a função está bloqueada ou não.
]]

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BLOCK COMMANDS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local time = {
    users = {}
}

function time:set(user_id, segundos)
    if segundos > 0 then
        self.users[user_id] = ( os.time() + segundos )
        return
    end

    if self.users[user_id] then
        self.users[user_id] = nil
    end
end

function time:check(user_id)
    if self.users[user_id] then
        if (self.users[user_id] - os.time()) <= 0 then
            self.users[user_id] = nil
            return true
        end

        TriggerClientEvent("Notify", vRP.getUserSource(user_id),"negado","Você precisa esperar <b>"..(self.users[user_id] - os.time()).." segundo(s)</b> para executar essa ação.", 5)
        return false
    end

    return true
end

Citizen.CreateThread(function()
    while true do
        for k in pairs(time.users) do
            if time.users[k] then
                if (time.users[k] - os.time()) <= 0 then
                    time.users[k] = nil
                end
            end
        end

        Wait(5 * 60 * 1000)
    end
end)

exports("setBlockCommand", function(...)
    return time:set(...)
end)

exports("checkCommand", function(...)
    return time:check(...)
end)