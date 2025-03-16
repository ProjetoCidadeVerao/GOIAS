Garages = {}

Garages.Main = {
    dir = "http://191.96.81.87/carros/", -- DIRETORIO DAS IMAGENS DOS CARROS

    ipvaVencimento = 7, -- DIAS PARA O VENCIMENTO DO IPVA
	ipvaValue = 0.05, -- 5% VALOR  DO VEICULO IPVA

    detidoValue = 0.1, -- 5% VALOR DO VEICULO DETIDO
	retidoValue = 0.1, -- 10% VALOR DO VEICULO RETIDO 
    
    previewCar = {
        camCoords = vec3(404.60, -945.44, -98.50),
        camPosition = vec3(404.90, -950.58, -100.00),
        carPosition = vec4(404.99, -949.60, -99.98, 10)
    },
}
    --- service - CARROS - M0TOS - VIP
Garages.VehList = {


 --- CARROS COMUNS (CONCE)
 [GetHashKey("guardian")] = { model = "Guardian", name = "Guardian", price = 580000, trunk = 150, type = "outros" },
 [GetHashKey("contender")] = { model = "contender", name = "contender", price = 380000, trunk = 150, type = "outros" },
 [GetHashKey('veto2')] = { model = 'veto2', price = 900000, banned = false, name = 'Veto 2', trunk = 200, type = 'outros'},
 [GetHashKey('golfgti')] = { model = 'golfgti', price = 900000, banned = false, name = 'golfgti', trunk = 200, type = 'outros'},
 [GetHashKey('subaruimpreza')] = { model = 'subaruimpreza', price = 900000, banned = false, name = 'Subaru Impreza', trunk = 300, type = 'outros'},
 [GetHashKey('caddy')] = { model = 'caddy', price = 900000, banned = false, name = 'Caddy', trunk = 200, type = 'outros'},
 [GetHashKey('dominator6')] = { model = 'dominator6', price = 900000, banned = false, name = 'Dominator 6', trunk = 200, type = 'outros'},
 [GetHashKey('openwheel2')] = { model = 'openwheel2', price = 900000, banned = false, name = 'Open Wheel', trunk = 200, type = 'outros'},
 [GetHashKey('tractor')] = { model = 'tractor', price = 50000, banned = false, name = 'Tractor', trunk = 200, type = 'outros'},
 [GetHashKey('imorgon')] = { model = 'imorgon', price = 900000, banned = false, name = 'Imorgon', trunk = 200, type = 'outros' },
 [GetHashKey('issi7')] = { model = 'issi7', price = 400000, banned = false, name = 'Issi 7', trunk = 200, type = 'outros'},
 [GetHashKey('locust')] = { model = 'locust', price = nil0, banned = false, name = 'Ocelot', trunk = 200, type = 'outros' },
 [GetHashKey('neo')] = { model = 'neo', price = nil0, banned = false, name = 'Neo', trunk = 200, type = 'outros' },
 [GetHashKey('penumbra2')] = { model = 'penumbra2', price = 600000, banned = false, name = 'Penumbra 2', trunk = 200, type = 'outros' },
 [GetHashKey('revolter')] = { model = 'revolter', price = nil, banned = false, name = 'Revolter', trunk = 200, type = 'outros' },
 [GetHashKey('schafter2')] = { model = 'schafter2', price = 100000, banned = false, name = 'Schafter 2', trunk = 200, type = 'outros' },
 [GetHashKey('blista')] = { model = 'blista', price = 90000, banned = false, name = 'Blista', trunk = 200, type = 'outros'},
 [GetHashKey('paragon')] = { model = 'paragon', price = 800000, banned = false, name = 'Paragon', trunk = 200, type = 'outros' },
 [GetHashKey('jugular')] = { model = 'jugular', price = 700000, banned = false, name = 'Jugular', trunk = 200, type = 'outros' },
 [GetHashKey('komoda')] = { model = 'komoda', price = 850000, banned = false, name = 'Komoda', trunk = 200, type = 'outros' },
 [GetHashKey('drafter')] = { model = 'drafter', price = 800000, banned = false, name = 'Drafter', trunk = 200, type = 'outros' },
 [GetHashKey('club')] = { model = 'club', price = 800000, banned = false, name = 'Club', trunk = 200, type = 'outros' },
 [GetHashKey('kanjo')] = { model = 'kanjo', price = 90000, banned = false, name = 'Kanjo', trunk = 200, type = 'outros'},
 [GetHashKey('issi5')] = { model = 'issi5', price = nil, banned = false, name = 'Issi 5', trunk = 200, type = 'outros' },
 [GetHashKey('issi4')] = { model = 'issi4', price = nil, banned = false,  name = 'Issi 4', trunk = 200, type = 'outros' },
 [GetHashKey('panto')] = { model = 'panto', price = 5000, banned = false, name = 'Panto', trunk = 200, type = 'carros' },
 [GetHashKey('italirsx')] = { model = 'italirsx', price = nil, banned = false, name = 'ItaliRSX', trunk = 200, type = 'outros' },
 [GetHashKey('vstr')] = { model = 'vstr', price = nil, banned = false, name = 'Vstr', trunk = 200, type = 'outros' },
 [GetHashKey('sultan2')] = { model = 'sultan2', price = 500000, banned = false, name = 'Sultan 2', trunk = 200, type = 'outros' },
 [GetHashKey('dynasty')] = { model = 'dynasty', price = nil, banned = false, name = 'Dynasty', trunk = 200, type = 'outros' },
 [GetHashKey('manana2')] = { model = 'manana2', price = 300000, banned = false, name = 'Manana 2', trunk = 200, type = 'outros' },
 [GetHashKey('peyote3')] = { model = 'peyote3', price = 300000, banned = false, name = 'Peyote 3', trunk = 200, type = 'outros' },
 [GetHashKey('retinue2')] = { model = 'retinue2', price = 300000, banned = false, name = 'Retinue 2', trunk = 200, type = 'outros' },
 [GetHashKey('savestra')] = { model = 'savestra', price = 400000, banned = false, name = 'Savestra', trunk = 200, type = 'outros' },
 [GetHashKey('brioso')] = { model = 'brioso', price = 45000, banned = false, name = 'Brioso', trunk = 200, type = 'outros' },
 [GetHashKey('brioso2')] = { model = "brioso2", price = 70000, banned = false, name = "Brioso 2", trunk = 200, type = 'outros' },
 [GetHashKey('dilettante')] = { model = 'dilettante', price = 100000, banned = false, name = 'Dilettante', trunk = 200, type = 'outros' },
 [GetHashKey('primo2')] = { model = 'primo2', price = 150000, banned = false, name = 'Primo2', trunk = 200, type = 'carros' },
 [GetHashKey('chino')] = { model = 'chino', price = 150000, banned = false, name = 'Chino', trunk = 200, type = 'outros' },
 [GetHashKey('chino2')] = { model = 'chino2', price = 600000, banned = false, name = 'Chino2', trunk = 200, type = 'outros' },
 [GetHashKey('coquette3')] = { model = 'coquette3', price = nil, banned = false, name = 'Coquette3', trunk = 200, type = 'outros' },
 [GetHashKey('dominator')] = { model = 'dominator', price = nil, banned = false, name = 'Dominator', trunk = 200, type = 'outros' },
 [GetHashKey('dominator2')] = { model = 'dominator2', price = 300000, banned = false, name = 'Dominator2', trunk = 200, type = 'outros' },
 [GetHashKey('dukes')] = { model = 'dukes', price = nil, banned = false, name = 'Dukes', trunk = 200, type = 'outros' },
 [GetHashKey('faction')] = { model = 'faction', price = 140000, banned = false, name = 'Faction', trunk = 200, type = 'outros' },
 [GetHashKey('faction2')] = { model = 'faction2', price = 500000, banned = false, name = 'Faction2', trunk = 200, type = 'outros' },
 [GetHashKey('faction3')] = { model = 'faction3', price = 500000, banned = false, name = 'Faction3', trunk = 200, type = 'outros' },
 [GetHashKey('gauntlet4')] = { model = 'gauntlet4', price = nil, banned = false, name = 'Gauntlet 4', trunk = 200, type = 'outros' },
 [GetHashKey('gauntlet3')] = { model = 'gauntlet3', price = 150000, banned = false, name = 'Gauntlet 3', trunk = 200, type = 'outros' },
 [GetHashKey('gauntlet2')] = { model = 'gauntlet2', price = 400000, banned = false, name = 'Gauntlet2', trunk = 200, type = 'outros' },
 [GetHashKey('hermes')] = { model = 'hermes', price = nil, banned = false, name = 'Hermes', trunk = 200, type = 'outros' },
 [GetHashKey('hotknife')] = { model = 'hotknife', price = 500000, banned = false, name = 'Hotknife', trunk = 200, type = 'outros' },
 [GetHashKey('moonbeam')] = { model = 'moonbeam', price = nil, banned = false, name = 'Moonbeam', trunk = 200, type = 'outros' },
 [GetHashKey('moonbeam2')] = { model = 'moonbeam2', price = 5000000, banned = false, name = 'Moonbeam2', trunk = 200, type = 'outros' },
 [GetHashKey('nightshade')] = { model = 'nightshade', price = 450000, banned = false, name = 'Nightshade', trunk = 200, type = 'outros' },
 [GetHashKey('picador')] = { model = 'picador', price = nil, banned = false, name = 'Picador', trunk = 200, type = 'outros' },
 [GetHashKey('ruiner')] = { model = 'ruiner', price = 100000, banned = false, name = 'Ruiner', trunk = 200, type = 'outros' },
 [GetHashKey('sabregt')] = { model = 'sabregt', price = 120000, banned = false, name = 'Sabregt', trunk = 200, type = 'outros' },
 [GetHashKey('sabregt2')] = { model = 'sabregt2', price = 150000, banned = false, name = 'Sabregt2', trunk = 200, type = 'outros' },
 [GetHashKey('stalion')] = { model = 'stalion', price = 400000, banned = false, name = 'Stalion', trunk = 200, type = 'outros' },
 [GetHashKey('stalion2')] = { model = 'stalion2', price = 260000, banned = false, name = 'Stalion2', trunk = 200, type = 'outros' },
 [GetHashKey('tampa')] = { model = 'tampa', price = nil, banned = false, name = 'Tampa', trunk = 200, type = 'outros' },
 [GetHashKey('vigero')] = { model = 'vigero', price = 170000, banned = false, name = 'Vigero', trunk = 200, type = 'outros' },
 [GetHashKey('virgo')] = { model = 'virgo', price = 150000, banned = false, name = 'Virgo', trunk = 200, type = 'outros' },
 [GetHashKey('virgo2')] = { model = 'virgo2', price = 150000, banned = false, name = 'Virgo2', trunk = 200, type = 'outros' },
 [GetHashKey('virgo3')] = { model = 'virgo3', price = 150000, banned = false, name = 'Virgo3', trunk = 200, type = 'outros' },
 [GetHashKey('voodoo')] = { model = 'voodoo', price = 300000, banned = false, name = 'Voodoo', trunk = 200, type = 'outros' },
 [GetHashKey('voodoo2')] = { model = 'voodoo2', price = 100000, banned = false, name = 'Voodoo2', trunk = 200, type = 'outros' },
 [GetHashKey('yosemite')] = { model = 'yosemite', price = 800000, banned = false, name = 'Yosemite', trunk = 200, type = 'outros' },
 [GetHashKey('yosemite3')] = { model = 'yosemite3', price = nil, banned = false, name = 'Yosemite 3', trunk = 200, type = 'outros' },
 [GetHashKey('dloader')] = { model = 'dloader', price = 150000, banned = false, name = 'Dloader', trunk = 200, type = 'outros' },
 [GetHashKey('brawler')] = { model = 'brawler', price = 4000000, banned = false, name = 'Brawler', trunk = 200, type = 'outros' },
 [GetHashKey('sandking2')] = { model = 'sandking2', price = 2500000, banned = false, name = 'Sandking2', trunk = 200, type = 'outros' },
 -- [GetHashKey('viseris')] = { model = 'viseris', price = 600000, banned = false, name = 'Viseris', trunk = 30, type = 'outros' },
 [GetHashKey('xls2')] = { model = 'xls2', price = 350000, banned = false, name = 'Xls2', trunk = 200, type = 'outros' },
 [GetHashKey('squaddie')] = { model = 'squaddie', price = 350000, banned = false, name = 'squaddie', trunk = 200, type = 'outros' },
 [GetHashKey('cog552')] = { model = 'cog552', price = nil, banned = false, name = 'Cog552', trunk = 200, type = 'outros' },
 [GetHashKey('cognoscenti')] = { model = 'cognoscenti', price = 190000, banned = false, name = 'Cognoscenti', trunk = 200, type = 'outros' },
 [GetHashKey('cognoscenti2')] = { model = 'cognoscenti2', price = nil, banned = false, name = 'Cognoscenti2', trunk = 200, type = 'outros' },
 [GetHashKey('alpha')] = { model = 'alpha', price = nil, banned = false, name = 'Alpha', trunk = 200, type = 'outros' },
 [GetHashKey('banshee')] = { model = 'banshee', price = 300000, banned = false, name = 'Banshee', trunk = 200, type = 'outros' },
 [GetHashKey('bestiagts')] = { model = 'bestiagts', price = 400000, banned = false, name = 'Bestiagts', trunk = 200, type = 'outros' },
 [GetHashKey('blista2')] = { model = 'blista2', price = 100000, banned = false, name = 'Blista2', trunk = 200, type = 'outros' },
 [GetHashKey('blista3')] = { model = 'blista3', price = nil, banned = false, name = 'Blista3', trunk = 200, type = 'outros' },
 [GetHashKey('buffalo')] = { model = 'buffalo', price = 450000, banned = false, name = 'Buffalo', trunk = 200, type = 'outros' },
 [GetHashKey('buffalo2')] = { model = 'buffalo2', price = 450000, banned = false, name = 'Buffalo2', trunk = 200, type = 'outros' },
 [GetHashKey('buffalo3')] = { model = 'buffalo3', price = 400000, banned = false, name = 'Buffalo3', trunk = 200, type = 'outros' },
 [GetHashKey('carbonizzare')] = { model = 'carbonizzare', price = nil, banned = false, name = 'Carbonizzare', trunk = 200, type = 'outros' },
 [GetHashKey('comet2')] = { model = 'comet2', price = 400000, banned = false, name = 'Comet2', trunk = 200, type = 'outros' },
 [GetHashKey('comet3')] = { model = 'comet3', price = 500000, banned = false, name = 'Comet3', trunk = 200, type = 'outros' },
 [GetHashKey('comet5')] = { model = 'comet5', price = 1250000, banned = false, name = 'Comet5', trunk = 200, type = 'outros' },
 [GetHashKey('coquette')] = { model = 'coquette', price = 500000, banned = false, name = 'Coquette', trunk = 200, type = 'outros' },
 [GetHashKey('coquette4')] = { model = 'coquette4', price = 8000000, banned = false, name = 'Coquette 4', trunk = 200, type = 'outros' },
 [GetHashKey('elegy')] = { model = 'elegy', price = 500000, banned = false, name = 'Elegy', trunk = 200, type = 'outros' },
 [GetHashKey('elegy2')] = { model = 'elegy2', price = 400000, banned = false, name = 'Elegy2', trunk = 200, type = 'outros' },
 [GetHashKey('feltzer2')] = { model = 'feltzer2', price = nil, banned = false, name = 'Feltzer2', trunk = 200, type = 'outros' },
 [GetHashKey('furoregt')] = { model = 'furoregt', price = nil, banned = false, name = 'Furoregt', trunk = 200, type = 'carros' },
 [GetHashKey('fusilade')] = { model = 'fusilade', price = nil, banned = false, name = 'Fusilade', trunk = 200, type = 'carros' },
 [GetHashKey('futo')] = { model = 'futo', price = 150000, banned = false, name = 'Futo', trunk = 200, type = 'outros' },
 [GetHashKey('jester')] = { model = 'jester', price = 5000000, banned = false, name = 'Jester', trunk = 200, type = 'outros' },
 [GetHashKey('khamelion')] = { model = 'khamelion', price = nil, banned = false, name = 'Khamelion', trunk = 200, type = 'outros' },
 [GetHashKey('kuruma')] = { model = 'kuruma', price = 7500000, banned = false, name = 'Kuruma', trunk = 200, type = 'outros' },
 [GetHashKey('massacro')] = { model = 'massacro', price = 750000, banned = false, name = 'Massacro', trunk = 200, type = 'outros' },
 [GetHashKey('massacro2')] = { model = 'massacro2', price = nil, banned = false, name = 'Massacro2', trunk = 200, type = 'outros' },
 [GetHashKey('ninef')] = { model = 'ninef', price = 950000, banned = false, name = 'Ninef', trunk = 200, type = 'carros' },
 [GetHashKey('ninef2')] = { model = 'ninef2', price = 950000, banned = false, name = 'Ninef2', trunk = 200, type = 'carros' },
 [GetHashKey('omnis')] = { model = 'omnis', price = nil, banned = false, name = 'Omnis', trunk = 200, type = 'outros' },
 [GetHashKey('pariah')] = { model = 'pariah', price = 950000, banned = false, name = 'Pariah', trunk = 200, type = 'outros' },
 [GetHashKey('penumbra')] = { model = 'penumbra', price = 800000, banned = false, name = 'Penumbra', trunk = 200, type = 'outros' },
 [GetHashKey('raiden')] = { model = 'raiden', price = 850000, banned = false, name = 'Raiden', trunk = 200, type = 'outros' },
 [GetHashKey('rapidgt')] = { model = 'rapidgt', price = 800000, banned = false, name = 'Rapidgt', trunk = 200, type = 'outros' },
 [GetHashKey('rapidgt2')] = { model = 'rapidgt2', price = nil, banned = false, name = 'Rapidgt2', trunk = 200, type = 'outros' },
 [GetHashKey('ruston')] = { model = 'ruston', price = 3000000, banned = false, name = 'Ruston', trunk = 200, type = 'outros' },
 [GetHashKey('schafter3')] = { model = 'schafter3', price = 300000, banned = false, name = 'Schafter3', trunk = 200, type = 'carros' },
 [GetHashKey('schafter4')] = { model = 'schafter4', price = 250000, banned = false, name = 'Schafter4', trunk = 200, type = 'outros' },
 [GetHashKey('schafter5')] = { model = 'schafter5', price = 175000, banned = false, name = 'Schafter5', trunk = 200, type = 'outros' },
 [GetHashKey('schwarzer')] = { model = 'schwarzer', price = 250000, banned = false, name = 'Schwarzer', trunk = 200, type = 'outros' },
 [GetHashKey('sentinel3')] = { model = 'sentinel3', price = nil, banned = false, name = 'Sentinel3', trunk = 200, type = 'outros' },
 [GetHashKey('seven70')] = { model = 'seven70', price = nil, banned = false, name = 'Seven70', trunk = 200, type = 'outros' },
 [GetHashKey('specter')] = { model = 'specter', price = nil0, banned = false, name = 'Specter', trunk = 200, type = 'outros' },
 [GetHashKey('specter2')] = { model = 'specter2', price = 900000, banned = false, name = 'Specter2', trunk = 200, type = 'outros' },
 [GetHashKey('streiter')] = { model = 'streiter', price = 600000, banned = false, name = 'Streiter', trunk = 200, type = 'outros' },
 [GetHashKey('sultan')] = { model = 'sultan', price = 800000, banned = false, name = 'Sultan', trunk = 200, type = 'carros' },
 [GetHashKey('surano')] = { model = 'surano', price = nil, banned = false, name = 'Surano', trunk = 200, type = 'outros' },
 [GetHashKey('tampa2')] = { model = 'tampa2', price = 300000, banned = false, name = 'Tampa2', trunk = 200, type = 'outros' },
 [GetHashKey('tropos')] = { model = 'tropos', price = 450000, banned = false, name = 'Tropos', trunk = 200, type = 'outros' },
 [GetHashKey('verlierer2')] = { model = 'verlierer2', price = 350000, banned = false, name = 'Verlierer2', trunk = 200, type = 'outros' },
 [GetHashKey('btype')] = { model = 'btype', price = nil, banned = false, name = 'Btype', trunk = 200, type = 'outros' },
 [GetHashKey('btype2')] = { model = 'btype2', price = nil, banned = false, name = 'Btype2', trunk = 200, type = 'outros' },
 [GetHashKey('btype3')] = { model = 'btype3', price = nil, banned = false, name = 'Btype3', trunk = 200, type = 'outros' },
 [GetHashKey('casco')] = { model = 'casco', price = 500000, banned = false, name = 'Casco', trunk = 200, type = 'outros' },
 [GetHashKey('cheetah')] = { model = 'cheetah', price = nil, banned = false, name = 'Cheetah', trunk = 200, type = 'imports' },
 [GetHashKey('coquette2')] = { model = 'coquette2', price = 400000, banned = false, name = 'Coquette2', trunk = 200, type = 'outros' },
 [GetHashKey('feltzer3')] = { model = 'feltzer3', price = 390000, banned = false, name = 'Feltzer3', trunk = 200, type = 'outros' },
 [GetHashKey('gt500')] = { model = 'gt500', price = 600000, banned = false, name = 'GT500', trunk = 200, type = 'outros' },
 [GetHashKey('infernus2')] = { model = 'infernus2', price = nil, banned = false, name = 'Infernus2', trunk = 200, type = 'outros' },
 [GetHashKey('jb700')] = { model = 'jb700', price = 250000, banned = false, name = 'Jb700', trunk = 200, type = 'outros' },
 [GetHashKey('mamba')] = { model = 'mamba', price = 400000, banned = false, name = 'Mamba', trunk = 200, type = 'outros' },
 [GetHashKey('manana')] = { model = 'manana', price = 75000, banned = false, name = 'Manana', trunk = 200, type = 'outros' },
 [GetHashKey('monroe')] = { model = 'monroe', price = 400000, banned = false, name = 'Monroe', trunk = 200, type = 'outros' },
 [GetHashKey('peyote')] = { model = 'peyote', price = 80000, banned = false, name = 'Peyote', trunk = 200, type = 'outros' },
 [GetHashKey('pigalle')] = { model = 'pigalle', price = 80000, banned = false, name = 'Pigalle', trunk = 200, type = 'outros' },
 [GetHashKey('rapidgt3')] = { model = 'rapidgt3', price = 650000, banned = false, name = 'Rapidgt3', trunk = 200, type = 'outros' },
 [GetHashKey('retinue')] = { model = 'retinue', price = nil, banned = false, name = 'Retinue', trunk = 200, type = 'outros' },
 [GetHashKey('stinger')] = { model = 'stinger', price = 450000, banned = false, name = 'Stinger', trunk = 200, type = 'outros' },
 [GetHashKey('stingergt')] = { model = 'stingergt', price = 400000, banned = false, name = 'Stingergt', trunk = 200, type = 'outros' },
 [GetHashKey('torero')] = { model = 'torero', price = 300000, banned = false, name = 'Torero', trunk = 200, type = 'outros' },
 [GetHashKey('tornado')] = { model = 'tornado', price = 100000, banned = false, name = 'Tornado', trunk = 200, type = 'outros' },
 [GetHashKey('tornado2')] = { model = 'tornado2', price = 300000, banned = false, name = 'Tornado2', trunk = 200, type = 'outros' },
 [GetHashKey('tornado5')] = { model = 'tornado5', price = 500000, banned = false, name = 'Tornado5', trunk = 200, type = 'outros' },
 [GetHashKey('tornado6')] = { model = 'tornado6', price = 800000, banned = false, name = 'Tornado6', trunk = 200, type = 'outros' },
 [GetHashKey('turismo2')] = { model = 'turismo2', price = nil, banned = false, name = 'Turismo2', trunk = 200, type = 'outros' },
 [GetHashKey('ztype')] = { model = 'ztype', price = nil, banned = false, name = 'Ztype', trunk = 200, type = 'outros' },
 [GetHashKey('adder')] = { model = 'adder', price = 700000, banned = false, name = 'Adder', trunk = 200, type = 'outros' },
 [GetHashKey('cheetah2')] = { model = 'cheetah2', price = nil, banned = false, name = 'Cheetah2', trunk = 2600, type = 'outros' },
 [GetHashKey('bison')] = { model = 'bison', price = nil, banned = false, name = 'Bison', trunk = 200, type = 'outros' },
 [GetHashKey('bison2')] = { model = 'bison2', price = nil, banned = false, name = 'Bison2', trunk = 200, type = 'outros' },
 [GetHashKey('bobcatxl')] = { model = 'bobcatxl', price = 650000, banned = false, name = 'Bobcatxl', trunk = 200, type = 'outros' },
 [GetHashKey('burrito')] = { model = 'burrito', price = nil, banned = false, name = 'Burrito', trunk = 200, type = 'outros' },
 [GetHashKey('burrito2')] = { model = 'burrito2', price = 3000000, banned = false, name = 'Burrito2', trunk = 200, type = 'outros' },
 [GetHashKey('burrito3')] = { model = 'burrito3', price = 4000000, banned = false, name = 'Burrito3', trunk = 200, type = 'outros' },
 [GetHashKey('burrito4')] = { model = 'burrito4', price = 5000000, banned = false, name = 'Burrito4', trunk = 200, type = 'outros' },
 [GetHashKey('minivan')] = { model = 'minivan', price = 800000, banned = false, name = 'Minivan', trunk = 200, type = 'outros' },
 [GetHashKey('minivan2')] = { model = 'minivan2', price = 5000000, banned = false, name = 'Minivan2', trunk = 200, type = 'outros' },
 [GetHashKey('paradise')] = { model = 'paradise', price = nil, banned = false, name = 'Paradise', trunk = 200, type = 'outros' },
 [GetHashKey('pony')] = { model = 'pony', price = 160000, banned = false, name = 'Pony', trunk = 200, type = 'outros' },
 [GetHashKey('pony2')] = { model = 'pony2', price = nil0, banned = false, name = 'Pony2', trunk = 200, type = 'outros' },
 [GetHashKey('surfer')] = { model = 'surfer', price = 500000, banned = false, name = 'Surfer', trunk = 200, type = 'outros' },
 [GetHashKey('cheburek')] = { model = 'cheburek', price = 230000, banned = false, name = 'Cheburek', trunk = 200, type = 'outros' },
 [GetHashKey('hotring')] = { model = 'hotring', price = 500000, banned = false, name = 'Hotring', trunk = 200, type = 'outros' },
 [GetHashKey('jester3')] = { model = 'jester3', price = nil, banned = false, name = 'Jester3', trunk = 200, type = 'carros' },
 [GetHashKey('flashgt')] = { model = 'flashgt', price = 700000, banned = false, name = 'Flashgt', trunk = 200, type = 'outros' },
 [GetHashKey('ellie')] = { model = 'ellie', price = 400000, banned = false, name = 'Ellie', trunk = 200, type = 'outros' },
 [GetHashKey('michelli')] = { model = 'michelli', price = nil, banned = false, name = 'Michelli', trunk = 200, type = 'carros' },
 [GetHashKey('fagaloa')] = { model = 'fagaloa', price = 100000, banned = false, name = 'Fagaloa', trunk = 200, type = 'outros' },
 [GetHashKey('dominator3')] = { model = 'dominator3', price = 400000, banned = false, name = 'Dominator3', trunk = 200, type = 'outros' },
 [GetHashKey('issi3')] = { model = 'issi3', price = 100000, banned = false, name = 'Issi3', trunk = 200, type = 'outros' },
 [GetHashKey('gb200')] = { model = 'gb200', price = 500000, banned = false, name = 'Gb200', trunk = 200, type = 'outros' },
 [GetHashKey('neon')] = { model = 'neon', price = nil0, banned = false, name = 'Neon', trunk = 200, type = 'outros' },
 [GetHashKey('tezeract')] = { model = 'tezeract', price = 7000000, banned = false, name = 'Tezeract', trunk = 200, type = 'outros' },
 [GetHashKey('swinger')] = { model = 'swinger', price = 550000, banned = false, name = 'Swinger', trunk = 200, type = 'outros' },
 [GetHashKey('clique')] = { model = 'clique', price = nil, banned = false, name = 'Clique', trunk = 200, type = 'outros' },
 [GetHashKey('deveste')] = { model = 'deveste', price = nil0, banned = false, name = 'Deveste', trunk = 200, type = 'outros' },
 [GetHashKey('deviant')] = { model = 'deviant', price = nil, banned = false, name = 'Deviant', trunk = 200, type = 'outros' },
 [GetHashKey('impaler')] = { model = 'impaler', price = 1300000, banned = false, name = 'Impaler', trunk = 200, type = 'outros' },
 [GetHashKey('italigto')] = { model = 'italigto', price = 5000000, banned = false, name = 'Italigto', trunk = 200, type = 'outros' },
 [GetHashKey('schlagen')] = { model = 'schlagen', price = 500000, banned = false, name = 'Schlagen', trunk = 200, type = 'outros' },
 [GetHashKey('tulip')] = { model = 'tulip', price = 850000, banned = false, name = 'Tulip', trunk = 200, type = 'outros' },
 [GetHashKey('vamos')] = { model = 'vamos', price = 900000, banned = false, name = 'Vamos', trunk = 200, type = 'outros' },
 [GetHashKey('lurcher')] = { model = 'lurcher', price = nil, banned = false, name = 'Lurcher', trunk = 200, type = 'carros' },
 [GetHashKey('lynx')] = { model = 'lynx', price = 800000, banned = false, name = 'Lynx', trunk = 200, type = 'outros' },
 [GetHashKey('raptor')] = { model = 'raptor', price = nil, banned = false, name = 'Raptor', trunk = 200, type = 'outros' },
 [GetHashKey('z190')] = { model = 'z190', price = 400000, banned = false, name = 'Z190', trunk = 200, type = 'outros' },
 [GetHashKey('nightblade')] = { model = 'nightblade', price = 800000, banned = false, name = 'Nightblade', trunk = 200, type = 'outros' },
 [GetHashKey('rumpo')] = { model = 'rumpo', price = nil, banned = false, name = 'Rumpo', trunk = 200, type = 'outros' },
 [GetHashKey('rumpo2')] = { model = 'rumpo2', price = 160000, banned = false, name = 'Rumpo2', trunk = 200, type = 'outros' },
 [GetHashKey('youga')] = { model = 'youga', price = nil, banned = false, name = 'Youga', trunk = 200, type = 'outros' },

 [GetHashKey('mule')] = { model = 'mule', price = nil, banned = false, name = 'mule', trunk = 5000, type = 'outros' },
 [GetHashKey('mule2')] = { model = 'mule2', price = nil, banned = false, name = 'mule2', trunk = 5000, type = 'outros' },
 
 
 

 --[[TYPE = carros]]-- 
 [GetHashKey('intruder')] = { model = 'intruder', price = 90000, banned = false, name = 'Intruder', trunk = 200, type = 'carros' },
 [GetHashKey('exemplar')] = { model = 'exemplar', price = 250000, banned = false, name = 'Exemplar', trunk = 200, type = 'carros' },
 [GetHashKey('f620')] = { model = 'f620', price = 160000, banned = false, name = 'F620', trunk = 200, type = 'carros' },
 [GetHashKey('felon')] = { model = 'felon', price = 300000, banned = false, name = 'Felon', trunk = 200, type = 'carros' },
 [GetHashKey('ingot')] = { model = 'ingot', price = 100000, banned = false, name = 'Ingot', trunk = 200, type = 'carros' },
 [GetHashKey('jackal')] = { model = 'jackal', price = nil, banned = false, name = 'Jackal', trunk = 200, type = 'carros' },
 [GetHashKey('oracle')] = { model = 'oracle', price = 120000, banned = false, name = 'Oracle', trunk = 200, type = 'carros' },
 [GetHashKey('oracle2')] = { model = 'oracle2', price = 150000, banned = false, name = 'Oracle2', trunk = 200, type = 'carros' },
 [GetHashKey('sentinel')] = { model = 'sentinel', price = 140000, banned = false, name = 'Sentinel', trunk = 200, type = 'carros' },
 [GetHashKey('sentinel2')] = { model = 'sentinel2', price = 130000, banned = false, name = 'Sentinel2', trunk = 200, type = 'carros' },
 [GetHashKey('windsor')] = { model = 'windsor', price = 220000, banned = false, name = 'Windsor', trunk = 200, type = 'carros' },
 [GetHashKey('windsor2')] = { model = 'windsor2', price = 170000, banned = false, name = 'Windsor2', trunk = 200, type = 'carros' },
 [GetHashKey('zion')] = { model = 'zion', price = 150000, banned = false, name = 'Zion', trunk = 200, type = 'carros' },
 [GetHashKey('zion2')] = { model = 'zion2', price = 300000, banned = false, name = 'Zion2', trunk = 200, type = 'carros' },
 [GetHashKey('blade')] = { model = 'blade', price = 150000, banned = false, name = 'Blade', trunk = 200, type = 'carros' },
 [GetHashKey('buccaneer')] = { model = 'buccaneer', price = nil, banned = false, name = 'Buccaneer', trunk = 200, type = 'carros' },
 [GetHashKey('buccaneer2')] = { model = 'buccaneer2', price = 500000, banned = false, name = 'Buccaneer2', trunk = 200, type = 'carros' },
 [GetHashKey('primo')] = { model = 'primo', price = 130000, banned = false, name = 'Primo', trunk = 200, type = 'carros' },
 [GetHashKey('issi2')] = { model = 'issi2', price = nil, banned = false, name = 'Issi2', trunk = 200, type = 'carros' },
 [GetHashKey('prairie')] = { model = 'prairie', price = 80000, banned = false, name = 'Prairie', trunk = 200, type = 'carros' },
 [GetHashKey('rhapsody')] = { model = 'rhapsody', price = 10000, banned = false, name = 'Rhapsody', trunk = 200, type = 'carros' },
 [GetHashKey('cogcabrio')] = { model = 'cogcabrio', price = 220000, banned = false, name = 'Cogcabrio', trunk = 200, type = 'carros' },
 [GetHashKey('emperor')] = { model = 'emperor', price = 70000, banned = false, name = 'Emperor', trunk = 200, type = 'carros' },
 [GetHashKey('emperor2')] = { model = 'emperor2', price = 100000, banned = false, name = 'Emperor 2', trunk = 200, type = 'carros' },
 [GetHashKey('emperor3')] = { model = 'emperor3', price = 100000, banned = false, name = 'Emperor 3', trunk = 200, type = 'carros' },
 [GetHashKey('phoenix')] = { model = 'phoenix', price = 160000, banned = false, name = 'Phoenix', trunk = 200, type = 'carros' },
 [GetHashKey('glendale')] = { model = 'glendale', price = 80000, banned = false, name = 'Glendale', trunk = 200, type = 'carros' }, 
 [GetHashKey('glendale2')] = { model = 'glendale2', price = 900000, banned = false, name = 'Glendale 2', trunk = 200, type = 'carros' },
 [GetHashKey('regina')] = { model = 'regina', price = nil, banned = false,  name = 'Regina', trunk = 200, type = 'carros' },
 [GetHashKey('romero')] = { model = 'romero', price = 500000, banned = false, name = 'Funerário', trunk = 200, type = 'carros' },
 [GetHashKey('superd')] = { model = 'superd', price = 500000, banned = false, name = 'superd', trunk = 200, type = 'carros' },
 [GetHashKey('stretch')] = { model = 'stretch', price = nil, banned = false, name = 'Limousine', trunk = 200, type = 'carros' },
 [GetHashKey('asea')] = { model = 'asea', price = 100000, banned = false, name = 'Asea', trunk = 200, type = 'carros' },
 [GetHashKey('asea2')] = { model = 'asea2', price = 100000, banned = false, name = 'Asea2', trunk = 200, type = 'carros' },
 [GetHashKey('asterope')] = { model = 'asterope', price = 150000, banned = false, name = 'Asterope', trunk = 200, type = 'carros' },
 [GetHashKey('cog55')] = { model = 'cog55', price = nil, banned = false, name = 'Cog55', trunk = 200, type = 'carros' },
 [GetHashKey('stanier')] = { model = 'stanier', price = 130000, banned = false, name = 'Stanier', trunk = 200, type = 'carros' },
 [GetHashKey('stratum')] = { model = 'stratum', price = 100000, banned = false, name = 'Stratum', trunk = 200, type = 'carros' },
 [GetHashKey('importsd')] = { model = 'importsd', price = 150000, banned = false, name = 'importsd', trunk = 200, type = 'carros' },
 [GetHashKey('surge')] = { model = 'surge', price = 220000, banned = false, name = 'Surge', trunk = 200, type = 'carros' },
 [GetHashKey('tailgater')] = { model = 'tailgater', price = 160000, banned = false, name = 'Tailgater', trunk = 200, type = 'carros' },
 [GetHashKey('tailgater2')] = { model = 'tailgater2', price = 160000, banned = false, name = 'tailgater2', trunk = 200, type = 'carros' },
 [GetHashKey('warrener')] = { model = 'warrener', price = 100000, banned = false, name = 'Warrener', trunk = 200, type = 'carros' },
 [GetHashKey('washington')] = { model = 'washington', price = 150000, banned = false, name = 'Washington', trunk = 200, type = 'carros' },
 [GetHashKey('fugitive')] = { model = 'fugitive', price = 190000, banned = false, name = 'Fugitive', trunk = 200, type = 'carros' },
 [GetHashKey('stafford')] = { model = 'stafford', price = nil, banned = false, name = 'Stafford', trunk = 200, type = 'carros' },
 [GetHashKey('sugoi')] = { model = 'sugoi', price = nil, banned = false, name = 'Sugoi', trunk = 200, type = 'carros' },
 [GetHashKey('fiatstilo')] = { model = 'fiatstilo', price = nil, banned = false, name = 'Fiat Stilo', trunk = 200, type = 'carros' },
 [GetHashKey('limo2')] = { model = 'limo2', price = nil, banned = false, name = 'limo2', trunk = 200, type = 'carros' },

------------------------------------------------------------------------------------------------------------------------------------------------------

 --[[VEÍCULOS EMPREGOS SERVICE]]--
 --barcos service
 [GetHashKey('dinghy')] = { model = 'dinghy', price = nil, banned = false, name = 'Dinghy', trunk = 200, type = 'service' },
 [GetHashKey('dinghy2')] = { model = 'dinghy2', price = nil, banned = false, name = 'Dinghy 2', trunk = 200, type = 'service' },
 [GetHashKey('dinghy3')] = { model = 'dinghy3', price = nil, banned = false, name = 'Dinghy 3', trunk = 200, type = 'service' },
 [GetHashKey('dinghy4')] = { model = 'dinghy4', price = nil, banned = false, name = 'Dinghy 4', trunk = 200, type = 'service' },
 ---outros service
 [GetHashKey('speedo')] = { model = 'speedo', price = 500000, banned = false, name = 'Speedo', trunk = 200, type = 'service' },
 [GetHashKey('tractor2')] = { model = 'tractor2', price = 160000, banned = false, name = 'Tractor2', trunk = 200, type = 'service' },
 [GetHashKey('bus')] = { model = 'bus', price = nil, banned = false, name = 'Ônibus', trunk = 0, type = 'service' },

 [GetHashKey('trash2')] = { model = 'trash2', price = nil, banned = false, name = 'Caminhão', trunk = 200, type = 'service' }, --lixeiro
 [GetHashKey('tiptruck')] = { model = 'tiptruck', price = nil, banned = false, name = 'Tiptruck', trunk = 200, type = 'service' }, --minerador
 
 ----BICICLETAS SPAWN
 [GetHashKey('scorcher')] = { model = 'scorcher', price = nil, banned = false, name = 'Scorcher', trunk = 0, type = 'service' },
 [GetHashKey('tribike')] = { model = 'tribike', price = nil, banned = false, name = 'Tribike', trunk = 0, type = 'service' },
 [GetHashKey('tribike2')] = { model = 'tribike2', price = nil, banned = false, name = 'Tribike2', trunk = 0, type = 'service' },
 [GetHashKey('tribike3')] = { model = 'tribike3', price = nil, banned = false, name = 'Tribike3', trunk = 0, type = 'service' },
 [GetHashKey('fixter')] = { model = 'fixter', price = nil, banned = false, name = 'Fixter', trunk = 0, type = 'service' },
 [GetHashKey('cruiser')] = { model = 'cruiser', price = nil, banned = false, name = 'Cruiser', trunk = 0, type = 'service' },
 [GetHashKey('bmx')] = { model = 'bmx', price = 20000, banned = false, name = 'Bmx', trunk = 0, type = 'service' },


 ----- HOSPITAL
 [GetHashKey('trail22grau')] = { model = 'trail22grau', price = 20000, banned = false, name = 'TRAIL BOMBEIRO', trunk = 0, type = 'service' },
 [GetHashKey('xt660cb2')] = { model = 'xt660cb2', price = 20000, banned = false, name = 'xt660 BOMBEIRO', trunk = 0, type = 'service' },
 [GetHashKey('Wrasprinter')] = { model = 'Wrasprinter', price = 20000, banned = false, name = 'Ambulancia HUGO', trunk = 0, type = 'service' },
 [GetHashKey('Wrgle53')] = { model = 'Wrgle53', price = 20000, banned = false, name = 'GLE53 Hospital', trunk = 0, type = 'service' },
 [GetHashKey('WRr1200')] = { model = 'WRr1200', price = 20000, banned = false, name = 'R1200 Hospital', trunk = 0, type = 'service' },
 [GetHashKey('as350samu')] = { model = 'as350samu', price = 20000, banned = false, name = 'AS350 Samu', trunk = 0, type = 'service' },
 [GetHashKey('firetruk')] = { model = 'firetruk', price = 20000, banned = false, name = 'Caminhao Bomeiro', trunk = 0, type = 'service' },
 [GetHashKey('helibombeiros')] = { model = 'helibombeiros', price = 20000, banned = false, name = 'Heli Bombeiros', trunk = 0, type = 'service' },
 [GetHashKey('l200bombeiros')] = { model = 'l200bombeiros', price = 20000, banned = false, name = 'L200 Bombeiros', trunk = 0, type = 'service' },
 [GetHashKey('sprinter')] = { model = 'sprinter', price = 20000, banned = false, name = 'Ambulancia Bombeiros', trunk = 0, type = 'service' },
 [GetHashKey('sw4grau1')] = { model = 'sw4grau1', price = 20000, banned = false, name = 'SW4 Bombeiro', trunk = 0, type = 'service' },
 
-----------POLICIA
[GetHashKey('as350prf')] = { model = 'as350prf', price = 20000, banned = false, name = 'AS350 PRF', trunk = 0, type = 'service' },
[GetHashKey('dusterpc')] = { model = 'dusterpc', price = 20000, banned = false, name = 'Duster PC', trunk = 0, type = 'service' },
[GetHashKey('dusterrp1')] = { model = 'dusterrp1', price = 20000, banned = false, name = 'Duster PM', trunk = 0, type = 'service' },
[GetHashKey('dusterrp2')] = { model = 'dusterrp2', price = 20000, banned = false, name = 'Duster PM2', trunk = 0, type = 'service' },
[GetHashKey('equinoxprf')] = { model = 'equinoxprf', price = 20000, banned = false, name = 'PRF SUV', trunk = 0, type = 'service' },
[GetHashKey('pantera')] = { model = 'pantera', price = 20000, banned = false, name = 'Pantera PM', trunk = 0, type = 'service' },
[GetHashKey('pbus')] = { model = 'pbus', price = 20000, banned = false, name = 'Onibus Transporte', trunk = 0, type = 'service' },
[GetHashKey('polmav')] = { model = 'polmav', price = 20000, banned = false, name = 'Heli PM', trunk = 0, type = 'service' },
[GetHashKey('r1200pm')] = { model = 'r1200pm', price = 20000, banned = false, name = 'R1200PM', trunk = 0, type = 'service' },
[GetHashKey('r1200prf')] = { model = 'r1200prf', price = 20000, banned = false, name = 'R1200PRF', trunk = 0, type = 'service' },
[GetHashKey('s10eb')] = { model = 's10eb', price = 20000, banned = false, name = 'S10 Policia Exercito', trunk = 0, type = 'service' },
[GetHashKey('s10iml')] = { model = 's10iml', price = 20000, banned = false, name = 'S10 IML', trunk = 0, type = 'service' },
[GetHashKey('s10pm')] = { model = 's10pm', price = 20000, banned = false, name = 'S10 PM', trunk = 0, type = 'service' },
[GetHashKey('s10rotam')] = { model = 's10rotam', price = 20000, banned = false, name = 'S10 Rotam', trunk = 0, type = 'service' },
[GetHashKey('sw4grau1')] = { model = 'sw4grau1', price = 20000, banned = false, name = 'SW4', trunk = 0, type = 'service' },
[GetHashKey('swift')] = { model = 'swift', price = 20000, banned = false, name = 'Heli Militar', trunk = 0, type = 'service' },
[GetHashKey('tigerpm')] = { model = 'tigerpm', price = 20000, banned = false, name = 'Tiger PM', trunk = 0, type = 'service' },
[GetHashKey('trail20pm')] = { model = 'bmtrail20pmx', price = 20000, banned = false, name = 'Trail PM', trunk = 0, type = 'service' },
[GetHashKey('trail20prf')] = { model = 'trail20prf', price = 20000, banned = false, name = 'Trail PRF', trunk = 0, type = 'service' },
[GetHashKey('trail21pc')] = { model = 'trail21pc', price = 20000, banned = false, name = 'Trail PCIVIL', trunk = 0, type = 'service' },
[GetHashKey('trail22prf')] = { model = 'trail22prf', price = 20000, banned = false, name = 'Trail PRF2', trunk = 0, type = 'service' },

 ------------------------------------------------------------------------------------------------------------------------------------------------------
 --IMPORTADOS 
 [GetHashKey('furia')] = { model = 'furia', price = nil0, banned = false, name = 'Furia', trunk = 100, type = 'imports' },
 [GetHashKey('krieger')] = { model = 'krieger', price = 4000000, banned = false, name = 'Krieger', trunk = 100, type = 'imports', },
 [GetHashKey('emerus')] = { model = 'emerus', price = nil0, banned = false, name = 'Emerus', trunk = 100, type = 'imports' },
 [GetHashKey('zorrusso')] = { model = 'zorrusso', price = 3500000, banned = false, name = 'Zorrusso', trunk = 100, type = 'imports'  },
 [GetHashKey('thrax')] = { model = 'thrax', price = 5000000, banned = false, name = 'Thrax', trunk = 100, type = 'imports' },
 [GetHashKey('s80')] = { model = 's80', price = nil0, banned = false, name = 'S80', trunk = 100, type = 'imports' },
 [GetHashKey('tigon')] = { model = 'tigon', price = nil0, banned = false, name = 'Tigon', trunk = 100, type = 'imports' },
 [GetHashKey('autarch')] = { model = 'autarch', price = 3000000, banned = false, name = 'Autarch', trunk = 100, type = 'imports' },
 [GetHashKey('banshee2')] = { model = 'banshee2', price = 700000, banned = false, name = 'Banshee2', trunk = 100, type = 'imports' },
 [GetHashKey('bullet')] = { model = 'bullet', price = 800000, banned = false, name = 'Bullet', trunk = 100, type = 'imports' },
 [GetHashKey('entityxf')] = { model = 'entityxf', price = 1500000, banned = false, name = 'Entityxf', trunk = 100, type = 'carros' },
 [GetHashKey('fmj')] = { model = 'fmj', price = 1200000, banned = false, name = 'Fmj', trunk = 100, type = 'imports' },
 [GetHashKey('gp1')] = { model = 'gp1', price = nil0, banned = false, name = 'Gp1', trunk = 100, type = 'imports' },
 [GetHashKey('infernus')] = { model = 'infernus', price = 700000, banned = false, name = 'Infernus', trunk = 100, type = 'imports' },
 [GetHashKey('nero')] = { model = 'nero', price = 4500000, banned = false, name = 'Nero', trunk = 100, type = 'imports' },
 [GetHashKey('nero2')] = { model = 'nero2', price = 3000000, banned = false, name = 'Nero2', trunk = 100, type = 'imports' },
 [GetHashKey('osiris')] = { model = 'osiris', price = 4000000, banned = false, name = 'Osiris', trunk = 100, type = 'imports' },
 [GetHashKey('penetrator')] = { model = 'penetrator', price = 1200000, banned = false, name = 'Penetrator', trunk = 100, type = 'imports' },
 [GetHashKey('pfister811')] = { model = 'pfister811', price = nil0, banned = false, name = 'Pfister811', trunk = 100, type = 'imports' },
 [GetHashKey('reaper')] = { model = 'reaper', price = 2500000, banned = false, name = 'Reaper', trunk = 100, type = 'imports' },
 [GetHashKey('sc1')] = { model = 'sc1', price = 2500000, banned = false, name = 'Sc1', trunk = 100, type = 'imports' },
 [GetHashKey('scramjet')] = { model = 'scramjet', price = 2500000, banned = false, name = 'scramjet', trunk = 100, type = 'imports' },
 [GetHashKey('sultanrs')] = { model = 'sultanrs', price = nil0, banned = false, name = 'Sultan RS', trunk = 100, type = 'imports' },
 [GetHashKey('italigtb2')] = { model = 'italigtb2', price = nil0, banned = false, name = 'italigtb2', trunk = 100, type = 'imports' },
 [GetHashKey('t20')] = { model = 't20', price = 2500000, banned = false, name = 'T20', trunk = 100, type = 'carros' },
 [GetHashKey('tempesta')] = { model = 'tempesta', price = 4000000, banned = false, name = 'Tempesta', trunk = 100, type = 'imports' },
 [GetHashKey('turismor')] = { model = 'turismor', price = 5000000, banned = false, name = 'Turismor', trunk = 100, type = 'imports' },
 [GetHashKey('tyrus')] = { model = 'tyrus', price = 1200000, banned = false, name = 'Tyrus', trunk = 100, type = 'imports' },
 [GetHashKey('vacca')] = { model = 'vacca', price = nil0, banned = false, name = 'Vacca', trunk = 100, type = 'imports' },
 [GetHashKey('visione')] = { model = 'visione', price = nil0, banned = false, name = 'Visione', trunk = 100, type = 'imports' },
 [GetHashKey('voltic')] = { model = 'voltic', price = 800000, banned = false, name = 'Voltic', trunk = 100, type = 'imports' },
 [GetHashKey('voltic2')] = { model = 'voltic2', price = 800000, banned = false, name = 'voltic2', trunk = 100, type = 'imports' },
 [GetHashKey('zentorno')] = { model = 'zentorno', price = nil0, banned = false, name = 'Zentorno', trunk = 100, type = 'imports' },
 [GetHashKey('tyrant')] = { model = 'tyrant', price = 5000000, banned = false, name = 'Tyrant', trunk = 100, type = 'imports' },
 [GetHashKey('entity2')] = { model = 'entity2', price = nil0, banned = false, name = 'Entity2', trunk = 100, type = 'imports' },
 [GetHashKey('entity3')] = { model = 'entity3', price = nil0, banned = false, name = 'entity3', trunk = 100, type = 'imports' },
 [GetHashKey('jester2')] = { model = "jester2", price = nil0, banned = false, name = 'Jester 2', trunk = 100, type = 'imports'},
 [GetHashKey('taipan')] = { model = 'taipan', price = nil0, banned = false, name = 'Taipan', trunk = 100, type = 'imports' },
 [GetHashKey('cyclone')] = { model = 'cyclone', price = nil0, banned = false, name = 'Cyclone', trunk = 100, type = 'imports' },
 [GetHashKey('italigtb')] = { model = 'italigtb', price = nil0, banned = false, name = 'Italigtb', trunk = 100, type = 'imports' },
 [GetHashKey('italigtb2')] = { model = 'italigtb2', price = nil0, banned = false, name = 'Italigtb2', trunk = 100, type = 'imports' },
 [GetHashKey('vagner')] = { model = 'vagner', price = nil0, banned = false, name = 'Vagner', trunk = 100, type = 'imports' },
 [GetHashKey('vigilante')] = { model = 'vigilante', price = nil0, banned = false, name = 'vigilante', trunk = 100, type = 'imports' },
 [GetHashKey('virtue')] = { model = 'virtue', price = nil0, banned = false, name = 'virtue', trunk = 100, type = 'imports' },
 [GetHashKey('xa21')] = { model = 'xa21', price = nil0, banned = false, name = 'Xa21', trunk = 100, type = 'imports' },
 [GetHashKey('prototipo')] = { model = 'prototipo', price = nil0, banned = false, name = 'Prototipo', trunk = 100, type = 'imports' },
 [GetHashKey('le7b')] = { model = 'le7b', price = 3000000, banned = false, name = 'Le7b', trunk = 100, type = 'imports' },
 [GetHashKey('sheava')] = { model = 'sheava', price = 4000000, banned = false, name = 'Sheava', trunk = 100, type = 'imports' },
 [GetHashKey('dodgechargersrt')] = { model = 'dodgechargersrt', price = nil0, banned = false, name = 'Dodge Charger SRT', trunk = 100, type = 'import' },
 [GetHashKey('beetle74')] = { model = 'beetle74', price = 500000, banned = false, name = 'Fusca 74', trunk = 100, type = 'import' },
 [GetHashKey('fe86')] = { model = 'fe86', price = 500000, banned = false, name = 'Escorte', trunk = 100, type = 'import' },
 [GetHashKey('type263')] = { model = 'type263', price = 500000, banned = false, name = 'Kombi 63', trunk = 100, type = 'import' },
 
 ----------MOTOS	
 [GetHashKey('verus')] = { model = 'verus', price = nil, banned = false, name = 'Verus', trunk = 40, type = 'motos' },
 [GetHashKey('akuma')] = { model = 'akuma', price = 750000, banned = false, name = 'Akuma', trunk = 40, type = 'motos' },
 [GetHashKey('avarus')] = { model = 'avarus', price = nil, banned = false, name = 'Avarus', trunk = 40, type = 'motos' },
 [GetHashKey('bagger')] = { model = 'bagger', price = nil, banned = false, name = 'Bagger', trunk = 40, type = 'motos' },
 [GetHashKey('bati')] = { model = 'bati', price = nil, banned = false, name = 'Bati', trunk = 40, type = 'motos' },
 [GetHashKey('bati2')] = { model = 'bati2', price = 800000, banned = false, name = 'Bati2', trunk = 40, type = 'motos' },
 [GetHashKey('bf400')] = { model = 'bf400', price = nil, banned = false, name = 'Bf400', trunk = 40, type = 'motos' },
 [GetHashKey('carbonrs')] = { model = 'carbonrs', price = 800000, banned = false, name = 'Carbonrs', trunk = 40, type = 'motos' },
 [GetHashKey('chimera')] = { model = 'chimera', price = 400000, banned = false, name = 'Chimera', trunk = 40, type = 'motos' },
 [GetHashKey('cliffhanger')] = { model = 'cliffhanger', price = 250000, banned = false, name = 'Cliffhanger', trunk = 40, type = 'motos' },
 [GetHashKey('daemon')] = { model = 'daemon', price = nil, banned = false, name = 'Daemon', trunk = 40, type = 'motos' },
 [GetHashKey('daemon2')] = { model = 'daemon2', price = nil, banned = false, name = 'Daemon2', trunk = 40, type = 'motos' },
 [GetHashKey('defiler')] = { model = 'defiler', price = 700000, banned = false, name = 'Defiler', trunk = 40, type = 'motos' },
 [GetHashKey('diablous')] = { model = 'diablous', price = 500000, banned = false, name = 'Diablous', trunk = 40, type = 'motos' },
 [GetHashKey('diablous2')] = { model = 'diablous2', price = 700000, banned = false, name = 'Diablous2', trunk = 40, type = 'motos' },
 [GetHashKey('double')] = { model = 'double', price = 800000, banned = false, name = 'Double', trunk = 40, type = 'motos' },
 [GetHashKey('enduro')] = { model = 'enduro', price = 400000, banned = false, name = 'Enduro', trunk = 40, type = 'motos' },
 [GetHashKey('esskey')] = { model = 'esskey', price = 400000, banned = false, name = 'Esskey', trunk = 40, type = 'motos' },
 [GetHashKey('faggio')] = { model = 'faggio', price = 4000, banned = false, name = 'Faggio', trunk = 10, type = 'motos' },
 [GetHashKey('faggio2')] = { model = 'faggio2', price = 5000, banned = false, name = 'Faggio2', trunk = 10, type = 'motos' },
 [GetHashKey('faggio3')] = { model = 'faggio3', price = 5000, banned = false, name = 'Faggio3', trunk = 10, type = 'motos' },
 [GetHashKey('fcr')] = { model = 'fcr', price = 300000, banned = false, name = 'Fcr', trunk = 40, type = 'motos' },
 [GetHashKey('fcr2')] = { model = 'fcr2', price = 400000, banned = false, name = 'Fcr2', trunk = 40, type = 'motos' },
 [GetHashKey('gargoyle')] = { model = 'gargoyle', price = 450000, banned = false, name = 'Gargoyle', trunk = 40, type = 'motos' },
 [GetHashKey('hakuchou')] = { model = 'hakuchou', price = 3000000, banned = false, name = 'Hakuchou', trunk = 40, type = 'motos' },
 [GetHashKey('hakuchou2')] = { model = 'hakuchou2', price = nil, banned = false, name = 'Hakuchou2', trunk = 40, type = 'motos' },
 [GetHashKey('hexer')] = { model = 'hexer', price = nil, banned = false, name = 'Hexer', trunk = 40, type = 'motos' },
 [GetHashKey('innovation')] = { model = 'innovation', price = nil, banned = false, name = 'Innovation', trunk = 40, type = 'motos' },
 [GetHashKey('lectro')] = { model = 'lectro', price = nil, banned = false, name = 'Lectro', trunk = 40, type = 'motos' },
 [GetHashKey('manchez')] = { model = 'manchez', price = 800000, banned = false, name = 'Manchez', trunk = 40, type = 'motos' },
 [GetHashKey('nemesis')] = { model = 'nemesis', price = 250000, banned = false, name = 'Nemesis', trunk = 40, type = 'motos' },
 [GetHashKey('pcj')] = { model = 'pcj', price = 300000, banned = false, name = 'Pcj', trunk = 40, type = 'motos' },
 [GetHashKey('ruffian')] = { model = 'ruffian', price = 450000, banned = false, name = 'Ruffian', trunk = 40, type = 'motos' },
 [GetHashKey('sanchez')] = { model = 'sanchez', price = 400000, banned = false, name = 'Sanchez', trunk = 40, type = 'motos' },
 [GetHashKey('sanchez2')] = { model = 'sanchez2', price = 500000, banned = false, name = 'Sanchez2', trunk = 40, type = 'motos' },
 [GetHashKey('sanctus')] = { model = 'sanctus', price = 400000, banned = false, name = 'Sanctus', trunk = 40, type = 'motos' },
 [GetHashKey('sovereign')] = { model = 'sovereign', price = nil, banned = false, name = 'Sovereign', trunk = 40, type = 'motos' },
 [GetHashKey('thrust')] = { model = 'thrust', price = 650000, banned = false, name = 'Thrust', trunk = 40, type = 'motos' },
 [GetHashKey('vader')] = { model = 'vader', price = 400000, banned = false, name = 'Vader', trunk = 40, type = 'motos' },
 [GetHashKey('vindicator')] = { model = 'vindicator', price = nil, banned = false, name = 'Vindicator', trunk = 40, type = 'motos' },
 [GetHashKey('vortex')] = { model = 'vortex', price = 800000, banned = false, name = 'Vortex', trunk = 40, type = 'motos' },
 [GetHashKey('wolfsbane')] = { model = 'wolfsbane', price = 400000, banned = false, name = 'Wolfsbane', trunk = 40, type = 'motos' },
 [GetHashKey('zombiea')] = { model = 'zombiea', price = 250000, banned = false, name = 'Zombiea', trunk = 40, type = 'motos' },
 [GetHashKey('zombieb')] = { model = 'zombieb', price = 250000, banned = false, name = 'Zombieb', trunk = 40, type = 'motos' },
 [GetHashKey('blazer')] = { model = 'blazer', price = 750000, banned = false, name = 'Blazer', trunk = 40, type = 'motos' },
 [GetHashKey('blazer4')] = { model = 'blazer4', price = 800000, banned = false, name = 'Blazer4', trunk = 40, type = 'motos' },
 [GetHashKey('shotaro')] = { model = 'shotaro', price = nil0, banned = false, name = 'Shotaro', trunk = 40, type = 'motos' },
 [GetHashKey('ratbike')] = { model = 'ratbike', price = nil, banned = false, name = 'Ratbike', trunk = 40, type = 'motos' },
 
 [GetHashKey('cavaloautomotivo')] = { model = 'cavaloautomotivo', price = nil, banned = false, name = 'Carroça Automotiva', trunk = 0, type = 'service' },
 [GetHashKey('unofirma')] = { model = 'unofirma', price = nil, banned = false, name = 'UNO Equatorial', trunk = 0, type = 'service' },
    
 
-----------------------------------------------------veiculos sem logooooooo-------------------------------------------------------
-----------------------------------------------------veiculos sem logooooooo-------------------------------------------------------
-----------------------------------------------------veiculos sem logooooooo-------------------------------------------------------
-----------------------------------------------------veiculos sem logooooooo-------------------------------------------------------
-----------------------------------------------------veiculos sem logooooooo-------------------------------------------------------
-----------------------------------------------------veiculos sem logooooooo-------------------------------------------------------
-----------------------------------------------------veiculos sem logooooooo-------------------------------------------------------
------------brasileiro
[GetHashKey("amarok")] = { model = "amarok", name = "amarok v8", price = 1920145, type = "carros", trunk = 250, banned = false },
[GetHashKey("civic2020")] = { model = "civic2020", name = "civic 2020", price = 820145, type = "carros", trunk = 40, banned = false },
[GetHashKey("golf1")] = { model = "golf1", name = "golf f1", price = 520145, type = "carros", trunk = 40, banned = false },
[GetHashKey("golf7")] = { model = "golf7", name = "golf f7", price = 820145, type = "carros", trunk = 40, banned = false },
[GetHashKey("golf8gti")] = { model = "golf8gti", name = "golf gti", price = 820145, type = "carros", trunk = 40, banned = false },
[GetHashKey("golf75r")] = { model = "golf75r", name = "golf f75", price = 920145, type = "carros", trunk = 40, banned = false },
[GetHashKey("passat")] = { model = "passat", name = "passat", price = 920145, type = "carros", trunk = 40, banned = false },
[GetHashKey("polo2018")] = { model = "polo2018", name = "polo 2018", price = 980000, type = "carros", trunk = 30, banned = false },
[GetHashKey("rmodmk7")] = { model = "rmodmk7", name = "rmk7", price = 1320145, type = "carros", trunk = 40, banned = false },
[GetHashKey("rygbus")] = { model = "rygbus", name = "rygbus", price = 1220145, type = "carros", trunk = 40, banned = false },
[GetHashKey("golf91wideprzemo")] = { model = "golf91wideprzemo", name = "golf f91", price = 1420145, type = "carros", trunk = 40, banned = false },

[GetHashKey("vwkombi")] = { model = "vwkombi", name = "VW Kombi", price = 980145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("beetlerwb")] = { model = "beetlerwb", name = "Super Fusca", price = 1020145, type = "exclusive", trunk = 70, banned = false },



------------------velozes
[GetHashKey("2f2fgtr34")] = { model = "2f2fgtr34", name = "skylinerbrian", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("2f2fmk4")] = { model = "2f2fmk4", name = "supra turbomk", price = 225000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("2f2fmle7")] = { model = "2f2fmle7", name = "mitsubishi evo", price = 54978, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("charge4")] = { model = "charge4", name = "charge 4", price = 54978, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("chargerf8")] = { model = "chargerf8", name = "charger f8", price = 54978, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("ff4wrx")] = { model = "ff4wrx", name = "subaru wrx", price = 308900, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("domscharger")] = { model = "domscharger", name = "dod charger", price = 308900, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("gladiatorf9")] = { model = "gladiatorf9", name = "gladiator f9", price = 308900, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("fnf4r34")] = { model = "fnf4r34", name = "nissanr34", price = 276000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("mustangcsrff3nd")] = { model = "mustangcsrff3nd", name = "mustang csrff3", price = 276000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("stingray66")] = { model = "stingray66", name = "stingray 66", price = 276000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("tantrumf9")] = { model = "tantrumf9", name = "tantrum f9", price = 276000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("fnflan")] = { model = "fnflan", name = "lancer evolutionix", price = 797910, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("fnfmk4")] = { model = "fnfmk4", name = "toyota supra", price = 2700000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("nh2r")] = { model = "nh2r", name = "kawasaki ninja", price = 363100, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("fnfrx7")] = { model = "fnfrx7", name = "mazda rx7", price = 488620, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("fd")] = { model = "fd", name = "mazda", price = 488620, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("2f2frx7")] = { model = "2f2frx7", name = "mazda 1993", price = 488620, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("hcej1")] = { model = "hcej1", name = "civic ej1", price = 199000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("2f2fs2000")] = { model = "2f2fs2000", name = "honda s2000", price = 224310, type = "exclusive", trunk = 10, banned = false }, 
[GetHashKey("350zdk")] = { model = "350zdk", name = "nissan 350zdk", price = 266858, type = "exclusive", trunk = 100, banned = false }, 
[GetHashKey("350zm")] = { model = "350zm", name = "nissan 350zm", price = 256049, type = "exclusive", trunk = 100, banned = false }, 
[GetHashKey("fnfjetta")] = { model = "fnfjetta", name = "jetta 1995", price = 84460, type = "exclusive", trunk = 100, banned = false }, 
[GetHashKey("fnfrx7dom")] = { model = "fnfrx7dom", name = "mazda rx-7", price = 1200000, type = "exclusive", trunk = 100, banned = false }, 
[GetHashKey("silvias15varietta")] = { model = "silvias15varietta", name = "nissan silvia s15", price = 1100000, type = "exclusive", trunk = 100, banned = false }, 

[GetHashKey("eclipse")] = { model = "eclipse", name = "1995-mitsubishi-eclipse-gsx", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("fnfdaytona")] = { model = "fnfdaytona", name = "Charger_Daytona_69_F6", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("rr69chargerwide")] = { model = "rr69chargerwide", name = "Customs1969ChargerBC", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("wastelander2")] = { model = "wastelander2", name = "Eastelander_F5", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("towrod")] = { model = "towrod", name = "Fast_And_Furious_Hobbs_And_Shaw", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("forde1")] = { model = "forde1", name = "Ford_Escort-MK1_F5", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("hondas2000")] = { model = "hondas2000", name = "honda-s2000", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("lykan")] = { model = "lykan", name = "Lykan_Hypersport_F7", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("rx7veilside")] = { model = "rx7veilside", name = "Mazda_RX7_Veilside", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("rx7tunable2")] = { model = "rx7tunable2", name = "mazda-rx-7-fast-furious", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("evo99")] = { model = "evo99", name = "mitsubishi-lancer-evolution2", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("bnsgtr99")] = { model = "bnsgtr99", name = "Nissan_Skyline_GT-R34", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("rmodskyline34")] = { model = "rmodskyline34", name = "Nissan_Skyline_R34_Super", price = 2245158, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("sbrWRX")] = { model = "sbrWRX", name = "Subaru_WRX_F7", price = 2000000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("adgr20")] = { model = "adgr20", name = "Toyota_GR_Supra", price = 2000000, type = "exclusive", trunk = 100, banned = false },



------------vips

[GetHashKey("nissantitan17")] = { model = "nissantitan17", name = "nissan titan 2017", price = 154440, type = "exclusive", trunk = 150, banned = false },
[GetHashKey("hellcatf9")] = { model = "hellcatf9", name = "dodge charger hellcat 2021", price = 308900, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("bmwg07")] = { model = "bmwg07", name = "bmw x7 2021", price = 103600, type = "exclusive", trunk = 100, banned = false }, 
[GetHashKey("16charger")] = { model = "chir16chargeronss", name = "dodge charger srt hellcat bodykit", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("350z")] = { model = "350z", name = "nissan 350z", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("356a")] = { model = "356a", name = "porsche 356a", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("488")] = { model = "488", name = "ferrari 488", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("600ltwb")] = { model = "600ltwb", name = "mclaren 600 lt bodykit", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("675lt")] = { model = "675lt", name = "mclaren 675 lt", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("2019chiron")] = { model = "2019chiron", name = "bugatti chiron 2019", price = 320145, type = "exclusive", trunk = 40, banned = false },
--[GetHashKey("2019m5")] = { model = "2019m5", name = "bmw m5 2019", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("2019tundrac")] = { model = "2019tundrac", name = "toyota tundra 2019c", price = 320145, type = "exclusive", trunk = 120, banned = false },
[GetHashKey("2022jeep")] = { model = "2022jeep", name = "jeep wangler 2022", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("aaq4")] = { model = "aaq4", name = "audi a4 2019", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("bentaygam")] = { model = "bentaygam", name = "bentley bentayga 2020", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("benzc32")] = { model = "benzc32", name = "mercedes benz c32 2001", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("bmwe39")] = { model = "bmwe39", name = "bmw e39", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("cayen19")] = { model = "cayen19", name = "porsche cayene 2019", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("ckm3e36")] = { model = "ckm3e36", name = "bmw e36 especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("cls500w219")] = { model = "cls500w219", name = "mercedes benz cls500", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("cx30wz")] = { model = "cx30wz", name = "mazda cx-30 neon edition", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("dawn")] = { model = "dawn", name = "rolls royce wraith especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("dl_g900")] = { model = "dl_g900", name = "brabus g900", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("eleanor")] = { model = "eleanor", name = "mustang fastback 1967", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("eli")] = { model = "eli", name = "eli-zero", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("evo9")] = { model = "evo9", name = "lancer evolution ix", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("evox")] = { model = "evox", name = "lancer evolution x bodykit", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("furai")] = { model = "furai", name = "mazda furai", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("fxxk")] = { model = "fxxk", name = "ferrari fxx-k", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("g63")] = { model = "g63", name = "mercedes-amg g63", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("giulia_2021")] = { model = "giulia_2021", name = "alfa romeo giulia neon", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("gmcev2")] = { model = "gmcev2", name = "hummer ev 6x6 ", price = 320145, type = "exclusive", trunk = 150, banned = false },
[GetHashKey("godzksterzotacha")] = { model = "godzksterzotacha", name = "lamborguini revuelto mod", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("gt17")] = { model = "gt17", name = "ford gt", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("gto66c")] = { model = "gto66c", name = "pontiac gto 1966", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("h2m")] = { model = "h2m", name = "hummer h2", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("hellcatlb")] = { model = "hellcatlb", name = "dodge challenger hellcat lb", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("huracanst")] = { model = "huracanst", name = "lamborguini huracan sto", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("ikx3abt20")] = { model = "ikx3abt20", name = "audi rs7", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("ikx3rebel22")] = { model = "ikx3rebel22", name = "cupra urbanrebel", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("jagoffroad")] = { model = "jagoffroad", name = "jaguar f-pace offroad neon", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("kart")] = { model = "kart", name = "kart", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("kgc10")] = { model = "kgc10", name = "nissan gtr skyline raridade", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("kln")] = { model = "kln", name = "rolls-royce cullinan luxo", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("m3e92")] = { model = "m3e92", name = "bmw m3 e92", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("m3s")] = { model = "m3s", name = "bmw m3s", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("manscountach")] = { model = "manscountach", name = "lamborguini countach kit", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("mansgt")] = { model = "mansgt", name = "mclaren gt nitro", price = 3100000, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("mlnovitec")] = { model = "mlnovitec", name = "maserati levante", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("mustang65")] = { model = "mustang65", name = "mustang fastback 1965", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("mxpan")] = { model = "mxpan", name = "mazda mx-5 miata kit", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("oycdefender")] = { model = "oycdefender", name = "land rover defender", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("rculi")] = { model = "rculi", name = "rolls-royce cullinan", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("rmod240sx")] = { model = "rmod240sx", name = "nissan 240sx", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("rmodcharger69")] = { model = "rmodcharger69", name = "dodge charger r/t 1969 velozes e furiosos", price = 963258, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("rmodf40")] = { model = "rmodf40", name = "ferrari f40", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("rmodr8c")] = { model = "rmodr8c", name = "audi r8 mod", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("rrphantom")] = { model = "rrphantom", name = "rolls-royce phantom", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("rs322sedan")] = { model = "rs322sedan", name = "audi rs3 sedan", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("rs721")] = { model = "rs721", name = "audi rs7 2021", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("s1")] = { model = "s1", name = "audi s1 bodykit", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("s8d4")] = { model = "s8d4", name = "audi s8", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("s500w222")] = { model = "s500w222", name = "mercedes s500 w2222", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("sian")] = { model = "sian", name = "lamborguini sian", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("sinacp")] = { model = "sinacp", name = "lamborguini sian conversivel", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("techart17")] = { model = "techart17", name = "porsche panamera kit", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("teslapd")] = { model = "teslapd", name = "tesla model s", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("teslaroad")] = { model = "teslaroad", name = "tesla roadster", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("w140")] = { model = "w140", name = "mercedes-benz w140", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("w222wald")] = { model = "w222wald", name = "mercedes-benz w222 wald", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("wraith")] = { model = "wraith", name = "rolls royce wraith", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("xc90")] = { model = "xc90", name = "volvo xc90", price = 320145, type = "exclusive", trunk = 80, banned = false },



----------------- caminhao
[GetHashKey("fcxl")] = { model = "fcxl", name = "fcxl", price = 320145, type = "exclusive", trunk = 10000, banned = false },
[GetHashKey("thewolftruck")] = { model = "thewolftruck", name = "thewolftruck", price = 320145, type = "exclusive", trunk = 10000, banned = false },
[GetHashKey("tieens")] = { model = "tieens", name = "tieens", price = 320145, type = "exclusive", trunk = 10000, banned = false },
[GetHashKey("vironmichalski")] = { model = "vironmichalski", name = "vironmichalski", price = 320145, type = "exclusive", trunk = 10000, banned = false },
[GetHashKey("yoti")] = { model = "yoti", name = "yoti", price = 320145, type = "exclusive", trunk = 10000, banned = false },


------------exclusivo
[GetHashKey("488animated")] = { model = "488animated", name = "ferrari 488 animated", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("2018s650p")] = { model = "2018s650p", name = "mercedes s650p limousine", price = 320145, type = "exclusive", trunk = 150, banned = false },
[GetHashKey("animfk8hr")] = { model = "animfk8hr", name = "honda civic type r animated", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("banana")] = { model = "banana", name = "banana", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("e63test")] = { model = "e63test", name = "mercedes-amg e63 especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("eve")] = { model = "eve", name = "apollo intensa emozione", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("forgt50020")] = { model = "forgt50020", name = "ford gt 500 especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("g81hr")] = { model = "g81hr", name = "bmw m3 g81 touring", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("gt86trust")] = { model = "gt86trust", name = "toyota gt86 anime edition", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("mi8")] = { model = "mi8", name = "bmw i8 especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("rmodm3joker")] = { model = "rmodm3joker", name = "bmw m3 coringa especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("rmodm4unikat")] = { model = "rmodm4unikat", name = "bmw m4 especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("rolls6x6")] = { model = "rolls6x6", name = "rolls royce 6x6 especial edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("royalcustomkawasakish2")] = { model = "royalcustomkawasakish2", name = "kawasaki h2r especial edition", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("rrghostbyv")] = { model = "rrghostbyv", name = "rolls royce limousine especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("urus_stretch_6")] = { model = "urus_stretch_6", name = "lamborguini urus limousine", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("wmfenyr")] = { model = "wmfenyr", name = "fenyr supersport", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("zlay_gtz35")] = { model = "zlay_gtz35", name = "nissan gtr especial edition", price = 320145, type = "exclusive", trunk = 100, banned = false },

--------------helicoptero
[GetHashKey("bloodheli")] = { model = "bloodheli", name = "bloodheli", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("taxipolmav")] = { model = "taxipolmav", name = "Taxi Heli", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("mh47g")] = { model = "mh47g", name = "mh47g", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("ospreyhmx")] = { model = "ospreyhmx", name = "ospreyhmx", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("volatus2")] = { model = "volatus2", name = "volatus2", price = 320145, type = "exclusive", trunk = 40, banned = false },


[GetHashKey("488sp")] = { model = "488sp", name = "ferrari 488 bodykit", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("911turbos")] = { model = "911turbos", name = "porsche 911 turbo s", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("a45")] = { model = "a45", name = "mercedes-amg a45", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("abhawk")] = { model = "abhawk", name = "jeep cherokee kit", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("alpinab7")] = { model = "alpinab7", name = "bmw alpina b7", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("autobio")] = { model = "autobio", name = "range rover sport", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("b63s")] = { model = "b63s", name = "mercedes brabus b63s", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("ben17")] = { model = "ben17", name = "bentley continental 2017", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("benzsl63")] = { model = "benzsl63", name = "mercedes-benz s l63", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("choilambo")] = { model = "choilambo", name = "lamborguini huracan neon edition", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("crownbp")] = { model = "crownbp", name = "lexus neon edition", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("dvc63darwin")] = { model = "dvc63darwin", name = "mercedes-amg c63 kit", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("fk8")] = { model = "fk8", name = "honda civic type", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("g700brabusretuned")] = { model = "g700brabusretuned", name = "brabus g700", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("gt2rs")] = { model = "gt2rs", name = "porsche gt2 rs", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("gt3hycade")] = { model = "gt3hycade", name = "porsche gt3", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("hycadeurus")] = { model = "hycadeurus", name = "lamborguini urus hycade", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("m4speedhunter")] = { model = "m4speedhunter", name = "bmw m4 kit", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("mk4hycade")] = { model = "mk4hycade", name = "supra mk4 especial neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("q8hycade")] = { model = "q8hycade", name = "audi q8 hycade", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rmodgt63")] = { model = "rmodgt63", name = "mercedes-amg gt 63", price = 874123, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("killerhwak")] = { model = "killerhwak", name = "jeep cherokee killer", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("scubieblob")] = { model = "scubieblob", name = "subaru impreza wrx", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("variszupra")] = { model = "variszupra", name = "skyline supra mod", price = 320145, type = "exclusive", trunk = 60, banned = false },


-------------- hype
[GetHashKey("amgone")] = { model = "amgone", name = "amg one", price = 3000000, type = "exclusive", trunk = 60, banned = false }, 
[GetHashKey("17mansorypnmr")] = { model = "17mansorypnmr", name = "porsche panamera 2017 mansory", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("21sierra")] = { model = "21sierra", name = "gmc sierra 2021 tuning", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("74civrswb")] = { model = "74civrswb", name = "74civrswb", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("nitro9")] = { model = "nitro9", name = "ferrari 488 especial neon edition pink", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("nitro10")] = { model = "nitro10", name = "volvo s90 polestar neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("amggtbs")] = { model = "amggtbs", name = "mercedes-amg gt black series", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("rapger19")] = { model = "rapger19", name = "ford ranger 2019", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("benze55")] = { model = "benze55", name = "mercedes-benz e55", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("boss429")] = { model = "boss429", name = "ford mustang boss 429", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("nitro4")] = { model = "nitro4", name = "brabus g700 neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("brz13varis")] = { model = "brz13varis", name = "subaru brz 2013", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("nitro8")] = { model = "nitro8", name = "corvette stingray neon edition", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("c8p1")] = { model = "c8p1", name = "corvette stingray", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("cayennemecqq")] = { model = "cayennemecqq", name = "porsche cayenne", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("charger21")] = { model = "charger21", name = "dodge charger 2021", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("chargerf8")] = { model = "chargerf8", name = "dodge charger especial velozes e furiosos 8", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("chironsupersport22")] = { model = "chironsupersport22", name = "bugatti chiron supersport 2022", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("dawnonyx")] = { model = "dawnonyx", name = "rolls royce wraith", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("demon")] = { model = "demon", name = "dodge challenger srt demon", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("e39touring")] = { model = "e39touring", name = "bmw e39 touring", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("f812")] = { model = "f812", name = "ferrari 812", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("fgt")] = { model = "fgt", name = "ford gt antigo", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("g900przemo6x6")] = { model = "g900przemo6x6", name = "mercedes brabus g900 6x6", price = 320145, type = "exclusive", trunk = 150, banned = false },
[GetHashKey("gcram1500")] = { model = "gcram1500", name = "ram 1500", price = 320145, type = "exclusive", trunk = 120, banned = false },
[GetHashKey("gtr50")] = { model = "gtr50", name = "nissan gtr50", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("gxone")] = { model = "gxone", name = "koegnisseg one 1", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("jes21")] = { model = "jes21", name = "koegnisseg jesko 2021", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("lbperfs")] = { model = "lbperfs", name = "lamborguini huracan lb", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("m3e36")] = { model = "m3e36", name = "bmw m3 e36", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("nitro7")] = { model = "nitro7", name = "bmw m neon edition pink", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("m5e60")] = { model = "m5e60", name = "bmw m5", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("mach1")] = { model = "mach1", name = "ford mustang mach1", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("manssupersnake")] = { model = "manssupersnake", name = "ford mustang supersnake", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("mansurus")] = { model = "mansurus", name = "lamborguini urus mansory", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("models")] = { model = "models", name = "tesla model s", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("nsx17")] = { model = "nsx17", name = "honda nsx 2017", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("ocnetrongt")] = { model = "ocnetrongt", name = "audi e-tron gt", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("panamturs21")] = { model = "panamturs21", name = "porsche panamera 2021", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("r8beastedit")] = { model = "r8beastedit", name = "audi r8 lbtw", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("nitro5")] = { model = "nitro5", name = "nissan gtr50 neon edition", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("ramtrx6x6")] = { model = "ramtrx6x6", name = "ram 1500 trx 6x6", price = 320145, type = "exclusive", trunk = 150, banned = false },
[GetHashKey("rmodbentley1")] = { model = "rmodbentley1", name = "bentley continental", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rmodfordgt")] = { model = "rmodfordgt", name = "ford mustang gt ", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("rmodmustang")] = { model = "rmodmustang", name = "ford mustang gt novo", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("rmodr50")] = { model = "rmodr50", name = "volkswagen touareg", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("rocket")] = { model = "rocket", name = "mercedes-amg gt 63", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rrwraith")] = { model = "rrwraith", name = "rolls royce wraith", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("rs7beast")] = { model = "rs7beast", name = "audi rs7 beast", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("singer")] = { model = "singer", name = "porsche 911 antiga", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("specialtf")] = { model = "specialtf", name = "volkswagen jetta antigo", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("taycan")] = { model = "taycan", name = "porsche taycan", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("taycanani")] = { model = "taycanani", name = "porsche taycan turbo s", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("vanzur")] = { model = "vanzur", name = "lamborguini urus mansory edition", price = 320145, type = "exclusive", trunk = 80, banned = false },




