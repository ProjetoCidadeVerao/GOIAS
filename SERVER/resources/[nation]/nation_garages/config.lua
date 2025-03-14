local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}
Proxy.addInterface("nation_garages", config)

----------------------------------------------
----------------- CONFIG ---------------------
----------------------------------------------

config.detido = 10 -- taxa para ser paga quando o veiculo for detido (porcentagem do valor do veiculo)
config.seguradora = 5 -- taxa para ser paga quando o veiculo estiver apreendido (porcentagem do valor do veiculo)
config.ipva = 1 -- taxa para ser paga quando o veiculo estiver com o ipva atrasado (porcentagem do valor do veiculo)
config.use_tryFullPayment = true -- quando true, aceita pagamentos de taxas com o dinheiro do banco
config.dv_permission = "dv.permissao" 
 -- permissao para dv
config.guardar_veiculo_proximo = true -- mostrar botão de guardar veículo próximo
config.client_vehicle = true -- spawn via client side

----------------------------------------------
----------------- MARKERS --------------------
----------------------------------------------

config.markers = {
	["avião"] = 33,
	["helicóptero"] = 34,
	["barco"] = 35,
	["carro"] = 36,
	["moto"] = 37,
	["bicicleta"] = 38,
	["truck"] = 39,
}

config.drawMarker = function(coords,marker) -- funcao para desenhar os markers das garagens no chão
	local idTop = config.markers[marker] or config.markers["carro"] 
	DrawMarker(idTop,coords,0,0,0,0,0,0,1.0,1.0,1.0, 59, 151,194 ,155,1,1,1,1)
end

----------------------------------------------
----------------- BLIPS ----------------------
----------------------------------------------

config.showBlips = true -- quando true, mostra os blips das garagens públicas no mapa
config.blipId = 357 -- id do blip
config.blipColor = 3 -- cor do blip
config.blipSize = 0.4 -- tamanho do blip

----------------------------------------------
-------- DELETAR VEICULOS INATIVOS -----------
----------------------------------------------

config.reset = false -- quando true, deleta os veículos que estão parados durante um determinado tempo
config.tempoReset = 60 -- tempo para deletar um veículo inativo (em minutos)

----------------------------------------------
----------------- IMAGENS --------------------
----------------------------------------------

config.defaultImg = "https://svgsilh.com/svg/160895.svg" -- imagem default
config.imgDir = "http://200.9.154.104/imgfusion/vehicles/v1/" -- url ou diretorio das imagens

----------------------------------------------
----------- LISTA DE VEÍCULOS ----------------
----------------------------------------------

