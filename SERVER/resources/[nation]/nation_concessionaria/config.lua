local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}
Proxy.addInterface("nation_concessionaria", config)
garage = Proxy.getInterface("nation_garages")



vehList = garage.getVehList()

local webhook = "https://discord.com/api/webhooks/908089273335566346/zk7kpd6mRusmyt_SNjaNkDfv5tddXvQ7_P5m731nT7RkDj3_jMjLulyoYPmAdy9HGu0e" -- link do webbook
function sendWebhookMessage(link, message)
	if link and link ~= "" then
        PerformHttpRequest(link, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

-------------------------------

config.customMYSQL = true

vRP._prepare("nation_conce/createDB",[[
    CREATE TABLE IF NOT EXISTS `nation_concessionaria` (
    `vehicle` TEXT,
    `estoque` INT(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`vehicle`(768))
    );
]]) 
vRP._prepare("nation_conce/isVehicleInConce","SELECT * FROM nation_concessionaria WHERE vehicle = @vehicle")
vRP._prepare("nation_conce/addVehicle","INSERT IGNORE INTO nation_concessionaria(vehicle,estoque) VALUES(@vehicle,@estoque)")
vRP._prepare("nation_conce/removeVehicle","DELETE FROM nation_concessionaria WHERE vehicle = @vehicle")
vRP._prepare("nation_conce/addEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
vRP._prepare("nation_conce/removeEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
vRP._prepare("nation_conce/addCustomEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
vRP._prepare("nation_conce/removeCustomEstoque","UPDATE nation_concessionaria SET estoque = estoque - 1 WHERE vehicle = @vehicle")

vRP._prepare("nation_conce/getConceVehicles","SELECT * FROM nation_concessionaria WHERE estoque > 0")
vRP._prepare("nation_conce/hasVehicle","SELECT veiculo, alugado FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @vehicle")
vRP._prepare("nation_conce/hasFullVehicle","SELECT veiculo FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @vehicle AND alugado = 0")
vRP._prepare("nation_conce/hasRentedVehicle","SELECT veiculo FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @vehicle AND alugado = 1")
vRP._prepare("nation_conce/getMyVehicles", "SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id AND alugado = 0")
vRP._prepare("nation_conce/getAllMyVehicles", "SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id")
vRP._prepare("nation_conce/deleteRentedVehicles", "DELETE FROM vrp_user_veiculos WHERE alugado = 1 AND data_alugado != @data_alugado")
vRP._prepare("nation_conce/updateUserVehicle","UPDATE vrp_user_veiculos SET alugado = 0 WHERE user_id = @user_id AND veiculo = @vehicle")
vRP.prepare("nation_conce/addUserVehicle",[[ INSERT IGNORE INTO vrp_user_veiculos(user_id,veiculo,status,placa,motor,lataria,gasolina,ipva,tunagem) VALUES(@user_id,@vehicle,@detido,@placa,@engine,@body,@fuel,@ipva,@tunagem); ]])
vRP.prepare("nation_conce/addUserRentedVehicle",[[ INSERT IGNORE INTO vrp_user_veiculos(user_id,veiculo,status,placa,motor,lataria,gasolina,ipva,alugado,data_alugado) VALUES(@user_id,@vehicle,@detido,@placa,@engine,@body,@fuel,@ipva,1,@data_alugado); ]])
vRP._prepare("nation_conce/removeUserVehicle","DELETE FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @vehicle")

if config.customMYSQL then
    CreateThread(function()
        vRP._prepare("nation_conce/createAlugado", "ALTER TABLE vrp_user_veiculos ADD IF NOT EXISTS alugado TINYINT(4) NOT NULL DEFAULT 0;")
        vRP._prepare("nation_conce/createDataAlugado", "ALTER TABLE vrp_user_veiculos ADD IF NOT EXISTS data_alugado TEXT;")
        vRP._execute("nation_conce/createAlugado")
        vRP._execute("nation_conce/createDataAlugado")
    end)
end




function getConceList(cb)
	Citizen.CreateThread(function()
		Wait(1000)
		local vehicles = vRP.query("nation_conce/getConceVehicles") or {}
		cb(vehicles)
	end)
end


function getTopList()
	getConceList(function(list)
		local vehicleList = {}
		for k,v in ipairs(list) do
			local vehInfo = config.getVehicleInfo(v.vehicle)
			if vehInfo then
				vehicleList[#vehicleList+1] = { 
					vehicle = v.vehicle, price = vehInfo.price
				}
			end
		end
		if #vehicleList >= 5 then
			table.sort(vehicleList, function(a, b) return a.price > b.price end)
			for i = 1, 5 do
				local veh = vehicleList[i]
				config.topVehicles[i] = veh.vehicle 
			end
		end
	end)
end

config.getVehicleInfo = function(vehicle)
	for k,v in ipairs(vehList) do 
        if v.name == vehicle then
            return vehList[k]
        end
    end
    return false
end

-- LISTA DOS VEÍCULOS EM DESTAQUE

config.topVehicles = {	 
	"akuma", 
	"furia", 
	"thrax", 
	"xa21", 
	"t20"
}

getTopList() -- pega os veículos mais caros da conce e coloca na lista de destaque (COMENTAR CASO NAO QUEIRA AUTOMATICO)

config.logo = "https://cdn.discordapp.com/attachments/933889912233680958/937067784142192650/LOGO-PNG.png" -- LOGO DO SERVIDOR

config.imgDir = "http://200.9.154.104/imgfusion/vehicles/v1/" -- DIRETORIO DAS IMAGENS DOS VEÍCULOS

config.defaultImg = "https://svgsilh.com/svg/160895.svg" -- IMAGEM DEFAULT (SERÁ EXIBIDA QUANDO NÃO EXISTIR A IMAGEM DE ALGUM VEÍCULO NO DIRETÓRIO ESPECIFICADO)

config.openconce_permission = nil -- permissao para abrir a concessionaria

config.updateconce_permission = "admin.permissao" -- permissao para abrir o menu de gerenciamento da conce

config.porcentagem_venda = 50 -- porcentagem de venda dos veículos possuidos

config.porcentagem_testdrive = 0.1 -- porcentagem do valor do veículo paga para a realização do test drive

config.tempo_testdrive = 30 -- tempo de duração do test drive em segundos

config.maxDistance = 300 -- distância máxima (em radius(raio)) que o player poderá ir quando estiver realizando o test drive

config.porcentagem_aluguel = 1 -- porcentagem do valor do veículo paga para alugar


-- NOMES DAS CLASSES DOS VEÍCULOS

config.vehicleClasses = {
	[0] = "compact",  
	[1] = "sedan",  
	[2] = "suv",  
	[3] = "coupé",  
	[4] = "muscle",  
	[5] = "classic",  
	[6] = "sport",  
	[7] = "super",  
	[8] = "moto",  
	[9] = "off-road",  
	[10] = "industrial",  
	[11] = "utility",
	[12] = "van",
	[13] = "cycle",  
	[14] = "boat",  
	[15] = "helicopter",  
	[16] = "plane",  
	[17] = "service", 
	[18] = "emergency",  
	[19] = "military",  
	[20] = "commercial",  
	[21] = "train" 
}


-- CLASSES QUE APARECEM NO MENU DA CONCE

config.conceClasses = {
	{ class = "sedans", img = "https://img.indianautosblog.com/2018/09/25/india-bound-2019-honda-civic-images-front-three-qu-e966.jpg" },
	{ class = "suvs", img = "https://www.otokokpit.com/wp-content/uploads/2017/11/yeni-range-rover-evoque-landmark-edition-1.jpg" },
	{ class = "imports", img = "https://besthqwallpapers.com/Uploads/25-6-2019/97150/thumb2-lamborghini-gallardo-supercars-motion-blur-road-gray-gallardo.jpg" },
	{ class = "vip", img = "https://supertopmotor.com.br/wp-content/uploads/2021/01/carros-luxo-supertopmotor_super-top-motor.png" },
	{ class = "trucks", img = "https://images3.alphacoders.com/149/thumb-1920-149257.jpg" },
	{ class = "motos", img = "https://i.pinimg.com/originals/cc/92/dd/cc92dda56f23a2a41682e80e7fe0f744.jpg" },
	{ class = "outros", img = "https://besthqwallpapers.com/Uploads/13-5-2018/52433/thumb2-ford-transit-custom-sport-4k-2018-cars-motion-blur-orange-ford-transit.jpg" },
}


-- IMAGEM QUE APARECE NA SEÇÃO DE 'MEUS VEÍCULOS'

config.myVehicles_img = "https://www.itl.cat/pngfile/big/50-505834_download-nfs-hot-pursuit.jpg"



-- CLASSES DOS VEÍCULOS INSERIDAS DENTRO DAS CLASSES QUE APARECEM NA CONCE

config.availableClasses = {
	["sedans"] = {"sedan"},
	["suvs"] = {"suv"},
	["imports"] = {"classic", "sport", "super"},  
	["trucks"] = {"industrial", "utility", "commercial"},
	["motos"] = {"moto", "cycle"},
	["outros"] = {"compact", "coupé", "muscle", "off-road",  "boat",  "helicopter",  "plane",  "service", "emergency",  "military",  "train", "van"},
	["vip"] = { "vip" },
}

config.getConceClassFromVehClass= function(vehClass)
	if vehClass then
		for conceClass, t in pairs(config.availableClasses) do
			for i, class in ipairs(t) do
				if class == vehClass then
					return conceClass
				end
			end
		end
	end
end

config.isVehicleClassInConceClass = function(vehClass, conceClass)
	local vehConceClass = config.getConceClassFromVehClass(vehClass)
	if vehConceClass and vehConceClass == conceClass then
		return true
	end
	return false
end


-- ÍCONES DA CONCE

config.miscIcons = {
	{ description = "Força e velocidade necessárias para aquela dose de adrenalina.", img = "https://www.flaticon.com/svg/static/icons/svg/586/586141.svg" },
	{ description = "Incríveis opções econômicas que cabem no seu bolso!", img = "https://www.flaticon.com/svg/static/icons/svg/846/846117.svg" },
	{ description = "Para você que valoriza a eficácia e praticidade.", img = "https://www.flaticon.com/svg/static/icons/svg/1535/1535519.svg" },
}


-- DESCONTOS POR PERMISSAO

config.descontos = {
	{ perm = "perm.prata", porcentagem =  7 },
	{ perm = "perm.ouro", porcentagem = 10 },
	{ perm = "perm.platina", porcentagem =  15 },
	{ perm = "perm.esmeralda", porcentagem = 20 },
	{ perm = "perm.diamante", porcentagem =  25 },
	{ perm = "perm.inferninhos", porcentagem = 30 },
	{ perm = "perm.infernus", porcentagem =  40 },
	{ perm = "perm.infernusSupremo", porcentagem = 55 },
}


config.pt_BR = {
	allSlotsOccupied = "Todas as vagas estão ocupadas no momento.",
	testDriveStarted = "Test Drive iniciado. Não saia do veículo e nem vá para muito longe do local.",
	testDriveCanceled = "Test Drive cancelado.",
	testDriveAborted = "Você se afastou muito do local do test.",
	testVehicleUnavailable = "Veículo indisponível para test drive.",
	testFinished = "Test Drive finalizado com sucesso.",
	managementCommand = "conce",
	outStock = "veículo fora de estoque",
	alreadyBought = "veículo já possuído",
	error = "erro inesperado",
	dealerUpdated = "Concessionária atualizada com sucesso!",
	vehicleAdded = function(qtd,vehicle) return "Adicionado(s) <b>"..qtd.." "..vehicle.."</b> à concessionária!" end,
	vehicleRemoved = function(qtd,vehicle) return "Removido(s) <b>"..qtd.." "..vehicle.."</b> à concessionária!" end,
	noIdentifiedVehicle = "Veículo não identificado.",
	invalidQuantity = "Quantidade inválida.",
	success = "sucesso!",
	paymentFailed = "falha no pagamento!",
	cantBeSelled = "Veículo não pode ser vendido",
	rentedVehicle = "veículo alugado ou já vendido",
	testConfirmation = function(price,vehicle) return "deseja pagar <b>$ "..price.."</b> para realizar o test drive em um(a) <b>"..vehicle.."</b> ?" end,
	chargeBack = function(price) return "Você recebeu seus <b>$ "..price.."</b> de volta." end,
	rentConfirmation = function(price,vehicle) return "deseja pagar <b>$ "..price.."</b> para alugar um(a) <b>"..vehicle.."</b> por 1 dia?" end

}

config.lang = config.pt_BR
lang = config.lang

function sendWebhookMessage(webhook, message)
    if webhook then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

-- FUNCÃO DE COMPRA DO VEÍCULO

function checkVagas(user_id) -- verificação de vagas
	local vagas = 3
	if vRP.hasPermission(user_id, "perm.prata") then
		vagas = vagas + 4
	elseif vRP.hasPermission(user_id, "perm.diabinho") then
		vagas = vagas + 2
	elseif vRP.hasPermission(user_id, "perm.ouro") then
		vagas = vagas + 6
	elseif vRP.hasPermission(user_id, "perm.platina") then
		vagas = vagas + 10
	elseif vRP.hasPermission(user_id, "perm.esmeralda") then
		vagas = vagas + 14
	elseif vRP.hasPermission(user_id, "perm.diamante") then
		vagas = vagas + 20
	elseif vRP.hasPermission(user_id, "perm.inferninhos") then
		vagas = vagas + 35
	elseif vRP.hasPermission(user_id, "perm.infernus") then
		vagas = vagas + 45
	elseif vRP.hasPermission(user_id, "perm.infernusSupremo") then
		vagas = vagas + 60
	end

	local numVeiculos = #vRP.query("nation_conce/getAllMyVehicles", { user_id = user_id })
	return numVeiculos < vagas
end

config.tryBuyVehicle = function(source, user_id, vehicle, color, price, mods)
	if source and user_id and vehicle and color and price and mods then
		local data = vRP.query("nation_conce/hasVehicle", {user_id = user_id, vehicle = vehicle})
		local hasVehicle = #data > 0
		local isRented = data[1] and data[1].alugado > 0
		if hasVehicle and not isRented then
			return false, lang.alreadyBought or "veículo já possuído"
		end
		
		if not checkVagas(user_id) then return false, "garagem cheia" end


		local vehInfo = config.getVehicleInfo(vehicle)
		if vehInfo and vehInfo.class then
			if vehInfo.class == "vip" and not vRP.hasPermission(user_id, "perm.vips") then
				return false, "veículo vip"
			end
		end

		if vRP.tryFullPayment(user_id,price) then
			Citizen.CreateThread(function()
				mods.customPcolor = color
				if isRented then
					vRP.execute("nation_conce/updateUserVehicle", {
						user_id = user_id, vehicle = vehicle
					})
				else 
					vRP.execute("nation_conce/addUserVehicle", {
						user_id = user_id, vehicle = vehicle, detido = 0, time = 0, engine = 1000, body = 1000, fuel = 100, ipva = os.time(), placa = vRP.gerarPlaca(), tunagem = json.encode(mods)
					})
				end
				sendWebhookMessage(webhook, "```prolog\n[PASSAPORTE]: "..user_id.." \n[COMPROU]: "..vehicle.." \n[PREÇO]: "..vRP.format(parseInt(price)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			end)
			return true, lang.success or "sucesso!"
		else
			return false, lang.paymentFailed or "falha no pagamento"
		end
	end
	return false, lang.error or "erro inesperado"
end

-- FUNÇÃO DE VENDA DO VEÍCULO

config.trySellVehicle = function(source, user_id, vehicle, price)
	if source and user_id and vehicle and price then
		local vehInfo = config.getVehicleInfo(vehicle)
		local hasVehicle = #vRP.query("nation_conce/hasFullVehicle", {user_id = user_id, vehicle = vehicle}) > 0
		if hasVehicle then
			Citizen.CreateThread(function()
				vRP.execute("nation_conce/removeUserVehicle", {user_id = user_id, vehicle = vehicle})
				vRP.giveMoney(user_id,parseInt(price))
			end)
			sendWebhookMessage(webhook, "```prolog\n[PASSAPORTE]: "..user_id.." \n[VENDEU]: "..vehicle.." \n[PREÇO]: "..vRP.format(parseInt(price)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			return true, lang.success or "sucesso!"
		else
			return false, lang.rentedVehicle or "veículo alugado ou já vendido"
		end
	end
	return false, lang.error or "erro inesperado"
end



-- VERIFICAÇÃO DE TEST DRIVE

config.tryTestDrive = function(source, user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_testdrive / 100))
		return true, lang.testConfirmation(vRP.format(price), info.modelo) or "deseja pagar <b>$ "..vRP.format(price).."</b> para realizar o test drive em um(a) <b>"..info.modelo.."</b> ?"
	end
	return false, lang.error or "erro inesperado"
end



-- VERIFICAÇÃO DO PAGAMENTO DO TEST DRIVE

config.payTest = function(source,user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_testdrive / 100))
		if vRP.tryFullPayment(user_id, price) then
			sendWebhookMessage(webhook, "```prolog\n[PASSAPORTE]: "..user_id.." \n[TEST DRIVE]: "..info.name.." \n[PREÇO]: "..vRP.format(parseInt(info.price)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			return true, lang.success or "sucesso!", price
		else
			return false, lang.paymentFailed or "falha no pagamento"
		end
	end
	return false, lang.error or "erro inesperado"
end


-- DEVOLVER O DINHEIRO CASO NÃO DÊ PARA FAZER O TEST

config.chargeBack = function(source,user_id, price)
	if source and user_id and price then
		vRP.giveMoney(user_id,price)
		TriggerClientEvent("Notify",source,"aviso", lang.chargeBack(vRP.format(price)) or "Você recebeu seus <b>$ "..vRP.format(price).."</b> de volta.", 5)
	end
end

-- VERIFICAÇÃO DE ALUGUEL DO VEÍCULO
config.tryRentVehicle = function(source, user_id, info)
	return false, "Funcao desabilitada temporariamente"
end

config.tryPayRent = function(source,user_id, info)
	return false, "Funcao desabilitada temporariamente"
end

-- SESSAO POR TEST DRIVE
config.testStatus = function(player, status)
	if status then
		SetPlayerRoutingBucket(player, math.random(1000)) 
	else
		SetPlayerRoutingBucket(player, 0) 
	end
end

config.locais = {
	{ 
		conce = vec3(-43.76,-1095.8,26.43), 
		test_locais = {
			{ coords = vec3(-811.82,-222.49,36.74), h = 28.68 },
			{ coords = vec3(-806.72,-231.4,36.65), h = 29.43 },
			{ coords = vec3(-802.19,-239.23,36.6), h = 29.4 },
			{ coords = vec3(-796.5,-249.12,36.59), h = 29.42 },
		}  
	},
}

config.notify = function(source,mode,message,time)
	TriggerClientEvent("Notify",source,mode,message, 5)
end

config.blockAddStock = true -- TRUE PARA NAO ADICIONAR O VEICULO VENDIDO AO ESTOQUE AUTOMATICAMENTE