-----motos
[GetHashKey("aerox155")] = { model = "aerox155", name = "aerox155", price = 920145, type = "motos", trunk = 40, banned = false },
[GetHashKey("cb650r")] = { model = "cb650r", name = "cb650r", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("flhxs_streetglide_special18")] = { model = "flhxs_streetglide_special18", name = "flhxs_streetglide_special18", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("claw")] = { model = "claw", name = "claw", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("hexerz2")] = { model = "hexerz2", name = "hexerz2", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("km1000rr")] = { model = "km1000rr", name = "km1000rr", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("lpchopper2")] = { model = "lpchopper2", name = "lpchopper2", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("ninjah2")] = { model = "ninjah2", name = "ninjah2", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("rd")] = { model = "rd", name = "rd", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("yzfr6")] = { model = "yzfr6", name = "yzfr6", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("rr01")] = { model = "rr01", name = "rr01", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("yzfr7")] = { model = "yzfr7", name = "yzfr7", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("z8r")] = { model = "z8r", name = "z8r", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("zx10r")] = { model = "zx10r", name = "zx10r", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("zx6r")] = { model = "zx6r", name = "zx6r", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("wheelchair")] = { model = "wheelchair", name = "cadeira de rodas", price = 2000, type = "exclusive", trunk = 10, banned = false }, 
[GetHashKey("mv2019")] = { model = "mv2019", name = "mv2019", price = 320145, type = "exclusive", trunk = 40, banned = false },