config.vehList = {
	{ hash = 177270108, name = 'phantom3', price = 1000, banido = true, modelo = 'Phantom', capacidade = 85, tipo = 'work' }, 
	{ hash = 1225510181, name = 'bora', price = 1000, banido = true, modelo = 'Bora', capacidade = 100, tipo = 'work' },
	{ hash = -1078573354, name = 'kadett', price = 1000, banido = true, modelo = 'Kadett', capacidade = 100, tipo = 'work' },
	{ hash = 131498600, name = 'vwsava', price = 1000, banido = true, modelo = 'Saveiro', capacidade = 100, tipo = 'work' },
	{ hash = 167397304, name = 'paredao', price = 1000, banido = true, modelo = 'Paredão', capacidade = 100, tipo = 'work' },
	{ hash = -651546291, name = 'paredao2', price = 1000, banido = true, modelo = 'Paredão II', capacidade = 100, tipo = 'work' },
	{ hash = -286046740, name = 'rcbandito', price = 1000, banido = true, modelo = 'Bandito', capacidade = 100, tipo = 'work' },
		
	
	{ hash = 1062355240, name = 'uno', price = 50000, banido = false, modelo = 'UNO', capacidade = 130, tipo = 'exclusive' }, 
	{ hash = 2015170161, name = 'biz25', price = 5000, banido = false, modelo = 'Biz', capacidade = 15, tipo = 'exclusive' },
	{ hash = -2137348917, name = 'phantom', price = 1000, banido = true, modelo = 'Phantom', capacidade = 85, tipo = 'work' },
	{ hash = -688419137, name = 'hayabusa', price = 1000000, banido = false, modelo = 'Hayabusa', capacidade = 30, tipo = 'motos' },
	{ hash = -1987109409, name = '150', price = 20000, banido = true, modelo = 'CG 150', capacidade = 15, tipo = 'motos' },
	{ hash = -688419137, name = 'hayabusa', price = 1200000, banido = false, modelo = 'HAYABUSA', capacidade = 15, tipo = 'motos' }, 
	{ hash = 980885719, name = 'rmodgt63', price = 3000000, banido = false, modelo = 'Mercedes GT 63', capacidade = 50, tipo = 'carros' }, 
	{ hash = -773949452, name = 'fiatstilo', price = 60000, banido = false, modelo = 'Fiat', capacidade = 40, tipo = 'carros' },
	{ hash = -1222347999, name = 'rmodmk7', price = 1000000, banido = false, modelo = 'rmodmk7', capacidade = 60, tipo = 'carros' },
	{ hash = -286046740, name = 'rcbandito', price = 60000, banido = false, modelo = 'rcbandito', capacidade = 40, tipo = 'carros' },
	{ hash = -410205223, name = 'revolter', price = 250000, banido = false, modelo = 'Revolter', capacidade = 50, tipo = 'carros' },
	{ hash = -391595372, name = 'viseris', price = 150000, banido = false, modelo = 'Viseris', capacidade = 30, tipo = 'carros' },
	{ hash = -344943009, name = 'blista', price = 30000, banido = false, modelo = 'Blista', capacidade = 40, tipo = 'carros' },
	{ hash = 1549126457, name = 'brioso', price = 35000, banido = false, modelo = 'Brioso', capacidade = 30, tipo = 'carros' },
	{ hash = 2046572318, name = '911turbos', price = 10000000, banido = false, modelo = 'Porche 911', capacidade = 130, tipo = 'exclusive' },
	{ hash = -1130810103, name = 'dilettante', price = 60000, banido = false, modelo = 'Dilettante', capacidade = 30, tipo = 'carros' },
	{ hash = -1177863319, name = 'issi2', price = 15000, banido = false, modelo = 'Issi2', capacidade = 20, tipo = 'carros' },
	{ hash = -431692672, name = 'panto', price = 21000, banido = false, modelo = 'Panto', capacidade = 20, tipo = 'carros' },
	{ hash = -1661854193, name = 'dune', price = 50000, banido = false, modelo = 'Dune', capacidade = 10, tipo = 'carros' },
	{ hash = -1450650718, name = 'prairie', price = 16000, banido = false, modelo = 'Prairie', capacidade = 25, tipo = 'carros' },
	{ hash = 92612664, name = 'kalahari', price = 4000, banido = false, modelo = 'Kalahari', capacidade = 40, tipo = 'carros' },
	{ hash = 841808271, name = 'rhapsody', price = 7000, banido = false, modelo = 'Rhapsody', capacidade = 30, tipo = 'carros' },
	{ hash = 330661258, name = 'cogcabrio', price = 150000, banido = false, modelo = 'Cogcabrio', capacidade = 60, tipo = 'carros' },
	{ hash = -685276541, name = 'emperor', price = 50000, banido = false, modelo = 'Emperor', capacidade = 60, tipo = 'carros' },
	{ hash = -1883002148, name = 'emperor2', price = 50000, banido = false, modelo = 'Emperor 2', capacidade = 60, tipo = 'carros' },
	{ hash = -2095439403, name = 'phoenix', price = 250000, banido = false, modelo = 'Phoenix', capacidade = 40, tipo = 'carros' },
	{ hash = -1883869285, name = 'premier', price = 35000, banido = false, modelo = 'Premier', capacidade = 50, tipo = 'carros' },
	{ hash = 75131841, name = 'glendale', price = 70000, banido = false, modelo = 'Glendale', capacidade = 50, tipo = 'carros' },
	{ hash = 886934177, name = 'intruder', price = 60000, banido = false, modelo = 'Intruder', capacidade = 50, tipo = 'carros' },
	{ hash = -5153954, name = 'exemplar', price = 50000, banido = false, modelo = 'Exemplar', capacidade = 20, tipo = 'carros' },
	{ hash = -591610296, name = 'f620', price = 55000, banido = false, modelo = 'F620', capacidade = 30, tipo = 'carros' },
	{ hash = -391594584, name = 'felon', price = 70000, banido = false, modelo = 'Felon', capacidade = 50, tipo = 'carros' },
	{ hash = 1173555027, name = 'adr8', price = 1000000, banido = false, modelo = 'ADR8', capacidade = 50, tipo = 'carros' },
	{ hash = 619016222, name = 'rmodessenza', price = 1000000, banido = false, modelo = 'Lambo Senza', capacidade = 50, tipo = 'carros' },
	

	{ hash = -1289722222, name = 'ingot', price = 160000, banido = false, modelo = 'Ingot', capacidade = 60, tipo = 'carros' },
	{ hash = -1705304628, name = 'rubble', price = 1000, banido = false, modelo = 'Caminhão', capacidade = 90, tipo = 'work' },
	{ hash = -89291282, name = 'felon2', price = 1000, banido = false, modelo = 'Felon2', capacidade = 40, tipo = 'work' },
	{ hash = -624529134, name = 'jackal', price = 60000, banido = false, modelo = 'Jackal', capacidade = 50, tipo = 'carros' },
	{ hash = 1348744438, name = 'oracle', price = 60000, banido = false, modelo = 'Oracle', capacidade = 50, tipo = 'carros' },
	{ hash = -511601230, name = 'oracle2', price = 80000, banido = false, modelo = 'Oracle2', capacidade = 60, tipo = 'carros' },
	{ hash = 1349725314, name = 'sentinel', price = 150000, banido = false, modelo = 'Sentinel', capacidade = 50, tipo = 'carros' },
	{ hash = 873639469, name = 'sentinel2', price = 150000, banido = false, modelo = 'Sentinel2', capacidade = 40, tipo = 'carros' },
	{ hash = 1581459400, name = 'windsor', price = 150000, banido = false, modelo = 'Windsor', capacidade = 20, tipo = 'carros' },
	{ hash = -1930048799, name = 'windsor2', price = 170000, banido = false, modelo = 'Windsor2', capacidade = 40, tipo = 'carros' },
	{ hash = -1122289213, name = 'zion', price = 50000, banido = false, modelo = 'Zion', capacidade = 50, tipo = 'carros' },
	{ hash = -1193103848, name = 'zion2', price = 60000, banido = false, modelo = 'Zion2', capacidade = 40, tipo = 'carros' },
	{ hash = -1205801634, name = 'blade', price = 110000, banido = false, modelo = 'Blade', capacidade = 40, tipo = 'carros' },
	{ hash = -682211828, name = 'buccaneer', price = 130000, banido = false, modelo = 'Buccaneer', capacidade = 50, tipo = 'carros' },
	{ hash = -1013450936, name = 'buccaneer2', price = 260000, banido = false, modelo = 'Buccaneer2', capacidade = 60, tipo = 'carros' },
	{ hash = -1150599089, name = 'primo', price = 130000, banido = false, modelo = 'Primo', capacidade = 50, tipo = 'carros' },
	{ hash = -2040426790, name = 'primo2', price = 200000, banido = false, modelo = 'Primo2', capacidade = 60, tipo = 'work' },
	{ hash = 349605904, name = 'chino', price = 200000, banido = false, modelo = 'Chino', capacidade = 50, tipo = 'carros' },
	{ hash = -1361687965, name = 'chino2', price = 200000, banido = false, modelo = 'Chino2', capacidade = 60, tipo = 'work' },
	{ hash = 784565758, name = 'coquette3', price = 895000, banido = false, modelo = 'Coquette3', capacidade = 40, tipo = 'carros' },
	{ hash = 80636076, name = 'dominator', price = 230000, banido = false, modelo = 'Dominator', capacidade = 50, tipo = 'carros' },
	{ hash = 915704871, name = 'dominator2', price = 230000, banido = false, modelo = 'Dominator2', capacidade = 50, tipo = 'carros' },
	{ hash = 723973206, name = 'dukes', price = 150000, banido = false, modelo = 'Dukes', capacidade = 40, tipo = 'carros' },
	{ hash = -2119578145, name = 'faction', price = 150000, banido = false, modelo = 'Faction', capacidade = 50, tipo = 'carros' },
	{ hash = -1790546981, name = 'faction2', price = 200000, banido = false, modelo = 'Faction2', capacidade = 40, tipo = 'work' },
	{ hash = -2039755226, name = 'faction3', price = 350000, banido = false, modelo = 'Faction3', capacidade = 60, tipo = 'carros' },
	{ hash = -1800170043, name = 'gauntlet', price = 165000, banido = false, modelo = 'Gauntlet', capacidade = 40, tipo = 'carros' },
	{ hash = 349315417, name = 'gauntlet2', price = 165000, banido = false, modelo = 'Gauntlet2', capacidade = 40, tipo = 'carros' },
	{ hash = -339587598, name = 'swift', price = 1000, banido = false, modelo = 'Swift', capacidade = 0, tipo = 'work' },
	{ hash = -233098306, name = 'Boxville2', price = 51000, banido = false, modelo = 'Boxville2', capacidade = 0, tipo = 'work' },
	{ hash = 1075432268, name = 'swift2', price = 51000, banido = false, modelo = 'Swift#2', capacidade = 0, tipo = 'work' },
	{ hash = 15219735, name = 'hermes', price = 280000, banido = false, modelo = 'Hermes', capacidade = 50, tipo = 'carros' },
	{ hash = 37348240, name = 'hotknife', price = 180000, banido = false, modelo = 'Hotknife', capacidade = 30, tipo = 'carros' },
	{ hash = 525509695, name = 'moonbeam', price = 220000, banido = false, modelo = 'Moonbeam', capacidade = 80, tipo = 'carros' },
	{ hash = 1896491931, name = 'moonbeam2', price = 725000, banido = false, modelo = 'Moonbeam2', capacidade = 70, tipo = 'carros' },
	{ hash = -1943285540, name = 'nightshade', price = 270000, banido = false, modelo = 'Nightshade', capacidade = 30, tipo = 'carros' },
	{ hash = 1507916787, name = 'picador', price = 150000, banido = false, modelo = 'Picador', capacidade = 90, tipo = 'carros' },
	{ hash = -227741703, name = 'ruiner', price = 100000, banido = false, modelo = 'Ruiner', capacidade = 50, tipo = 'carros' },
	{ hash = -1685021548, name = 'sabregt', price = 100000, banido = false, modelo = 'Sabregt', capacidade = 60, tipo = 'carros' },
	{ hash = 223258115, name = 'sabregt2', price = 150000, banido = false, modelo = 'Sabregt2', capacidade = 60, tipo = 'carros' },
	{ hash = -14495224, name = 'regina', price = 100000, banido = false, modelo = 'Regina', capacidade = 100, tipo = 'carros' },
	{ hash = -1745203402, name = 'gburrito', price = 260000, banido = false, modelo = 'GBurrito', capacidade = 80, tipo = 'work' },
	{ hash = 729783779, name = 'slamvan', price = 180000, banido = false, modelo = 'Slamvan', capacidade = 80, tipo = 'carros' },
	{ hash = 833469436, name = 'slamvan2', price = 200000, banido = false, modelo = 'Slamvan2', capacidade = 50, tipo = 'work' },
	{ hash = 1119641113, name = 'slamvan3', price = 430000, banido = false, modelo = 'Slamvan3', capacidade = 80, tipo = 'carros' },
	{ hash = 1923400478, name = 'stalion', price = 150000, banido = false, modelo = 'Stalion', capacidade = 30, tipo = 'carros' },
	{ hash = -401643538, name = 'stalion2', price = 150000, banido = false, modelo = 'Stalion2', capacidade = 20, tipo = 'carros' },
	{ hash = 972671128, name = 'tampa', price = 170000, banido = false, modelo = 'Tampa', capacidade = 40, tipo = 'carros' },
	{ hash = -825837129, name = 'vigero', price = 170000, banido = false, modelo = 'Vigero', capacidade = 30, tipo = 'carros' },
	{ hash = -498054846, name = 'virgo', price = 150000, banido = false, modelo = 'Virgo', capacidade = 60, tipo = 'carros' },
	{ hash = 300680485, name = 'mk7pandem', price = 1000000, banido = false, modelo = 'Gol Mk7 Pandem', capacidade = 40, tipo = 'exclusive' },
	{ hash = 436874758, name = 's1000rr', price = 1000000, banido = false, modelo = 'BMW S1000RR', capacidade = 15, tipo = 'exclusive' },
	{ hash = -899509638, name = 'virgo2', price = 250000, banido = false, modelo = 'Virgo2', capacidade = 50, tipo = 'carros' },
	{ hash = 16646064, name = 'virgo3', price = 180000, banido = false, modelo = 'Virgo3', capacidade = 60, tipo = 'carros' },
	{ hash = 2006667053, name = 'voodoo', price = 220000, banido = false, modelo = 'Voodoo', capacidade = 60, tipo = 'carros' },
	{ hash = 523724515, name = 'voodoo2', price = 220000, banido = false, modelo = 'Voodoo2', capacidade = 60, tipo = 'carros' },
	{ hash = 1871995513, name = 'yosemite', price = 950000, banido = false, modelo = 'Yosemite', capacidade = 130, tipo = 'carros' },
	{ hash = 1126868326, name = 'bfinjection', price = 80000, banido = false, modelo = 'Bfinjection', capacidade = 20, tipo = 'carros' },
	{ hash = -349601129, name = 'bifta', price = 190000, banido = false, modelo = 'Bifta', capacidade = 20, tipo = 'carros' },
	{ hash = -1435919434, name = 'bodhi2', price = 170000, banido = false, modelo = 'Bodhi2', capacidade = 90, tipo = 'carros' },
	{ hash = -1479664699, name = 'brawler', price = 250000, banido = false, modelo = 'Brawler', capacidade = 50, tipo = 'carros' },
	{ hash = 101905590, name = 'trophytruck', price = 400000, banido = false, modelo = 'Trophytruck', capacidade = 15, tipo = 'carros' },
	{ hash = -663299102, name = 'trophytruck2', price = 400000, banido = false, modelo = 'Trophytruck2', capacidade = 15, tipo = 'carros' },
	{ hash = -1237253773, name = 'dubsta3', price = 400000, banido = false, modelo = 'Dubsta3', capacidade = 90, tipo = 'carros' },
	{ hash = -2064372143, name = 'mesa3', price = 200000, banido = false, modelo = 'Mesa3', capacidade = 60, tipo = 'carros' },
	{ hash = 1645267888, name = 'rancherxl', price = 220000, banido = false, modelo = 'Rancherxl', capacidade = 70, tipo = 'carros' },
	{ hash = -1207771834, name = 'rebel', price = 51000, banido = false, modelo = 'Rebel', capacidade = 80, tipo = 'work' },
	{ hash = -2045594037, name = 'rebel2', price = 250000, banido = false, modelo = 'Rebel2', capacidade = 100, tipo = 'carros' },
	{ hash = -1532697517, name = 'riata', price = 250000, banido = false, modelo = 'Riata', capacidade = 80, tipo = 'carros' },
	{ hash = 1770332643, name = 'dloader', price = 150000, banido = false, modelo = 'Dloader', capacidade = 80, tipo = 'carros' },
	{ hash = -667151410, name = 'ratloader', price = 1000, banido = false, modelo = 'Caminhão', capacidade = 80, tipo = 'work' },
	{ hash = -1189015600, name = 'sandking', price = 400000, banido = false, modelo = 'Sandking', capacidade = 120, tipo = 'carros' },
	{ hash = 989381445, name = 'sandking2', price = 370000, banido = false, modelo = 'Sandking2', capacidade = 120, tipo = 'carros' },
	{ hash = -808831384, name = 'baller', price = 150000, banido = false, modelo = 'Baller', capacidade = 50, tipo = 'carros' },
	{ hash = 142944341, name = 'baller2', price = 160000, banido = false, modelo = 'Baller2', capacidade = 60, tipo = 'carros' },
	{ hash = -1761239425, name = 'hornet', price = 1000000, banido = false, modelo = 'Hornet', capacidade = 30, tipo = 'motos' }, 
	{ hash = 1878062887, name = 'baller3', price = 175000, banido = false, modelo = 'Baller3', capacidade = 70, tipo = 'carros' },
	{ hash = 634118882, name = 'baller4', price = 785000, banido = false, modelo = 'Baller4', capacidade = 80, tipo = 'carros' },
	{ hash = 470404958, name = 'baller5', price = 1270000, banido = false, modelo = 'Baller5', capacidade = 80, tipo = 'carros' },
	{ hash = 666166960, name = 'baller6', price = 1280000, banido = false, modelo = 'Baller6', capacidade = 80, tipo = 'carros' },
	{ hash = 850565707, name = 'bjxl', price = 110000, banido = false, modelo = 'Bjxl', capacidade = 50, tipo = 'carros' },
	{ hash = 2006918058, name = 'cavalcade', price = 110000, banido = false, modelo = 'Cavalcade', capacidade = 60, tipo = 'carros' },
	{ hash = -789894171, name = 'cavalcade2', price = 130000, banido = false, modelo = 'Cavalcade2', capacidade = 60, tipo = 'carros' },
	{ hash = 683047626, name = 'contender', price = 425000, banido = false, modelo = 'Contender', capacidade = 80, tipo = 'carros' },
	{ hash = 1177543287, name = 'dubsta', price = 210000, banido = false, modelo = 'Dubsta', capacidade = 70, tipo = 'carros' },
	{ hash = -394074634, name = 'dubsta2', price = 240000, banido = false, modelo = 'Dubsta2', capacidade = 70, tipo = 'carros' },
	{ hash = -1775728740, name = 'granger', price = 345000, banido = false, modelo = 'Granger', capacidade = 100, tipo = 'carros' },
	{ hash = -1543762099, name = 'gresley', price = 150000, banido = false, modelo = 'Gresley', capacidade = 50, tipo = 'carros' },
	{ hash = 884422927, name = 'habanero', price = 110000, banido = false, modelo = 'Habanero', capacidade = 50, tipo = 'carros' },
	{ hash = 1221512915, name = 'seminole', price = 110000, banido = false, modelo = 'Seminole', capacidade = 60, tipo = 'carros' },
	{ hash = 1337041428, name = 'serrano', price = 50000, banido = false, modelo = 'Serrano', capacidade = 50, tipo = 'carros' },
	{ hash = 1203490606, name = 'xls', price = 150000, banido = false, modelo = 'Xls', capacidade = 50, tipo = 'carros' },
	{ hash = -432008408, name = 'xls2', price = 1850000, banido = false, modelo = 'Xls2', capacidade = 50, tipo = 'carros' },
	{ hash = -1809822327, name = 'asea', price = 20000, banido = false, modelo = 'Asea', capacidade = 30, tipo = 'carros' },
	{ hash = -1903012613, name = 'asterope', price = 65000, banido = false, modelo = 'Asterope', capacidade = 30, tipo = 'carros' },
	{ hash = 906642318, name = 'cog55', price = 150000, banido = false, modelo = 'Cog55', capacidade = 50, tipo = 'work' },
	{ hash = 704435172, name = 'cog552', price = 150000, banido = false, modelo = 'Cog552', capacidade = 50, tipo = 'carros' },
	{ hash = -2030171296, name = 'cognoscenti', price = 280000, banido = false, modelo = 'Cognoscenti', capacidade = 50, tipo = 'carros' },
	{ hash = -604842630, name = 'cognoscenti2', price = 400000, banido = false, modelo = 'Cognoscenti2', capacidade = 50, tipo = 'carros' },
	{ hash = -1477580979, name = 'stanier', price = 60000, banido = false, modelo = 'Stanier', capacidade = 60, tipo = 'carros' },
	{ hash = 1723137093, name = 'stratum', price = 90000, banido = false, modelo = 'Stratum', capacidade = 70, tipo = 'carros' },
	{ hash = 1123216662, name = 'superd', price = 200000, banido = false, modelo = 'Superd', capacidade = 50, tipo = 'work' },
	{ hash = -1894894188, name = 'surge', price = 110000, banido = false, modelo = 'Surge', capacidade = 60, tipo = 'carros' },
	{ hash = -1008861746, name = 'tailgater', price = 110000, banido = false, modelo = 'Tailgater', capacidade = 50, tipo = 'carros' },
	{ hash = 1373123368, name = 'warrener', price = 90000, banido = false, modelo = 'Warrener', capacidade = 40, tipo = 'carros' },
	{ hash = 1777363799, name = 'washington', price = 130000, banido = false, modelo = 'Washington', capacidade = 60, tipo = 'carros' },
	{ hash = 767087018, name = 'alpha', price = 230000, banido = false, modelo = 'Alpha', capacidade = 40, tipo = 'carros' },
	{ hash = -1041692462, name = 'banshee', price = 300000, banido = false, modelo = 'Banshee', capacidade = 30, tipo = 'carros' },
	{ hash = 1274868363, name = 'bestiagts', price = 800000, banido = false, modelo = 'Bestiagts', capacidade = 60, tipo = 'carros' },
	{ hash = 1039032026, name = 'blista2', price = 55000, banido = false, modelo = 'Blista2', capacidade = 40, tipo = 'carros' },
	{ hash = -591651781, name = 'blista3', price = 80000, banido = false, modelo = 'Blista3', capacidade = 40, tipo = 'carros' },
	{ hash = -304802106, name = 'buffalo', price = 100000, banido = false, modelo = 'Buffalo', capacidade = 50, tipo = 'carros' },
	{ hash = 736902334, name = 'buffalo2', price = 300000, banido = false, modelo = 'Buffalo2', capacidade = 50, tipo = 'carros' },
	{ hash = 237764926, name = 'buffalo3', price = 300000, banido = false, modelo = 'Buffalo3', capacidade = 50, tipo = 'carros' },
	{ hash = 2072687711, name = 'carbonizzare', price = 450000, banido = false, modelo = 'Carbonizzare', capacidade = 30, tipo = 'carros' },
	{ hash = -1045541610, name = 'comet2', price = 250000, banido = false, modelo = 'Comet2', capacidade = 40, tipo = 'carros' },
	{ hash = -2022483795, name = 'comet3', price = 290000, banido = false, modelo = 'Comet3', capacidade = 40, tipo = 'carros' },
	{ hash = 661493923, name = 'comet5', price = 300000, banido = false, modelo = 'Comet5', capacidade = 40, tipo = 'carros' },
	{ hash = 108773431, name = 'coquette', price = 1250000, banido = false, modelo = 'Coquette', capacidade = 30, tipo = 'carros' },
	{ hash = 196747873, name = 'elegy', price = 350000, banido = false, modelo = 'Elegy', capacidade = 30, tipo = 'carros' },
	{ hash = -566387422, name = 'elegy2', price = 370000, banido = false, modelo = 'Elegy2', capacidade = 30, tipo = 'carros' },
	{ hash = -1995326987, name = 'feltzer2', price = 255000, banido = false, modelo = 'Feltzer2', capacidade = 40, tipo = 'carros' },
	{ hash = -1089039904, name = 'furoregt', price = 290000, banido = false, modelo = 'Furoregt', capacidade = 30, tipo = 'carros' },
	{ hash = 499169875, name = 'fusilade', price = 210000, banido = false, modelo = 'Fusilade', capacidade = 40, tipo = 'carros' },
	{ hash = 2016857647, name = 'futo', price = 100000, banido = false, modelo = 'Futo', capacidade = 40, tipo = 'carros' },
	{ hash = -1297672541, name = 'jester', price = 150000, banido = false, modelo = 'Jester', capacidade = 30, tipo = 'carros' },
	{ hash = 544021352, name = 'khamelion', price = 210000, banido = false, modelo = 'Khamelion', capacidade = 50, tipo = 'carros' },
	{ hash = -1372848492, name = 'kuruma', price = 400000, banido = false, modelo = 'Kuruma', capacidade = 50, tipo = 'carros' },
	{ hash = -142942670, name = 'massacro', price = 330000, banido = false, modelo = 'Massacro', capacidade = 40, tipo = 'carros' },
	{ hash = -631760477, name = 'massacro2', price = 330000, banido = false, modelo = 'Massacro2', capacidade = 40, tipo = 'carros' },
	{ hash = 1032823388, name = 'ninef', price = 400000, banido = false, modelo = 'Ninef', capacidade = 40, tipo = 'carros' },
	{ hash = -1461482751, name = 'ninef2', price = 290000, banido = false, modelo = 'Ninef2', capacidade = 40, tipo = 'carros' },
	{ hash = -777172681, name = 'omnis', price = 240000, banido = false, modelo = 'Omnis', capacidade = 20, tipo = 'carros' },
	{ hash = 867799010, name = 'pariah', price = 500000, banido = false, modelo = 'Pariah', capacidade = 30, tipo = 'carros' },
	{ hash = 1783355638, name = 'mower', price = 0, banido = false, modelo = 'Cortador de grama', capacidade = 2, tipo = 'work' },
	{ hash = -377465520, name = 'penumbra', price = 150000, banido = false, modelo = 'Penumbra', capacidade = 40, tipo = 'carros' },
	{ hash = -1529242755, name = 'raiden', price = 240000, banido = false, modelo = 'Raiden', capacidade = 50, tipo = 'carros' },
	{ hash = -1934452204, name = 'rapidgt', price = 250000, banido = false, modelo = 'Rapidgt', capacidade = 20, tipo = 'carros' },
	{ hash = 1737773231, name = 'rapidgt2', price = 300000, banido = false, modelo = 'Rapidgt2', capacidade = 20, tipo = 'carros' },
	{ hash = 719660200, name = 'ruston', price = 370000, banido = false, modelo = 'Ruston', capacidade = 20, tipo = 'carros' },
	{ hash = -1485523546, name = 'schafter3', price = 275000, banido = false, modelo = 'Schafter3', capacidade = 50, tipo = 'carros' },
	{ hash = 1489967196, name = 'schafter4', price = 275000, banido = false, modelo = 'Schafter4', capacidade = 50, tipo = 'carros' },
	{ hash = -888242983, name = 'schafter5', price = 275000, banido = false, modelo = 'Schafter5', capacidade = 50, tipo = 'carros' },
	{ hash = -746882698, name = 'schwarzer', price = 170000, banido = false, modelo = 'Schwarzer', capacidade = 50, tipo = 'carros' },
	{ hash = 1104234922, name = 'sentinel3', price = 100000, banido = false, modelo = 'Sentinel3', capacidade = 30, tipo = 'carros' },
	{ hash = -1757836725, name = 'seven70', price = 370000, banido = false, modelo = 'Seven70', capacidade = 20, tipo = 'carros' },
	{ hash = 1886268224, name = 'specter', price = 320000, banido = false, modelo = 'Specter', capacidade = 20, tipo = 'carros' },
	{ hash = 1074745671, name = 'specter2', price = 355000, banido = false, modelo = 'Specter2', capacidade = 20, tipo = 'carros' },
	{ hash = 1741861769, name = 'streiter', price = 250000, banido = false, modelo = 'Streiter', capacidade = 70, tipo = 'carros' },
	{ hash = 970598228, name = 'sultan', price = 210000, banido = false, modelo = 'Sultan', capacidade = 50, tipo = 'carros' },
	{ hash = 384071873, name = 'surano', price = 310000, banido = false, modelo = 'Surano', capacidade = 30, tipo = 'carros' },
	{ hash = -1071380347, name = 'tampa2', price = 200000, banido = false, modelo = 'Tampa2', capacidade = 20, tipo = 'carros' },
	{ hash = 1887331236, name = 'tropos', price = 170000, banido = false, modelo = 'Tropos', capacidade = 20, tipo = 'carros' },
	{ hash = 1102544804, name = 'verlierer2', price = 380000, banido = false, modelo = 'Verlierer2', capacidade = 20, tipo = 'carros' },
	{ hash = 117401876, name = 'btype', price = 200000, banido = false, modelo = 'Btype', capacidade = 40, tipo = 'work' },
	{ hash = -831834716, name = 'btype2', price = 460000, banido = false, modelo = 'Btype2', capacidade = 20, tipo = 'carros' },
	{ hash = -602287871, name = 'btype3', price = 390000, banido = false, modelo = 'Btype3', capacidade = 40, tipo = 'carros' },
	{ hash = 941800958, name = 'casco', price = 355000, banido = false, modelo = 'Casco', capacidade = 50, tipo = 'carros' },
	{ hash = -1311154784, name = 'cheetah', price = 425000, banido = false, modelo = 'Cheetah', capacidade = 20, tipo = 'carros' },
	{ hash = 1011753235, name = 'Coquette2', price = 685000, banido = false, modelo = 'Coquette2', capacidade = 40, tipo = 'carros' },
	{ hash = -1566741232, name = 'feltzer3', price = 220000, banido = false, modelo = 'Feltzer3', capacidade = 40, tipo = 'carros' },
	{ hash = -2079788230, name = 'gt500', price = 250000, banido = false, modelo = 'Gt500', capacidade = 40, tipo = 'carros' },
	{ hash = -1405937764, name = 'infernus2', price = 250000, banido = false, modelo = 'Infernus2', capacidade = 20, tipo = 'carros' },
	{ hash = 1051415893, name = 'jb700', price = 220000, banido = false, modelo = 'Jb700', capacidade = 30, tipo = 'carros' },
	{ hash = -1660945322, name = 'mamba', price = 300000, banido = false, modelo = 'Mamba', capacidade = 50, tipo = 'carros' },
	{ hash = -2124201592, name = 'manana', price = 130000, banido = false, modelo = 'Manana', capacidade = 60, tipo = 'carros' },
	{ hash = -433375717, name = 'monroe', price = 260000, banido = false, modelo = 'Monroe', capacidade = 20, tipo = 'carros' },
	{ hash = 1830407356, name = 'peyote', price = 150000, banido = false, modelo = 'Peyote', capacidade = 50, tipo = 'carros' },
	{ hash = 1078682497, name = 'pigalle', price = 15000, banido = false, modelo = 'Pigalle', capacidade = 60, tipo = 'carros' },
	{ hash = 2049897956, name = 'rapidgt3', price = 220000, banido = false, modelo = 'Rapidgt3', capacidade = 40, tipo = 'carros' },
	{ hash = 1841130506, name = 'retinue', price = 150000, banido = false, modelo = 'Retinue', capacidade = 40, tipo = 'carros' },
	{ hash = 1545842587, name = 'stinger', price = 220000, banido = false, modelo = 'Stinger', capacidade = 20, tipo = 'carros' },
	{ hash = -2098947590, name = 'stingergt', price = 230000, banido = false, modelo = 'Stingergt', capacidade = 20, tipo = 'carros' },
	{ hash = 1504306544, name = 'torero', price = 160000, banido = false, modelo = 'Torero', capacidade = 30, tipo = 'carros' },
	{ hash = 1353720154, name = 'flatbed', price = 1000, banido = true, modelo = 'Reboque', capacidade = 0, tipo = 'work' },
	{ hash = 2037834373, name = 'flatbed3', price = 1000, banido = false, modelo = 'flatbed3', capacidade = 0, tipo = 'work' },
	{ hash = 464687292, name = 'tornado', price = 150000, banido = false, modelo = 'Tornado', capacidade = 70, tipo = 'carros' },
	{ hash = 1531094468, name = 'tornado2', price = 160000, banido = false, modelo = 'Tornado2', capacidade = 60, tipo = 'carros' },
	{ hash = -1797613329, name = 'tornado5', price = 200000, banido = false, modelo = 'Tornado5', capacidade = 60, tipo = 'work' },
	{ hash = -1558399629, name = 'tornado6', price = 250000, banido = false, modelo = 'Tornado6', capacidade = 50, tipo = 'carros' },
	{ hash = -982130927, name = 'turismo2', price = 250000, banido = false, modelo = 'Turismo2', capacidade = 30, tipo = 'carros' },
	{ hash = 758895617, name = 'ztype', price = 400000, banido = false, modelo = 'Ztype', capacidade = 20, tipo = 'carros' },
	{ hash = -1216765807, name = 'adder', price = 620000, banido = false, modelo = 'Adder', capacidade = 20, tipo = 'carros' },
	{ hash = -313185164, name = 'autarch', price = 760000, banido = false, modelo = 'Autarch', capacidade = 20, tipo = 'carros' },
	{ hash = 633712403, name = 'banshee2', price = 370000, banido = false, modelo = 'Banshee2', capacidade = 20, tipo = 'carros' },
	{ hash = -1696146015, name = 'bullet', price = 400000, banido = false, modelo = 'Bullet', capacidade = 20, tipo = 'carros' },
	{ hash = 223240013, name = 'cheetah2', price = 240000, banido = false, modelo = 'Cheetah2', capacidade = 20, tipo = 'carros' },
	{ hash = -1291952903, name = 'entityxf', price = 460000, banido = false, modelo = 'Entityxf', capacidade = 20, tipo = 'carros' },
	{ hash = 1426219628, name = 'fmj', price = 520000, banido = false, modelo = 'Fmj', capacidade = 20, tipo = 'carros' },
	{ hash = 1234311532, name = 'gp1', price = 600000, banido = false, modelo = 'Gp1', capacidade = 20, tipo = 'carros' },
	{ hash = 418536135, name = 'infernus', price = 470000, banido = false, modelo = 'Infernus', capacidade = 20, tipo = 'carros' },
	{ hash = 1034187331, name = 'nero', price = 1600000, banido = false, modelo = 'Nero', capacidade = 20, tipo = 'carros' },
	{ hash = 1093792632, name = 'nero2', price = 480000, banido = false, modelo = 'Nero2', capacidade = 20, tipo = 'carros' },
	{ hash = 1987142870, name = 'osiris', price = 1400000, banido = true, modelo = 'Osiris', capacidade = 20, tipo = 'carros' },
	{ hash = -1758137366, name = 'penetrator', price = 480000, banido = false, modelo = 'Penetrator', capacidade = 20, tipo = 'carros' },
	{ hash = -1829802492, name = 'pfister811', price = 530000, banido = false, modelo = 'Pfister811', capacidade = 20, tipo = 'carros' },
	{ hash = 234062309, name = 'reaper', price = 620000, banido = false, modelo = 'Reaper', capacidade = 20, tipo = 'carros' },
	{ hash = 1352136073, name = 'sc1', price = 495000, banido = false, modelo = 'Sc1', capacidade = 20, tipo = 'carros' },
	{ hash = -295689028, name = 'sultanrs', price = 450000, banido = false, modelo = 'Sultan RS', capacidade = 30, tipo = 'carros' },
	{ hash = 1663218586, name = 't20', price = 1200000, banido = false, modelo = 'T20', capacidade = 20, tipo = 'carros' },
	{ hash = 272929391, name = 'tempesta', price = 800000, banido = false, modelo = 'Tempesta', capacidade = 20, tipo = 'carros' },
	{ hash = 408192225, name = 'turismor', price = 620000, banido = false, modelo = 'Turismor', capacidade = 20, tipo = 'carros' },
	{ hash = 2067820283, name = 'tyrus', price = 620000, banido = false, modelo = 'Tyrus', capacidade = 20, tipo = 'carros' },
	{ hash = 338562499, name = 'vacca', price = 620000, banido = false, modelo = 'Vacca', capacidade = 30, tipo = 'carros' },
	{ hash = -998177792, name = 'visione', price = 690000, banido = false, modelo = 'Visione', capacidade = 20, tipo = 'carros' },
	{ hash = -1622444098, name = 'voltic', price = 440000, banido = false, modelo = 'Voltic', capacidade = 20, tipo = 'carros' },
	{ hash = -1403128555, name = 'zentorno', price = 1000000, banido = false, modelo = 'Zentorno', capacidade = 20, tipo = 'carros' },
	{ hash = -599568815, name = 'sadler', price = 180000, banido = false, modelo = 'Sadler', capacidade = 70, tipo = 'carros' },
	{ hash = -16948145, name = 'bison', price = 220000, banido = false, modelo = 'Bison', capacidade = 70, tipo = 'carros' },
	{ hash = 2072156101, name = 'bison2', price = 180000, banido = false, modelo = 'Bison2', capacidade = 70, tipo = 'carros' },
	{ hash = 1069929536, name = 'bobcatxl', price = 260000, banido = false, modelo = 'Bobcatxl', capacidade = 100, tipo = 'carros' },
	{ hash = -1346687836, name = 'burrito', price = 260000, banido = false, modelo = 'Burrito', capacidade = 80, tipo = 'carros' },
	{ hash = -907477130, name = 'burrito2', price = 260000, banido = false, modelo = 'Burrito2', capacidade = 120, tipo = 'carros' },
	{ hash = -1743316013, name = 'burrito3', price = 260000, banido = false, modelo = 'Burrito3', capacidade = 120, tipo = 'carros' },
	{ hash = 893081117, name = 'burrito4', price = 260000, banido = false, modelo = 'Burrito4', capacidade = 120, tipo = 'carros' },
	{ hash = -310465116, name = 'minivan', price = 110000, banido = false, modelo = 'Minivan', capacidade = 70, tipo = 'carros' },
	{ hash = -1126264336, name = 'minivan2', price = 220000, banido = false, modelo = 'Minivan2', capacidade = 60, tipo = 'carros' },
	{ hash = 1488164764, name = 'paradise', price = 260000, banido = false, modelo = 'Paradise', capacidade = 120, tipo = 'carros' },
	{ hash = -119658072, name = 'pony', price = 260000, banido = false, modelo = 'Pony', capacidade = 120, tipo = 'carros' },
	{ hash = 943752001, name = 'pony2', price = 260000, banido = false, modelo = 'Pony2', capacidade = 120, tipo = 'carros' },
	{ hash = 1162065741, name = 'rumpo', price = 260000, banido = false, modelo = 'Rumpo', capacidade = 120, tipo = 'carros' },
	{ hash = -1776615689, name = 'rumpo2', price = 260000, banido = false, modelo = 'Rumpo2', capacidade = 120, tipo = 'carros' },
	{ hash = 1475773103, name = 'rumpo3', price = 2350000, banido = false, modelo = 'Rumpo3', capacidade = 120, tipo = 'carros' },
	{ hash = -810318068, name = 'speedo', price = 200000, banido = false, modelo = 'Speedo', capacidade = 120, tipo = 'work' },
	{ hash = 699456151, name = 'surfer', price = 55000, banido = false, modelo = 'Surfer', capacidade = 80, tipo = 'carros' },
	{ hash = 65402552, name = 'youga', price = 260000, banido = false, modelo = 'Youga', capacidade = 120, tipo = 'carros' },
	{ hash = 1026149675, name = 'youga2', price = 1000, banido = false, modelo = 'Youga2', capacidade = 80, tipo = 'work' },
	{ hash = -1207771834, name = 'rebel', price = 1000, banido = false, modelo = 'Rebel', capacidade = 80, tipo = 'work' },
	{ hash = -2076478498, name = 'tractor2', price = 1000, banido = false, modelo = 'Tractor2', capacidade = 80, tipo = 'work' },
	{ hash = -713569950, name = 'bus', price = 0, banido = true, modelo = 'bus', capacidade = 0, tipo = 'carros' },
	{ hash = -2072933068, name = 'coach', price = 0, banido = true, modelo = 'coach', capacidade = 0, tipo = 'carros' },
	{ hash = 486987393, name = 'huntley', price = 110000, banido = false, modelo = 'Huntley', capacidade = 60, tipo = 'carros' },
	{ hash = 1269098716, name = 'landstalker', price = 130000, banido = false, modelo = 'Landstalker', capacidade = 70, tipo = 'carros' },
	{ hash = 914654722, name = 'mesa', price = 90000, banido = false, modelo = 'Mesa', capacidade = 50, tipo = 'carros' },
	{ hash = -808457413, name = 'patriot', price = 250000, banido = false, modelo = 'Patriot', capacidade = 70, tipo = 'carros' },
	{ hash = -1651067813, name = 'radi', price = 110000, banido = false, modelo = 'Radi', capacidade = 50, tipo = 'carros' },
	{ hash = 2136773105, name = 'rocoto', price = 110000, banido = false, modelo = 'Rocoto', capacidade = 60, tipo = 'carros' },
	{ hash = -376434238, name = 'tyrant', price = 1800000, banido = false, modelo = 'Tyrant', capacidade = 30, tipo = 'carros' },
	{ hash = -2120700196, name = 'entity2', price = 1000000, banido = false, modelo = 'Entity2', capacidade = 20, tipo = 'carros' },
	{ hash = -988501280, name = 'cheburek', price = 170000, banido = false, modelo = 'Cheburek', capacidade = 50, tipo = 'carros' },
	{ hash = 1115909093, name = 'hotring', price = 300000, banido = false, modelo = 'Hotring', capacidade = 60, tipo = 'carros' },
	{ hash = -214906006, name = 'jester3', price = 345000, banido = false, modelo = 'Jester3', capacidade = 30, tipo = 'carros' },
	{ hash = -1043459709, name = 'marquis', price = 1000000, banido = false, modelo = 'Marquis', capacidade = 130, tipo = 'exclusive' },
	{ hash = -1259134696, name = 'flashgt', price = 370000, banido = false, modelo = 'Flashgt', capacidade = 30, tipo = 'carros' },
	{ hash = -1267543371, name = 'ellie', price = 320000, banido = false, modelo = 'Ellie', capacidade = 50, tipo = 'carros' },
	{ hash = 1046206681, name = 'michelli', price = 160000, banido = false, modelo = 'Michelli', capacidade = 40, tipo = 'carros' },
	{ hash = 1617472902, name = 'fagaloa', price = 80000, banido = false, modelo = 'Fagaloa', capacidade = 80, tipo = 'carros' },
	{ hash = -915704871, name = 'dominator2', price = 230000, banido = false, modelo = 'Dominator2', capacidade = 50, tipo = 'carros' },
	{ hash = -986944621, name = 'dominator3', price = 350000, banido = false, modelo = 'Dominator3', capacidade = 50, tipo = 'carros' },
	{ hash = 931280609, name = 'issi3', price = 190000, banido = false, modelo = 'Issi3', capacidade = 20, tipo = 'carros' },
	{ hash = -1134706562, name = 'taipan', price = 620000, banido = false, modelo = 'Taipan', capacidade = 20, tipo = 'carros' },
	{ hash = 1909189272, name = 'gb200', price = 195000, banido = false, modelo = 'Gb200', capacidade = 20, tipo = 'carros' },
	{ hash = -1961627517, name = 'stretch', price = 520000, banido = false, modelo = 'Stretch', capacidade = 60, tipo = 'carros' },
	{ hash = -2107990196, name = 'guardian', price = 1540000, banido = false, modelo = 'Guardian', capacidade = 150, tipo = 'carros' },
	{ hash = -121446169, name = 'kamacho', price = 860000, banido = false, modelo = 'Kamacho', capacidade = 90, tipo = 'carros' },
	{ hash = -1848994066, name = 'neon', price = 900000, banido = false, modelo = 'Neon', capacidade = 30, tipo = 'carros' },
	{ hash = 1392481335, name = 'cyclone', price = 920000, banido = false, modelo = 'Cyclone', capacidade = 20, tipo = 'carros' },
	{ hash = -2048333973, name = 'italigtb', price = 600000, banido = false, modelo = 'Italigtb', capacidade = 20, tipo = 'carros' },
	{ hash = -482719877, name = 'italigtb2', price = 610000, banido = false, modelo = 'Italigtb2', capacidade = 20, tipo = 'carros' },
	{ hash = 1939284556, name = 'vagner', price = 680000, banido = false, modelo = 'Vagner', capacidade = 20, tipo = 'carros' },
	{ hash = 917809321, name = 'xa21', price = 700000, banido = false, modelo = 'Xa21', capacidade = 20, tipo = 'carros' },
	{ hash = 1031562256, name = 'tezeract', price = 920000, banido = false, modelo = 'Tezeract', capacidade = 20, tipo = 'carros' },
	{ hash = 2123327359, name = 'prototipo', price = 1400000, banido = false, modelo = 'Prototipo', capacidade = 20, tipo = 'carros' },
	{ hash = -420911112, name = 'patriot2', price = 550000, banido = false, modelo = 'Patriot2', capacidade = 60, tipo = 'carros' },
	{ hash = 321186144, name = 'stafford', price = 200000, banido = false, modelo = 'Stafford', capacidade = 40, tipo = 'work' },
	{ hash = 500482303, name = 'swinger', price = 250000, banido = false, modelo = 'Swinger', capacidade = 20, tipo = 'carros' },
	{ hash = -1566607184, name = 'clique', price = 360000, banido = false, modelo = 'Clique', capacidade = 40, tipo = 'carros' },
	{ hash = 1591739866, name = 'deveste', price = 920000, banido = false, modelo = 'Deveste', capacidade = 20, tipo = 'carros' },
	{ hash = 1279262537, name = 'deviant', price = 370000, banido = false, modelo = 'Deviant', capacidade = 50, tipo = 'carros' },
	{ hash = -2096690334, name = 'impaler', price = 250000, banido = false, modelo = 'Impaler', capacidade = 60, tipo = 'carros' },
	{ hash = -331467772, name = 'italigto', price = 1400000, banido = false, modelo = 'Italigto', capacidade = 30, tipo = 'carros' },
	{ hash = -507495760, name = 'schlagen', price = 690000, banido = false, modelo = 'Schlagen', capacidade = 30, tipo = 'carros' },
	{ hash = -1168952148, name = 'toros', price = 1000000, banido = false, modelo = 'Toros', capacidade = 80, tipo = 'carros' },
	{ hash = 1456744817, name = 'tulip', price = 320000, banido = false, modelo = 'Tulip', capacidade = 60, tipo = 'carros' },
	{ hash = -49115651, name = 'vamos', price = 320000, banido = false, modelo = 'Vamos', capacidade = 60, tipo = 'carros' },
	{ hash = -54332285, name = 'freecrawler', price = 350000, banido = false, modelo = 'Freecrawler', capacidade = 50, tipo = 'carros' },
	{ hash = 1909141499, name = 'fugitive', price = 50000, banido = false, modelo = 'Fugitive', capacidade = 50, tipo = 'carros' },
	{ hash = -1232836011, name = 'le7b', price = 700000, banido = false, modelo = 'Le7b', capacidade = 20, tipo = 'carros' },
	{ hash = 2068293287, name = 'lurcher', price = 150000, banido = false, modelo = 'Lurcher', capacidade = 60, tipo = 'carros' },
	{ hash = 482197771, name = 'lynx', price = 370000, banido = false, modelo = 'Lynx', capacidade = 30, tipo = 'carros' },
	{ hash = -674927303, name = 'raptor', price = 300000, banido = false, modelo = 'Raptor', capacidade = 20, tipo = 'carros' },
	{ hash = 819197656, name = 'sheava', price = 700000, banido = false, modelo = 'Sheava', capacidade = 20, tipo = 'carros' },
	{ hash = 838982985, name = 'z190', price = 350000, banido = false, modelo = 'Z190', capacidade = 40, tipo = 'carros' },
	{ hash = 1672195559, name = 'akuma', price = 500000, banido = false, modelo = 'Akuma', capacidade = 15, tipo = 'motos' },
	{ hash = -2115793025, name = 'avarus', price = 440000, banido = false, modelo = 'Avarus', capacidade = 15, tipo = 'motos' },
	{ hash = -2140431165, name = 'bagger', price = 300000, banido = false, modelo = 'Bagger', capacidade = 40, tipo = 'motos' },
	{ hash = -114291515, name = 'bati', price = 500000, banido = false, modelo = 'Bati', capacidade = 15, tipo = 'motos' },
	{ hash = -891462355, name = 'bati2', price = 300000, banido = false, modelo = 'Bati2', capacidade = 15, tipo = 'motos' },
	{ hash = 86520421, name = 'bf400', price = 250000, banido = false, modelo = 'Bf400', capacidade = 15, tipo = 'motos' },
	{ hash = 11251904, name = 'carbonrs', price = 300000, banido = false, modelo = 'Carbonrs', capacidade = 15, tipo = 'motos' },
	{ hash = 6774487, name = 'chimera', price = 345000, banido = false, modelo = 'Chimera', capacidade = 15, tipo = 'motos' },
	{ hash = 390201602, name = 'cliffhanger', price = 310000, banido = false, modelo = 'Cliffhanger', capacidade = 15, tipo = 'motos' },
	{ hash = 2006142190, name = 'daemon', price = 200000, banido = false, modelo = 'Daemon', capacidade = 15, tipo = 'work' },
	{ hash = -1404136503, name = 'daemon2', price = 240000, banido = false, modelo = 'Daemon2', capacidade = 15, tipo = 'motos' },
	{ hash = 822018448, name = 'defiler', price = 460000, banido = false, modelo = 'Defiler', capacidade = 15, tipo = 'motos' },
	{ hash = -239841468, name = 'diablous', price = 430000, banido = false, modelo = 'Diablous', capacidade = 15, tipo = 'motos' },
	{ hash = 1790834270, name = 'diablous2', price = 460000, banido = false, modelo = 'Diablous2', capacidade = 15, tipo = 'motos' },
	{ hash = -1670998136, name = 'double', price = 400000, banido = false, modelo = 'Double', capacidade = 15, tipo = 'motos' },
	{ hash = 1753414259, name = 'enduro', price = 195000, banido = false, modelo = 'Enduro', capacidade = 15, tipo = 'motos' },
	{ hash = 2035069708, name = 'esskey', price = 320000, banido = false, modelo = 'Esskey', capacidade = 15, tipo = 'motos' },
	{ hash = -1842748181, name = 'faggio', price = 10000, banido = false, modelo = 'Faggio', capacidade = 30, tipo = 'motos' },
	{ hash = 55628203, name = 'faggio2', price = 5000, banido = false, modelo = 'Faggio2', capacidade = 30, tipo = 'motos' },
	{ hash = -1289178744, name = 'faggio3', price = 5000, banido = false, modelo = 'Faggio3', capacidade = 30, tipo = 'motos' },
	{ hash = 627535535, name = 'fcr', price = 50000, banido = false, modelo = 'Fcr', capacidade = 15, tipo = 'motos' },
	{ hash = -757735410, name = 'fcr2', price = 390000, banido = false, modelo = 'Fcr2', capacidade = 15, tipo = 'motos' },
	{ hash = 741090084, name = 'gargoyle', price = 200000, banido = false, modelo = 'Gargoyle', capacidade = 15, tipo = 'motos' },
	{ hash = 1265391242, name = 'hakuchou', price = 400000, banido = false, modelo = 'Hakuchou', capacidade = 15, tipo = 'motos' },
	{ hash = -255678177, name = 'hakuchou2', price = 550000, banido = false, modelo = 'Hakuchou2', capacidade = 15, tipo = 'motos' },
	{ hash = 301427732, name = 'hexer', price = 250000, banido = false, modelo = 'Hexer', capacidade = 15, tipo = 'motos' },
	{ hash = -159126838, name = 'innovation', price = 250000, banido = false, modelo = 'Innovation', capacidade = 15, tipo = 'motos' },
	{ hash = 640818791, name = 'lectro', price = 380000, banido = false, modelo = 'Lectro', capacidade = 15, tipo = 'motos' },
	{ hash = -1523428744, name = 'manchez', price = 150000, banido = false, modelo = 'Manchez', capacidade = 15, tipo = 'motos' },
	{ hash = -634879114, name = 'nemesis', price = 60000, banido = false, modelo = 'Nemesis', capacidade = 15, tipo = 'motos' },
	{ hash = -1606187161, name = 'nightblade', price = 350000, banido = false, modelo = 'Nightblade', capacidade = 15, tipo = 'motos' },
	
	{ hash = 1586972973, name = 'ducati1200', price = 350000, banido = false, modelo = 'Ducati1200', capacidade = 100, tipo = 'motos' },
	
	{ hash = -909201658, name = 'pcj', price = 30000, banido = false, modelo = 'Pcj', capacidade = 15, tipo = 'motos' },
	{ hash = -893578776, name = 'ruffian', price = 345000, banido = false, modelo = 'Ruffian', capacidade = 15, tipo = 'motos' },
	{ hash = 788045382, name = 'sanchez', price = 120000, banido = false, modelo = 'Sanchez', capacidade = 15, tipo = 'motos' },
	{ hash = -1453280962, name = 'sanchez2', price = 185000, banido = false, modelo = 'Sanchez2', capacidade = 15, tipo = 'motos' },
	{ hash = 1491277511, name = 'sanctus', price = 200000, banido = false, modelo = 'Sanctus', capacidade = 15, tipo = 'work' },
	{ hash = 743478836, name = 'sovereign', price = 285000, banido = false, modelo = 'Sovereign', capacidade = 50, tipo = 'motos' },
	{ hash = 1836027715, name = 'thrust', price = 375000, banido = false, modelo = 'Thrust', capacidade = 15, tipo = 'motos' },
	{ hash = -140902153, name = 'vader', price = 345000, banido = false, modelo = 'Vader', capacidade = 15, tipo = 'motos' },
	{ hash = -1353081087, name = 'vindicator', price = 340000, banido = false, modelo = 'Vindicator', capacidade = 15, tipo = 'motos' },
	{ hash = -609625092, name = 'vortex', price = 375000, banido = false, modelo = 'Vortex', capacidade = 15, tipo = 'motos' },
	{ hash = -618617997, name = 'wolfsbane', price = 290000, banido = false, modelo = 'Wolfsbane', capacidade = 15, tipo = 'motos' },
	{ hash = -1009268949, name = 'zombiea', price = 290000, banido = false, modelo = 'Zombiea', capacidade = 15, tipo = 'motos' },
	{ hash = -570033273, name = 'zombieb', price = 300000, banido = false, modelo = 'Zombieb', capacidade = 15, tipo = 'motos' },
	{ hash = -2128233223, name = 'blazer', price = 230000, banido = true, modelo = 'Blazer', capacidade = 15, tipo = 'motos' },
	{ hash = -440768424, name = 'blazer4', price = 370000, banido = true, modelo = 'Blazer4', capacidade = 15, tipo = 'motos' },
	{ hash = -405626514, name = 'shotaro', price = 1000000, banido = false, modelo = 'Shotaro', capacidade = 15, tipo = 'motos' },
	{ hash = 1873600305, name = 'ratbike', price = 230000, banido = false, modelo = 'Ratbike', capacidade = 15, tipo = 'motos' },
	{ hash = 159863515, name = 'ambo', price = 1000, banido = true, modelo = 'Ambulância Ford', capacidade = 0, tipo = 'work' },
	{ hash = 1171614426, name = 'ambulance', price = 1000, banido = true, modelo = 'Ambulância SAMU', capacidade = 0, tipo = 'work' },
	{ hash = 108063727, name = 'paramedicocharger2014', price = 1000, banido = true, modelo = 'Paramedicocharger2014', capacidade = 0, tipo = 'work' },
	{ hash = 296357396, name = 'gburrito2', price = 260000, banido = false, modelo = 'GBurrito #2', capacidade = 80, tipo = 'carros' },
	{ hash = 904750859, name = 'mule', price = 1600000, banido = false, modelo = 'Mule', capacidade = 600, tipo = 'carros' },
	{ hash = -1050465301, name = 'mule2', price = 800000, banido = false, modelo = 'Mule#2', capacidade = 300, tipo = 'carros' },
	{ hash = -2052737935, name = 'mule3', price = 3800000, banido = false, modelo = 'Mule#3', capacidade = 1200, tipo = 'carros' },
	{ hash = 1945374990, name = 'mule4', price = 1500000, banido = false, modelo = 'Mule4', capacidade = 90, tipo = 'carros' },
	{ hash = 2053223216, name = 'benson', price = 7600000, banido = false, modelo = 'Benson', capacidade = 2400, tipo = 'carros' },
	{ hash = 2112052861, name = 'pounder', price = 15200000, banido = false, modelo = 'Pounder', capacidade = 4800, tipo = 'carros' },
	{ hash = 945374990, name = 'pounder2', price = 4000000, banido = false, modelo = 'Pounder2', capacidade = 1250, tipo = 'carros' },
	{ hash = -2103821244, name = 'rallytruck', price = 260000, banido = false, modelo = 'Burrito4', capacidade = 400, tipo = 'carros' },
	{ hash = 1353720154, name = 'flatbed', price = 1000, banido = true, modelo = 'Reboque', capacidade = 0, tipo = 'work' },
	{ hash = -667151410, name = 'ratloader', price = 1000, banido = true, modelo = 'Caminhão', capacidade = 80, tipo = 'work' },
	{ hash = -589178377, name = 'ratloader2', price = 1000, banido = false, modelo = 'Ratloader2', capacidade = 70, tipo = 'work' },
	{ hash = -1705304628, name = 'rubble', price = 1000, banido = true, modelo = 'Caminhão', capacidade = 90, tipo = 'work' },
	{ hash = -956048545, name = 'taxi', price = 1000, banido = true, modelo = 'Taxi', capacidade = 0, tipo = 'work' },
	{ hash = 1917016601, name = 'trash', price = 0, banido = true, modelo = 'trash', capacidade = 0, tipo = 'work' },
	{ hash = -1255698084, name = 'trash2', price = 0, banido = true, modelo = 'trash2', capacidade = 0, tipo = 'work' },
	{ hash = 444171386, name = 'boxville4', price = 1000, banido = false, modelo = 'Caminhão', capacidade = 70, tipo = 'work' },
	{ hash = -1987130134, name = 'boxville', price = 1000, banido = false, modelo = 'Veículo de obras', capacidade = 10, tipo = 'work' },
	{ hash = -1255698084, name = 'trash2', price = 1000, banido = false, modelo = 'Caminhão', capacidade = 0, tipo = 'work' },
	{ hash = 48339065, name = 'tiptruck', price = 1000, banido = false, modelo = 'tiptruck', capacidade = 70, tipo = 'work' },
	{ hash = -186537451, name = 'scorcher', price = 1000, banido = true, modelo = 'Scorcher', capacidade = 0, tipo = 'work' },
	{ hash = 1127861609, name = 'tribike', price = 1000, banido = true, modelo = 'Tribike', capacidade = 0, tipo = 'work' },
	{ hash = -1233807380, name = 'tribike2', price = 1000, banido = true, modelo = 'Tribike2', capacidade = 0, tipo = 'work' },
	{ hash = -400295096, name = 'tribike3', price = 1000, banido = true, modelo = 'Tribike3', capacidade = 0, tipo = 'work' },
	{ hash = -836512833, name = 'fixter', price = 1000, banido = true, modelo = 'Fixter', capacidade = 0, tipo = 'work' },
	{ hash = 448402357, name = 'cruiser', price = 1000, banido = true, modelo = 'Cruiser', capacidade = 0, tipo = 'work' },
	{ hash = 1131912276, name = 'bmx', price = 1000, banido = true, modelo = 'Bmx', capacidade = 0, tipo = 'work' },
	{ hash = 1033245328, name = 'dinghy', price = 1000, banido = true, modelo = 'Dinghy', capacidade = 0, tipo = 'work' },
	{ hash = 231083307, name = 'speeder', price = 1000, banido = true, modelo = 'Speeder', capacidade = 0, tipo = 'work' },
	{ hash = -282946103, name = 'suntrap', price = 1000, banido = true, modelo = 'Suntrap', capacidade = 0, tipo = 'work' },
	{ hash = 290013743, name = 'tropic', price = 1000, banido = true, modelo = 'Tropic', capacidade = 0, tipo = 'work' },
	{ hash = 1518533038, name = 'hauler', price = 1000, banido = true, modelo = 'Hauler', capacidade = 0, tipo = 'work' },
	{ hash = -1579533167, name = 'trailers2', price = 500000, banido = false, modelo = 'Trailer Truck', capacidade = 100, tipo = 'carros' },


	-- IMPORTADOS
	{ hash = -110704625, name = "s10", price = 1000000, banido = false, modelo = "s10", capacidade = 100, tipo = "trucks" },
	{ hash = -1003581048, name = "srt8", price = 1500000, banido = false, modelo = "jeep cherok", capacidade = 350, tipo = "suvs" },
	{ hash = -1894894188, name = "surge", price = 1000000, banido = false, modelo = "golf gti", capacidade = 50, tipo = "imports" },
	{ hash = 351980252, name = "teslaprior", price = 1250000, banido = false, modelo = "tesla prior", capacidade = 80, tipo = "imports" },
	{ hash = -419705714, name = "tritonhpe", price = 1000000, banido = false, modelo = "L200 triton", capacidade = 100, tipo = "trucks" },
	{ hash = -586459613, name = "ttrs", price = 1500000, banido = false, modelo = "audi ttrs", capacidade = 50, tipo = "imports" },
	{ hash = 1062355240, name = "uno", price = 500000, banido = false, modelo = "uno sporting", capacidade = 40, tipo = "outros" },
	{ hash = 519002268, name = "versa", price = 1000000, banido = false, modelo = "nissan versa", capacidade = 60, tipo = "sedans" },
	{ hash = -14519558, name = "xj", price = 750000, banido = false, modelo = "yamaha xj6", capacidade = 30, tipo = "motos" },
	{ hash = 1826651862, name = "xt66", price = 750000, banido = false, modelo = "yamaha xt660", capacidade = 30, tipo = "motos" },
	{ hash = 1744543800, name = "z1000", price = 1000000, banido = false, modelo = "kawasaki z1000", capacidade = 30, tipo = "motos" },
	{ hash = -1761239425, name = "hornet", price = 1000000, banido = false, modelo = "honda hornet", capacidade = 30, tipo = "motos" },
	{ hash = 1847017357, name = "l200civil", price = 1000000, banido = false, modelo = "l200 triton2020", capacidade = 100, tipo = "trucks" },
	{ hash = -133349447, name = "lancerevolution9", price = 1500000, banido = false, modelo = "lancer evolution", capacidade = 60, tipo = "imports" },
	{ hash = -747269546, name = "m2f22", price = 1500000, banido = false, modelo = "bmw m2", capacidade = 60, tipo = "imports" },
	{ hash = 1270688730, name = "m6e63", price = 1500000, banido = false, modelo = "bmw m6", capacidade = 60, tipo = "imports" },
	{ hash = -418486680, name = "mercedesgt63", price = 1500000, banido = false, modelo = "mercedes gt63", capacidade = 60, tipo = "imports" },
	{ hash = -1621506835, name = "palio", price = 750000, banido = false, modelo = "palio way", capacidade = 40, tipo = "outros" },
	{ hash = 250002773, name = "pg8", price = 1500000, banido = false, modelo = "pontiac g8", capacidade = 60, tipo = "imports" },
	{ hash = -361155694, name = "punto", price = 1000000, banido = false, modelo = "fiat punto", capacidade = 50, tipo = "outros" },
	{ hash = 239347271, name = "rebaixada", price = 1000000, banido = false, modelo = "saveiro g2 rebaixada", capacidade = 40, tipo = "outros" },
	{ hash = -1222347999, name = "rmodmk7", price = 1500000, banido = false, modelo = "golf mk7", capacidade = 50, tipo = "imports" },
	{ hash = 216350205, name = "rs318", price = 1500000, banido = false, modelo = "audi rs3", capacidade = 60, tipo = "suvs" },
	{ hash = -1987109409, name = "150", price = 750000, banido = false, modelo = "cg fan150", capacidade = 20, tipo = "motos" },
	{ hash = 469441176, name = "accord", price = 1500000, banido = false, modelo = "honda accord", capacidade = 60, tipo = "sedans" },
	{ hash = 1047274985, name = "africat", price = 1000000, banido = false, modelo = "africa twin", capacidade = 30, tipo = "motos" },
	{ hash = 2015170161, name = "biz25", price = 750000, banido = false, modelo = "biz 100", capacidade = 20, tipo = "motos" },
	{ hash = -380714779, name = "bme6tun", price = 1500000, banido = false, modelo = "bmw m5 e60", capacidade = 60, tipo = "imports" },
	{ hash = -1382835569, name = "cayenne", price = 1500000, banido = false, modelo = "porche cayenne", capacidade = 200, tipo = "suvs" },
	{ hash = -486920242, name = "dm1200", price = 1000000, banido = false, modelo = "ducati multistrada", capacidade = 30, tipo = "motos" },
	{ hash = 1663453404, name = "evoque", price = 1500000, banido = false, modelo = "land rover evoque", capacidade = 60, tipo = "suvs" },
	{ hash = -773949452, name = "fiatstilo", price = 1000000, banido = false, modelo = "fiat stilo", capacidade = 50, tipo = "outros" },
	{ hash = -196245904, name = "fx50s", price = 1000000, banido = false, modelo = "infiniti fx50s", capacidade = 60, tipo = "suvs" },
	{ hash = 104532066, name = "g65amg", price = 1500000, banido = false, modelo = "mercedes g65 amg", capacidade = 60, tipo = "suvs" },
	{ hash = 916419324, name = "gtam21", price = 1500000, banido = false, modelo = "alfa romeo gtam", capacidade = 60, tipo = "imports" },
	{ hash = -688419137, name = "hayabusa", price = 1000000, banido = false, modelo = "hayabusa", capacidade = 30, tipo = "motos" },
	{ hash = -1270846222, name = "hilux2019", price = 1000000, banido = false, modelo = "hilux2019", capacidade = 100, tipo = "trucks" },
	{ hash = 2047166283, name = "bmws", price = 1000000, banido = false, modelo = "bmw s1000rr", capacidade = 30, tipo = "motos" },
	{ hash = -1265899455, name = "hcbr17", price = 1000000, banido = false, modelo = "honda cbr1000", capacidade = 30, tipo = "motos" },
	{ hash = 1474015055, name = "r1", price = 1000000, banido = false, modelo = "yamaha r1", capacidade = 30, tipo = "motos" },
	{ hash = 735175855, name = "cbrr", price = 1000000, banido = false, modelo = "honda cbr1000 repsol", capacidade = 30, tipo = "motos" },
	{ hash = -1474280704, name = "hvrod", price = 1000000, banido = false, modelo = "harley davidson", capacidade = 30, tipo = "motos" },
	{ hash = 1709518892, name = "zx10", price = 1000000, banido = false, modelo = "kawasaki ninja zx10", capacidade = 30, tipo = "motos" },
	{ hash = 1676738519, name = "audirs6", price = 1500000, banido = false, modelo = "audi rs6", capacidade = 60, tipo = "imports" },
	{ hash = -192929549, name = "audirs7", price = 1500000, banido = false, modelo = "audi rs7", capacidade = 60, tipo = "sedans" },
	{ hash = -157095615, name = "bmwm3f80", price = 1500000, banido = false, modelo = "bmw m3 f80", capacidade = 60, tipo = "imports" },
	{ hash = -13524981, name = "bmwm4gts", price = 1500000, banido = false, modelo = "bmw m4 gts", capacidade = 60, tipo = "imports" },
	{ hash = 1601422646, name = "dodgechargersrt", price = 1500000, banido = false, modelo = "dodge charger srt", capacidade = 60, tipo = "imports" },
	{ hash = -1173768715, name = "ferrariitalia", price = 1000000, banido = false, modelo = "ferrari italia", capacidade = 60, tipo = "imports" },
	{ hash = 819937652, name = "focusrs", price = 1500000, banido = false, modelo = "focus rs", capacidade = 60, tipo = "imports" },
	{ hash = -1573350092, name = "fordmustang", price = 1000000, banido = false, modelo = "ford mustang", capacidade = 60, tipo = "imports" },
	{ hash = 653510754, name = "hondafk8", price = 1000000, banido = false, modelo = "honda type r", capacidade = 60, tipo = "imports" },
	{ hash = 1114244595, name = "lamborghinihuracan", price = 1000000, banido = false, modelo = "lamborghini huracan", capacidade = 60, tipo = "imports" },
	{ hash = 2034235290, name = "mazdarx7", price = 1500000, banido = false, modelo = "mazda rx7", capacidade = 60, tipo = "imports" },
	{ hash = -2015218779, name = "nissan370z", price = 1500000, banido = false, modelo = "nissan 370z", capacidade = 60, tipo = "imports" },
	{ hash = -60313827, name = "nissangtr", price = 1500000, banido = false, modelo = "nissan gtr", capacidade = 60, tipo = "imports" },
	{ hash = 670022011, name = "nissangtrnismo", price = 1500000, banido = false, modelo = "nissan gtr nismo", capacidade = 60, tipo = "imports" },
	{ hash = -4816535, name = "nissanskyliner34", price = 1500000, banido = false, modelo = "nissan skyline r34", capacidade = 60, tipo = "imports" },
	{ hash = 2009693397, name = "porsche930", price = 1000000, banido = false, modelo = "porsche 930", capacidade = 60, tipo = "imports" },
	{ hash = -1045541610, name = "comet2", price = 1500000, banido = false, modelo = "nissan skyliner34 bryan", capacidade = 60, tipo = "imports" },
	{ hash = 1603211447, name = "eclipse", price = 1500000, banido = false, modelo = "eclipse", capacidade = 60, tipo = "imports" },
	{ hash = -1150599089, name = "primo", price = 1500000, banido = false, modelo = "primo", capacidade = 60, tipo = "imports" },
	{ hash = -1773424714, name = "passat", price = 1500000, banido = false, modelo = "passat", capacidade = 60, tipo = "sedans" },
	{ hash = -216150906, name = "16challenger", price = 1500000, banido = false, modelo = "Dodge Challenger", capacidade = 60, tipo = "imports" },
	{ hash = -187294055, name = "18macan", price = 1500000, banido = false, modelo = "porsche macan", capacidade = 150, tipo = "suvs" },
	{ hash = -1863430482, name = "71gtx", price = 1500000, banido = false, modelo = "plymouth gtx", capacidade = 60, tipo = "outros" },
	{ hash = -1593808613, name = "488gtb", price = 1000000, banido = false, modelo = "ferrari 488", capacidade = 60, tipo = "imports" },
	{ hash = 144259586, name = "911r", price = 1000000, banido = false, modelo = "porsche 911r", capacidade = 60, tipo = "imports" },
	{ hash = -1671973728, name = "2018zl1", price = 1000000, banido = false, modelo = "camaro zl1", capacidade = 60, tipo = "imports" },
	{ hash = -494839908, name = "a6", price = 1500000, banido = false, modelo = "audi a6", capacidade = 60, tipo = "sedans" },
	{ hash = -915188472, name = "amggtr", price = 1000000, banido = false, modelo = "mercedes amg gtr", capacidade = 60, tipo = "imports" },
	{ hash = 1507916787, name = "picador", price = 1000000, banido = false, modelo = "saveiro g7", capacidade = 60, tipo = "imports" },
	{ hash = -1481236684, name = "aperta", price = 1000000, banido = false, modelo = "ferrari laferrari", capacidade = 60, tipo = "imports" },
	{ hash = -1331336397, name = "bdivo", price = 1000000, banido = false, modelo = "bugatti divo", capacidade = 60, tipo = "imports" },
	{ hash = 859592619, name = "porsche922", price = 1000000, banido = false, modelo = "porsche 911 carreira", capacidade = 60, tipo = "imports" },
	{ hash = -2006731729, name = "q820", price = 1000000, banido = false, modelo = "audi q8", capacidade = 150, tipo = "imports" },
	{ hash = -134949878, name = "rs62", price = 1000000, banido = false, modelo = "audi rs6 performance", capacidade = 200, tipo = "imports" },
	{ hash = 436874758, name = "s1000rr", price = 1000000, banido = false, modelo = "s1000rr 2021", capacidade = 30, tipo = "motos" },
	{ hash = -520214134, name = "urus", price = 1000000, banido = false, modelo = "urus", capacidade = 200, tipo = "suvs" },
	{ hash = -506359117, name = "x6m", price = 1000000, banido = false, modelo = "bmw x6m", capacidade = 200, tipo = "suvs" },
	{ hash = 744705981, name = "frogger", price = 1000000, banido = false, modelo = "heli frogger", capacidade = 100, tipo = "outros" },
	{ hash = 1075432268, name = "swift2", price = 1000000, banido = false, modelo = "heli swift2", capacidade = 100, tipo = "outros" },
	{ hash = -1845487887, name = "volatus ", price = 1000000, banido = false, modelo = "heli volatus", capacidade = 100, tipo = "outros" },
	{ hash = 295054921, name = "annihilator2", price = 1000000, banido = false, modelo = "heli annihilator2", capacidade = 100, tipo = "outros" },
	{ hash = -1043459709, name = "marquis", price = 1000000, banido = false, modelo = "barco marquis", capacidade = 50, tipo = "outros" },
	{ hash = -1030275036, name = "seashark", price = 1500000, banido = false, modelo = "jetsky seashark", capacidade = 50, tipo = "outros" },
	{ hash = 771711535, name = "submersible", price = 1000000, banido = false, modelo = "submarino submersible", capacidade = 50, tipo = "outros" },
	{ hash = -1706603682, name = "avisa", price = 1000000, banido = false, modelo = "submarino avisa", capacidade = 50, tipo = "outros" },
	{ hash = 908897389, name = "toro2", price = 1000000, banido = false, modelo = "lancha toro2", capacidade = 50, tipo = "outros" },
	{ hash = 861409633, name = "jetmax", price = 1000000, banido = false, modelo = "lancha jetmax", capacidade = 50, tipo = "outros" },
	{ hash = -616331036, name = "seashark2", price = 1000000, banido = false, modelo = "jetsky seashark2", capacidade = 50, tipo = "outros" },
	{ hash = 1718441594, name = "i8", price = 1000000, banido = false, modelo = "bmw i8", capacidade = 60, tipo = "imports" },
	{ hash = -137337379, name = "amarokpolicia", price = 1, banido = false, modelo = "viatura amarok", capacidade = 200, tipo = "outros" },	

	{ hash = -535280261, name = "WRpolmav", price = 1, banido = false, modelo = "Heli PM", capacidade = 200, tipo = "outros" },	

	
	{ hash = 1647009629, name = "VRc63", price = 1000000, banido = false, modelo = "AMG policia", capacidade = 100, tipo = "imports" },
	{ hash = 493030188, name = "amarok", price = 1000000, banido = false, modelo = "Amarok", capacidade = 50, tipo = "outros" },
	
	{ hash = 1598710733, name = "jeeppolicia", price = 1, banido = false, modelo = "Jeep Policia", capacidade = 200, tipo = "outros" },	
	{ hash = -2059605865, name = "mercedestactical", price = 1, banido = false, modelo = "4X4 M Policia", capacidade = 200, tipo = "outros" },	
	{ hash = -34623805, name = "policeb", price = 1, banido = false, modelo = "Motot Policia", capacidade = 200, tipo = "outros" },	
	{ hash = -1090057961, name = "inf_c8pc", price = 1, banido = false, modelo = "C8 Policia", capacidade = 200, tipo = "outros" },	
	
	
	{ hash = -1878793377, name = "chevypolicia", price = 1, banido = false, modelo = "Chevy Policia", capacidade = 200, tipo = "outros" },	
	

	{ hash = 242156012, name = "rmodbmwm8", price = 1500000, banido = false, modelo = "Bmwm8", capacidade = 60, tipo = "imports" },
	{ hash = -101696514, name = "rmodbugatti", price = 1500000, banido = false, modelo = "bugatti", capacidade = 60, tipo = "imports" },
	{ hash = 8880015, name = "rmodcharger69", price = 1500000, banido = false, modelo = "charger69", capacidade = 60, tipo = "imports" },
	{ hash = 1191498149, name = "rmodchiron300", price = 1500000, banido = false, modelo = "chiron300", capacidade = 60, tipo = "imports" },
	{ hash = -1259375426, name = "rmodbacalar", price = 1500000, banido = false, modelo = "bacalar", capacidade = 60, tipo = "imports" },
	{ hash = 29976887, name = "rmodf12tdf", price = 1500000, banido = false, modelo = "f12tdf", capacidade = 60, tipo = "imports" },
	{ hash = -530596092, name = "2f2fgtr34", price = 1500000, banido = false, modelo = "fgtr34", capacidade = 60, tipo = "imports" },
	{ hash = 92242942, name = "2f2fgts", price = 1500000, banido = false, modelo = "2f2fgts", capacidade = 60, tipo = "imports" },
	{ hash = -2026492941, name = "2f2fmk4", price = 1500000, banido = false, modelo = "2f2fmk4", capacidade = 60, tipo = "imports" },

	{ hash = -1584460854, name = "ff4wrx", price = 1500000, banido = false, modelo = "ff4wrx", capacidade = 60, tipo = "imports" },
	{ hash = -410866473, name = "fnflan", price = 1500000, banido = false, modelo = "fnflan", capacidade = 60, tipo = "imports" },
	{ hash = 1299243986, name = "fnfmits", price = 1500000, banido = false, modelo = "fnfmits", capacidade = 60, tipo = "imports" },
	{ hash = 1324588753, name = "fnfmk4", price = 1500000, banido = false, modelo = "fnfmk4", capacidade = 60, tipo = "imports" },

	{ hash = 1878807939, name = "fnfrx7", price = 1500000, banido = false, modelo = "fnfrx7", capacidade = 60, tipo = "imports" },
	{ hash = 1674460262, name = "rmodgtr50", price = 1500000, banido = false, modelo = "Gtr50", capacidade = 60, tipo = "imports" },
	{ hash = -2098155976, name = "rmodjeep", price = 1500000, banido = false, modelo = "Jeep R", capacidade = 60, tipo = "imports" },
	{ hash = 1924372706, name = "fusca", price = 1500000, banido = false, modelo = "Fusca", capacidade = 60, tipo = "imports" },
	{ hash = 862031007, name = "state8", price = 1500000, banido = false, modelo = "State 8", capacidade = 60, tipo = "imports" },

	{ hash = 1784428761, name = "rmodjesko", price = 1500000, banido = false, modelo = "Jesko", capacidade = 60, tipo = "imports" },
	{ hash = -1474121254, name = "rmodm8gte", price = 1500000, banido = false, modelo = "8gte", capacidade = 60, tipo = "imports" },
	{ hash = 1770467389, name = "19S63", price = 1500000, banido = false, modelo = "19S63", capacidade = 60, tipo = "imports" },
	{ hash = -986858306, name = "760m", price = 1500000, banido = false, modelo = "760m", capacidade = 60, tipo = "imports" },

	{ hash = -1975191485, name = "bmwx7", price = 1500000, banido = false, modelo = "bmwx7", capacidade = 200, tipo = "imports" },
	{ hash = -1944731072, name = "cbr1000rrr", price = 1500000, banido = false, modelo = "Cbr1000rrr", capacidade = 60, tipo = "imports" },
	{ hash = -322014905, name = "ferrari812", price = 1500000, banido = false, modelo = "i812", capacidade = 60, tipo = "imports" },
	{ hash = -1232865578, name = "giuliagta", price = 1500000, banido = false, modelo = "Giuliagta", capacidade = 60, tipo = "imports" },


	{ hash = -2097817357, name = "rs7c8wb", price = 1500000, banido = false, modelo = "Rs7c8wb", capacidade = 60, tipo = "imports" },
	{ hash = -1143827999, name = "RS666", price = 1500000, banido = false, modelo = "RS666", capacidade = 60, tipo = "imports" },
	{ hash = 436874758, name = "s1000rr", price = 1500000, banido = false, modelo = "S1000rr", capacidade = 60, tipo = "imports" },
	{ hash = 422090481, name = "rmodrs6", price = 1500000, banido = false, modelo = "Rs6", capacidade = 60, tipo = "imports" },
	{ hash = -1765254558, name = "rmodsianr", price = 1500000, banido = false, modelo = "Sianr", capacidade = 60, tipo = "imports" },
	{ hash = -498528574, name = "rmodspeed", price = 1500000, banido = false, modelo = "Speed", capacidade = 60, tipo = "imports" },






	{ hash = -51074592, name = "pd_bmw", price = 1, banido = false, modelo = "BMW Policia", capacidade = 200, tipo = "outros" },	
	{ hash = 739837319, name = "HellcatRed", price = 1, banido = false, modelo = "Hellcat Policia", capacidade = 200, tipo = "outros" },	
	{ hash = 1657654870, name = "rfw_ninja", price = 1, banido = false, modelo = "Ninja Policia", capacidade = 200, tipo = "outros" },
	{ hash = 862031007, name = "state8", price = 1, banido = false, modelo = "Jeep PoliceF", capacidade = 200, tipo = "outros" },


	
	{ hash = 1372921020, name = "a45policia", price = 1, banido = false, modelo = "A45 Policia", capacidade = 100, tipo = "outros" },


	{ hash = 837100403, name = "mercedespolicia", price = 1, banido = false, modelo = "viatura mercedes", capacidade = 100, tipo = "outros" },
	{ hash = -792745162, name = "paramedicoambu", price = 1, banido = false, modelo = "viatura samu2", capacidade = 50, tipo = "outros" },
	{ hash = 108063727, name = "paramedicocharger2014", price = 50, banido = false, modelo = "viatura chargermed", capacidade = 50, tipo = "outros" },
	{ hash = 2145386152, name = "dodgesamu", price = 50, banido = false, modelo = "Viatura Dodge", capacidade = 100, tipo = "outros" },

	
	{ hash = 458087531, name = "pdfocus", price = 1, banido = false, modelo = "viatura focus", capacidade = 70, tipo = "outros" },
	{ hash = 1564350089, name = "pitbullbb", price = 1, banido = false, modelo = "caverao", capacidade = 100, tipo = "outros" },
	{ hash = 353883353, name = "polmav", price = 1, banido = false, modelo = "Heli Medical", capacidade = 50, tipo = "outros" },
	{ hash = 710198397, name = "supervolito", price = 1, banido = false, modelo = "heli ambu", capacidade = 50, tipo = "outros" },
	{ hash = -505049932, name = "tiguerpolicia", price = 1, banido = false, modelo = "viatura tiger", capacidade = 30, tipo = "outros" },
	{ hash = 404344984, name = "pd_i8", price = 1, banido = false, modelo = "viatura i8", capacidade = 50, tipo = "outros" },
	{ hash = 1171614426, name = "ambulance", price = 1, banido = false, modelo = "viatura ambu", capacidade = 50, tipo = "outros" },
	{ hash = 2046572318, name = "911turbos", price = 1000000, banido = false, modelo = "porsche 911turbo", capacidade = 60, tipo = "imports" },
	{ hash = -1545880349, name = "720stc", price = 1000000, banido = false, modelo = "mclaren 720s", capacidade = 60, tipo = "imports" },
	{ hash = 1034187331, name = "nero", price = 1000000, banido = false, modelo = "bugatti nero", capacidade = 60, tipo = "imports" },
	{ hash = -433961724, name = "senna", price = 1000000, banido = false, modelo = "mclaren senna", capacidade = 60, tipo = "imports" },
	{ hash = 1978088379, name = "lancerevolutionx", price = 1000000, banido = false, modelo = "Lancer Evolutionx", capacidade = 60, tipo = "imports" },
	
	{ hash = -189438188, name = "p1", price = 1000000, banido = false, modelo = "mclaren p1", capacidade = 60, tipo = "imports" },
	{ hash = 991407206, name = "r1250", price = 1000000, banido = false, modelo = "R1250", capacidade = 60, tipo = "motos" },
	{ hash = -1156537658, name = "tiger", price = 1000000, banido = false, modelo = "Tiger", capacidade = 60, tipo = "motos" },

	{ hash = 686471183, name = "drafter", price = 750000, banido = false, modelo = "drafter", capacidade = 40, tipo = "sedans" },
    { hash = 1456336509, name = "vstr", price = 650000, banido = false, modelo = "vstr", capacidade = 40, tipo = "imports" },
    { hash = -682108547, name = "zorrusso", price = 800000, banido = false, modelo = "zorrusso", capacidade = 30, tipo = "imports" },
    { hash = -1071380347, name = "tampa2", price = 700000, banido = false, modelo = "tampa2", capacidade = 30, tipo = "outros" },
    { hash = -1756021720, name = "everon", price = 1000000, banido = false, modelo = "everon", capacidade = 100, tipo = "trucks" },
    { hash = -1349095620, name = "caracara2", price = 1500000, banido = false, modelo = "caracara2", capacidade = 120, tipo = "trucks" },
    { hash = 1644055914, name = "weevil", price = 800000, banido = false, modelo = "weevil", capacidade = 40, tipo = "outros" },
    { hash = 916547552, name = "rrocket", price = 900000, banido = false, modelo = "rrocket", capacidade = 20, tipo = "motos" },


	{ hash = 1945094768, name = "f450s", price = 900000, banido = false, modelo = "F450 S Turbo", capacidade = 20, tipo = "motos" },
	{ hash = 1322123305, name = "f450c", price = 900000, banido = false, modelo = "F450 B Turbo", capacidade = 20, tipo = "motos" },
	
	{ hash = -857356038, name = "veto", price = 900000, banido = false, modelo = "KART I", capacidade = 20, tipo = "carros" },
	{ hash = -1492917079, name = "veto2", price = 900000, banido = false, modelo = "KART II", capacidade = 20, tipo = "carros" },

	{ hash = 649056915, name = "pd_bmwr", price = 750000, banido = false, modelo = "BMW POLICE", capacidade = 100, tipo = "trucks" },
    { hash = 1693751655, name = "yosemite2", price = 750000, banido = false, modelo = "yosemite2", capacidade = 60, tipo = "trucks" }, 
	{ hash = -1686080635, name = "F250Deboxe", price = 750000, banido = false, modelo = "F250D", capacidade = 60, tipo = "trucks" },
	{ hash = 1453982608, name = "opalass", price = 1000000, banido = false, modelo = "Opala SS", capacidade = 60, tipo = "imports" },
	{ hash = 1295777722, name = "taycan", price = 1000000, banido = false, modelo = "Tycan", capacidade = 60, tipo = "outros" },
	{ hash = -217995216, name = "amggtc", price = 1000000, banido = false, modelo = "amggtc", capacidade = 60, tipo = "outros" },
	{ hash = 1310501190, name = "aven15lw", price = 1000000, banido = false, modelo = "Aventador", capacidade = 60, tipo = "outros" },
	{ hash = 1252150971, name = "dodgeram2500", price = 100000, banido = false, modelo = "dodgeram2500", capacidade = 200, tipo = "trucks" },
	{ hash = 701696699, name = "jetta", price = 1000000, banido = false, modelo = "jetta", capacidade = 60, tipo = "outros" },
	{ hash = -1707353429, name = "monza", price = 1000000, banido = false, modelo = "monza", capacidade = 80, tipo = "outros" },
	{ hash = 1146389448, name = "panameramansory", price = 1000000, banido = false, modelo = "panameramansory", capacidade = 60, tipo = "outros" },
	{ hash = 2045784380, name = "rmodx6", price = 1000000, banido = false, modelo = "X6", capacidade = 200, tipo = "outros" },

	{ hash = -1617206868, name = "f450towtruk", price = 1000000, banido = false, modelo = "F450 TowTruk", capacidade = 200, tipo = "outros" },
	
 
	
}
----------------------------------------------
----------------------------------------------


