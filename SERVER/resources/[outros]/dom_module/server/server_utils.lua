local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

vRP._prepare("dom/add_vehicle","INSERT INTO vrp_user_veiculos(user_id,veiculo,ipva,expired,gasolina,placa) VALUES(@user_id,@veiculo,@ipva,@expired,100,@placa)")
vRP._prepare("dom/rem_vehicle","DELETE FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @veiculo")
vRP._prepare("dom/get_user_data","SELECT whitelist, ip, ultimo_login FROM vrp_users WHERE id = @user_id")
vRP._prepare("dom/identifier_by_userid","SELECT identifier FROM vrp_user_ids WHERE user_id = @user_id")
vRP._prepare("dom/get_users_group","SELECT user_id FROM vrp_user_data WHERE dvalue LIKE ?")
vRP._prepare("dom/get_user_identity","SELECT nome, sobrenome, idade, telefone, registro FROM vrp_user_identities WHERE user_id = @user_id")
vRP._prepare("dom/get_user_vehicles", "SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id")

function anunciorr(message)
	if not message then return "error" end
	if message > 1 then
		vRPclient._setDiv(-1,"anunciorr",".div_anunciorr { background: rgba(255,40,40,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 13%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; } bold { font-size: 15px; }","<bold>RR EM "..message.." MINUTOS!!!</bold>")
		SetTimeout(60000,function() vRPclient._removeDiv(-1,"anunciorr") end)
	elseif message <= 0 then
		vRPclient._setDiv(-1,"anunciorr",".div_anunciorr { background: rgba(255,40,40,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 13%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; } bold { font-size: 15px; }","<bold>REINICINANDO!!!</bold>")
		SetTimeout(60000,function() vRPclient._removeDiv(-1,"anunciorr") end)
	end
	return true
end

function anuncioadm(message)
	if not message then return "error" end
	vRPclient._setDiv(-1,"anuncioadm",".div_anuncioadm { background: rgba(255,40,40,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 13%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; } bold { font-size: 15px; }","<bold>"..message.."</bold><br><br>Mensagem enviada por: Administração")
	SetTimeout(60000,function() vRPclient._removeDiv(-1,"anuncioadm") end)
	return true
end

function kick(user_id, reason)
	if not user_id then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	DropPlayer(source,"Você foi expulso da cidade. Motivo: "..reason)
	return true
end

function ban(user_id, reason)
	if not user_id then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	DropPlayer(source,"Você foi banido da cidade! Motivo: "..reason)
	return true
end

function kill(user_id)
	if not user_id then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	vRPclient._setHealth(source,0)
	SetTimeout(1000, function() vRPclient._killComa(source) end)
	return true
end

function god(user_id)
	if not user_id then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	vRPclient._killGod(source)
	vRPclient._setHealth(source,300)
	vRP.varyThirst(source,-100)
	vRP.varyHunger(source,-100)
	return true
end

local groups_block = {
	"admin",
	"off-admin",
	"moderador",
	"off-moderador",
	"suporte",
	"off-suporte",
	"owner",
	"off-owner",
	"Vipinicial",
	"Bronze",
	"Prata",
	"Ouro",
}

function group(user_id, group)
	if not user_id or not group then return "error" end
	if groups_block[group] then return "invalid" end
	if getUserSource(user_id) then addUserGroup(user_id, group) return true end
	local data = getUData(user_id, "vRP:datatable")
	if not data then return "invalid" end
	local index = json.decode(data)
	for k,v in pairs(index.groups) do
		if k == group then return "ok" end
	end
	index.groups[group] = true
	setUData(user_id,"vRP:datatable",json.encode(index))
	return true
end

function ungroup(user_id, group)
	if not user_id or not group then return "error" end
	if getUserSource(user_id) then removeUserGroup(user_id, group) return true end
	local data = getUData(user_id, "vRP:datatable")
	if not data then return "invalid" end
	local index = json.decode(data[1].dvalue)
	for k,v in pairs(index.groups) do
		if k == group then index.groups[k] = nil end    
	end
	setUData(user_id,"vRP:datatable",json.encode(index))
	return true
end

