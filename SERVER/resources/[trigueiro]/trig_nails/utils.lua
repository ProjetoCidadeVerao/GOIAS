local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
src = {}
Tunnel.bindInterface("trig_nails",src)
vCLIENT = Tunnel.getInterface("trig_nails")

Framework = 'vrpex'
SpawnEvent = 'vRP:playerSpawn'


if Fremework == 'esx' then
	ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    
    function getUserId(source)
        return source
    end

	function Payment(user_id,price)
		local xPlayer = ESX.GetPlayerFromId(user_id)
		if xPlayer.getAccount('bank').money >= price then
			xPlayer.removeAccountMoney('bank', price)
			return true
		end
		return false
	end

	function setUData(user_id,dkey,data)
		MySQL.Async.execute('REPLACE INTO trig_manicure(user_id,dkey,dvalue) VALUES(@user_id,@key,@value)', {
			['@user_id'] = user_id,
			['@dkey'] = dkey,
			['@dvalue'] = data,
		}, function(rowsChanged) end)
	end
	
	function getUData(user_id,dkey)
		MySQL.Async.fetchAll("SELECT dvalue FROM trig_manicure WHERE user_id=@user_id AND dkey = @dkey",{
			['@user_id'] = user_id,
			['@dkey'] = dkey
		}, function(query)
            if query[1] then
               return query[1].dvalue
            else
                return {}
            end
        end)
	end

else

	function Payment(user_id,price)
		return vRP.tryFullPayment(user_id,price) == true
	end
	
end

FrameworkCommands = {
    ['vrpex'] = {
        getUserId = vRP.getUserId,
        getUData = vRP.getUData,
        setUData = vRP.setUData,
        tryFullPayment = Payment
    },
	['esx'] = {
		getUserId = getUserId,
        getUData = getUData,
        setUData = setUData,
        tryFullPayment = Payment
	}
}

AddEventHandler(SpawnEvent,function(user_id,source,first_spawn)
	Wait(3000)
    local query = FrameworkCommands[Framework].getUData(user_id,'Nails')
	local NailsData = type(query) == 'string' and (json.decode(query) or {}) or query
	if NailsData then
		vCLIENT.setCustom(source,NailsData)
	end
end)

AddEventHandler("onResourceStart", function(name)
    if name == 'trig_nails' then
		print('^1[TRIG_NAILS] - Evite reiniciar essa resource^7')
		Wait(1000)
		for v,src in pairs(GetPlayers()) do
			async(function()
				local source = parseInt(src)
				local user_id = FrameworkCommands[Framework].getUserId(source)
				if user_id then
					local query = FrameworkCommands[Framework].getUData(user_id,'Nails')
					local NailsData = type(query) == 'string' and (json.decode(query) or {}) or query
					if NailsData then
						vCLIENT.setCustom(source,NailsData)
					end
				end
			end)
        end
    end
end)


function resetPedNails(source,user_id)
	if user_id then
		resetPed(user_id)
		Wait(50)
		local query = FrameworkCommands[Framework].getUData(user_id,'Nails')
		local NailsData = type(query) == 'string' and (json.decode(query) or {}) or query
		if NailsData then
			vCLIENT.setCustom(source,NailsData)
		end
	end
end
exports("resetPedNails",resetPedNails)

-- CASO TENHA COMANDO BVIDA, UTILIZE exports["trig_nails"]:resetPedNails(source,user_id)