-- RETORNA A LISTA DE VEÍCULOS
config.getVehList = function()
	return config.vehList
end

-- RETORNA AS INFORMAÇÕES CONTIDAS NA LISTA DE UM VEÍCULO ESPECÍFICO
config.getVehicleInfo = function(vehicle)
	for i in ipairs(config.vehList) do
		if vehicle == config.vehList[i].hash or vehicle == config.vehList[i].name then
            return config.vehList[i]
        end
    end
    return false
end

-- RETORNA O MODELO DE UM VEÍCULO ESPECÍFICO (NOME BONITINHO)
config.getVehicleModel = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.modelo or vehicle
	end
	return vehicle
end

-- RETORNA A CAPACIDADE DO PORTA-MALAS DE UM VEÍCULO ESPECÍFICO
config.getVehicleTrunk = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.capacidade or 0
	end
	return 0
end

-- RETORNA O PREÇO DE UM VEÍCULO ESPECÍFICO
config.getVehiclePrice = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.price or 0
	end
	return 0
end

-- RETORNA O TIPO DE UM VEÍCULO ESPECÍFICO
config.getVehicleType = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.tipo or 0
	end
	return "none"
end

-- RETORNA O STATUS DE BANIDO DE UM VEÍCULO ESPECÍFICO
config.isVehicleBanned = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.banido
	end
	return false