function addcar(user_id, vehicle)
	if not user_id or not vehicle then return "error" end
	local placa = vRP.getUserIdentity(user_id).registro
	local result = vRP.execute("dom/add_vehicle",{ veiculo = string.lower(vehicle), user_id = user_id, ipva = os.time(), expired = "{}", placa = placa })
	if result.affectedRows < 1 then return "ok" end
	return true
end

function remcar(user_id, vehicle)
	if not user_id or not vehicle then return "error" end
	local result = vRP.execute("dom/rem_vehicle",{ user_id = user_id, veiculo = vehicle })
	if result.affectedRows < 1 then return "error" end
	return true
end

function additem(user_id, item, amount)
	if not user_id or not item or not amount then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	if source > 65000 then return "offline" end
	if not vRP.giveInventoryItem(user_id, item, amount) then return "ok" end
	TriggerClientEvent("Notify",source,"sucess","Você recebeu <b>"..amount.." x "..item.."</b>.",5000)
	return true
end

function remitem(user_id, item, amount)
	if not user_id or not item or not amount then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	if source > 65000 then return "offline" end
	if not vRP.tryGetInventoryItem(user_id, item, amount) then return "ok" end
	TriggerClientEvent("Notify",source,"negado","Retirado <b>"..amount.." x "..item.."</b>.",5000)
	return true
end

function addwalletmoney(user_id, amount)
	if not user_id then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	if source > 65000 then return "offline" end
	local oldBalance = vRP.getMoney(user_id)
	if not vRP.giveMoney(user_id, amount) then return "ok" end
	local newBalance = vRP.getMoney(user_id)
	TriggerClientEvent("Notify",source,"sucess","Você recebeu <b>$ "..amount.."</b> da carteira.",5000)
	return { true, { oldBalance, newBalance } }
end

function addbankmoney(user_id, amount)
	if not user_id or not amount then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	if source > 65000 then return "offline" end
	local oldBalance = vRP.getBankMoney(user_id)
	if not vRP.giveBankMoney(user_id, amount) then return "ok" end
	local newBalance = vRP.getBankMoney(user_id)
	TriggerClientEvent("Notify",source,"sucess","Você recebeu <b>$ "..amount.."</b> da carteira.",5000)
	return { true, { oldBalance, newBalance } }
end

function remwalletmoney(user_id, amount)
	if not user_id or not amount then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	if source > 65000 then return "offline" end
	local oldBalance = vRP.getMoney(user_id)
	if not (oldBalance >= amount) then return "ok" end
	if not vRP.tryPayment(user_id, amount) then return "ok" end
	local newBalance = vRP.getMoney(user_id)
	TriggerClientEvent("Notify",source,"negado","Retirado <b>$ "..amount.."</b> do banco.",5000)
	return { true, { oldBalance, newBalance } }
end

function rembankmoney(user_id, amount)
	if not user_id or not amount then return "error" end
	local source = getUserSource(user_id)
	if not source then return "offline" end
	if source > 65000 then return "offline" end
	local oldBalance = vRP.getBankMoney(user_id)
	if not (oldBalance >= amount) then return "ok" end
	if not vRP.removeBankMoney(user_id, amount) then return "ok" end
	local newBalance = vRP.getBankMoney(user_id)
	TriggerClientEvent("Notify",source,"negado","Retirado <b>$ "..amount.."</b> do banco.",5000)
	return { true, { oldBalance, newBalance } }
end

function groupslist(group)
	if not group then return "error" end
	local result = vRP.execute("dom/get_users_group", { '%"'..group..'"%' })
	return { true, result }
end