[GetHashKey("r1200gspzcustom")] = { model = "r1200gspzcustom", name = "R1200GS", price = 320145, type = "exclusive", trunk = 40, banned = false },

-----plus+
[GetHashKey("fnfmits")] = { model = "fnfmits", name = "eclipse 1995", price = 799000, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("18velar")] = { model = "18velar", name = "land rover velar", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("2f2fgts")] = { model = "2f2fgts", name = "spyder gts", price = 702640, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("22arturac")] = { model = "22arturac", name = "mclaren artura 2022", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("812mnsry")] = { model = "812mnsry", name = "ferrari 812 mansory", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("agerars")] = { model = "agerars", name = "koegnisegg agera rs", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("2ncsx7")] = { model = "2ncsx7", name = "bmw x7 premium edition", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("chironspeedhunter")] = { model = "chironspeedhunter", name = "buggati chiron speed hunter", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("fpaceprior")] = { model = "fpaceprior", name = "jaguard f-pace prior", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("gemera")] = { model = "gemera", name = "koegnisegg gemera", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("huracanpriorbeast")] = { model = "huracanpriorbeast", name = "lamborguini huracan prior", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("impronta4")] = { model = "impronta4", name = "impronta4", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("kgjoker")] = { model = "kgjoker", name = "dodge charger edition coringa", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("m135iwb")] = { model = "m135iwb", name = "bmw m135i", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("machewb")] = { model = "machewb", name = "mustang mach-e", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("manhartx7")] = { model = "manhartx7", name = "bmw x7 especial edition", price = 320145, type = "exclusive", trunk = 80, banned = false },
[GetHashKey("maybach")] = { model = "maybach", name = "mercedes maybach", price = 320145, type = "exclusive", trunk = 100, banned = false },
[GetHashKey("modelx")] = { model = "modelx", name = "tesla model x", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("neonp1")] = { model = "neonp1", name = "mclaren p1 gtr", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("nismo20")] = { model = "nismo20", name = "nissan gtr nismo 2020", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("por911gt3")] = { model = "por911gt3", name = "porsche 911 gt3", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("porche911speedhunter")] = { model = "porche911speedhunter", name = "porsche 911 speedhunter", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("rmodcharger")] = { model = "rmodcharger", name = "dodge charger srt", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rmodp1gtr")] = { model = "rmodp1gtr", name = "mclaren p1 gtr", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("rmodpagani")] = { model = "rmodpagani", name = "pagani huayra", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("rmodzl1")] = { model = "rmodzl1", name = "camaro zl1", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("rr21shelbystreet")] = { model = "rr21shelbystreet", name = "ford-150 shelby", price = 320145, type = "exclusive", trunk = 150, banned = false },
[GetHashKey("rroctane")] = { model = "rroctane", name = "octane", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("rs5mans")] = { model = "rs5mans", name = "audi rs5 mansory", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rs7c8beast")] = { model = "rs7c8beast", name = "audi rs7 c8 beast", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rs7c821")] = { model = "rs7c821", name = "audi rs7 c8 2021", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("s15")] = { model = "s15", name = "nissan silvia s15", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("s63coupe")] = { model = "s63coupe", name = "mercedes-amg s63 coupe", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("sex6")] = { model = "sex6", name = "lamborguini sesto elemento", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("silviagd")] = { model = "silviagd", name = "nissan silvia", price = 320145, type = "exclusive", trunk = 50, banned = false },
[GetHashKey("terzo")] = { model = "terzo", name = "lamborguini terzo millenio", price = 320145, type = "exclusive", trunk = 40, banned = false },
[GetHashKey("tesladesignx")] = { model = "tesladesignx", name = "tesla model s", price = 320145, type = "exclusive", trunk = 60, banned = false },
[GetHashKey("trx")] = { model = "trx", name = "dodge ram trx", price = 320145, type = "exclusive", trunk = 120, banned = false },
[GetHashKey("urusbeastedit")] = { model = "urusbeastedit", name = "lamborguini urus beast", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("vanzhycade")] = { model = "vanzhycade", name = "dodge challenger srt hycade", price = 320145, type = "exclusive", trunk = 70, banned = false },