end

-----------------------------------------------------------------
------------- GARAGENS PÚBLICAS E DE SERVIÇO --------------------
-----------------------------------------------------------------

config.garages = {
    [1] = {
        type = "public",
        coords = vec3(55.43, -876.19, 30.66),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(50.66, -873.02, 30.45), h = 159.65},
            [2] = {vec3(47.34, -871.81, 30.45), h = 159.65},
            [3] = {vec3(44.17, -870.5, 30.45), h = 159.65}
        }
    },
    [2] = {
        type = "public",
        coords = vec3(213.9, -809.08, 31.01),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(223.29, -798.99, 30.24), h = 247.84},
            [2] = {vec3(224.59, -796.5, 30.24), h = 249.23},
            [3] = {vec3(225.54, -794.01, 30.24), h = 246.92},
            [4] = {vec3(227.58, -789.02, 30.26), h = 248.55}
        }
    },
    [3] = {
        type = "public",
        coords = vec3(596.69, 91.42, 93.12),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(598.46, 98.26, 92.48), h = 248.26},
            [2] = {vec3(599.35, 102.41, 92.48), h = 251.97},
            [3] = {vec3(601.33, 115.11, 92.48), h = 249.3},
            [4] = {vec3(602.69, 118.89, 92.48), h = 247.97}
        }
    },
    [4] = {
        type = "public",
        coords = vec3(275.41, -345.24, 45.17),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(282.63, -342.09, 44.49), h = 251.15},
            [2] = {vec3(284.15, -338.84, 44.49), h = 249.29},
            [3] = {vec3(285.08, -335.68, 44.49), h = 250.24},
            [4] = {vec3(277.48, -340.2, 44.49), h = 70.19}
        }
    },
    [5] = {
        type = "public",
        coords = vec3(-348.95, -874.39, 31.31),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-344.3, -874.5, 30.64), h = 168.84},
            [2] = {vec3(-339.76, -875.48, 30.64), h = 167.0},
            [3] = {vec3(-336.22, -876.3, 30.64), h = 168.03},
            [4] = {vec3(-332.53, -875.64, 30.64), h = 167.36}
        }
    },
    [6] = {
        type = "public",
        coords = vec3(-340.64, 266.31, 85.67),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-350.26, 272.41, 84.62), h = 270.05},
            [2] = {vec3(-350.5, 275.92, 84.52), h = 271.32},
            [3] = {vec3(-350.5, 279.17, 84.46), h = 269.23},
            [4] = {vec3(-350.56, 282.25, 84.44), h = 271.16}
        }
    },
    [7] = {
        type = "public",
        coords = vec3(-773.59, 5597.57, 33.6),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-771.57, 5578.38, 33.06), h = 90.17},
            [2] = {vec3(-771.65, 5575.43, 33.06), h = 88.56},
            [3] = {vec3(-771.53, 5572.42, 33.06), h = 90.13},
            [4] = {vec3(-771.61, 5569.43, 33.06), h = 89.9}
        }
    },
    [8] = {
        type = "public",
        coords = vec3(317.17, 2622.99, 44.45),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(337.1, 2619.09, 43.69), h = 25.48},
            [2] = {vec3(342.41, 2621.82, 43.7), h = 28.8},
            [3] = {vec3(349.24, 2623.7, 43.69), h = 29.81},
            [4] = {vec3(354.92, 2626.71, 43.69), h = 29.82}
        }
    },
    [9] = {
        type = "public",
        coords = vec3(-1184.93, -1509.98, 4.64),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-1184.92, -1492.97, 3.57), h = 123.83},
            [2] = {vec3(-1187.16, -1490.9, 3.57), h = 123.38},
            [3] = {vec3(-1188.47, -1488.01, 3.57), h = 124.02}
        }
    },
    [10] = {
        type = "public",
        coords = vec3(-73.32, -2004.2, 18.27),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-78.5, -2011.4, 17.59), h = 171.45},
            [2] = {vec3(-77.5, -2005.43, 17.59), h = 352.93},
            [3] = {vec3(-73.43, -2010.76, 17.59), h = 198.35},
            [4] = {vec3(-85.23, -2004.25, 17.59), h = 355.14}
        }
    },