function playerinfo(user_id)
	if not user_id then return "error" end
	local source = getUserSource(user_id)
	local infos = {}
	local user_data = vRP.execute("dom/get_user_data", { user_id = user_id })
	local licenses = vRP.execute("dom/identifier_by_userid", { user_id = user_id })
	local banned = vRP.query("mirtin_bans/getUserBans", { user_id = user_id })
	if source then
		local identity = vRP.getUserIdentity(user_id)
		local dataInventory = vRP.getInventory(user_id)
		local inventory = ""
		for k, v in pairs(dataInventory) do
			inventory = inventory ..v.amount.." x "..k.."\n"
		end
		local dataWeapons = vRP.getWeapons(user_id)
		local weapons = ""
		for k, v in pairs(dataWeapons) do
			weapons = weapons ..k.." x ["..v.ammo.."]\n"
		end		
		local houses = {}
		local vehicles = vRP.execute("dom/get_user_vehicles", { user_id = user_id })
		for _, v in pairs(vehicles) do
			if v.portamalas then
				local chestData = json.decode(v.portamalas)
				local chest = {}
				for item, k in pairs(chestData) do
					chest[#chest + 1] = k.amount.." x "..item
				end
				v.portamalas = chest
			end
		end	
		infos = {
			["status"] = true,
			["identity"] = {
				name = identity.nome or "N/A",
				firstname = identity.sobrenome or "N/A",
				age = identity.idade or "N/A",
				phone = identity.telefone or "N/A",
				registration = identity.registro or "N/A"
			},
			["groups"] = vRP.getUserGroups(user_id) or "N/A",
			["money"] = {
				bank = vRP.getBankMoney(user_id) or "N/A",
				wallet = vRP.getMoney(user_id) or "N/A",
				paypal = "N/A"
			},
			["player_data"] = {
				inventory = inventory or {},
				weapons = weapons or {},
				health = GetEntityHealth(GetPlayerPed(source)) or "N/A",
				armour = GetPedArmour(GetPlayerPed(source)) or "N/A",
				hunger = "N/A",
				thirst = "N/A",
				position = GetEntityCoords(GetPlayerPed(source)) or false
			},
			["user_data"] = {
				whitelisted = (user_data[1] and user_data[1].whitelist == 1 and true) or false,
				banned = (banned[1] and banned[1].banimento ~= nil and true) or false,
				ip = user_data[1] and user_data[1].ip or "N/A",
				last_login = user_data[1] and user_data[1].ultimo_login or "N/A"
			},
			["licenses"] = licenses or "N/A",
			["houses"] = houses or {},
			["vehicles"] = vehicles or {}
		}
	else		
		local identity = vRP.execute("dom/get_user_identity", { user_id = user_id })
		local player_data = json.decode(getUData(user_id, "vRP:datatable"))
		local inventory = ""
		if player_data and player_data.inventory then
			for k, v in pairs(player_data.inventory) do
				inventory = inventory ..v.amount.." x "..k.."\n"
			end
		end
		local weapons = ""
		if player_data and player_data.weapons then
			for k, v in pairs(player_data.weapons) do
				weapons = weapons ..k.." x ["..v.ammo.."]\n"
			end
		end
		local houses = {}
		local vehicles = vRP.execute("dom/get_user_vehicles", { user_id = user_id })
		for _, v in pairs(vehicles) do
			if v.portamalas then
				local chestData = json.decode(v.portamalas)
				local chest = {}
				for item, k in pairs(chestData) do
					chest[#chest + 1] = k.amount.." x "..item
				end
				v.portamalas = chest
			end
		end		
		infos = {
			["status"] = false,
			["identity"] = {
				name = identity[1] and identity[1].nome or "N/A",
				firstname = identity[1] and identity[1].sobrenome or "N/A",
				age = identity[1] and identity[1].idade or "N/A",
				phone = identity[1] and identity[1].telefone or "N/A",
				registration = identity[1] and identity[1].registro or "N/A"
			},
			["groups"] = player_data and player_data.groups or "N/A",
			["money"] = {
				bank = vRP.getBankMoney(user_id) or "N/A",
				wallet = vRP.getMoney(user_id) or "N/A",
				paypal = "N/A"
			},
			["player_data"] = {
				inventory = inventory or {},
				weapons = weapons or {},
				health = player_data and player_data.health or "N/A",
				armour = player_data and player_data.colete or "N/A",
				hunger = "N/A",
				thirst = "N/A",
				position = player_data and player_data.position or false
			},
			["user_data"] = {
				whitelisted = (user_data[1] and user_data[1].whitelist == 1 and true) or false,
				banned = (banned[1] and banned[1].banimento ~= nil and true) or false,
				ip = user_data[1] and user_data[1].ip or "N/A",
				last_login = user_data[1] and user_data[1].ultimo_login or "N/A"
			},
			["licenses"] = licenses or "N/A",
			["houses"] = houses or {},
			["vehicles"] = vehicles or {}
		}
	end
	return { true, { infos } }
end