[GetHashKey("ckbmwm4offwhite")] = { model = "ckbmwm4offwhite", name = "Jaguar", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("fanpounder")] = { model = "fanpounder", name = "Pounder", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("gta5rp_veh_gtr33")] = { model = "gta5rp_veh_gtr33", name = "Nissan GTR 33", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("hyundaiveloster")] = { model = "hyundaiveloster", name = "Veloster", price = 320145, type = "service", trunk = 70, banned = false },
[GetHashKey("ikx3mc2021")] = { model = "ikx3mc2021", name = "Ferrari 2021", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("lc500")] = { model = "lc500", name = "lc500", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("manhartx7")] = { model = "manhartx7", name = "BMW X7", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("polestar1")] = { model = "polestar1", name = "Polestar", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rmodm4")] = { model = "rmodm4", name = "BMW NFS", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rmodx6")] = { model = "rmodx6", name = "BMW X6", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("TTSTO")] = { model = "TTSTO", name = "lambo", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("f355")] = { model = "f355", name = "Ferrari F35", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rrformulawide")] = { model = "rrformulawide", name = "P1", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("gc_01integ")] = { model = "gc_01integ", name = "GTR R32", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("theutopiad")] = { model = "theutopiad", name = "Bugatti", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("godz300utehc")] = { model = "godz300utehc", name = "Montana", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("i7x")] = { model = "i7x", name = "I7x", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("bmci")] = { model = "bmci", name = "BMW", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("ddc69maro")] = { model = "ddc69maro", name = "Camaro Antigo", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("fxxevo")] = { model = "fxxevo", name = "Fox Evo", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("kiasor21")] = { model = "kiasor21", name = "Kia Sorento", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("gt63mt")] = { model = "gt63mt", name = "GT 63MT", price = 320145, type = "exclusive", trunk = 70, banned = false },

-----------------------------------CARROS SOM
[GetHashKey("amarokm")] = { model = "amarokm", name = "Amarok SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("bs_babyftoro")] = { model = "bs_babyftoro", name = "Baby Toro SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("bora")] = { model = "bora", name = "Bora SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("carreta")] = { model = "carreta", name = "Carreta", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("cbm")] = { model = "cbm", name = "Carreta Automotiva", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("celtach")] = { model = "celtach", name = "Celta SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("fox")] = { model = "fox", name = "Fox SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("ftoro")] = { model = "ftoro", name = "Toro SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("gcram1500")] = { model = "gcram1500", name = "GC RAM 1500 SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("golfrebaixado")] = { model = "golfrebaixado", name = "Golf Rebaixado SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("kadett")] = { model = "kadett", name = "Kadett SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("nka45")] = { model = "nka45", name = "A45 SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("paredao2")] = { model = "paredao2", name = "paredao2", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("rrab")] = { model = "rrab", name = "Ranger Rove SON", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("s10black")] = { model = "s10black", name = "S10Black SOM", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("tremetreme")] = { model = "tremetreme", name = "Reboque tremetreme", price = 320145, type = "exclusive", trunk = 70, banned = false },


-----------------------------------OuTROS

[GetHashKey("Ikrownrcf")] = { model = "Ikrownrcf", name = "Nissan R35 Stich", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("dog_r1250baby")] = { model = "dog_r1250baby", name = "dog_R1250baby", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("minir34")] = { model = "minir34", name = "MiniR34", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("20xb7")] = { model = "20xb7", name = "BMW X7 Blindada", price = 320145, type = "exclusive", trunk = 70, banned = false },
[GetHashKey("fxiaop")] = { model = "fxiaop", name = "Drone", price = 1320145, type = "exclusive", trunk = 30, banned = false },

[GetHashKey("killeri8")] = { model = "killeri8", name = "BMW I8 Animated", price = 1320145, type = "exclusive", trunk = 30, banned = false },
[GetHashKey("g63sam")] = { model = "g63sam", name = "Limosine G36 12 LUGARES", price = 1320145, type = "exclusive", trunk = 30, banned = false },



---------------------------------------POLICIA FEDERAL

[GetHashKey("bcs_aguiapf")] = { model = "bcs_aguiapf", name = "Aguia PF", price = 1320145, type = "service", trunk = 30, banned = false },
[GetHashKey("bcs_blindadopf")] = { model = "bcs_blindadopf", name = "Blindado PF", price = 1320145, type = "service", trunk = 30, banned = false },
[GetHashKey("bcs_camaropf")] = { model = "bcs_camaropf", name = "Camaro PF", price = 1320145, type = "service", trunk = 30, banned = false },
[GetHashKey("bcs_corollapf")] = { model = "bcs_corollapf", name = "Corolla PF", price = 1320145, type = "service", trunk = 30, banned = false },
[GetHashKey("bcs_l200pf")] = { model = "bcs_l200pf", name = "L200 PF", price = 1320145, type = "service", trunk = 30, banned = false },
[GetHashKey("bcs_rampf")] = { model = "bcs_rampf", name = "DodRam PF", price = 1320145, type = "service", trunk = 30, banned = false },
[GetHashKey("bcs_robopf")] = { model = "bcs_robopf", name = "R1200 PF", price = 1320145, type = "service", trunk = 30, banned = false },
[GetHashKey("bcs_trailpf")] = { model = "bcs_trailpf", name = "Trail PF", price = 1320145, type = "service", trunk = 30, banned = false }




} 