--[[     [11] = {
        type = "public",
        coords = vec3(-423.6, -342.88, 24.23),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-431.68, -349.73, 23.56), h = 200.1},
            [2] = {vec3(-435.43, -351.24, 23.56), h = 197.94},
            [3] = {vec3(-439.42, -352.49, 23.56), h = 198.73},
            [4] = {vec3(-443.06, -353.87, 23.56), h = 199.37}
        }
    }, ]]
    [12] = {
        type = "service", --STIC--STIC
        coords = vec3(631.2,-19.68,81.96),
        perm = "perm.policia",
        vehiclePositions = {
            [1] = {vec3(641.03,-29.61,80.34), h = 218.99}
          
        },
        vehicles = {
            {vehicle = "chevypolicia", modelo = "Chevy Policia"},
            {vehicle = "pitbullbb", modelo = "Caveirao Policia"},
            {vehicle = "jeeppolicia", modelo = "Jeepp Policia"}
        }
    },
    [13] = {
        type = "public",
        coords = vec3(100.78, -1073.53, 29.38),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(105.29, -1062.88, 29.2), h = 247.82},
            [2] = {vec3(108.22, -1055.98, 29.2), h = 250.2}
        }
    },
    [14] = {
        type = "public",
        coords = vec3(-101.66, 6344.92, 31.58),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-96.21, 6344.88, 31.5), h = 225.85},
            [2] = {vec3(-91.32, 6350.61, 31.5), h = 223.57}
        }
    },
    [15] = {
        type = "public",
        coords = vec3(-823.51, -1171.97, 7.18),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-829.51, -1165.53, 6.5), heading = 74.2},
            [2] = {vec3(-833.57, -1168.05, 6.13), heading = 68.33},
            [3] = {vec3(-825.45, -1162.98, 6.79), heading = 76.78}
        }
    },
    [200] = {
        type = "service",
        coords = vec3(441.44, -987.75, 25.7),
        perm = "perm.policia",
        vehiclePositions = {
            [1] = {vec3(445.88, -988.78, 25.28), h = 271.78},
            [2] = {vec3(445.71, -991.46, 25.28), h = 271.53},
            [3] = {vec3(445.78, -994.32, 25.28), h = 270.46},
            [4] = {vec3(446.11, -997.11, 25.28), h = 268.6}
        },
        vehicles = {
            {vehicle = "a45policia", modelo = "A45 Policia"},
			{vehicle = "jeeppolicia", modelo = "Jeep Policia"},
            {vehicle = "mercedestactical", modelo = "4X4 M Policia"},
            {vehicle = "ducati1200", modelo = "Cucati 1200 Policia"},
            {vehicle = "inf_c8pc", modelo = "C8 Policia"}


           
        }
    },
    [201] = {
        type = "service",
        coords = vec3(454.19, -985.72, 43.7),
        perm = "perm.policia",
        vehiclePositions = {
            [1] = {vec3(449.65, -981.51, 44.06), h = 199.29}
        },
        vehicles = {
            {vehicle = "WRpolmav", modelo = "Helicoptero"}
        }
    },
    [202] = {
        type = "service",
        coords = vec3(-451.64,-353.95,34.51),
        perm = "perm.unizk",
        vehiclePositions = {
            [1] = {vec3(-458.91,-346.75,34.0), h = 83.0}

        },
        vehicles = {
            {vehicle = "ambulance", modelo = "Ambulancia"},
            {vehicle = "dodgesamu", modelo = "Dodge"}
        }
    },
    [203] = {
        type = "service",
        coords = vec3(-439.51,-332.29,78.17),
        perm = "perm.unizk",
        vehiclePositions = {
            [1] = {vec3(-447.12,-313.12,78.56), h = 195.1}
        },
        vehicles = {
            {vehicle = "polmav", modelo = "Helicoptero Medical"}
        }
    },
    [204] = {
        type = "service",
        coords = vec3(-1027.8, -2726.82, 13.67),
        perm = nil, --Bicicletário
        vehiclePositions = {
            [1] = {vec3(-1024.15, -2728.91, 13.67), h = 305.88},
            [2] = {vec3(-1021.52, -2730.65, 13.66), h = 305.88},
            [3] = {vec3(-1019.38, -2732.34, 13.64), h = 305.88}
        },
        vehicles = {
            {vehicle = "scorcher", modelo = "scorcher"},
            {vehicle = "tribike", modelo = "tribike"},
            {vehicle = "tribike2", modelo = "tribike2"},
            {vehicle = "tribike3", modelo = "tribike3"},
            {vehicle = "fixter", modelo = "fixter"},
            {vehicle = "cruiser", modelo = "cruiser"},
            {vehicle = "bmx", modelo = "bmx"}
        }
    },
	
    [205] = {
        type = "service",
        coords = vec3(-71.43, -811.08, 326.09),
        perm = "perm.heli",
        vehiclePositions = {
            [1] = {vec3(-74.77, -817.9, 325.89), h = 158.46}
        },
        vehicles = {
            {vehicle = "frogger", modelo = "Frogger"},
            {vehicle = "swift2", modelo = "Swifit 2"},
            {vehicle = "volatus", modelo = "Volatus"}
        }
    },

    [206] = {
        type = "service",
        coords = vec3(-1630.06, -1158.45, 1.42),
        perm = "perm.barcos",
        vehiclePositions = {
            [1] = {vec3(-1632.59, -1175.68, 0.86), h = 164.84}
        },
        vehicles = {
			{ vehicle = 'dinghy', modelo = 'dinghy' },
			{vehicle = "avisa", modelo = "Avisa"},
			{ vehicle = 'jetmax', modelo = 'jetmax' },
			{ vehicle = 'marquis', modelo = 'marquis' },
			{ vehicle = 'seashark3', modelo = 'seashark3' },
			{ vehicle = 'speeder', modelo = 'speeder' },
			{ vehicle = 'speeder2', modelo = 'speeder2' },
			{ vehicle = 'squalo', modelo = 'squalo' },
			{ vehicle = 'suntrap', modelo = 'suntrap' },
			{ vehicle = 'toro', modelo = 'toro' },
			{ vehicle = 'toro2', modelo = 'toro2' },
			{ vehicle = 'tropic', modelo = 'tropic' },
			{ vehicle = 'tropic2', modelo = 'tropic2' }, 
        }
    },

    [207] = {
        type = "public",
        coords = vec3(928.82, 55.21, 81.1),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(923.44, 59.37, 80.9), h = 323.23},
            [2] = {vec3(920.12, 53.31, 80.9), h = 323.23}
        }
    },

    [208] = {
        type = "public",
        coords = vec3(-1526.09, 889.49, 181.84),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-1531.2, 890.27, 181.35), h = 199.81},
            [2] = {vec3(-1538.61, 889.91, 181.17), h = 200.54},
            [3] = {vec3(-1534.87, 890.12, 181.28), h = 198.26}
        }
    },

    [209] = {
        type = "service",
        coords = vec3(0.21,-0.22,0.96),
        perm = "perm.policia",
        vehiclePositions = {
            [1] = {vec3(-2046.75, -465.86, 24.46), h = 11.05}
        },
        vehicles = {
            {vehicle = "swift", modelo = "Helicoptero Tático"} --STIC
        }
    },

	[211] = {
        type = "service",
        coords = vec3(-796.7,-90.01,37.67),
        perm = nil,
        vehiclePositions = {
            [1] = { vec3(-792.32,-89.42,37.63), h = 297.55}
        },
        vehicles = {
            {vehicle = "bmx", modelo = "BMX"}
        }
    },

	[212] = {
        type = "public",
        coords = vec3(1628.26,4602.22,52.69),
        perm = nil,
        vehiclePositions = {
            [1] = { vec3(1636.13,4604.31,52.27), h = 182.12 },
			[2] = { vec3(1630.98,4603.19,52.27), h = 175.49 },
        }
    },
	
	[213] = {
        type = "public",
        coords = vec3(984.75,-206.59,71.07),
        perm = nil,
        vehiclePositions = {
			[1] = { vec3(993.34,-213.74,69.78), h = 57.29 },
			[2] = { vec3(991.5,-216.91,69.62), h = 57.02 },
        }
    },
	
    [215] = {
        type = "service",
        coords = vec3(-3426.04,951.94,8.35),
        perm = "perm.barcos",
        vehiclePositions = {
            [1] = {vec3(-3425.05,946.68,0.06), h = 130.0 }
        },
        vehicles = {
			{ vehicle = 'dinghy', modelo = 'dinghy' },
			{ vehicle = 'jetmax', modelo = 'jetmax' },
			{ vehicle = 'marquis', modelo = 'marquis' },
			{ vehicle = 'seashark3', modelo = 'seashark3' },
			{ vehicle = 'speeder', modelo = 'speeder' },
			{ vehicle = 'speeder2', modelo = 'speeder2' },
			{ vehicle = 'squalo', modelo = 'squalo' },
			{ vehicle = 'suntrap', modelo = 'suntrap' },
			{ vehicle = 'toro', modelo = 'toro' },
			{vehicle = "avisa", modelo = "Avisa"},
			{ vehicle = 'toro2', modelo = 'toro2' },
			{ vehicle = 'tropic', modelo = 'tropic' },
			{ vehicle = 'tropic2', modelo = 'tropic2' },  
		  }
    },

    [216] = {
        type = "service",
        coords = vec3(27.8,850.47,197.79),
        perm = "perm.barcos",
        vehiclePositions = {
            [1] = {vec3(-3425.05,946.68,0.06), h = 130.0 }
        },
        vehicles = {
			{ vehicle = 'dinghy', modelo = 'dinghy' },
			{ vehicle = 'jetmax', modelo = 'jetmax' },
			{ vehicle = 'marquis', modelo = 'marquis' },
			{ vehicle = 'seashark3', modelo = 'seashark3' },
			{ vehicle = 'speeder', modelo = 'speeder' },
			{ vehicle = 'speeder2', modelo = 'speeder2' },
			{ vehicle = 'squalo', modelo = 'squalo' },
			{ vehicle = 'suntrap', modelo = 'suntrap' },
			{ vehicle = 'toro', modelo = 'toro' },
			{vehicle = "avisa", modelo = "Avisa"},
			{ vehicle = 'toro2', modelo = 'toro2' },
			{ vehicle = 'tropic', modelo = 'tropic' },
			{ vehicle = 'tropic2', modelo = 'tropic2' },  
		  }
    },

    [216] = {
        type = "service",
        coords = vec3(1297.03,4216.1,33.91),
        perm = "perm.barcos",
        vehiclePositions = {
            [1] = {vec3(1297.37,4211.19,29.18), h = 130.0 }
        },
        vehicles = {
			{ vehicle = 'dinghy', modelo = 'dinghy' },
			{ vehicle = 'jetmax', modelo = 'jetmax' },
			{ vehicle = 'marquis', modelo = 'marquis' },
			{ vehicle = 'seashark3', modelo = 'seashark3' },
			{ vehicle = 'speeder', modelo = 'speeder' },
			{ vehicle = 'speeder2', modelo = 'speeder2' },
			{ vehicle = 'squalo', modelo = 'squalo' },
			{ vehicle = 'suntrap', modelo = 'suntrap' },
			{ vehicle = 'toro', modelo = 'toro' },
			{vehicle = "avisa", modelo = "Avisa"},
			{ vehicle = 'toro2', modelo = 'toro2' },
			{ vehicle = 'tropic', modelo = 'tropic' },
			{ vehicle = 'tropic2', modelo = 'tropic2' },  
		  }
    },



[217] = {
	type = "service",
	coords = vec3(-1495.99,807.74,181.94),
	perm = "perm.heli",
	vehiclePositions = {
		[1] = {vec3(-1484.17,824.22,181.71), h = 16.27}

		
	},
	vehicles = {
		{vehicle = "frogger", modelo = "Frogger"},
		{vehicle = "swift2", modelo = "Swifit 2"},
		{vehicle = "volatus", modelo = "Volatus"}
	}
},

[218] = { type = 'service', coords = vec3(-210.45,-1292.35,31.3), perm = 'perm.bennys', --GARAGEM DA BENNYS
vehiclePositions = {
  [1] = { vec3(-221.29,-1294.59,31.3), h = 29.07},
},
vehicles = {

	{vehicle = "f450towtruk", modelo = "F450towtruk"},
	{vehicle = "flatbed", modelo = "flatbed 2"}


}
},


[219] = {
	type = "public",
	coords = vec3(-1288.73,620.83,139.17),
	perm = nil,
	vehiclePositions = {
		[1] = {vec3(-1288.98,623.88,138.85), h = 42.87},
		[2] = {vec3(-1285.8,627.25,138.93), h = 42.87}
	}
},


	[221] = {
        type = "public",
        coords = vec3(2034.44,3411.22,44.69),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(2028.74,3421.46,43.93), h = 313.59} 
            
        }
    },

	[222] = {
        type = "public",
        coords = vec3(1708.27,1103.8,124.17),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(1703.98,1105.22,123.13), h = 337.49} 
            
        }
    },

	[223] = {
        type = "public",
        coords = vec3(-23.93,2780.23,57.8),
        perm = nil,
        vehiclePositions = {
            [1] = {vec3(-20.22,2784.23,56.96), h = 279.08},
			[2] = {vec3(-28.14,2783.02,57.02), h = 279.08} 
            
        }
    },

	[224] = {
		type = "service",
		coords = vec3(-1754.72,335.73,87.86), 
		perm = "perm.heli",
		vehiclePositions = {
			[1] = {vec3(-1751.23,346.84,88.69), h = 28.17}
	
		
		},
		vehicles = {
			{vehicle = "frogger", modelo = "Frogger"},
			{vehicle = "swift2", modelo = "Swifit 2"},
			{vehicle = "volatus", modelo = "Volatus"}
		}
	},
	[225] = {
        type = "public",
        coords = vec3(484.34,-3111.83,6.34),
        perm = nil,
        vehiclePositions = {
			
            [1] = {vec3(489.86,-3111.91,6.0), h =  358.30}
			 
            
        }
    },


	[226] = {
		type = "public",
		coords = vec3(-73.53,2158.11,132.95),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(-71.11,2155.82,133.33), h =  347.24}
			 
			
		}
	},

	[227] = {
        type = "service",
        coords = vec3(1848.54,2600.23,45.62),
        perm = nil, --Bicicletário
        vehiclePositions = {
            [1] = {vec3(1849.37,2603.29,45.6), h = 267.22}
        },
        vehicles = {
            {vehicle = "scorcher", modelo = "scorcher"},
            {vehicle = "tribike", modelo = "tribike"},
            {vehicle = "tribike2", modelo = "tribike2"},
            {vehicle = "tribike3", modelo = "tribike3"},
            {vehicle = "fixter", modelo = "fixter"},
            {vehicle = "cruiser", modelo = "cruiser"},
            {vehicle = "bmx", modelo = "bmx"}
        }
    },
	
		[228] = {
		type = "public",
		coords = vec3(1377.04,-114.04,125.44),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(1376.6767578125,-117.51910400391,124.72996520996), h =  68.78}
			 
			
		}
	},

	[229] = {
		type = "public",
		coords = vec3(-192.91,-1293.3,31.3),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(-189.89,-1290.25,31.3), h = 272.8}
			 
			
		}
	},
	
	[230] = {
		type = "public",
		coords = vec3(889.17,-1028.33,35.12),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(891.25,-1023.38,34.97), h = 269.54}
			 
			
		}
	},

	[230] = {
		type = "public",
		coords = vec3(456.75,-1024.03,28.44),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(449.59,-1025.37,28.16), h = 4.07},
			[2] = {vec3(446.06,-1025.99,28.23), h = 5.62},
			[3] = {vec3(449.46,-1024.71,28.14), h = 4.99}
			
		}
	},

	[231] = {
		type = "public",
		coords = vec3(889.13,-1028.17,35.12),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(890.77,-1024.68,34.97), h = 266.36}

			
		}
	},

	[232] = {
		type = "public",
		coords = vec3(-3259.43,810.08,8.94),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(-3255.22,810.35,8.94), h = 301.29}

			
		}
	},

	[233] = {
		type = "public",
		coords = vec3(1385.34,-758.52,67.89),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(1379.56,-748.66,67.17), h = 59.35}

			
		}
	},
	[234] = {
		type = "public",
		coords = vec3(-637.78,248.77,81.36),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(-636.8,255.32,80.68), h = 264.94}

			
		}
	},
	
	[235] = {
		type = "public",
		coords = vec3(-423.41,-342.81,24.23),
		perm = nil,
		vehiclePositions = {
			
			[1] = {vec3(-428.44,-333.29,23.82), h = 20.87},
			[2] = {vec3(-432.41,-334.91,23.82), heading = 21.126}
			

			
		}
	},

	
}