Garages.List = {
    [1] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(213.91,-808.5,31.02),
        spawnCoords = {
            vec4(221.66,-804.08,30.26,246.48),
        },
    },
    
    [2] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-349.02,-874.66,31.31),
        spawnCoords = {
            vec4(-343.87,-875.67,30.4,168.39),
        },
    },

    [3] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(100.69,-1073.32,29.37),
        spawnCoords = {
            vec4(111.59,-1080.84,28.51,339.03),
        },
    },

    [4] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(713.62,-977.07,24.13),
        spawnCoords = {
            vec4(711.17,-979.56,23.44,230.04),
        },
    },

   [5] = {
       type = "public", -- public / service [ tipo da garagem ]
       permiss = nil, -- permissao
       blip = true, -- blip no mapa
       
       coords = vec3(275.36,-345.07,45.17),
       spawnCoords = {
           vec4(283.02,-342.35,44.25,248.48),
       },
   },

    [6] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-692.17,-989.4,20.39),
        spawnCoords = {
            vec4(-701.96,-985.7,19.71,301.01),
        },
    },

    [7] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-1207.51,-1450.23,4.38),
        spawnCoords = {
            vec4(-1205.88,-1443.08,3.71,304.3),
        },
    },

    [8] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-340.95,266.52,85.68),
        spawnCoords = {
            vec4(-348.88,275.98,84.38,271.16),
        },
    },

    [9] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-2030.74,-465.53,11.59),
        spawnCoords = {
            vec4(-2023.95,-471.71,10.73,138.56),
        },
    },

    [10] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-2200.99,4272.57,48.41),
        spawnCoords = {
            vec4(-2194.86,4266.99,47.82,151.69),
        },
    },

    [11] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-773.26,5597.45,33.6),
        spawnCoords = {
            vec4(-771.9,5578.2,32.81,89.73),
        },
    },

    [12] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-102.44,6343.35,31.58),
        spawnCoords = {
            vec4(-97.31,6340.91,30.82,226.94),
        },
    },

    [13] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1959.02,3761.23,32.2),
        spawnCoords = {
            vec4(1956.41,3767.5,31.53,35.02),
        },
    },

    [14] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(317.11,2622.94,44.45),
        spawnCoords = {
            vec4(335.45,2621.81,43.83,25.05),
        },
    },

    [15] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1852.78,2594.67,45.66),
        spawnCoords = {
            vec4(1860.39,2593.59,44.99,268.84),
        },
    },

    [16] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(596.75,91.18,93.13),
        spawnCoords = {
            vec4(600.41,97.79,92.24,249.04),
        },
    },

    [17] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1154.3,-454.85,66.98),
        spawnCoords = {
            vec4(1155.2,-462.59,66.14,165.14),
        },
    },

    [18] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1163.94,-1537.42,34.85),
        spawnCoords = {
            vec4(1168.21,-1546.2,34.02,271.04),
        },
    },

    [19] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(931.94,-2007.99,30.25),
        spawnCoords = {
            vec4(934.55,-2003.53,29.45,175.12),
        },
    },

    [20] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-66.77,-1840.36,26.77),
        spawnCoords = {
            vec4(-62.24,-1839.53,26.02,319.88),
        },
    },

    [21] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-39.96,-1117.71,26.44),
        spawnCoords = {
            vec4(-47.97,-1115.94,25.76,1.12),
        },
    },

    [22] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(56.0,-876.43,30.65),
        spawnCoords = {
            vec4(47.25,-872.0,29.77,161.55),
        },
    },

    [23] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-337.08,1166.33,324.75),
        spawnCoords = {
            vec4(-343.91,1168.11,324.36,111.51),
        },
    },

    [24] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-1184.17,-1509.71,4.65),
        spawnCoords = {
            vec4(-1183.55,-1495.91,3.71,125.05),
        },
    },

    [25] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-1349.45,125.42,56.23),
        spawnCoords = {
            vec4(-1356.09,133.76,55.59,274.89),
        },
    },

    [26] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-2279.1,402.61,174.6),
        spawnCoords = {
            vec4(-2284.66,406.49,173.79,126.2),
        },
    },

    [27] = {
        type = "public", -- public / service [ tipo da garagem ]
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(164.89,1695.6,227.398),
        spawnCoords = {
            vector4(173.31,1688.46,227.93,204.33),
        },
    },

    [28] = {
        type = "service", -- public / service [ tipo da garagem ] 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(164.89,1695.6,227.398),
        spawnCoords = {
            vector4(173.31,1688.46,227.93,204.33),
        },
    },

    [29] = {
        type = "service", -- public / service [ tipo da garagem ] 
        permiss = "perm.policia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-918.04,-2052.58,9.41),
        spawnCoords = {
            vector4(-912.76,-2049.63,9.3,224.54),
        },
    
        vehicles = {
            {vehicle = 'dusterrp1'},
            {vehicle = 'dusterrp2'},

        },
    },

    [30] = {
        type = "service", -- public / service [ tipo da garagem ] -- Helicoptero
        permiss = "perm.policiaM", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1031.9,-2291.9,31.81),
        spawnCoords = {
            vector4(1025.06,-2299.97,31.76,10.72),
        },
    
        vehicles = {
            {vehicle = 'fenixpmerj'},
            {vehicle = 'hueypmerj'}, -- 
        },
    },

    [31] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.bope", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(306.18,-330.01,46.39),
        spawnCoords = {
           vector4(300.31,-340.12,46.34,157.73),
        },
    
        vehicles = {
            {vehicle = 'hiluxbope'},
            {vehicle = 'rangerbope'}, --
            {vehicle = 'rangerbopesm'}, -- 
            {vehicle = 'rangeriespp'}, -- 
            {vehicle = 'hiluxrecom'}, -- 
            {vehicle = 'l200choquesm'}, -- 
            {vehicle = 'l200coe'}, -- 
            {vehicle = 'rangerrecom'}, -- 
            {vehicle = 'rangerrecomg'}, -- 
            {vehicle = 's10recom'}, -- 
            {vehicle = 's10recom16'}, -- 
            {vehicle = 'sw4recom'}, -- 
            {vehicle = 'sw4recom24'}, -- 
            {vehicle = 'sw4recom24p'}, -- 
            {vehicle = 'tigergetem'}, --  
            {vehicle = 'blindadobope'}, --  
            {vehicle = 'urutu'}, -- 

        },
    },

    [32] = {
        type = "service", -- public / service [ tipo da garagem ] -- -792.23,-2568.44,13.95
        permiss = "perm.civil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(846.23,147.28,82.29),
        spawnCoords = {
            vector4(vector4(838.87,144.1,82.29,324.49)),
        },
    
        vehicles = {
            {vehicle = 'corollapcerj'},
            {vehicle = 's10pcerj'}, --
            {vehicle = 'rangerpcerj'}, -- 
            {vehicle = 'versapcerj'}, -- sprinterpcerj
            {vehicle = 'rangercore'}, -- versapcerj
            {vehicle = 'rangercorec'}, -- 
            {vehicle = 'rangerpcerj'}, -- 
            {vehicle = 'rangerpcerj22'}, -- 
            {vehicle = 'sprintergesar'}, -- 
            {vehicle = 'blindadocore'}, -- 
            {vehicle = 'blindadodre'}, -- 
            {vehicle = 'blindadodrfc'}, -- 

        },
    },
    [33] = {
        type = "public", -- public / service [ tipo da garagem ] -- 1139.03,-183.12,70.36
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-792.23,-2568.44,13.95),
        spawnCoords = {
            vector4(-794.05,-2564.63,13.8,330.89),
        },
    },
    [34] = {
        type = "service", -- public / service [ tipo da garagem ] -- -463.43,-350.51,34.49
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1146.81,-187.45,70.36),
        spawnCoords = {
            vector4(1144.99,-183.07,70.26,147.31),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },
    [35] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1139.03,-183.12,70.36),
        spawnCoords = {
            vector4(1144.99,-183.07,70.26,147.31),
        },
    },
    [36] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.hospital", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-485.05,-978.56,23.8),
        spawnCoords = {
            vector4(-485.87,-953.42,23.56,181.57),
            vector4(-490.26,-952.49,23.56,176.04),
        },
    
        vehicles = {
            {vehicle = 'Wrgle53'},
            {vehicle = 'WRr1200'},
            {vehicle = 'Wrasprinter'},
            {vehicle = 'Wrasprinter'},

        },
    },
    [37] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-461.27,-326.83,34.498),
        spawnCoords = {
            vector4(-465.92,-322.18,34.36,20.24),
        },
    },
    [38] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1177.05,-890.83,13.8),
        spawnCoords = {
            vector4(-1165.18,-887.96,14.14,118.62),
        },
    
        vehicles = {
            {vehicle = '150ifod'},

        },
    },
    [39] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(894.99,-183.37,73.73),
        spawnCoords = {
            vector4(897.13,-183.87,73.75,243.08),
        },
    
        vehicles = {
            {vehicle = 'taxi'},

        },
    },

    
    [40] = {
        type = "service", -- public / service [ tipo da garagem ] -- helicopteros
        permiss = "perm.civil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(846.23,147.28,82.29),
        spawnCoords = {
            vector4(838.87,144.1,82.29,324.49),
        },
    
        vehicles = {
            {vehicle = 'falcaopcerj'},
            {vehicle = 'hueypcerj'}, --

        },
    },

    [41] = {
        type = "service", -- public / service [ tipo da garagem ] -- helicopteros
        permiss = "perm.mecanico", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(958.54,-1036.11,41.03),
        spawnCoords = {
            vector4(965.53,-1041.82,41.27,266.77),
        },
    
        vehicles = {
            {vehicle = 'bennys1200'},
            {vehicle = 'bennysraptor'}, --
            {vehicle = 'bennysscania'}, --

        },
    },

    [42] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-960.3,-1471.31,5.17),
        spawnCoords = {
            vector4(-967.09,-1473.86,5.02,110.03),
        },
    },
    [43] = {
        type = "service", -- public / service [ tipo da garagem ] -- 1360.69,-2086.33,52.0
        permiss = "perm.yakuza", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-956.32,-1487.31,5.16),
        spawnCoords = {
            vector4(-961.87,-1488.22,5.0,107.43),
        },
    
        vehicles = {
            {vehicle = 'tiger800'},
            {vehicle = 'q820'},
            {vehicle = 'mule'},

        },
    },

    [44] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1360.69,-2086.33,52.0),
        spawnCoords = {
            vector4(1365.67,-2085.04,52.0,313.75),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    
    [45] = {
        type = "public", -- public / service [ tipo da garagem ] -- -1521.19,80.54,56.72
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1363.84,-2090.05,52.0),
        spawnCoords = {
            vector4(vector4(1365.22,-2085.98,52.0,306.29)),
        },
    },

    [46] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1521.19,80.54,56.72),
        spawnCoords = {
            vector4(-1523.64,85.43,56.48,268.2),
        },
    },

    [47] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1531.38,79.4,56.73),
        spawnCoords = {
            vector4(-1523.64,85.43,56.48,268.2),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [48] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(961.47,-122.69,74.34),
        spawnCoords = {
            vector4(965.64,-127.66,74.34,148.8),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },
    [49] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(974.3,-136.57,74.17),
        spawnCoords = {
            vector4(965.64,-127.66,74.34,148.8),
        },
    },

    [50] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(191.19,695.53,209.06),
        spawnCoords = {
            vector4(185.45,694.98,209.06,356.0),
        },
    },
    

    [51] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(189.42,709.69,209.06),
        spawnCoords = {
            vector4(185.89,707.94,209.06,184.19),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    
    [52] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(906.32,351.97,112.46),
        spawnCoords = {
            vector4(902.92,354.69,112.52,315.92),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [53] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(921.59,366.27,112.46),
        spawnCoords = {
            vector4(918.06,369.0,112.52,320.3),
        },
    },

    [54] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1416.66,1115.62,114.83),
        spawnCoords = {
            vector4(1416.8,1118.56,114.83,94.95),
        },
    },

    [55] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1398.32,1115.4,114.83),
        spawnCoords = {
            vector4(1398.44,1118.13,114.83,89.36),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [56] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2998.25,2920.4,78.6),
        spawnCoords = {
            vector4(2998.48,2918.97,78.47,49.62),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [57] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(3008.3,2912.52,78.91),
        spawnCoords = {
            vector4(3007.42,2911.07,78.81,227.1),
        },
    },

    [58] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1728.9,4490.97,42.44),
        spawnCoords = {
            vector4(1724.21,4491.51,42.44,0.09),
        },
    },

    [59] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1729.43,4505.36,42.44),
        spawnCoords = {
            vector4(1724.35,4505.06,42.44,180.83),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [60] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1943.27,4488.12,34.63),
        spawnCoords = {
            vector4(-1948.37,4485.04,34.63,41.45),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    
    [61] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1951.72,4498.28,34.63),
        spawnCoords = {
            vector4(-1955.94,4494.74,34.63,222.67),
        },
    },

    [62] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(381.13,-10.82,82.99),
        spawnCoords = {
            vector4(380.14,-4.95,82.99,129.62),
        },
    },
    
    [63] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1695.19,561.2,154.36
        permiss = "perm.mafia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(376.09,-13.95,82.99),
        spawnCoords = {
            vector4(372.61,-12.68,82.99,34.89),
        },
    
        vehicles = {
            {vehicle = 'q820'},
            {vehicle = 'tiger800'},
            {vehicle = 'mule'},

        },
    },

    [64] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1683.87,574.44,154.36
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1695.19,561.2,154.36),
        spawnCoords = {
            vector4(-1691.73,560.67,154.36,316.16),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [65] = {
        type = "public", -- public / service [ tipo da garagem ] -- 147.95,-1294.8,29.64
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1683.85,574.44,154.36),
        spawnCoords = {
            vector4(-1682.37,570.74,154.36,135.14),
        },
    },

    [66] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(147.95,-1294.8,29.64),
        spawnCoords = {
            vector4(149.21,-1300.47,28.98,122.79),
        },
    },

    [67] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(153.39,-1314.21,29.2),
        spawnCoords = {
            vector4(151.05,-1318.68,28.96,237.48),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },
    
    [68] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1391.78,-581.76,30.09),
        spawnCoords = {
            vector4(-1396.43,-584.07,30.14,127.56),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    
    [69] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1400.09,-586.03,30.19),
        spawnCoords = {
            vector4(-1405.88,-589.6,30.25,114.86),
        },
    },
    [70] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-819.49,180.93,71.88),
        spawnCoords = {
            vector4(-823.01,182.47,71.81,138.41),
        },
    },
    [71] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.russia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-812.66,163.64,71.54),
        spawnCoords = {
            vector4(-823.01,182.47,71.81,138.41),
        },
    
        vehicles = {
            {vehicle = 'tiger800'},
            {vehicle = 'q820'},
            {vehicle = 'mule'},

        },
    },
    [72] = {
        type = "public", -- public / service [ tipo da garagem ] -- -565.72,305.66,83.17
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2951.42,2753.52,43.41),
        spawnCoords = {
            vector4(2951.79,2748.74,43.49,140.0),
        },
    },

    [73] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-565.72,305.66,83.17),
        spawnCoords = {
            vector4(-559.06,302.48,83.2,260.37),
        },
    },

    [74] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-565.46,298.44,83.07),
        spawnCoords = {
            vector4(-559.06,302.48,83.2,260.37),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [75] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.helicoptero", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-754.15,-1467.25,4.99),
        spawnCoords = {
            vector4(-745.7,-1467.74,5.0,227.49),
        },
    
        vehicles = {
            {vehicle = 'volatus'},
            {vehicle = 'supervolito'},

        },
    },

    [76] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(126.31,6628.15,31.9),
        spawnCoords = {
            vector4(132.31,6620.17,31.76,207.16),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [77] = {
        type = "public", -- public / service [ tipo da garagem ] -- 983.95,-1008.29,42.01 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(113.45,6615.64,31.86),
        spawnCoords = {
            vector4(116.67,6612.45,31.88,218.12),
        },
    },
    [78] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(983.95,-1008.29,42.01),
        spawnCoords = {
            vector4(980.33,-1014.9,41.0,273.05),
        },
    },
    [79] = {
        type = "public", -- public / service [ tipo da garagem ] -- -1860.07,321.06,88.71
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1615.2,-2610.48,53.82),
        spawnCoords = {
            vector4(1603.02,-2601.56,53.43,88.13),
        },
    },

    [80] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-255.12,-712.41,33.58),
        spawnCoords = {
            vector4(-245.6,-715.25,33.41,156.31),
        },
    },

   [81] = {
       type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
       permiss = "perm.helicoptero", -- permissao
       blip = false, -- blip no mapa
       
       coords = vec3(-754.15,-1467.25,4.99),
       spawnCoords = {
           vector4(-277.8,-726.31,131.8,67.28),
       },
   
       vehicles = {
           {vehicle = 'volatus'},
           {vehicle = 'supervolito'},

       },
   },

    [82] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1669.26,-219.38,55.12),
        spawnCoords = {
            vector4(-1665.57,-220.47,55.0,250.28),
        },
    },

    [83] = {
        type = "service", -- public / service [ tipo da garagem ] 
        permiss = "perm.prf", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2621.65,5313.17,47.53),
        spawnCoords = {
            vector4(2619.49,5309.03,47.4,96.42),
        },
    
        vehicles = {
            {vehicle = 'rangerprf'},
            {vehicle = 'rangergrr'},
            {vehicle = 'rangerprfblind'},
            {vehicle = 'trailblazerprf'},
            {vehicle = 'trailblazer24prf'},
            {vehicle = 'trailblazergrr'},   
             {vehicle = 'prf1200'},

        },
    },

    [84] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2630.75,5339.41,47.26),
        spawnCoords = {
            vector4(2627.28,5338.54,47.3,108.07),
        },
    },

    [85] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1211.96,-1750.41,4.6),
        spawnCoords = {
            vector4(-1215.16,-1754.32,4.5,255.24),
        },
    },

    [86] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1209.07,-1760.55,4.6),
        spawnCoords = {
            vector4(-1198.65,-1757.2,4.4,279.63),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [87] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.helicoptero", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-275.41,-731.94,130.43),
        spawnCoords = {
            vector4(-277.79,-726.44,131.14,152.27),
        },
    
        vehicles = {
            {vehicle = 'volatus'},
            {vehicle = 'supervolito'},

        },
    },
    
    [88] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-303.44,-726.72,28.02),
        spawnCoords = {
            vector4(-308.58,-731.63,27.36,70.57),
        },
    },

    [89] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2568.18,3733.32,13.41),
        spawnCoords = {
            vector4(-2563.16,3736.11,13.5,261.79),
        },
    },

    [90] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2545.04,3738.35,13.11),
        spawnCoords = {
            vector4(-2536.6,3735.83,13.09,259.3),
        },
    },

    [91] = {
        type = "public", -- public / service [ tipo da garagem ] -- 2621.89,5312.48,47.53
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1353.42,-2439.52,50.92),
        spawnCoords = {
            vector4(1354.26,-2445.34,50.33,149.72),
        },
    },

    [92] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1353.47,-2456.18,49.59),
        spawnCoords = {
            vector4(1346.85,-2463.73,48.97,147.37),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },

    [93] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2116.42,3973.18,36.33),
        spawnCoords = {
            vector4(2116.34,3982.37,36.23,337.69),
        },
    
        vehicles = {
            {vehicle = 'titan160'},
            {vehicle = 'premier'},

        },
    },
    [94] = {
        type = "public", -- public / service [ tipo da garagem ] -- 923.45,464.75,121.23
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2105.41,3965.75,36.33),
        spawnCoords = {
            vector4(2099.77,3971.27,35.55,69.6),
        },
    },
    [95] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.ilegal", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1391.78,-581.76,30.09),
        spawnCoords = {
            vector4(912.22,465.87,120.83,92.83),
        },
    
        vehicles = {
            {vehicle = 'volatus'},

        },
    },

    [96] = {
        type = "service", -- public / service [ tipo da garagem ] -- -2593.02,1927.75,167.3
        permiss = "perm.mansaoronnald", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1544.99,-2570.07,55.59),
        spawnCoords = {
            vector4(1544.52,-2564.59,56.23,352.58),
        },
    
        vehicles = {
            {vehicle = 'volatus'},
            {vehicle = 'supervolito'},

        },
    },

    [97] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2591.86,1927.92,167.3),
        spawnCoords = {
            vector4(-2587.87,1931.16,167.3,259.15),
        },
    },

    [98] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.civil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(843.59,141.87,82.29),
        spawnCoords = {
            vector4(834.27,151.63,82.29,51.63),
        },
    
        vehicles = {
            {vehicle = 'corollapcerj'},
            {vehicle = 'falcaopcerj'},
            {vehicle = 'rangerpcerj'},
            {vehicle = 'rangerpcerj22'},
            {vehicle = 'sprinterpcerj'},
            {vehicle = 'rangerpcerj'},
            {vehicle = 'versapcerj'},
            {vehicle = 's10pcerj'},

        },
    },

    [99] = {
        type = "service", -- public / service [ tipo da garagem ] -- 863.24,346.29,127.42
        permiss = "perm.bope", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(277.89,-348.3,53.119),
        spawnCoords = {
            vector4(287.06,-344.01,53.25,267.82),
        },
    
        vehicles = {
            {vehicle = 'hueypmerj'},

        },
    },

    
    [100] = {
        type = "service", -- public / service [ tipo da garagem ] -- -505.05,5017.32,153.55
        permiss = "perm.franca", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(863.24,346.29,127.42),
        spawnCoords = {
            vector4(857.73,338.46,127.47,137.23),
        },
    
        vehicles = {
            {vehicle = 'volatus'},

        },
    },

    [101] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.mansaodudu", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-505.05,5017.32,153.55),
        spawnCoords = {
            vector4(-503.44,5009.61,153.57,17.39),
        },
    
        vehicles = {
            {vehicle = 'volatus'},

        },
    },

    [102] = {
        type = "public", -- public / service [ tipo da garagem ] -- -464.46,-286.9,78.17
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-530.03,4989.97,153.72),
        spawnCoords = {
            vector4(-525.87,4985.53,153.91,169.06),
        },
    },
    [103] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.hospital", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-459.71,-1030.34,38.31),
        spawnCoords = {
            vector4(-453.9,-1029.53,38.4,174.93),
        },
    
        vehicles = {
            {vehicle = 'as350samu'},

        },
    },

    [104] = {
        type = "public", -- public / service [ tipo da garagem ] -- 419.15,6537.22,27.72
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1744.46,4965.25,46.42),
        spawnCoords = {
            vector4(1745.11,4961.21,46.03,214.6),
        },
    },

    [105] = {
        type = "public", -- public / service [ tipo da garagem ] -- -828.83,276.37,86.36
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(419.15,6537.22,27.72),
        spawnCoords = {
            vector4(424.62,6539.93,27.68,341.56),
        },
    },

    [106] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-828.83,276.37,86.36),
        spawnCoords = {
            vector4(-822.34,283.4,86.25,253.52),
        },
    },

    [107] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1603.57,-1050.26,13.03),
        spawnCoords = {
            vector4(-1599.05,-1044.03,13.02,3.23),
        },
    
        vehicles = {
            {vehicle = 'cavaloautomotivo'},

        },
    },

    [108] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-938.63,-2113.95,9.79),
        spawnCoords = {
            vector4(-941.25,-2107.74,9.3,48.31),
        },
    },

    
}

--  