-----------------------------------------------------------------
------------------ GARAGENS DAS CASAS ---------------------------
-----------------------------------------------------------------

config.homeGarages = { }
  
config.hasHome = function(source,user_id,home)
	return false
end
  
config.checkTax = function(source,user_id,vehicle,type, garage, home)
    local vehicleInfo = vRP.query("vRP/getVehicle", {user_id = user_id, vehicle = vehicle})
    if vehicleInfo and #vehicleInfo > 0 then
        local price = getVehiclePrice(vehicle)
        if vehicleInfo[1].status == 0 and parseInt(tonumber(vehicleInfo[1].ipva) + 24 * 15 * 60 * 60) > parseInt(os.time()) and not config.getVehicleTax then
            return true
        end
        if vehicleInfo[1].status > 0 then
            if vehicleInfo[1].status == 1 then
                price = parseInt(price * (config.seguradora / 100))
            else
                price = parseInt(price * (config.detido / 100))
            end
        elseif parseInt(tonumber(vehicleInfo[1].ipva) + 24 * 15 * 60 * 60) <= parseInt(os.time()) then
            price = parseInt(price * ((config.ipva or 1) / 100))
        elseif config.getVehicleTax then
            price = config.getVehicleTax(user_id, vehicle, price, home)
        end
        if config.use_tryFullPayment then
            if vRP.tryFullPayment(user_id, price) then
                vRP.execute("vRP/setDetido", { detido = 0, user_id = user_id, vehicle = vehicle, ipva = parseInt(os.time())})
                return true
            end
        elseif vRP.tryFullPayment(user_id, price) then
            vRP.execute("vRP/setDetido", { detido = 0, user_id = user_id, vehicle = vehicle, ipva = parseInt(os.time())})
            return true
        end
    elseif garage and garage.type == "service" and config.getRentedVehicleTax then
        local price = config.getRentedVehicleTax(user_id, vehicle, garage)
        if config.use_tryFullPayment then
            if vRP.tryFullPayment(user_id, price) then
                return true
            end
        elseif vRP.tryFullPayment(user_id, price) then
            return true
        end
    end
    return false
end

config.checkVehicle = function(source, user_id, vehicle, type, hash, home, garage)
	if not user_id then
        return
    elseif spawnedVehicles and spawnedVehicles[hash] and spawnedVehicles[hash][user_id] and spawnedVehicles[hash][user_id].inStreet then
        TriggerClientEvent("Notify",source,"negado", "Você já tem um veículo deste modelo fora da garagem.", 3)
        fclient.toggleNui(source)
        return
    elseif config.checkPlayer and not config.checkPlayer(source, user_id, vehicle, garage) then
        fclient.toggleNui(source)
        return
    end
    if type and type == "service" then
		local identity = vRP.getUserIdentity(user_id)
        local vehicleInfo = { vehicle = vehicle, engine = 1000, body = 1000, fuel = 100 }
        fclient.checkSpot(source,vehicleInfo, identity.registro) 
        return 
    end
    local vehicleInfo = vRP.query("vRP/getVehicle", {user_id = user_id, vehicle = vehicle})
    if vehicleInfo and #vehicleInfo > 0 then
		vehicleInfo[1].vehicle = vehicleInfo[1].veiculo
		vehicleInfo[1].engine = vehicleInfo[1].motor
		vehicleInfo[1].body = vehicleInfo[1].lataria
		vehicleInfo[1].fuel = vehicleInfo[1].gasolina
        if (vehicleInfo[1].status and vehicleInfo[1].status == 0) then
            if config.payTax then
                if config.payTax(source,user_id,vehicle, home) then
                    fclient.checkSpot(source,vehicleInfo[1],vehicleInfo[1].placa)
                    return
                end
            else
                if not config.checkVehicleGarage or config.checkVehicleGarage(source,user_id,vehicle, garage) then
                    fclient.checkSpot(source,vehicleInfo[1],vehicleInfo[1].placa)
                    return
                end
            end
        else
            if parseInt(vehicleInfo[1].status) == 1 then
                TriggerClientEvent("Notify",source,"negado",lang.seizedVehicle or "Veículo apreendido.", 3)
            else
                TriggerClientEvent("Notify",source,"negado",lang.detainedVehicle or "Veículo detido.", 3)
            end
        end
        fclient.toggleNui(source)
    end
end

config.getVehicleTrunkChest = function(source, user_id, vehicle)
	local data = vRP.query("vRP/getVehicle", {user_id = user_id, vehicle = vehicle}) or {}
	if not data[1] then return 0, 0 end
	data = data[1].portamalas or {}
    local custom = json.decode(data)
    local vehInfo = config.getVehicleInfo(vehicle)
    local peso = 0
    local capacidade = 0
    if vehInfo then
        capacidade = vehInfo.capacidade
        if custom then
            for i in pairs(custom) do
                peso = parseInt(peso + ( (vRP.getItemWeight(custom[i].item) or 0) * custom[i].amount))
            end
        end
    end
    return peso, capacidade
end

config.getVehicleMods = function(source,user_id,vehicle)
	local data = vRP.query("vRP/getVehicle", {user_id = user_id, vehicle = vehicle})
	if data[1] then
		local custom = json.decode(data[1].tunagem) or {}

		if custom then
			return custom
		end
	end
	
    return false
end
 
config.getVehiclePlate = function(source,veh)
    local user_id = vRP.getUserId(source)
	local vehicle = vRP.query("vRP/getVehicle", { user_id = user_id, vehicle = veh })
	if vehicle[1] then
		return vehicle[1].placa
	end
end

config.pt_BR = {
	vehicleOutOfGarage = "Você já tem um veículo deste modelo fora da garagem.",
	allSlotsOccupied = "Todas as vagas estão ocupadas no momento.",
	vehicleUnavailable = "Veículo em falta na cidade!",
	seizedVehicle = "Veículo apreendido.",
	detainedVehicle = "Veículo detido.",
	noPermission = "Você não tem permissao",
	idUnavailable = function(id) return "ID "..id.." não está disponível" end,
	borrowedKey = function(vehicle,id) return "Chave do veículo <b>"..vehicle.."</b> emprestada para o ID <b>"..id.."</b>" end,
	alreadyHasKey = function(id) return "ID "..id.." já possui a chave desse veículo" end,
	removedKey = function(vehicle,id) return "Chave do veículo <b>"..vehicle.."</b> removida do ID <b>"..id.."</b>" end,
	idHasNoKey = function(id) return "ID "..id.." não possui a chave desse veículo" end,
	borrowedKeys = "Chaves emprestadas:",
	keyCommand = "chave",
	keyTutorial = "Utilize /chave <b>(add/remove/list) (veículo) (id)</b>",
	hasNoVehicle = function(vehicle) return "Você não possui o veículo <b>"..vehicle.."</b>" end,
	anchorCommand = "ancorar",
	disabled = "Desativado",
	installed = "Instalado",
	uninstalled = "Desinstalado",
	level = "Level",
	spawningVehicle = "Já existe um veículo sendo retirado."
}

config.en_US = {
	vehicleOutOfGarage = "You already have a vehicle of this model outside the garage.",
	allSlotsOccupied = "All slots are currently occupied.",
	vehicleUnavailable = "Missing vehicle in town!",
	seizedVehicle = "Seized vehicle.",
	detainedVehicle = "Detained vehicle.",
	noPermission = "You do not have permission",
	idUnavailable = function(id) return "ID "..id.." is not available" end,
	borrowedKey = function(vehicle,id) return "Vehicle key <b>"..vehicle.."</b> borrowed for ID <b>"..id.."</b>" end,
	alreadyHasKey = function(id) return "ID "..id.." already has the key to that vehicle" end,
	removedKey = function(vehicle,id) return "Vehicle key <b>"..vehicle.."</b> removed for ID <b>"..id.."</b>" end,
	idHasNoKey = function(id) return "ID "..id.." does not have a vehicle key" end,
	borrowedKeys = "Borrowed keys:",
	keyCommand = "key",
	keyTutorial = "Use /key <b> (add/remove/list) (vehicle) (id) </b>",
	hasNoVehicle = function(vehicle) return "You do not own the vehicle <b> "..vehicle .." </b>" end,
	anchorCommand = "anchor",
	disabled = "Disabled",
	installed = "Installed",
	uninstalled = "Uninstalled",
	level = "Level",
	spawningVehicle = "Spawning vehicle."
}

config.lang = config.pt_BR

config.garageThread = function()
	Citizen.CreateThread(function()
		while true do
			local idle = 500
			if not nui and length(nearestGarages) > 0 then
				local playercoords = GetEntityCoords(PlayerPedId())
				for i in pairs(nearestGarages) do
					if nearestGarages[i] then
						idle = 5
						local coords = nearestGarages[i].coords
						local marker = nearestGarages[i].marker 
						config.drawMarker(coords,marker)
						local distance = #(playercoords - coords)
						if distance < 2 and IsControlJustPressed(0,38) then
							if nearestGarages[i].type == "home" then
								if func.hasHome(nearestGarages[i].home) then
									homeGarage = nearestGarages[i].home
									toggleNui(nearestGarages[i])
								end
							elseif func.hasPermission(nearestGarages[i].perm) then
								homeGarage = false
								toggleNui(nearestGarages[i], nearestGarages[i].type == "service")
							end
						end
					end
				end
			end
			Citizen.Wait(idle)
		end
	end)
end

config.nearestGaragesThread = function()
	Citizen.CreateThread(function()
		while true do
			if not nui then
				local playercoords = GetEntityCoords(PlayerPedId())
				for i in pairs(config.garages) do 
					local distance = #(playercoords - config.garages[i].coords)
					if distance < 10 then
						nearestGarages[i] = config.garages[i]
					elseif nearestGarages[i] then
						nearestGarages[i] = nil
					end
				end
				for i in pairs(config.homeGarages) do 
					local distance = #(playercoords - config.homeGarages[i].coords)
					if distance < 10 then
						nearestGarages["home-"..i] = config.homeGarages[i]
					elseif nearestGarages["home-"..i] then
						nearestGarages["home-"..i] = nil
					end
				end
			end
			Citizen.Wait(500)
		end
	end)
end



config.customState = function(user_id, vehicle, garage)
	local res = { liberacao = "Em dia", status = "Liberado", classLiberacao = "", classStatus = "", popup = false }
	local hash = GetHashKey(vehicle.vehicle or vehicle.veiculo)
	local outGarage = false
	if spawnedVehicles and spawnedVehicles[hash] and spawnedVehicles[hash][user_id] and spawnedVehicles[hash][user_id].inStreet then
		res.status = "Fora da Garagem"
		res.classStatus = "seguradora"
		outGarage = true
	end
	if garage and garage.type == "service" then
		if not outGarage then
			res.status = "Liberado para Alugar"
		end
		if config.getRentedVehicleTax then
			price = config.getRentedVehicleTax(user_id, vehicle, garage)
			if price > 0 then
				res.liberacao = "$ "..vRP.format(math.floor(price))
				res.classLiberacao = "seguradora"
				res.popup = "deseja alugar o veículo "..vehicle.name.." por <b>$ "..vRP.format(price).."</b> ?"
			end
		end
	elseif vehicle.status > 0 then
		if parseInt(vehicle.status) == 1 then
			local price = vRP.format( math.floor(vehicle.price * (config.seguradora / 100)) )
			res.liberacao = "$ "..price
			res.status = "Apreendido"
			res.classStatus = "seguradora"
			res.popup = "veículo apreendido, deseja liberar pagando <b>$ "..price.."</b> ?"
		else
			local price = vRP.format( math.floor(vehicle.price * (config.detido / 100)) )
			res.liberacao = "$ "..price
			res.status = "Detido"
			res.classStatus = "detido"
			res.popup = "veículo detido, deseja liberar pagando <b>$ "..price.."</b> ?"
		end
		res.classLiberacao = "detido"
	elseif parseInt(vehicle.ipva + 24 * 15 * 60 * 60) <= parseInt(os.time()) then
		local price = vRP.format( math.floor(vehicle.price * (config.ipva / 100)) )
		res.liberacao = "$ "..price
		res.status = "IPVA Atrasado"
		res.classStatus = "seguradora"
		res.classLiberacao = "detido"
		res.popup = "veículo com ipva atrasado, deseja liberar pagando <b>$ "..price.."</b> ?"
	elseif vehicle.tax and vehicle.tax > 0 then
		local price = vRP.format(math.floor(vehicle.tax))
		res.liberacao = "$ "..price
		res.classLiberacao = "seguradora"
		res.popup = "deseja retirar o veículo "..vehicle.name.." por <b>$ "..price.."</b> ?"
	end
	return res
end





config.customMYSQL = true
vRP._prepare("vRP/createVehicleData", [[
    ALTER TABLE vrp_user_veiculos ADD IF NOT EXISTS estado TEXT DEFAULT '[]';
]])
vRP._prepare("vRP/create_ipva", "ALTER TABLE vrp_user_veiculos ADD IF NOT EXISTS ipva varchar(255) DEFAULT '1630912803'")
vRP._prepare("vRP/getVehicles", "SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id")
vRP._prepare("vRP/getVehicle", "SELECT * FROM vrp_user_veiculos WHERE user_id = @user_id AND veiculo = @vehicle")
vRP._prepare("vRP/setDetido", "UPDATE vrp_user_veiculos SET status = @detido, ipva = @ipva WHERE user_id = @user_id AND veiculo = @vehicle")
vRP._prepare("vRP/setIpva", "UPDATE vrp_user_veiculos SET ipva = @ipva WHERE user_id = @user_id AND veiculo = @vehicle")
vRP._prepare("vRP/setVehicleData", "UPDATE vrp_user_veiculos SET motor = @engine, lataria = @body, gasolina = @fuel, estado = @estado WHERE user_id = @user_id AND veiculo = @vehicle")