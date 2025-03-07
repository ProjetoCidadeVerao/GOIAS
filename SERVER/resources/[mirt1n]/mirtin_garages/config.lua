 Garages = {}

Garages.Main = {
    dir = "DIR", -- DIRETORIO DAS IMAGENS DOS CARROS

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
    --- WORK - CARROS - M0TOS - VIP
Garages.VehList = {
    { name = "dm1200", nome = "Ducati", price = 1300000, portamalas = 30, tipo = "moto", quantidade = 100, hash = -486920242, vendivel = false },
	{ name = "urus", nome = "Lamborghini Urus", price = 300000, portamalas = 140, tipo = "carro", quantidade = 100, hash = -520214134, vendivel = false },
	{ name = "440i", nome = "BMW 440i", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -252651765, vendivel = false },
	{ name = "gle", nome = "Mercedes GLE", price = 300000, portamalas = 200, tipo = "vip", quantidade = 50, hash = 2109671093, vendivel = true },
	{ name = "nh2r", nome = "Kawasaki Ninja H2", price = 2000000, portamalas = 30, tipo = "moto", quantidade = 100, hash = -1667727259, vendivel = false },
	{ name = "vwtdiv6", nome = "VW Touareg", price = 2300000, portamalas = 100, tipo = "carro", quantidade = 80, hash = 2044216634, vendivel = true },
	{ name = "nissanskyliner34", nome = "Skyline R34", price = 1800000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -4816535, vendivel = false },
	{ name = "sanchez", nome = "Sanchez", price = 150000, portamalas = 30, tipo = "moto", quantidade = 100, hash = 788045382, vendivel = true },
	{ name = "cheetah", nome = "Cheetah", price = 300000, portamalas = 100, tipo = "carro", quantidade = 300, hash = -1311154784, vendivel = false },
	{ name = "serrano", nome = "Serrano", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1337041428, vendivel = false },
	{ name = "faggio", nome = "Faggio Sport", price = 15000, portamalas = 30, tipo = "moto", quantidade = 100, hash = -1842748181, vendivel = true },
	{ name = "avarus", nome = "Avarus", price = 300000, portamalas = 30, tipo = "moto", quantidade = 100, hash = -2115793025, vendivel = false },
	{ name = "mesa", nome = "Canis Mesa", price = 40000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 36848602, vendivel = false },
	{ name = "tailgater", nome = "Tailgater", price = 200000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -1008861746, vendivel = false },
	{ name = "premier", nome = "Premier", price = 150000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -1883869285, vendivel = false },
	{ name = "fugitive", nome = "Fugitive", price = 35000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1909141499, vendivel = true },
	{ name = "nissangtr", nome = "Nissan GTR", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -60313827, vendivel = false },
	{ name = "kuruma", nome = "Kuruma", price = 250000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -1372848492, vendivel = true },
	{ name = "zentorno", nome = "Zentorno", price = 750000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -1403128555, vendivel = true },
	{ name = "gargoyle", nome = "Gargoyle", price = 40000, portamalas = 30, tipo = "moto", quantidade = 100, hash = 741090084, vendivel = false },
	{ name = "fq2", nome = "Fhantom Q2", price = 400000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -1137532101, vendivel = false },
	{ name = "akuma", nome = "Akuma", price = 800000, portamalas = 30, tipo = "moto", quantidade = 100, hash = 1672195559, vendivel = false },
	{ name = "weevil", nome = "Fusca", price = 65000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1644055914, vendivel = true },
	{ name = "windsor2", nome = "Windsor 2", price = 70000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1930048799, vendivel = true },
	{ name = "guardian", nome = "Tracktor Guardain", price = 200000, portamalas = 70, tipo = "carro", quantidade = 100, hash = -2107990196, vendivel = true },
	{ name = "deviant", nome = "Deviant", price = 75000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1279262537, vendivel = true },
	{ name = "coquette3", nome = "Coquette 3", price = 750000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 784565758, vendivel = false },
	{ name = "yosemite", nome = "Yosemite", price = 500000, portamalas = 50, tipo = "carro", quantidade = 100, hash = 1871995513, vendivel = false },
	{ name = "yosemite3", nome = "Yosemite 3", price = 550000, portamalas = 50, tipo = "carro", quantidade = 100, hash = 67753863, vendivel = false },
	{ name = "blade", nome = "Blade", price = 500, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1205801634, vendivel = false },
	{ name = "ellie", nome = "Ellie", price = 300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1267543371, vendivel = true },
	{ name = "gauntlet3", nome = "Gauntlet 3", price = 500000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 722226637, vendivel = false },
	{ name = "impaler", nome = "Impaler", price = 750000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -2096690334, vendivel = false },
	{ name = "slamvan3", nome = "Slamvan 3", price = 450000, portamalas = 70, tipo = "carro", quantidade = 100, hash = 1119641113, vendivel = false },
	{ name = "vamos", nome = "Vamos ", price = 500000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -49115651, vendivel = false },
	{ name = "cog55", nome = "Cog 55", price = 650000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 906642318, vendivel = false },
	{ name = "carbonizzare", nome = "Carbonizzare", price = 800000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 2072687711, vendivel = false },
	{ name = "comet5", nome = "Comet 5", price = 550000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 661493923, vendivel = true },
	{ name = "coquette4", nome = "Coquette 4", price = 550000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1728685474, vendivel = true },
	{ name = "drafter", nome = "Drafter", price = 350000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 686471183, vendivel = true },
	{ name = "komoda", nome = "Komoda", price = 500000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -834353991, vendivel = true },
	{ name = "italigto", nome = "ItaliGTO", price = 850000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -331467772, vendivel = false },
	{ name = "jugular", nome = "Jugular", price = 750000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -208911803, vendivel = false },
	{ name = "neon", nome = "Neon", price = 850000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1848994066, vendivel = false },
	{ name = "paragon", nome = "Paragon", price = 550000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -447711397, vendivel = false },
	{ name = "schlagen", nome = "Schlagen", price = 750000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -507495760, vendivel = false },
	{ name = "sugoi", nome = "Sugoi", price = 300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 987469656, vendivel = true },
	{ name = "rebla", nome = "Rebla", price = 750000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 83136452, vendivel = false },
	{ name = "novak", nome = "Novak", price = 600000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1829436850, vendivel = false },
	{ name = "landstalker2", nome = "Landstalker2", price = 850000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -838099166, vendivel = false },
	{ name = "hellion", nome = "Hellion", price = 700000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -362150785, vendivel = false },
	{ name = "kamacho", nome = "Kamacho", price = 300000, portamalas = 200, tipo = "carro", quantidade = 100, hash = -121446169, vendivel = true },
	{ name = "mesa3", nome = "Mesa 3", price = 350000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -2064372143, vendivel = false },
	{ name = "verus", nome = "Verus", price = 200000, portamalas = 50, tipo = "moto", quantidade = 100, hash = 298565713, vendivel = false },
	{ name = "caracara2", nome = "Caracara2", price = 350000, portamalas = 200, tipo = "carro", quantidade = 100, hash = -1349095620, vendivel = true },
	{ name = "vstr", nome = "Vstr", price = 700000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1456336509, vendivel = false },
	{ name = "infernus2", nome = "Infernus2", price = 300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1405937764, vendivel = false },
	{ name = "mamba", nome = "Mamba", price = 550000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1660945322, vendivel = true },
	{ name = "thrax", nome = "Thrax", price = 1200000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1044193113, vendivel = false },
	{ name = "zorrusso", nome = "Zorrusso", price = 1300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -682108547, vendivel = false },
	{ name = "visione", nome = "Visione", price = 2000000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -998177792, vendivel = false },
	{ name = "vagner", nome = "Vagner", price = 1200000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1939284556, vendivel = false },
	{ name = "tyrus", nome = "Tyrus", price = 5000000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 2067820283, vendivel = true },
	{ name = "emerus", nome = "Emerus", price = 300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1323778901, vendivel = true },
	{ name = "pfister811", nome = "Pfister 811", price = 2000000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1829802492, vendivel = false },
	{ name = "fmj", nome = "FMJ", price = 1300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1426219628, vendivel = false },
	{ name = "prototipo", nome = "Prototipo", price = 800000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 2123327359, vendivel = true },
	{ name = "osiris", nome = "Osiris", price = 1200000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1987142870, vendivel = false },
	{ name = "krieger", nome = "Krieger", price = 800000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -664141241, vendivel = true },
	{ name = "penetrator", nome = "Penetrator", price = 300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1758137366, vendivel = false },
	{ name = "italirsx", nome = "ItaliRSX", price = 2300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1149725334, vendivel = false },
	{ name = "xa21", nome = "XA21", price = 1200000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 917809321, vendivel = false },
	{ name = "furia", nome = "Furia", price = 1200000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 960812448, vendivel = false },
	{ name = "gp1", nome = "GP1", price = 300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1234311532, vendivel = false },
	{ name = "futo", nome = "Futo", price = 150000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 2016857647, vendivel = false },
	{ name = "rumpo3", nome = "Rumpo 3", price = 400000, portamalas = 300, tipo = "carro", quantidade = 100, hash = 1475773103, vendivel = true },
	{ name = "turismor", nome = "TurismoR", price = 700000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 408192225, vendivel = true },
	{ name = "lectro", nome = "Lectro", price = 200000, portamalas = 70, tipo = "moto", quantidade = 100, hash = 640818791, vendivel = false },
	{ name = "sanctus", nome = "Sanctus", price = 800000, portamalas = 70, tipo = "moto", quantidade = 100, hash = 1491277511, vendivel = true },
	{ name = "vortex", nome = "Vortex", price = 750000, portamalas = 70, tipo = "moto", quantidade = 100, hash = -609625092, vendivel = true },
	{ name = "zombieb", nome = "ZombieB", price = 1500, portamalas = 70, tipo = "moto", quantidade = 100, hash = -570033273, vendivel = false },
	{ name = "hakuchou", nome = "Hakuchou", price = 300000, portamalas = 70, tipo = "moto", quantidade = 100, hash = 1265391242, vendivel = false },
	{ name = "hakuchou2", nome = "Hakuchou2", price = 900000, portamalas = 70, tipo = "moto", quantidade = 100, hash = -255678177, vendivel = true },
	{ name = "innovation", nome = "Innovation", price = 550000, portamalas = 70, tipo = "moto", quantidade = 100, hash = -159126838, vendivel = true },
	{ name = "wolfsbane", nome = "Wolfsbane", price = 400000, portamalas = 70, tipo = "moto", quantidade = 100, hash = -618617997, vendivel = false },
	{ name = "chimera", nome = "Chimera", price = 500000, portamalas = 70, tipo = "moto", quantidade = 100, hash = 6774487, vendivel = false },
	{ name = "tulip", nome = "Tulip", price = 300000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1456744817, vendivel = false },
	{ name = "seminole2", nome = "Seminole 2", price = 500000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1810806490, vendivel = false },
	{ name = "bf400", nome = "BF400", price = 200000, portamalas = 70, tipo = "moto", quantidade = 100, hash = 86520421, vendivel = false },
	{ name = " diablous2", nome = "Diablous 2", price = 700000, portamalas = 70, tipo = "moto", quantidade = 100, hash = 1790834270, vendivel = false },
	{ name = "carbonrs", nome = "Carbonrs", price = 300000, portamalas = 70, tipo = "moto", quantidade = 100, hash = 11251904, vendivel = false },
	{ name = "gauntlet4", nome = "Gauntlet 4", price = 650000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1934384720, vendivel = true },
	{ name = "faction2", nome = "Faction2", price = 50000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1790546981, vendivel = true },
	{ name = "buccaneer2", nome = "Buccaneer 2", price = 500000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1013450936, vendivel = false },
	{ name = "chino2", nome = "Chino 2", price = 400000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1361687965, vendivel = false },
	{ name = "moonbeam2", nome = "Moonbeam2", price = 400000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 1896491931, vendivel = false },
	{ name = "virgo2", nome = "Virgo 2", price = 400000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -899509638, vendivel = false },
	{ name = "tornado5", nome = "Tornado 5", price = 25000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -1797613329, vendivel = true },
	{ name = "voodoo", nome = "Voodoo", price = 400000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 2006667053, vendivel = false },
	{ name = "rallytruck", nome = "Rallytruck", price = 20000000, portamalas = 1000, tipo = "carro", quantidade = 100, hash = -2103821244, vendivel = true },
	{ name = "turismo", nome = "turismo", price = 200000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 408192225, vendivel = false },
	{ name = "elegy", nome = "Elegy", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash =  196747873, vendivel = false },
	{ name = "furia", nome = "furia", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 960812448, vendivel = false },
	{ name = "taipan", nome = "taipan", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1134706562, vendivel = false },
	{ name = "osiris", nome = "osiris", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1987142870, vendivel = false },
	{ name = "emereus", nome = "emereus", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1323778901, vendivel = false },
	{ name = "sheava", nome = "sheava", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -819197656, vendivel = false },
	{ name = "sultanrs", nome = "sultanrs", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -295689028, vendivel = false },
	{ name = "thrax", nome = "thrax", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1044193113, vendivel = false },
	{ name = "visone", nome = "visone", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -998177792, vendivel = false },
	{ name = "vagner", nome = "vagner", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1939284556, vendivel = false },
	{ name = "Tyrant", nome = "Tyrant", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -376434238, vendivel = false },
	{ name = "skyliner34", nome = "skyliner34", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -783406593, vendivel = false },
	
	-- VEICULOS DA LOJA
	{ name = "18velar", nome = "Range Rover Velar", price = 300000, portamalas = 200, tipo = "carro", quantidade = 100, hash = -984938540, vendivel = true },
	{ name = "718caymans", nome = "Porsche Caymans", price = 300000, portamalas = 200, tipo = "vip", quantidade = 100, hash = -1393620193, vendivel = false },
	{ name = "f4rr", nome = "F4RR Agusta", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = 1303167849, vendivel = false },
	{ name = "cbrr", nome = "CB 1000RR", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = 735175855, vendivel = false },
	{ name = "gsrx", nome = "Suzuki GSXR1000", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = 356442851, vendivel = false },
	{ name = "hilux2019", nome = "Toyota Hilux 2019", price = 300000, portamalas = 170, tipo = "carro", quantidade = 200, hash = -1270846222, vendivel = true },
	{ name = "tritonhpe", nome = "L200 Triton", price = 1500000, portamalas = 170, tipo = "carro", quantidade = 100, hash = -419705714, vendivel = true },
	{ name = "aperta", nome = "Ferrari Aperta", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1481236684, vendivel = false },
	{ name = "lp700r", nome = "Lamborghini Aventador", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 949614817, vendivel = false },
	{ name = "p1", nome = "MacLaren P1", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -189438188, vendivel = false },
	{ name = "mgt", nome = "Mustang GT", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1432034260, vendivel = false },
	{ name = "velociraptor", nome = "Ranger Velociraptor 6X6", price = 300000, portamalas = 200, tipo = "vip", quantidade = 100, hash = 310570430, vendivel = false },
	{ name = "tiger", nome = "Tiger 800", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = -1156537658, vendivel = false },
	{ name = "r1250", nome = "BMW R1250", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = 991407206, vendivel = false },
	{ name = "s1000rr", nome = "BMW S1000RR", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = 436874758, vendivel = false },
	{ name = "opala", nome = "Opala 92/93", price = 200000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 736902334, vendivel = true },
	{ name = "evo10", nome = "Lancer Evolution", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = 1944777953, vendivel = false },
	{ name = "lancerevolutionx", nome = "Lancer Evolution X", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = GetHashKey('lancerevolutionx'), vendivel = false },
	{ name = "amggt63s", nome = "Mercedes Amg GT63", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = -1437054386, vendivel = false },
	{ name = "488gtb", nome = "Ferrari 488", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = -1593808613, vendivel = false },
	{ name = "r8ppi", nome = "R8", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = -1385753106, vendivel = false },
	{ name = "r6", nome = "Yamaha R6", price = 300000, portamalas = 30, tipo = "moto", quantidade = 100, hash = 0, vendivel = false },
	{ name = "mule", nome = "Mule", price = 300000, portamalas = 1500, tipo = "vip", quantidade = 10000, hash = 904750859, vendivel = false },
	{ name = "rocoto", nome = "Fiat Toro", price = 500000, portamalas = 130, tipo = "carro", quantidade = 100, hash = 2136773105, vendivel = true },
	{ name = "cavalcade2", nome = "Parati G3", price = 500000, portamalas = 130, tipo = "carro", quantidade = 100, hash = -789894171, vendivel = true },
	{ name = "pcj", nome = "KTM", price = 300000, portamalas = 5, tipo = "vip", quantidade = 100, hash = -909201658, vendivel = false },
	{ name = "mule2", nome = "Mule2", price = 300000, portamalas = 225, tipo = "vip", quantidade = 1000, hash = -1050465301, vendivel = false },
	{ name = "mule3", nome = "Mule3", price = 300000, portamalas = 300, tipo = "vip", quantidade = 1000, hash = -2052737935, vendivel = false },
	{ name = "mule4", nome = "Mule4", price = 300000, portamalas = 400, tipo = "vip", quantidade = 1000, hash = 1945374990, vendivel = false },
	{ name = "havok", nome = "Havok", price = 300000, portamalas = 100, tipo = "vip", quantidade = 1000, hash = -1984275979, vendivel = false },
	{ name = "maverick", nome = "Maverick", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1660661558, vendivel = false },
	{ name = "seasparrow", nome = "Seasparrow", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -726768679, vendivel = false },
	{ name = "Swift", nome = "Swift", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -339587598, vendivel = false },
----carros novos add ---	-2018557295
	{ name = "montanaroyal", nome = "montanaroyal", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1162092176, vendivel = false },
	{ name = "golfgti7", nome = "golfgti7", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -2018557295, vendivel = false },
	{ name = "savaboxeg7", nome = "savaboxeg7", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1188386545, vendivel = false },
	{ name = "ramlh20", nome = "ramlh20", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -608300537, vendivel = false },
	{ name = "g7zin", nome = "g7zin", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1199907408, vendivel = false },
	{ name = "s10deboxe", nome = "s10deboxe", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 480302645, vendivel = false },
	{ name = "golg5", nome = "golg5", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1719184786, vendivel = false },
	{ name = "golfabel", nome = "golfabel", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1733930482, vendivel = false },
	{ name = "armoredgle", nome = "armoredgle", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 257877329, vendivel = false },
	{ name = "armoredx6", nome = "armoredx6", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 25184786, vendivel = false },
	{ name = "silvia", nome = "silvia", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1426938578, vendivel = false },
	{ name = "f25", nome = "f25", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1660344279, vendivel = false },
	{ name = "saveiro", nome = "saveiro", price = 500000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1451518270, vendivel = false },
	{ name = "hycadem8", nome = "hycadem8", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1452148639, vendivel = false },
	{ name = "fbi", nome = "fbi", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1127131465, vendivel = false },
	{ name = "fbi2", nome = "fbi2", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1647941228, vendivel = false },
	{ name = "policeb", nome = "policeb", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -34623805, vendivel = false },
	{ name = "sheriff2", nome = "sheriff2", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1922257928, vendivel = false },
	{ name = "police4", nome = "police4", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1973172295, vendivel = false },
	{ name = "stretch", nome = "stretch", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1961627517, vendivel = false },
	{ name = "baller5", nome = "baller5", price = 5000000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 470404958, vendivel = false },
	{ name = "baller6", nome = "baller6", price = 8000000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 666166960, vendivel = false },
	{ name = "xls2", nome = "xls2", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -432008408, vendivel = false },
	{ name = "patriot2", nome = "patriot2", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -420911112, vendivel = false },
	{ name = "terbyte", nome = "terbyte", price = 300000, portamalas = 30000, tipo = "vip", quantidade = 100, hash = -1988428699, vendivel = false },
	{ name = "pol718", nome = "porschepolice", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 335404415, vendivel = false },
	{ name = "ccadeesv", nome = "ccadeesv", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -515227840, vendivel = false },
	{ name = "21hilux", nome = "21hilux", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -2088503261, vendivel = false },
	{ name = "21hiluxdimond", nome = "21hiluxdimond", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1483710860, vendivel = false },
	{ name = "amarokdeboxe", nome = "amarokdeboxe", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 193545257, vendivel = false },
	{ name = "golg8boxeteto", nome = "golg8boxeteto", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1840347582, vendivel = false },
	{ name = "golgl", nome = "golgl", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -712143938, vendivel = false },
	{ name = "porschereb", nome = "porschereb", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1796808291, vendivel = false },
	{ name = "savaboxe", nome = "savaboxe", price = 30000000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -1195959395, vendivel = false },
	{ name = "tcrossar", nome = "tcrossar", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1195808409, vendivel = false },
	{ name = "r1250", nome = "r1250", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 991407206, vendivel = false },
	{ name = "lamborghinihuracan", nome = "lamborghinihuracan", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1114244595, vendivel = false },
	{ name = "Wrasprinter", nome = "Wrasprinter", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1283811839, vendivel = false },
	{ name = "Wrgle53", nome = "Wrgle53", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1304564705, vendivel = false },
	{ name = "WRr1200", nome = "WRr1200", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1775498021, vendivel = false },
	{ name = "fnfrx7", nome = "fnfrx7", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1878807939, vendivel = false },
	{ name = "fnfmk4", nome = "fnfmk4", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1324588753, vendivel = false },
	{ name = "fnflan", nome = "fnflan", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -410866473, vendivel = false },
	{ name = "fnfmits", nome = "fnfmits", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1299243986, vendivel = false },
	{ name = "ff4wrx", nome = "ff4wrx", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1584460854, vendivel = false },
	{ name = "2f2fmle7", nome = "2f2fmle7", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -2143339605, vendivel = false },
	{ name = "2f2fmk4", nome = "2f2fmk4", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -2026492941, vendivel = false },
	{ name = "2f2fgts", nome = "2f2fgts", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 92242942, vendivel = false },
	{ name = "energy450", nome = "energy450", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1901820368, vendivel = false },
	{ name = "energyr1200", nome = "energyr1200", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1528679511, vendivel = false },
	{ name = "307c", nome = "307c", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -752221188, vendivel = false },
	{ name = "370z", nome = "370z", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 147177933, vendivel = false },
	{ name = "astonmartindbs", nome = "astonmartindbs", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1298902545, vendivel = false },
	{ name = "audir8", nome = "audir8", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -739058151, vendivel = false },
	{ name = "audirs", nome = "audirs", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1676738519, vendivel = false },
	{ name = "aventador", nome = "aventador", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1890188937, vendivel = false },
	{ name = "bmwi8", nome = "bmwi8", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1540353819, vendivel = false },
	{ name = "bmwm4gts", nome = "bmwm4gts", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -13524981, vendivel = false },
	{ name = "bmwm1wb", nome = "bmwm1wb", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1306282923, vendivel = false },
	{ name = "bmwm5e34", nome = "bmwm5e34", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1540878308, vendivel = false },
	{ name = "camaro", nome = "camaro", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 584407536, vendivel = false },
	{ name = "celta", nome = "celta", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1995020435, vendivel = false },
	{ name = "160chumbo", nome = "160chumbo", price = 300000, portamalas = 100, tipo = "moto", quantidade = 100, hash = 1088829493, vendivel = false },
	{ name = "chevette", nome = "chevette", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -1456558572, vendivel = false },
	{ name = "city", nome = "city", price = 600000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 2004548589, vendivel = false },
	{ name = "civictyper", nome = "civictyper", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 2004548589, vendivel = false },
	{ name = "corvettec7", nome = "corvettec7", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -986071517, vendivel = false },
	{ name = "cruze", nome = "cruze", price = 50000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -810451130, vendivel = false },
	{ name = "dodgechargerrt69", nome = "dodgechargerrt69", price = 900000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1072521190, vendivel = false },
	{ name = "escaladegt900", nome = "escaladegt900", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1545541884, vendivel = false },
	{ name = "dodgechargersrt", nome = "dodgechargersrt", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1601422646, vendivel = false },
	{ name = "escort", nome = "escort", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -193064196, vendivel = false },
	{ name = "ferrari812", nome = "ferrari812", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -322014905, vendivel = false },
	{ name = "ferrarif12", nome = "ferrarif12", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1151600959, vendivel = false },
	{ name = "ferrariitalia", nome = "ferrariitalia", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1173768715, vendivel = false },
	{ name = "fiattoro", nome = "fiattoro", price = 550000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -182003596, vendivel = false },
	{ name = "fusca", nome = "fusca", price = 180000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1924372706, vendivel = false },
	{ name = "golquadrado", nome = "golquadrado", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 77673261, vendivel = false },
	{ name = "hb20", nome = "hb20", price = 800000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 290851400, vendivel = false },
	{ name = "lamborghinihuracan", nome = "lamborghinihuracan", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1114244595, vendivel = false },
	{ name = "jettagli", nome = "jettagli", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -622126799, vendivel = false },
	{ name = "lancerevolution9", nome = "lancerevolution9", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -133349447, vendivel = false },
	{ name = "m8competition", nome = "m8competition", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 796209239, vendivel = false },
	{ name = "mazdarx7", nome = "mazdarx7", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 2034235290, vendivel = false },
	{ name = "opala", nome = "opala", price = 500000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 637861346, vendivel = false },
	{ name = "mustang1969", nome = "mustang1969", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -180834407, vendivel = false },
	{ name = "palio", nome = "palio", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -1621506835, vendivel = false },
	{ name = "panameramansory", nome = "panameramansory", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1146389448, vendivel = false },
	{ name = "parati", nome = "parati", price = 500000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1942984893, vendivel = false },
	{ name = "r1", nome = "r1", price = 30000000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1474015055, vendivel = false },
	{ name = "r6", nome = "r6", price = 30000000, portamalas = 100, tipo = "carro", quantidade = 100, hash = -188978926, vendivel = false },
	{ name = "rangerover", nome = "rangerover", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -214867514, vendivel = false },
	{ name = "s1000rr", nome = "s1000rr", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 436874758, vendivel = false },
	{ name = "saveirodeboxe", nome = "saveirodeboxe", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 202098620, vendivel = false },
	{ name = "shelbygt500", nome = "shelbygt500", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 1724037436, vendivel = false },
	{ name = "silvias15", nome = "silvias15", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1390169318, vendivel = false },
	{ name = "subarubrz", nome = "subarubrz", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -1055230633, vendivel = false },
	{ name = "toyotasupra", nome = "toyotasupra", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 723779872, vendivel = false },
	{ name = "toyotasupra2", nome = "toyotasupra2", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = -369887950, vendivel = false },
	{ name = "uno", nome = "uno", price = 150000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1062355240, vendivel = false },
	--{ name = "vwtouareg ", nome = "vwtouareg ", price = 300000, portamalas = 100, tipo = "carro", quantidade = 100, hash = 1604450211, vendivel = false },
	{ name = "xj6", nome = "xj6", price = 300000, portamalas = 100, tipo = "vip", quantidade = 100, hash = 342059638, vendivel = false },
	{ name = "xt660", nome = "xt660", price = 3000000, portamalas = 100, tipo = "moto", quantidade = 100, hash = -842094945, vendivel = false },
	{ name = "zx10r", nome = "zx10r", price = 3000000, portamalas = 100, tipo = "moto", quantidade = 100, hash = -714386060, vendivel = false },
	{ name = "rsq8mans", nome = "RS8", price = 300000, portamalas = 200, tipo = "vip", quantidade = 100, hash = -1856838045, vendivel = false },
	--{ name = "lancerevolutionx", nome = "Lancer Evolution X", price = 300000, portamalas = 30, tipo = "vip", quantidade = 100, hash = GetHashKey('lancerevolutionx'), vendivel = false },
	

	{ name = "cargobob", nome = "cargobob", price = 300000, portamalas = 800, tipo = "none", quantidade = 100, hash = -50547061, vendivel = false },
	{ name = "luxor", nome = "luxor", price = 300000, portamalas = 1000, tipo = "none", quantidade = 100, hash = 621481054, vendivel = false },
	{ name = "shamal", nome = "shamal", price = 300000, portamalas = 1000, tipo = "none", quantidade = 100, hash = -1214505995, vendivel = false },
	{ name = "titan", nome = "titan", price = 300000, portamalas = 10000, tipo = "none", quantidade = 100, hash = 1981688531, vendivel = false },
	
			
----carros novos add ---	-2018557295

	-- VEICULOS DAS ORGANIZACAO
	{ name = "amarokpolicia", nome = "Amarok DPD", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = -137337379, vendivel = false },
	{ name = "ambulance", nome = "Ambulancia", price = 0, portamalas = 50, tipo = "none", quantidade = 100, hash = 1171614426, vendivel = false },
	{ name = "sahpexplorer2", nome = "Ford Explore Médico", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = -1683453063, vendivel = false },
	{ name = "mercedespolicia", nome = "Mercedes DPD", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 837100403, vendivel = false },
	{ name = "paramedicoheli", nome = "Helicoptéro Médico", price = nil, portamalas = 50, tipo = "none", quantidade = 100, hash = 2020690903, vendivel = false },
	{ name = "pdfocus", nome = "Ford Focus DPD", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 458087531, vendivel = false },
	{ name = "tigerpolicia", nome = "Tiger DPD", price = nil, portamalas = 30, tipo = "none", quantidade = nil, hash = -505049932, vendivel = false },
	{ name = "polmav", nome = "Helicoptero DPD", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 353883353, vendivel = false },
	{ name = "trail20pm", nome = "trail20pm", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = -454140225, vendivel = false },
	{ name = "tigerpm", nome = "tigerpm", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 1512676964, vendivel = false },
	{ name = "s10pm", nome = "s10pm", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 1295114534, vendivel = false },
	{ name = "r1200pm ", nome = "r1200pm ", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 778506982, vendivel = false },
	{ name = "polmav", nome = "polmav", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 353863353, vendivel = false },
	{ name = "pbus", nome = "pbus", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = -2007026063, vendivel = false },
	{ name = "pantera", nome = "pantera", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = -483799841, vendivel = false },
	{ name = "dusterrp2", nome = "dusterrp2", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = -1421940137, vendivel = false },
	{ name = "dusterrp1", nome = "dusterrp1", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 699459393, vendivel = false },
	{ name = "s10rotam", nome = "s10rotam", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = -1407395324, vendivel = false },
	{ name = "equinoxprf", nome = "s10rotam", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 1239512017, vendivel = false },
	{ name = "trail22prf", nome = "trail22prf", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 1044340062, vendivel = false },
	{ name = "trail20prf", nome = "trail20prf", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 843660136, vendivel = false },
	{ name = "dusterpc", nome = "dusterpc", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 1016204281, vendivel = false },
	{ name = "trail21pc", nome = "trail21pc", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = -426508523, vendivel = false },
	{ name = "jeepcherokee", nome = "jeepcherokee", price = nil, portamalas = 200, tipo = "vip", quantidade = 600, hash = 1939826804, vendivel = false },

	-- HELI
	{ name = "supervolito", nome = "Supervolito", price = 300000, portamalas = 150, tipo = "none", quantidade = 100, hash = 710198397, vendivel = false },
	{ name = "frogger", nome = "Frogger", price = 300000, portamalas = 150, tipo = "none", quantidade = 100, hash = 744705981, vendivel = false },
	{ name = "volatus", nome = "Volatus", price = 300000, portamalas = 150, tipo = "none", quantidade = 100, hash = -1845487887, vendivel = false },
	{ name = "swift2", nome = "Swifit2", price = 300000, portamalas = 150, tipo = "none", quantidade = 100, hash = 1075432268, vendivel = false },

	-- VEICULOS DOS EMPREGOS
	{ name = "phantom", nome = "Phantom", price = nil, portamalas = nil, tipo = "none", quantidade = nil, hash = -2137348917, vendivel = false },
	{ name = "trash2", nome = "Trash 2", price = nil, portamalas = nil, tipo = "none", quantidade = nil, hash = -1255698084, vendivel = false },
	{ name = "tiptruck", nome = "Tip Truck", price = nil, portamalas = 80, tipo = "none", quantidade = nil, hash = 48339065, vendivel = false },
	{ name = "boxville2", nome = "Box ville", price = nil, portamalas = 80, tipo = "none", quantidade = nil, hash = -233098306, vendivel = false },
	{ name = "airbus", nome = "Airbus", price = nil, portamalas = nil, tipo = "none", quantidade = nil, hash = 1283517198, vendivel = false },
	{ name = "bus", nome = "Bus", price = nil, portamalas = nil, tipo = "none", quantidade = nil, hash = -713569950, vendivel = false },
	{ name = "coach", nome = "Coach", price = nil, portamalas = nil, tipo = "none", quantidade = nil, hash = -2072933068, vendivel = false },
	{ name = "dinghy", nome = "Dinghy", price = nil, portamalas = 50, tipo = "none", quantidade = nil, hash = 1033245328, vendivel = false },
	{ name = "trailerlogs", nome = "Trailer logs", price = nil, portamalas = 100, tipo = "none", quantidade = nil, hash = 2016027501, vendivel = false },
	{ name = "taxi", nome = "Taxi", price = nil, portamalas = nil, tipo = "none", quantidade = nil, hash = -956048545, vendivel = false },
	{ name = "towtruck2", nome = "Guincho", price = 0, portamalas = 50, tipo = "none", quantidade = 100, hash = -442313018, vendivel = false },
	{ name = "flatbed", nome = "flatbed", price = 0, portamalas = 10, tipo = "none", quantidade = 100, hash = 1353720154, vendivel = false },


	{ name = "golg4", nome = "golg4", price = 300000, portamalas = 10, tipo = "carro", quantidade = 100, hash = 1421281807, vendivel = false },
	{ name = "s15silhouette", nome = "s15silhouette", price = 0, portamalas = 10, tipo = "vip", quantidade = 100, hash = 1434120638, vendivel = false },
	{ name = "-venatus", nome = "venatus", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = -184310767, vendivel = false },
	{ name = "DBdemondurango", nome = "DBdemondurango", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = -290262796, vendivel = false },
	{ name = "z1000", nome = "z1000", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = 1744543800, vendivel = false },
	{ name = "RYGBus", nome = "RYGBus", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = -305508884, vendivel = false },
	{ name = "golf1", nome = "golf1", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = -403984030, vendivel = false },
	{ name = "golf7", nome = "golf7", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = 1993953079, vendivel = false },
	{ name = "passat", nome = "passat", price = 300000, portamalas = 10, tipo = "carro", quantidade = 100, hash = -1773424714, vendivel = false },
	{ name = "specialtf", nome = "specialtf", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = 175822380, vendivel = false },
	{ name = "zl1", nome = "zl1", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = 365223774, vendivel = false },
	{ name = "amarokreb", nome = "amarokreb", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = -1834220578, vendivel = false },
	{ name = "20xb7", nome = "20xb7", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  1326776111, vendivel = false },
	{ name = "GODzDRKHRSESBWB", nome = "GODzDRKHRSESBWB", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash = -999495053, vendivel = false },
	{ name = "20xb7", nome = "20xb7", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  1326776111, vendivel = false },
	{ name = "machewb", nome = "machewb", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -1012131486, vendivel = false },
	{ name = "rrformulawide", nome = "rrformulawide", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -145486851, vendivel = false },
	{ name = "gcmlamboultimae", nome = "gcmlamboultimae", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  214886145, vendivel = false },
	{ name = "h2m", nome = "h2m", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -138298961, vendivel = false },
	{ name = "fk8", nome = "fk8", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -1745789659, vendivel = false },
	{ name = "jes21", nome = "jes21", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  1227057313, vendivel = false },
	{ name = "senna", nome = "senna", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -433961724, vendivel = false },
	{ name = "-G63Sam", nome = "-G63Sam", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -830050292, vendivel = false },
	{ name = "CarsonsHycadeR35", nome = "CarsonsHycadeR35", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -2026429679, vendivel = false },
	{ name = "nismo20", nome = "nismo20", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  128072929, vendivel = false },
	{ name = "s15lunarr", nome = "s15lunarr", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -34912843, vendivel = false },
	{ name = "r36fp", nome = "r36fp", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -1409705672, vendivel = false },
	{ name = "r35legend", nome = "r35legend", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -1546544345, vendivel = false },
	{ name = "silvia666", nome = "silvia666", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  773340112, vendivel = false },
	{ name = "aerox155", nome = "aerox155", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -1047713792, vendivel = false },
	{ name = "bati901", nome = "bati901", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -981856910, vendivel = false },
	{ name = "cb650r", nome = "cb650r", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  1093254796, vendivel = false },
	{ name = "21rsq8", nome = "21rsq8", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -1881066373, vendivel = false },
    { name = "74civrswb", nome = "74civrswb", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -897028078, vendivel = false },
    { name = "q8hycade", nome = "q8hycade", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  354212211, vendivel = false },
    { name = "rs4rk", nome = "rs4rk", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  136001179, vendivel = false },
    { name = "rs5mans", nome = "rs5mans", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -2128279531, vendivel = false },
    { name = "m3e92", nome = "m3e92", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  708207258, vendivel = false },
    { name = "ddc69maro", nome = "ddc69maro", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -342206752, vendivel = false },
    { name = "chironsuper", nome = "chironsuper", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -938530347, vendivel = false },
    { name = "ckbmwm4offwhite", nome = "ckbmwm4offwhite", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  128141295, vendivel = false },
    { name = "rmodcharger", nome = "rmodcharger", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -1547840082, vendivel = false },
    { name = "chargerf8", nome = "chargerf8", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  -698663530, vendivel = false },
    { name = "hellcatf9", nome = "hellcatf9", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  701647779, vendivel = false },
    { name = "q8prior", nome = "q8prior", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  571788523, vendivel = false },
	{ name = "amarok", nome = "amarok", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  493030188, vendivel = false },
	{ name = "160chumbo", nome = "160chumbo", price = 300000, portamalas = 10, tipo = "carro", quantidade = 100, hash =  -2063308561, vendivel = false },
	{ name = "samumav", nome = "samumav", price = 300000, portamalas = 10, tipo = "vip", quantidade = 100, hash =  1084099044, vendivel = false },
    [GetHashKey('dm1200')] = { model = 'dm1200', price = 1300000, banned = false, name = 'Ducati', trunk = 30, type = 'moto'},
    [GetHashKey('urus')] = { model = 'urus', price = 30000000, banned = false, name = 'Lamborghini Urus', trunk = 140, type = 'carro'},
    [GetHashKey('440i')] = { model = '440i', price = 300000, banned = false, name = 'BMW 440i', trunk = 100, type = 'vip'},
    [GetHashKey('gle')] = { model = 'gle', price = 300000, banned = false, name = 'Mercedes GLE', trunk = 200, type = 'vip'},
    [GetHashKey('nh2r')] = { model = 'nh2r', price = 2000000, banned = false, name = 'Kawasaki Ninja H2', trunk = 30, type = 'moto'},
    [GetHashKey('vwtdiv6')] = { model = 'vwtdiv6', price = 2300000, banned = false, name = 'VW Touareg', trunk = 100, type = 'carro'},
    [GetHashKey('nissanskyliner34')] = { model = 'nissanskyliner34', price = 1800000, banned = false, name = 'Skyline R34', trunk = 100, type = 'vip'},
    [GetHashKey('sanchez')] = { model = 'sanchez', price = 150000, banned = false, name = 'Sanchez', trunk = 30, type = 'moto'},
    [GetHashKey('cheetah')] = { model = 'cheetah', price = 300000, banned = false, name = 'Cheetah', trunk = 100, type = 'carro'},
    [GetHashKey('serrano')] = { model = 'serrano', price = 300000, banned = false, name = 'Serrano', trunk = 100, type = 'carro'},
    [GetHashKey('faggio')] = { model = 'faggio', price = 15000, banned = false, name = 'Faggio Sport', trunk = 30, type = 'moto'},
    [GetHashKey('avarus')] = { model = 'avarus', price = 300000, banned = false, name = 'Avarus', trunk = 30, type = 'moto'},
    [GetHashKey('mesa')] = { model = 'mesa', price = 40000, banned = false, name = 'Canis Mesa', trunk = 100, type = 'carro'},
    [GetHashKey('tailgater')] = { model = 'tailgater', price = 200000, banned = false, name = 'Tailgater', trunk = 100, type = 'carro'},
    [GetHashKey('premier')] = { model = 'premier', price = 150000, banned = false, name = 'Premier', trunk = 100, type = 'carro'},
    [GetHashKey('fugitive')] = { model = 'fugitive', price = 35000, banned = false, name = 'Fugitive', trunk = 100, type = 'carro'},
    [GetHashKey('nissangtr')] = { model = 'nissangtr', price = 300000, banned = false, name = 'Nissan GTR', trunk = 100, type = 'vip'},
    [GetHashKey('kuruma')] = { model = 'kuruma', price = 250000, banned = false, name = 'Kuruma', trunk = 100, type = 'carro'},
    [GetHashKey('zentorno')] = { model = 'zentorno', price = 750000, banned = false, name = 'Zentorno', trunk = 100, type = 'carro'},
    [GetHashKey('gargoyle')] = { model = 'gargoyle', price = 40000, banned = false, name = 'Gargoyle', trunk = 30, type = 'moto'},
    [GetHashKey('fq2')] = { model = 'fq2', price = 400000, banned = false, name = 'Fhantom Q2', trunk = 100, type = 'carro'},
    [GetHashKey('akuma')] = { model = 'akuma', price = 800000, banned = false, name = 'Akuma', trunk = 30, type = 'moto'},
    [GetHashKey('weevil')] = { model = 'weevil', price = 65000, banned = false, name = 'Fusca', trunk = 130, type = 'carro'},
    [GetHashKey('windsor2')] = { model = 'windsor2', price = 70000, banned = false, name = 'Windsor 2', trunk = 130, type = 'carro'},
    [GetHashKey('guardian')] = { model = 'guardian', price = 200000, banned = false, name = 'Tracktor Guardain', trunk = 70, type = 'carro'},
    [GetHashKey('deviant')] = { model = 'deviant', price = 75000, banned = false, name = 'Deviant', trunk = 130, type = 'carro'},
    [GetHashKey('coquette3')] = { model = 'coquette3', price = 750000, banned = false, name = 'Coquette 3', trunk = 130, type = 'carro'},
    [GetHashKey('yosemite')] = { model = 'yosemite', price = 500000, banned = false, name = 'Yosemite', trunk = 50, type = 'carro'},
    [GetHashKey('yosemite3')] = { model = 'yosemite3', price = 550000, banned = false, name = 'Yosemite 3', trunk = 50, type = 'carro'},
    [GetHashKey('blade')] = { model = 'blade', price = 500, banned = false, name = 'Blade', trunk = 130, type = 'carro'},
    [GetHashKey('ellie')] = { model = 'ellie', price = 300000, banned = false, name = 'Ellie', trunk = 130, type = 'carro'},
    [GetHashKey('gauntlet3')] = { model = 'gauntlet3', price = 500000, banned = false, name = 'Gauntlet 3', trunk = 130, type = 'carro'},
    [GetHashKey('impaler')] = { model = 'impaler', price = 750000, banned = false, name = 'Impaler', trunk = 130, type = 'carro'},
    [GetHashKey('slamvan3')] = { model = 'slamvan3', price = 450000, banned = false, name = 'Slamvan 3', trunk = 70, type = 'carro'},
    [GetHashKey('vamos')] = { model = 'vamos', price = 500000, banned = false, name = 'Vamos ', trunk = 130, type = 'carro'},
    [GetHashKey('cog55')] = { model = 'cog55', price = 650000, banned = false, name = 'Cog 55', trunk = 130, type = 'carro'},
    [GetHashKey('carbonizzare')] = { model = 'carbonizzare', price = 800000, banned = false, name = 'Carbonizzare', trunk = 130, type = 'carro'},
    [GetHashKey('comet5')] = { model = 'comet5', price = 550000, banned = false, name = 'Comet 5', trunk = 130, type = 'carro'},
    [GetHashKey('coquette4')] = { model = 'coquette4', price = 550000, banned = false, name = 'Coquette 4', trunk = 130, type = 'carro'},
    [GetHashKey('drafter')] = { model = 'drafter', price = 350000, banned = false, name = 'Drafter', trunk = 130, type = 'carro'},
    [GetHashKey('komoda')] = { model = 'komoda', price = 500000, banned = false, name = 'Komoda', trunk = 130, type = 'carro'},
    [GetHashKey('italigto')] = { model = 'italigto', price = 850000, banned = false, name = 'ItaliGTO', trunk = 130, type = 'carro'},
    [GetHashKey('jugular')] = { model = 'jugular', price = 750000, banned = false, name = 'Jugular', trunk = 130, type = 'carro'},
    [GetHashKey('neon')] = { model = 'neon', price = 850000, banned = false, name = 'Neon', trunk = 130, type = 'carro'},
    [GetHashKey('paragon')] = { model = 'paragon', price = 550000, banned = false, name = 'Paragon', trunk = 130, type = 'carro'},
    [GetHashKey('schlagen')] = { model = 'schlagen', price = 750000, banned = false, name = 'Schlagen', trunk = 130, type = 'carro'},
    [GetHashKey('sugoi')] = { model = 'sugoi', price = 300000, banned = false, name = 'Sugoi', trunk = 130, type = 'carro'},
    [GetHashKey('rebla')] = { model = 'rebla', price = 750000, banned = false, name = 'Rebla', trunk = 130, type = 'carro'},
    [GetHashKey('novak')] = { model = 'novak', price = 600000, banned = false, name = 'Novak', trunk = 130, type = 'carro'},
    [GetHashKey('landstalker2')] = { model = 'landstalker2', price = 850000, banned = false, name = 'Landstalker2', trunk = 130, type = 'carro'},
    [GetHashKey('hellion')] = { model = 'hellion', price = 700000, banned = false, name = 'Hellion', trunk = 130, type = 'carro'},
    [GetHashKey('kamacho')] = { model = 'kamacho', price = 300000, banned = false, name = 'Kamacho', trunk = 200, type = 'carro'},
    [GetHashKey('mesa3')] = { model = 'mesa3', price = 350000, banned = false, name = 'Mesa 3', trunk = 130, type = 'carro'},
    [GetHashKey('verus')] = { model = 'verus', price = 200000, banned = false, name = 'Verus', trunk = 50, type = 'moto'},
    [GetHashKey('caracara2')] = { model = 'caracara2', price = 350000, banned = false, name = 'Caracara2', trunk = 200, type = 'carro'},
    [GetHashKey('vstr')] = { model = 'vstr', price = 700000, banned = false, name = 'Vstr', trunk = 130, type = 'carro'},
    [GetHashKey('infernus2')] = { model = 'infernus2', price = 300000, banned = false, name = 'Infernus2', trunk = 130, type = 'carro'},
    [GetHashKey('mamba')] = { model = 'mamba', price = 550000, banned = false, name = 'Mamba', trunk = 130, type = 'carro'},
    [GetHashKey('thrax')] = { model = 'thrax', price = 1200000, banned = false, name = 'Thrax', trunk = 130, type = 'carro'},
    [GetHashKey('zorrusso')] = { model = 'zorrusso', price = 1300000, banned = false, name = 'Zorrusso', trunk = 130, type = 'carro'},
    [GetHashKey('visione')] = { model = 'visione', price = 2000000, banned = false, name = 'Visione', trunk = 130, type = 'carro'},
    [GetHashKey('vagner')] = { model = 'vagner', price = 1200000, banned = false, name = 'Vagner', trunk = 130, type = 'carro'},
    [GetHashKey('tyrus')] = { model = 'tyrus', price = 5000000, banned = false, name = 'Tyrus', trunk = 130, type = 'carro'},
    [GetHashKey('emerus')] = { model = 'emerus', price = 300000, banned = false, name = 'Emerus', trunk = 130, type = 'carro'},
    [GetHashKey('pfister811')] = { model = 'pfister811', price = 2000000, banned = false, name = 'Pfister 811', trunk = 130, type = 'carro'},
    [GetHashKey('fmj')] = { model = 'fmj', price = 1300000, banned = false, name = 'FMJ', trunk = 130, type = 'carro'},
    [GetHashKey('prototipo')] = { model = 'prototipo', price = 800000, banned = false, name = 'Prototipo', trunk = 130, type = 'carro'},
    [GetHashKey('osiris')] = { model = 'osiris', price = 1200000, banned = false, name = 'Osiris', trunk = 130, type = 'carro'},
    [GetHashKey('krieger')] = { model = 'krieger', price = 800000, banned = false, name = 'Krieger', trunk = 130, type = 'carro'},
    [GetHashKey('penetrator')] = { model = 'penetrator', price = 300000, banned = false, name = 'Penetrator', trunk = 130, type = 'carro'},
    [GetHashKey('italirsx')] = { model = 'italirsx', price = 2300000, banned = false, name = 'ItaliRSX', trunk = 130, type = 'carro'},
    [GetHashKey('xa21')] = { model = 'xa21', price = 1200000, banned = false, name = 'XA21', trunk = 130, type = 'carro'},
    [GetHashKey('furia')] = { model = 'furia', price = 1200000, banned = false, name = 'Furia', trunk = 130, type = 'carro'},
    [GetHashKey('gp1')] = { model = 'gp1', price = 300000, banned = false, name = 'GP1', trunk = 130, type = 'carro'},
    [GetHashKey('futo')] = { model = 'futo', price = 150000, banned = false, name = 'Futo', trunk = 130, type = 'carro'},
    [GetHashKey('rumpo3')] = { model = 'rumpo3', price = 400000, banned = false, name = 'Rumpo 3', trunk = 300, type = 'carro'},
    [GetHashKey('turismor')] = { model = 'turismor', price = 700000, banned = false, name = 'TurismoR', trunk = 130, type = 'carro'},
    [GetHashKey('lectro')] = { model = 'lectro', price = 200000, banned = false, name = 'Lectro', trunk = 70, type = 'moto'},
    [GetHashKey('sanctus')] = { model = 'sanctus', price = 800000, banned = false, name = 'Sanctus', trunk = 70, type = 'moto'},
    [GetHashKey('vortex')] = { model = 'vortex', price = 750000, banned = false, name = 'Vortex', trunk = 70, type = 'moto'},
    [GetHashKey('zombieb')] = { model = 'zombieb', price = 1500, banned = false, name = 'ZombieB', trunk = 70, type = 'moto'},
    [GetHashKey('hakuchou')] = { model = 'hakuchou', price = 300000, banned = false, name = 'Hakuchou', trunk = 70, type = 'moto'},
    [GetHashKey('hakuchou2')] = { model = 'hakuchou2', price = 900000, banned = false, name = 'Hakuchou2', trunk = 70, type = 'moto'},
    [GetHashKey('innovation')] = { model = 'innovation', price = 550000, banned = false, name = 'Innovation', trunk = 70, type = 'moto'},
    [GetHashKey('wolfsbane')] = { model = 'wolfsbane', price = 400000, banned = false, name = 'Wolfsbane', trunk = 70, type = 'moto'},
    [GetHashKey('chimera')] = { model = 'chimera', price = 500000, banned = false, name = 'Chimera', trunk = 70, type = 'moto'},
    [GetHashKey('tulip')] = { model = 'tulip', price = 300000, banned = false, name = 'Tulip', trunk = 130, type = 'carro'},
    [GetHashKey('seminole2')] = { model = 'seminole2', price = 500000, banned = false, name = 'Seminole 2', trunk = 130, type = 'carro'},
    [GetHashKey('bf400')] = { model = 'bf400', price = 200000, banned = false, name = 'BF400', trunk = 70, type = 'moto'},
    [GetHashKey(' diablous2')] = { model = ' diablous2', price = 700000, banned = false, name = 'Diablous 2', trunk = 70, type = 'moto'},
    [GetHashKey('carbonrs')] = { model = 'carbonrs', price = 300000, banned = false, name = 'Carbonrs', trunk = 70, type = 'moto'},
    [GetHashKey('gauntlet4')] = { model = 'gauntlet4', price = 650000, banned = false, name = 'Gauntlet 4', trunk = 130, type = 'carro'},
    [GetHashKey('faction2')] = { model = 'faction2', price = 50000, banned = false, name = 'Faction2', trunk = 130, type = 'carro'},
    [GetHashKey('buccaneer2')] = { model = 'buccaneer2', price = 500000, banned = false, name = 'Buccaneer 2', trunk = 130, type = 'carro'},
    [GetHashKey('chino2')] = { model = 'chino2', price = 400000, banned = false, name = 'Chino 2', trunk = 130, type = 'carro'},
    [GetHashKey('moonbeam2')] = { model = 'moonbeam2', price = 400000, banned = false, name = 'Moonbeam2', trunk = 130, type = 'carro'},
    [GetHashKey('virgo2')] = { model = 'virgo2', price = 400000, banned = false, name = 'Virgo 2', trunk = 130, type = 'carro'},
    [GetHashKey('tornado5')] = { model = 'tornado5', price = 25000, banned = false, name = 'Tornado 5', trunk = 130, type = 'carro'},
    [GetHashKey('voodoo')] = { model = 'voodoo', price = 400000, banned = false, name = 'Voodoo', trunk = 130, type = 'carro'},
    [GetHashKey('rallytruck')] = { model = 'rallytruck', price = 20000000, banned = false, name = 'Rallytruck', trunk = 1000, type = 'carro'},
    [GetHashKey('turismo')] = { model = 'turismo', price = 200000, banned = false, name = 'turismo', trunk = 100, type = 'vip'},
    [GetHashKey('elegy')] = { model = 'elegy', price = 300000, banned = false, name = 'Elegy', trunk = 100, type = 'vip'},
    [GetHashKey('furia')] = { model = 'furia', price = 300000, banned = false, name = 'furia', trunk = 100, type = 'vip'},
    [GetHashKey('taipan')] = { model = 'taipan', price = 300000, banned = false, name = 'taipan', trunk = 100, type = 'vip'},
    [GetHashKey('osiris')] = { model = 'osiris', price = 300000, banned = false, name = 'osiris', trunk = 100, type = 'vip'},
    [GetHashKey('emereus')] = { model = 'emereus', price = 300000, banned = false, name = 'emereus', trunk = 100, type = 'vip'},
    [GetHashKey('sheava')] = { model = 'sheava', price = 300000, banned = false, name = 'sheava', trunk = 100, type = 'vip'},
    [GetHashKey('sultanrs')] = { model = 'sultanrs', price = 300000, banned = false, name = 'sultanrs', trunk = 100, type = 'vip'},
    [GetHashKey('thrax')] = { model = 'thrax', price = 300000, banned = false, name = 'thrax', trunk = 100, type = 'vip'},
    [GetHashKey('visone')] = { model = 'visone', price = 300000, banned = false, name = 'visone', trunk = 100, type = 'vip'},
    [GetHashKey('vagner')] = { model = 'vagner', price = 300000, banned = false, name = 'vagner', trunk = 100, type = 'vip'},
    [GetHashKey('Tyrant')] = { model = 'Tyrant', price = 300000, banned = false, name = 'Tyrant', trunk = 100, type = 'vip'},
    [GetHashKey('skyliner34')] = { model = 'skyliner34', price = 300000, banned = false, name = 'skyliner34', trunk = 100, type = 'vip'},
    [GetHashKey('r1')] = { model = 'r1', price = 300000, banned = false, name = 'Yamaha R1', trunk = 50, type = 'moto'},
    [GetHashKey('18velar')] = { model = '18velar', price = 300000, banned = false, name = 'Range Rover Velar', trunk = 200, type = 'carro'},
    [GetHashKey('718caymans')] = { model = '718caymans', price = 300000, banned = false, name = 'Porsche Caymans', trunk = 200, type = 'vip'},
    [GetHashKey('f4rr')] = { model = 'f4rr', price = 300000, banned = false, name = 'F4RR Agusta', trunk = 30, type = 'vip'},
    [GetHashKey('cbrr')] = { model = 'cbrr', price = 300000, banned = false, name = 'CB 1000RR', trunk = 30, type = 'vip'},
    [GetHashKey('gsrx')] = { model = 'gsrx', price = 300000, banned = false, name = 'Suzuki GSXR1000', trunk = 30, type = 'vip'},
    [GetHashKey('hilux2019')] = { model = 'hilux2019', price = 300000, banned = false, name = 'Toyota Hilux 2019', trunk = 170, type = 'carro'},
    [GetHashKey('tritonhpe')] = { model = 'tritonhpe', price = 1500000, banned = false, name = 'L200 Triton', trunk = 170, type = 'carro'},
    [GetHashKey('aperta')] = { model = 'aperta', price = 300000, banned = false, name = 'Ferrari Aperta', trunk = 100, type = 'vip'},
    [GetHashKey('lp700r')] = { model = 'lp700r', price = 300000, banned = false, name = 'Lamborghini Aventador', trunk = 100, type = 'vip'},
    [GetHashKey('p1')] = { model = 'p1', price = 300000, banned = false, name = 'MacLaren P1', trunk = 100, type = 'vip'},
    [GetHashKey('mgt')] = { model = 'mgt', price = 300000, banned = false, name = 'Mustang GT', trunk = 100, type = 'vip'},
    [GetHashKey('velociraptor')] = { model = 'velociraptor', price = 300000, banned = false, name = 'Ranger Velociraptor 6X6', trunk = 200, type = 'vip'},
    [GetHashKey('tiger')] = { model = 'tiger', price = 300000, banned = false, name = 'Tiger 800', trunk = 30, type = 'vip'},
    [GetHashKey('r1250')] = { model = 'r1250', price = 300000, banned = false, name = 'BMW R1250', trunk = 30, type = 'vip'},
    [GetHashKey('s1000rr')] = { model = 's1000rr', price = 300000, banned = false, name = 'BMW S1000RR', trunk = 30, type = 'vip'},
    [GetHashKey('opala')] = { model = 'opala', price = 200000, banned = false, name = 'Opala 92/93', trunk = 100, type = 'carro'},
    [GetHashKey('evo10')] = { model = 'evo10', price = 300000, banned = false, name = 'Lancer Evolution', trunk = 30, type = 'vip'},
    [GetHashKey('lancerevolutionx')] = { model = 'lancerevolutionx', price = 300000, banned = false, name = 'Lancer Evolution X', trunk = 30, type = 'vip'},
    [GetHashKey('amggt63s')] = { model = 'amggt63s', price = 300000, banned = false, name = 'Mercedes Amg GT63', trunk = 30, type = 'vip'},
    [GetHashKey('488gtb')] = { model = '488gtb', price = 300000, banned = false, name = 'Ferrari 488', trunk = 30, type = 'vip'},
    [GetHashKey('r8ppi')] = { model = 'r8ppi', price = 300000, banned = false, name = 'R8', trunk = 30, type = 'vip'},
    [GetHashKey('r6')] = { model = 'r6', price = 300000, banned = false, name = 'Yamaha R6', trunk = 30, type = 'vip'},
    [GetHashKey('mule')] = { model = 'mule', price = 3000000, banned = false, name = 'Mule', trunk = 15000, type = 'carro'},
    [GetHashKey('rocoto')] = { model = 'rocoto', price = 500000, banned = false, name = 'Fiat Toro', trunk = 130, type = 'carro'},
    [GetHashKey('cavalcade2')] = { model = 'cavalcade2', price = 500000, banned = false, name = 'Parati G3', trunk = 130, type = 'carro'},
    [GetHashKey('pcj')] = { model = 'pcj', price = 300000, banned = false, name = 'KTM', trunk = 5, type = 'vip'},
    [GetHashKey('mule2')] = { model = 'mule2', price = 3000000, banned = false, name = 'Mule2', trunk = 2250, type = 'carro'},
    [GetHashKey('mule3')] = { model = 'mule3', price = 300000, banned = false, name = 'Mule3', trunk = 300, type = 'vip'},
    [GetHashKey('mule4')] = { model = 'mule4', price = 300000, banned = false, name = 'Mule4', trunk = 400, type = 'vip'},
    [GetHashKey('havok')] = { model = 'havok', price = 300000, banned = false, name = 'Havok', trunk = 100, type = 'vip'},
    [GetHashKey('maverick')] = { model = 'maverick', price = 300000, banned = false, name = 'Maverick', trunk = 100, type = 'vip'},
    [GetHashKey('seasparrow')] = { model = 'seasparrow', price = 300000, banned = false, name = 'Seasparrow', trunk = 100, type = 'vip'},
    [GetHashKey('Swift')] = { model = 'Swift', price = 300000, banned = false, name = 'Swift', trunk = 100, type = 'vip'},
    [GetHashKey('montanaroyal')] = { model = 'montanaroyal', price = 300000, banned = false, name = 'montanaroyal', trunk = 100, type = 'vip'},
    [GetHashKey('golfgti7')] = { model = 'golfgti7', price = 300000, banned = false, name = 'golfgti7', trunk = 100, type = 'vip'},
    [GetHashKey('savaboxeg7')] = { model = 'savaboxeg7', price = 30000000, banned = false, name = 'savaboxeg7', trunk = 100, type = 'carro'},
    [GetHashKey('ramlh20')] = { model = 'ramlh20', price = 30000000, banned = false, name = 'ramlh20', trunk = 100, type = 'carro'},
    [GetHashKey('g7zin')] = { model = 'g7zin', price = 30000000, banned = false, name = 'g7zin', trunk = 100, type = 'carro'},
    [GetHashKey('s10deboxe')] = { model = 's10deboxe', price = 300000, banned = false, name = 's10deboxe', trunk = 100, type = 'carro'},
    [GetHashKey('golg5')] = { model = 'golg5', price = 30000000, banned = false, name = 'golg5', trunk = 100, type = 'carro'},
    [GetHashKey('golfabel')] = { model = 'golfabel', price = 300000, banned = false, name = 'golfabel', trunk = 100, type = 'carro'},
    [GetHashKey('armoredgle')] = { model = 'armoredgle', price = 300000, banned = false, name = 'armoredgle', trunk = 100, type = 'vip'},
    [GetHashKey('armoredx6')] = { model = 'armoredx6', price = 300000, banned = false, name = 'armoredx6', trunk = 100, type = 'vip'},
    [GetHashKey('silvia')] = { model = 'silvia', price = 300000, banned = false, name = 'silvia', trunk = 100, type = 'vip'},
    [GetHashKey('f25')] = { model = 'f25', price = 300000, banned = false, name = 'f25', trunk = 100, type = 'vip'},
    [GetHashKey('saveiro')] = { model = 'saveiro', price = 500000, banned = false, name = 'saveiro', trunk = 100, type = 'carro'},
    [GetHashKey('hycadem8')] = { model = 'hycadem8', price = 300000, banned = false, name = 'hycadem8', trunk = 100, type = 'vip'},
    [GetHashKey('fbi')] = { model = 'fbi', price = 300000, banned = false, name = 'fbi', trunk = 100, type = 'vip'},
    [GetHashKey('fbi2')] = { model = 'fbi2', price = 300000, banned = false, name = 'fbi2', trunk = 100, type = 'vip'},
    [GetHashKey('policeb')] = { model = 'policeb', price = 300000, banned = false, name = 'policeb', trunk = 100, type = 'vip'},
    [GetHashKey('sheriff2')] = { model = 'sheriff2', price = 300000, banned = false, name = 'sheriff2', trunk = 100, type = 'vip'},
    [GetHashKey('police4')] = { model = 'police4', price = 300000, banned = false, name = 'police4', trunk = 100, type = 'vip'},
    [GetHashKey('stretch')] = { model = 'stretch', price = 300000, banned = false, name = 'stretch', trunk = 100, type = 'vip'},
    [GetHashKey('baller5')] = { model = 'baller5', price = 5000000, banned = false, name = 'baller5', trunk = 100, type = 'carro'},
    [GetHashKey('baller6')] = { model = 'baller6', price = 8000000, banned = false, name = 'baller6', trunk = 100, type = 'carro'},
    [GetHashKey('xls2')] = { model = 'xls2', price = 300000, banned = false, name = 'xls2', trunk = 100, type = 'vip'},
    [GetHashKey('patriot2')] = { model = 'patriot2', price = 300000, banned = false, name = 'patriot2', trunk = 100, type = 'vip'},
    [GetHashKey('terbyte')] = { model = 'terbyte', price = 300000, banned = false, name = 'terbyte', trunk = 30000, type = 'vip'},
    [GetHashKey('pol718')] = { model = 'pol718', price = 300000, banned = false, name = 'porschepolice', trunk = 100, type = 'vip'},
    [GetHashKey('ccadeesv')] = { model = 'ccadeesv', price = 300000, banned = false, name = 'ccadeesv', trunk = 100, type = 'vip'},
    [GetHashKey('21hilux')] = { model = '21hilux', price = 30000000, banned = false, name = '21hilux', trunk = 100, type = 'carro'},
    [GetHashKey('21hiluxdimond')] = { model = '21hiluxdimond', price = 30000000, banned = false, name = '21hiluxdimond', trunk = 100, type = 'carro'},
    [GetHashKey('amarokdeboxe')] = { model = 'amarokdeboxe', price = 30000000, banned = false, name = 'amarokdeboxe', trunk = 100, type = 'carro'},
    [GetHashKey('fuscaabel')] = { model = 'fuscaabel', price = 1000000, banned = false, name = 'fuscaabel', trunk = 100, type = 'carro'},
    [GetHashKey('golg8boxeteto')] = { model = 'golg8boxeteto', price = 300000, banned = false, name = 'golg8boxeteto', trunk = 100, type = 'vip'},
    [GetHashKey('golgl')] = { model = 'golgl', price = 100000, banned = false, name = 'golgl', trunk = 100, type = 'carro'},
    [GetHashKey('porschereb')] = { model = 'porschereb', price = 300000, banned = false, name = 'porschereb', trunk = 100, type = 'vip'},
    [GetHashKey('savaboxe')] = { model = 'savaboxe', price = 300000, banned = false, name = 'savaboxe', trunk = 100, type = 'carro'},
    [GetHashKey('tcrossar')] = { model = 'tcrossar', price = 300000, banned = false, name = 'tcrossar', trunk = 100, type = 'carro'},
    [GetHashKey('r1250')] = { model = 'r1250', price = 300000, banned = false, name = 'r1250', trunk = 100, type = 'vip'},
    [GetHashKey('lamborghinihuracan')] = { model = 'lamborghinihuracan', price = 300000, banned = false, name = 'lamborghinihuracan', trunk = 100, type = 'vip'},
    [GetHashKey('Wrasprinter')] = { model = 'Wrasprinter', price = 300000, banned = false, name = 'Wrasprinter', trunk = 100, type = 'vip'},
    [GetHashKey('Wrgle53')] = { model = 'Wrgle53', price = 300000, banned = false, name = 'Wrgle53', trunk = 100, type = 'vip'},
    [GetHashKey('WRr1200')] = { model = 'WRr1200', price = 300000, banned = false, name = 'WRr1200', trunk = 100, type = 'vip'},
    [GetHashKey('fnfrx7')] = { model = 'fnfrx7', price = 300000, banned = false, name = 'fnfrx7', trunk = 100, type = 'vip'},
    [GetHashKey('fnfmk4')] = { model = 'fnfmk4', price = 300000, banned = false, name = 'fnfmk4', trunk = 100, type = 'vip'},
    [GetHashKey('fnflan')] = { model = 'fnflan', price = 300000, banned = false, name = 'fnflan', trunk = 100, type = 'vip'},
    [GetHashKey('fnfmits')] = { model = 'fnfmits', price = 300000, banned = false, name = 'fnfmits', trunk = 100, type = 'vip'},
    [GetHashKey('ff4wrx')] = { model = 'ff4wrx', price = 300000, banned = false, name = 'ff4wrx', trunk = 100, type = 'vip'},
    [GetHashKey('2f2fmle7')] = { model = '2f2fmle7', price = 300000, banned = false, name = '2f2fmle7', trunk = 100, type = 'vip'},
    [GetHashKey('2f2fmk4')] = { model = '2f2fmk4', price = 300000, banned = false, name = '2f2fmk4', trunk = 100, type = 'vip'},
    [GetHashKey('2f2fgts')] = { model = '2f2fgts', price = 300000, banned = false, name = '2f2fgts', trunk = 100, type = 'vip'},
    [GetHashKey('energy450')] = { model = 'energy450', price = 300000, banned = false, name = 'energy450', trunk = 100, type = 'vip'},
    [GetHashKey('energyr1200')] = { model = 'energyr1200', price = 300000, banned = false, name = 'energyr1200', trunk = 100, type = 'vip'},
    [GetHashKey('307c')] = { model = '307c', price = 300000, banned = false, name = '307c', trunk = 100, type = 'carro'},
    [GetHashKey('370z')] = { model = '370z', price = 300000, banned = false, name = '370z', trunk = 100, type = 'vip'},
    [GetHashKey('astonmartindbs')] = { model = 'astonmartindbs', price = 300000, banned = false, name = 'astonmartindbs', trunk = 100, type = 'vip'},
    [GetHashKey('audir8')] = { model = 'audir8', price = 300000, banned = false, name = 'audir8', trunk = 100, type = 'vip'},
    [GetHashKey('audirs')] = { model = 'audirs', price = 300000, banned = false, name = 'audirs', trunk = 100, type = 'vip'},
    [GetHashKey('aventador')] = { model = 'aventador', price = 300000, banned = false, name = 'aventador', trunk = 100, type = 'vip'},
    [GetHashKey('bmwi8')] = { model = 'bmwi8', price = 300000, banned = false, name = 'bmwi8', trunk = 100, type = 'vip'},
    [GetHashKey('bmwm4gts')] = { model = 'bmwm4gts', price = 300000, banned = false, name = 'bmwm4gts', trunk = 100, type = 'vip'},
    [GetHashKey('bmwm1wb')] = { model = 'bmwm1wb', price = 300000, banned = false, name = 'bmwm1wb', trunk = 100, type = 'vip'},
    [GetHashKey('bmwm5e34')] = { model = 'bmwm5e34', price = 300000, banned = false, name = 'bmwm5e34', trunk = 100, type = 'vip'},
    [GetHashKey('camaro')] = { model = 'camaro', price = 300000, banned = false, name = 'camaro', trunk = 100, type = 'vip'},
    [GetHashKey('celta')] = { model = 'celta', price = 200000, banned = false, name = 'celta', trunk = 100, type = 'carro'},
    [GetHashKey('160chumbo')] = { model = '160chumbo', price = 300000, banned = false, name = '160chumbo', trunk = 100, type = 'moto'},
    [GetHashKey('chevette')] = { model = 'chevette', price = 300000, banned = false, name = 'chevette', trunk = 100, type = 'carro'},
    [GetHashKey('city')] = { model = 'city', price = 600000, banned = false, name = 'city', trunk = 100, type = 'carro'},
    [GetHashKey('civictyper')] = { model = 'civictyper', price = 300000, banned = false, name = 'civictyper', trunk = 100, type = 'vip'},
    [GetHashKey('corvettec7')] = { model = 'corvettec7', price = 300000, banned = false, name = 'corvettec7', trunk = 100, type = 'vip'},
    [GetHashKey('cruze')] = { model = 'cruze', price = 50000, banned = false, name = 'cruze', trunk = 100, type = 'carro'},
    [GetHashKey('dodgechargerrt69')] = { model = 'dodgechargerrt69', price = 900000, banned = false, name = 'dodgechargerrt69', trunk = 100, type = 'vip'},
    [GetHashKey('escaladegt900')] = { model = 'escaladegt900', price = 300000, banned = false, name = 'escaladegt900', trunk = 100, type = 'vip'},
    [GetHashKey('dodgechargersrt')] = { model = 'dodgechargersrt', price = 300000, banned = false, name = 'dodgechargersrt', trunk = 100, type = 'vip'},
    [GetHashKey('escort')] = { model = 'escort', price = 300000, banned = false, name = 'escort', trunk = 100, type = 'carro'},
    [GetHashKey('ferrari812')] = { model = 'ferrari812', price = 300000, banned = false, name = 'ferrari812', trunk = 100, type = 'vip'},
    [GetHashKey('ferrarif12')] = { model = 'ferrarif12', price = 300000, banned = false, name = 'ferrarif12', trunk = 100, type = 'vip'},
    [GetHashKey('ferrariitalia')] = { model = 'ferrariitalia', price = 300000, banned = false, name = 'ferrariitalia', trunk = 100, type = 'vip'},
    [GetHashKey('fiattoro')] = { model = 'fiattoro', price = 550000, banned = false, name = 'fiattoro', trunk = 100, type = 'carro'},
    [GetHashKey('fusca')] = { model = 'fusca', price = 180000, banned = false, name = 'fusca', trunk = 100, type = 'carro'},
    [GetHashKey('golquadrado')] = { model = 'golquadrado', price = 200000, banned = false, name = 'golquadrado', trunk = 100, type = 'carro'},
    [GetHashKey('hb20')] = { model = 'hb20', price = 400000, banned = false, name = 'hb20', trunk = 100, type = 'carro'},
    [GetHashKey('lamborghinihuracan')] = { model = 'lamborghinihuracan', price = 300000, banned = false, name = 'lamborghinihuracan', trunk = 100, type = 'vip'},
    [GetHashKey('jettagli')] = { model = 'jettagli', price = 300000, banned = false, name = 'jettagli', trunk = 100, type = 'carro'},
    [GetHashKey('lancerevolution9')] = { model = 'lancerevolution9', price = 300000, banned = false, name = 'lancerevolution9', trunk = 100, type = 'vip'},
    [GetHashKey('m8competition')] = { model = 'm8competition', price = 300000, banned = false, name = 'm8competition', trunk = 100, type = 'vip'},
    [GetHashKey('mazdarx7')] = { model = 'mazdarx7', price = 300000, banned = false, name = 'mazdarx7', trunk = 100, type = 'vip'},
    [GetHashKey('opala')] = { model = 'opala', price = 500000, banned = false, name = 'opala', trunk = 100, type = 'carro'},
    [GetHashKey('mustang1969')] = { model = 'mustang1969', price = 300000, banned = false, name = 'mustang1969', trunk = 100, type = 'vip'},
    [GetHashKey('palio')] = { model = 'palio', price = 300000, banned = false, name = 'palio', trunk = 100, type = 'carro'},
    [GetHashKey('panameramansory')] = { model = 'panameramansory', price = 300000, banned = false, name = 'panameramansory', trunk = 100, type = 'vip'},
    [GetHashKey('parati')] = { model = 'parati', price = 300000, banned = false, name = 'parati', trunk = 100, type = 'carro'},
    [GetHashKey('r1')] = { model = 'r1', price = 15000000, banned = false, name = 'r1', trunk = 100, type = 'moto'},
    [GetHashKey('r6')] = { model = 'r6', price = 15000000, banned = false, name = 'r6', trunk = 100, type = 'moto'},
    [GetHashKey('rangerover')] = { model = 'rangerover', price = 300000, banned = false, name = 'rangerover', trunk = 100, type = 'vip'},
    [GetHashKey('s1000rr')] = { model = 's1000rr', price = 300000, banned = false, name = 's1000rr', trunk = 100, type = 'vip'},
    [GetHashKey('saveirodeboxe')] = { model = 'saveirodeboxe', price = 300000, banned = false, name = 'saveirodeboxe', trunk = 100, type = 'vip'},
    [GetHashKey('shelbygt500')] = { model = 'shelbygt500', price = 300000, banned = false, name = 'shelbygt500', trunk = 100, type = 'vip'},
    [GetHashKey('silvias15')] = { model = 'silvias15', price = 300000, banned = false, name = 'silvias15', trunk = 100, type = 'vip'},
    [GetHashKey('subarubrz')] = { model = 'subarubrz', price = 300000, banned = false, name = 'subarubrz', trunk = 100, type = 'vip'},
    [GetHashKey('toyotasupra')] = { model = 'toyotasupra', price = 300000, banned = false, name = 'toyotasupra', trunk = 100, type = 'vip'},
    [GetHashKey('toyotasupra2')] = { model = 'toyotasupra2', price = 300000, banned = false, name = 'toyotasupra2', trunk = 100, type = 'vip'},
    [GetHashKey('uno')] = { model = 'uno', price = 150000, banned = false, name = 'uno', trunk = 100, type = 'carro'},
    [GetHashKey('vwtouareg ')] = { model = 'vwtouareg ', price = 300000, banned = false, name = 'vwtouareg ', trunk = 100, type = 'carro'},
    [GetHashKey('xj6')] = { model = 'xj6', price = 300000, banned = false, name = 'xj6', trunk = 100, type = 'vip'},
    [GetHashKey('xre300')] = { model = 'xre300', price = 3000000, banned = false, name = 'xre300', trunk = 100, type = 'moto'},
    [GetHashKey('xt660')] = { model = 'xt660', price = 3000000, banned = false, name = 'xt660', trunk = 100, type = 'moto'},
    [GetHashKey('zx10r')] = { model = 'zx10r', price = 300000, banned = false, name = 'zx10r', trunk = 100, type = 'vip'},
    [GetHashKey('rsq8mans')] = { model = 'rsq8mans', price = 300000, banned = false, name = 'RS8', trunk = 200, type = 'vip'},
    [GetHashKey('cargobob')] = { model = 'cargobob', price = 300000, banned = false, name = 'cargobob', trunk = 800, type = 'none'},
    [GetHashKey('luxor')] = { model = 'luxor', price = 300000, banned = false, name = 'luxor', trunk = 1000, type = 'none'},
    [GetHashKey('shamal')] = { model = 'shamal', price = 300000, banned = false, name = 'shamal', trunk = 1000, type = 'none'},
    [GetHashKey('titan')] = { model = 'titan', price = 300000, banned = false, name = 'titan', trunk = 10000, type = 'none'},
    [GetHashKey('amarokpolicia')] = { model = 'amarokpolicia', price = nil, banned = false, name = 'Amarok DPD', trunk = 50, type = 'none'},
    [GetHashKey('ambulance')] = { model = 'ambulance', price = 0, banned = false, name = 'Ambulancia', trunk = 50, type = 'none'},
    [GetHashKey('sahpexplorer2')] = { model = 'sahpexplorer2', price = nil, banned = false, name = 'Ford Explore Médico', trunk = 50, type = 'none'},
    [GetHashKey('mercedespolicia')] = { model = 'mercedespolicia', price = nil, banned = false, name = 'Mercedes DPD', trunk = 50, type = 'none'},
    [GetHashKey('paramedicoheli')] = { model = 'paramedicoheli', price = nil, banned = false, name = 'Helicoptéro Médico', trunk = 50, type = 'none'},
    [GetHashKey('pdfocus')] = { model = 'pdfocus', price = nil, banned = false, name = 'Ford Focus DPD', trunk = 50, type = 'none'},
    [GetHashKey('tigerpolicia')] = { model = 'tigerpolicia', price = nil, banned = false, name = 'Tiger DPD', trunk = 30, type = 'none'},
    [GetHashKey('polmav')] = { model = 'polmav', price = nil, banned = false, name = 'Helicoptero DPD', trunk = 50, type = 'none'},
    [GetHashKey('trail20pm')] = { model = 'trail20pm', price = nil, banned = false, name = 'trail20pm', trunk = 50, type = 'none'},
    [GetHashKey('tigerpm')] = { model = 'tigerpm', price = nil, banned = false, name = 'tigerpm', trunk = 50, type = 'none'},
    [GetHashKey('s10pm')] = { model = 's10pm', price = nil, banned = false, name = 's10pm', trunk = 50, type = 'none'},
    [GetHashKey('r1200pm ')] = { model = 'r1200pm ', price = nil, banned = false, name = 'r1200pm ', trunk = 50, type = 'none'},
    [GetHashKey('polmav')] = { model = 'polmav', price = nil, banned = false, name = 'polmav', trunk = 50, type = 'none'},
    [GetHashKey('pbus')] = { model = 'pbus', price = nil, banned = false, name = 'pbus', trunk = 50, type = 'none'},
    [GetHashKey('pantera')] = { model = 'pantera', price = nil, banned = false, name = 'pantera', trunk = 50, type = 'none'},
    [GetHashKey('dusterrp2')] = { model = 'dusterrp2', price = nil, banned = false, name = 'dusterrp2', trunk = 50, type = 'none'},
    [GetHashKey('dusterrp1')] = { model = 'dusterrp1', price = nil, banned = false, name = 'dusterrp1', trunk = 50, type = 'none'},
    [GetHashKey('s10rotam')] = { model = 's10rotam', price = nil, banned = false, name = 's10rotam', trunk = 50, type = 'none'},
    [GetHashKey('equinoxprf')] = { model = 'equinoxprf', price = nil, banned = false, name = 's10rotam', trunk = 50, type = 'none'},
    [GetHashKey('trail22prf')] = { model = 'trail22prf', price = nil, banned = false, name = 'trail22prf', trunk = 50, type = 'none'},
    [GetHashKey('trail20prf')] = { model = 'trail20prf', price = nil, banned = false, name = 'trail20prf', trunk = 50, type = 'none'},
    [GetHashKey('dusterpc')] = { model = 'dusterpc', price = nil, banned = false, name = 'dusterpc', trunk = 50, type = 'none'},
    [GetHashKey('trail21pc')] = { model = 'trail21pc', price = nil, banned = false, name = 'trail21pc', trunk = 50, type = 'none'},
    [GetHashKey('jeepcherokee')] = { model = 'jeepcherokee', price = nil, banned = false, name = 'jeepcherokee', trunk = 200, type = 'vip'},
    [GetHashKey('supervolito')] = { model = 'supervolito', price = 300000, banned = false, name = 'Supervolito', trunk = 150, type = 'none'},
    [GetHashKey('frogger')] = { model = 'frogger', price = 300000, banned = false, name = 'Frogger', trunk = 150, type = 'none'},
    [GetHashKey('volatus')] = { model = 'volatus', price = 300000, banned = false, name = 'Volatus', trunk = 150, type = 'none'},
    [GetHashKey('swift2')] = { model = 'swift2', price = 300000, banned = false, name = 'Swifit2', trunk = 150, type = 'none'},
    [GetHashKey('phantom')] = { model = 'phantom', price = nil, banned = false, name = 'Phantom', trunk = nil, type = 'none'},
    [GetHashKey('trash2')] = { model = 'trash2', price = nil, banned = false, name = 'Trash 2', trunk = nil, type = 'none'},
    [GetHashKey('tiptruck')] = { model = 'tiptruck', price = nil, banned = false, name = 'Tip Truck', trunk = 80, type = 'none'},
    [GetHashKey('boxville2')] = { model = 'boxville2', price = nil, banned = false, name = 'Box ville', trunk = 80, type = 'none'},
    [GetHashKey('airbus')] = { model = 'airbus', price = nil, banned = false, name = 'Airbus', trunk = nil, type = 'none'},
    [GetHashKey('bus')] = { model = 'bus', price = nil, banned = false, name = 'Bus', trunk = nil, type = 'none'},
    [GetHashKey('coach')] = { model = 'coach', price = nil, banned = false, name = 'Coach', trunk = nil, type = 'none'},
    [GetHashKey('dinghy')] = { model = 'dinghy', price = nil, banned = false, name = 'Dinghy', trunk = 50, type = 'none'},
    [GetHashKey('trailerlogs')] = { model = 'trailerlogs', price = nil, banned = false, name = 'Trailer logs', trunk = 100, type = 'none'},
    [GetHashKey('taxi')] = { model = 'taxi', price = nil, banned = false, name = 'Taxi', trunk = nil, type = 'none'},
    [GetHashKey('towtruck2')] = { model = 'towtruck2', price = 0, banned = false, name = 'Guincho', trunk = 50, type = 'none'},
    [GetHashKey('flatbed')] = { model = 'flatbed', price = 0, banned = false, name = 'flatbed', trunk = 10, type = 'none'},
    [GetHashKey('golg4')] = { model = 'golg4', price = 300000, banned = false, name = 'golg4', trunk = 10, type = 'vip'},
    [GetHashKey('s15silhouette')] = { model = 's15silhouette', price = 0, banned = false, name = 's15silhouette', trunk = 10, type = 'vip'},
    [GetHashKey('-venatus')] = { model = '-venatus', price = 300000, banned = false, name = 'venatus', trunk = 10, type = 'vip'},
    [GetHashKey('DBdemondurango')] = { model = 'DBdemondurango', price = 300000, banned = false, name = 'DBdemondurango', trunk = 10, type = 'vip'},
    [GetHashKey('z1000')] = { model = 'z1000', price = 300000, banned = false, name = 'z1000', trunk = 10, type = 'vip'},
    [GetHashKey('RYGBus')] = { model = 'RYGBus', price = 300000, banned = false, name = 'RYGBus', trunk = 10, type = 'vip'},
    [GetHashKey('golf1')] = { model = 'golf1', price = 300000, banned = false, name = 'golf1', trunk = 10, type = 'vip'},
    [GetHashKey('golf7')] = { model = 'golf7', price = 300000, banned = false, name = 'golf7', trunk = 10, type = 'vip'},
    [GetHashKey('passat')] = { model = 'passat', price = 300000, banned = false, name = 'passat', trunk = 10, type = 'carro'},
    [GetHashKey('specialtf')] = { model = 'specialtf', price = 300000, banned = false, name = 'specialtf', trunk = 10, type = 'vip'},
    [GetHashKey('zl1')] = { model = 'zl1', price = 300000, banned = false, name = 'zl1', trunk = 10, type = 'vip'},
    [GetHashKey('amarokreb')] = { model = 'amarokreb', price = 300000, banned = false, name = 'amarokreb', trunk = 10, type = 'vip'},
    [GetHashKey('20xb7')] = { model = '20xb7', price = 300000, banned = false, name = '20xb7', trunk = 10, type = 'vip'},
    [GetHashKey('GODzDRKHRSESBWB')] = { model = 'GODzDRKHRSESBWB', price = 300000, banned = false, name = 'GODzDRKHRSESBWB', trunk = 10, type = 'vip'},
    [GetHashKey('20xb7')] = { model = '20xb7', price = 300000, banned = false, name = '20xb7', trunk = 10, type = 'vip'},
    [GetHashKey('machewb')] = { model = 'machewb', price = 300000, banned = false, name = 'machewb', trunk = 10, type = 'vip'},
    [GetHashKey('rrformulawide')] = { model = 'rrformulawide', price = 300000, banned = false, name = 'rrformulawide', trunk = 10, type = 'vip'},
    [GetHashKey('gcmlamboultimae')] = { model = 'gcmlamboultimae', price = 300000, banned = false, name = 'gcmlamboultimae', trunk = 10, type = 'vip'},
    [GetHashKey('h2m')] = { model = 'h2m', price = 300000, banned = false, name = 'h2m', trunk = 10, type = 'vip'},
    [GetHashKey('fk8')] = { model = 'fk8', price = 300000, banned = false, name = 'fk8', trunk = 10, type = 'vip'},
    [GetHashKey('jes21')] = { model = 'jes21', price = 300000, banned = false, name = 'jes21', trunk = 10, type = 'vip'},
    [GetHashKey('senna')] = { model = 'senna', price = 300000, banned = false, name = 'senna', trunk = 10, type = 'vip'},
    [GetHashKey('-G63Sam')] = { model = '-G63Sam', price = 300000, banned = false, name = '-G63Sam', trunk = 10, type = 'vip'},
    [GetHashKey('CarsonsHycadeR35')] = { model = 'CarsonsHycadeR35', price = 300000, banned = false, name = 'CarsonsHycadeR35', trunk = 10, type = 'vip'},
    [GetHashKey('nismo20')] = { model = 'nismo20', price = 300000, banned = false, name = 'nismo20', trunk = 10, type = 'vip'},
    [GetHashKey('s15lunarr')] = { model = 's15lunarr', price = 300000, banned = false, name = 's15lunarr', trunk = 10, type = 'vip'},
    [GetHashKey('r36fp')] = { model = 'r36fp', price = 300000, banned = false, name = 'r36fp', trunk = 10, type = 'vip'},
    [GetHashKey('r35legend')] = { model = 'r35legend', price = 300000, banned = false, name = 'r35legend', trunk = 10, type = 'vip'},
    [GetHashKey('silvia666')] = { model = 'silvia666', price = 300000, banned = false, name = 'silvia666', trunk = 10, type = 'vip'},
    [GetHashKey('aerox155')] = { model = 'aerox155', price = 300000, banned = false, name = 'aerox155', trunk = 10, type = 'vip'},
    [GetHashKey('bati901')] = { model = 'bati901', price = 300000, banned = false, name = 'bati901', trunk = 10, type = 'vip'},
    [GetHashKey('cb650r')] = { model = 'cb650r', price = 300000, banned = false, name = 'cb650r', trunk = 10, type = 'vip'},
    [GetHashKey('21rsq8')] = { model = '21rsq8', price = 300000, banned = false, name = '21rsq8', trunk = 10, type = 'vip'},
    [GetHashKey('74civrswb')] = { model = '74civrswb', price = 300000, banned = false, name = '74civrswb', trunk = 10, type = 'vip'},
    [GetHashKey('q8hycade')] = { model = 'q8hycade', price = 300000, banned = false, name = 'q8hycade', trunk = 10, type = 'vip'},
    [GetHashKey('rs4rk')] = { model = 'rs4rk', price = 300000, banned = false, name = 'rs4rk', trunk = 10, type = 'vip'},
    [GetHashKey('rs5mans')] = { model = 'rs5mans', price = 300000, banned = false, name = 'rs5mans', trunk = 10, type = 'vip'},
    [GetHashKey('m3e92')] = { model = 'm3e92', price = 300000, banned = false, name = 'm3e92', trunk = 10, type = 'vip'},
    [GetHashKey('ddc69maro')] = { model = 'ddc69maro', price = 300000, banned = false, name = 'ddc69maro', trunk = 10, type = 'vip'},
    [GetHashKey('chironsuper')] = { model = 'chironsuper', price = 300000, banned = false, name = 'chironsuper', trunk = 10, type = 'vip'},
    [GetHashKey('ckbmwm4offwhite')] = { model = 'ckbmwm4offwhite', price = 300000, banned = false, name = 'ckbmwm4offwhite', trunk = 10, type = 'vip'},
    [GetHashKey('rmodcharger')] = { model = 'rmodcharger', price = 300000, banned = false, name = 'rmodcharger', trunk = 10, type = 'vip'},
    [GetHashKey('chargerf8')] = { model = 'chargerf8', price = 300000, banned = false, name = 'chargerf8', trunk = 10, type = 'vip'},
    [GetHashKey('hellcatf9')] = { model = 'hellcatf9', price = 300000, banned = false, name = 'hellcatf9', trunk = 10, type = 'vip'},
    [GetHashKey('q8prior')] = { model = 'q8prior', price = 300000, banned = false, name = 'q8prior', trunk = 10, type = 'vip'},
    [GetHashKey('amarok')] = { model = 'amarok', price = 300000, banned = false, name = 'amarok', trunk = 10, type = 'vip'},
    [GetHashKey('160chumbo')] = { model = '160chumbo', price = 300000, banned = false, name = '160chumbo', trunk = 10, type = 'moto'},
    [GetHashKey('samumav')] = { model = 'samumav', price = 300000, banned = false, name = 'samumav', trunk = 10, type = 'vip'},
    [GetHashKey('r1200')] = { model = 'r1200', price = 300000, banned = false, name = 'r1200', trunk = 10000, type = 'vip'},
    [GetHashKey('trenonatal')] = { model = 'trenonatal', price = 300000, banned = false, name = 'trenonatal', trunk = 10000, type = 'vip'},
    [GetHashKey('chevroletnatal')] = { model = 'chevroletnatal', price = 300000, banned = false, name = 'chevroletnatal', trunk = 10000, type = 'vip'},
    [GetHashKey('xre2019')] = { model = 'xre2019', price = 300000, banned = false, name = 'xre2019', trunk = 10000, type = 'vip'},
    [GetHashKey('pop110i')] = { model = 'pop110i', price = 300000, banned = false, name = 'pop110i', trunk = 10000, type = 'vip'},
    [GetHashKey('18performante')] = { model = '18performante', price = 300000, banned = false, name = '18performante', trunk = 10000, type = 'vip'},
    [GetHashKey('350z')] = { model = '350z', price = 300000, banned = false, name = '350z', trunk = 10000, type = 'vip'},
    [GetHashKey('675lt')] = { model = '675lt', price = 300000, banned = false, name = '675lt', trunk = 10000, type = 'vip'},
    [GetHashKey('2022jeep')] = { model = '2022jeep', price = 300000, banned = false, name = '2022jeep', trunk = 10000, type = 'vip'},
    [GetHashKey('a45')] = { model = 'a45', price = 300000, banned = false, name = 'a45', trunk = 10000, type = 'vip'},
    [GetHashKey('aerox155')] = { model = 'aerox155', price = 300000, banned = false, name = 'aerox155', trunk = 10000, type = 'vip'},
    [GetHashKey('amaroksimples')] = { model = 'amaroksimples', price = 300000, banned = false, name = 'amaroksimples', trunk = 10000, type = 'vip'},
    [GetHashKey('brzartisan')] = { model = 'brzartisan', price = 300000, banned = false, name = 'brzartisan', trunk = 10000, type = 'vip'},
    [GetHashKey('carrera19')] = { model = 'carrera19', price = 300000, banned = false, name = 'carrera19', trunk = 10000, type = 'vip'},
    [GetHashKey('claw')] = { model = 'claw', price = 300000, banned = false, name = 'claw', trunk = 10000, type = 'vip'},
    [GetHashKey('evo9')] = { model = 'evo9', price = 300000, banned = false, name = 'evo9', trunk = 10000, type = 'vip'},
    [GetHashKey('fpaceprior')] = { model = 'fpaceprior', price = 300000, banned = false, name = 'fpaceprior', trunk = 10000, type = 'vip'},
    [GetHashKey('g63c')] = { model = 'g63c', price = 300000, banned = false, name = 'g63c', trunk = 10000, type = 'vip'},
    [GetHashKey('GC_01INTEG')] = { model = 'GC_01INTEG', price = 300000, banned = false, name = 'GC_01INTEG', trunk = 10000, type = 'vip'},
    [GetHashKey('gcma4sedan2021')] = { model = 'gcma4sedan2021', price = 300000, banned = false, name = 'gcma4sedan2021', trunk = 10000, type = 'vip'},
    [GetHashKey('GODz300UTEHC')] = { model = 'GODz300UTEHC', price = 300000, banned = false, name = 'GODz300UTEHC', trunk = 10000, type = 'vip'},
    [GetHashKey('GODzBMWS1000RR')] = { model = 'GODzBMWS1000RR', price = 300000, banned = false, name = 'GODzBMWS1000RR', trunk = 10000, type = 'vip'},
    [GetHashKey('GODzNINJAH2')] = { model = 'GODzNINJAH2', price = 300000, banned = false, name = 'GODzNINJAH2', trunk = 10000, type = 'vip'},
    [GetHashKey('GODzRB26SUBI')] = { model = 'GODzRB26SUBI', price = 300000, banned = false, name = 'GODzRB26SUBI', trunk = 10000, type = 'vip'},
    [GetHashKey('GODzYAMR1')] = { model = 'GODzYAMR1', price = 300000, banned = false, name = 'GODzYAMR1', trunk = 10000, type = 'vip'},
    [GetHashKey('gt63mt')] = { model = 'gt63mt', price = 300000, banned = false, name = 'gt63mt', trunk = 10000, type = 'vip'},
    [GetHashKey('gta5rp_veh_gtr33')] = { model = 'gta5rp_veh_gtr33', price = 300000, banned = false, name = 'gta5rp_veh_gtr33', trunk = 10000, type = 'vip'},
    [GetHashKey('harleyfx')] = { model = 'harleyfx', price = 300000, banned = false, name = 'harleyfx', trunk = 10000, type = 'vip'},
    [GetHashKey('hexerz2')] = { model = 'hexerz2', price = 300000, banned = false, name = 'hexerz2', trunk = 10000, type = 'vip'},
    [GetHashKey('huracanpriorbeast')] = { model = 'huracanpriorbeast', price = 300000, banned = false, name = 'huracanpriorbeast', trunk = 10000, type = 'vip'},
    [GetHashKey('hyundaiveloster')] = { model = 'hyundaiveloster', price = 300000, banned = false, name = 'hyundaiveloster', trunk = 10000, type = 'vip'},
    [GetHashKey('ikx3abt20')] = { model = 'ikx3abt20', price = 300000, banned = false, name = 'ikx3abt20', trunk = 10000, type = 'vip'},
    [GetHashKey('ikx3mc2021')] = { model = 'ikx3mc2021', price = 300000, banned = false, name = 'ikx3mc2021', trunk = 10000, type = 'vip'},
    [GetHashKey('ikx3rebel22')] = { model = 'ikx3rebel22', price = 300000, banned = false, name = 'ikx3rebel22', trunk = 10000, type = 'vip'},
    [GetHashKey('kawagala')] = { model = 'kawagala', price = 300000, banned = false, name = 'kawagala', trunk = 10000, type = 'vip'},
    [GetHashKey('km1000rr')] = { model = 'km1000rr', price = 300000, banned = false, name = 'km1000rr', trunk = 10000, type = 'vip'},
    [GetHashKey('lc500')] = { model = 'lc500', price = 300000, banned = false, name = 'lc500', trunk = 10000, type = 'vip'},
    [GetHashKey('madf350lift')] = { model = 'madf350lift', price = 300000, banned = false, name = 'madf350lift', trunk = 10000, type = 'vip'},
    [GetHashKey('mansgt')] = { model = 'mansgt', price = 300000, banned = false, name = 'mansgt', trunk = 10000, type = 'none'},
    [GetHashKey('manssupersnake')] = { model = 'manssupersnake', price = 300000, banned = false, name = 'manssupersnake', trunk = 10000, type = 'vip'},
    [GetHashKey('model3')] = { model = 'model3', price = 300000, banned = false, name = 'model3', trunk = 10000, type = 'vip'},
    [GetHashKey('models')] = { model = 'models', price = 300000, banned = false, name = 'models', trunk = 10000, type = 'vip'},
    [GetHashKey('mv2019')] = { model = 'mv2019', price = 300000, banned = false, name = 'mv2019', trunk = 10000, type = 'vip'},
    [GetHashKey('nsx17')] = { model = 'nsx17', price = 300000, banned = false, name = 'nsx17', trunk = 10000, type = 'vip'},
    [GetHashKey('polestar1')] = { model = 'polestar1', price = 300000, banned = false, name = 'polestar1', trunk = 10000, type = 'vip'},
    [GetHashKey('rmodjeepg')] = { model = 'rmodjeepg', price = 300000, banned = false, name = 'rmodjeepg', trunk = 10000, type = 'vip'},
    [GetHashKey('rmodpagani')] = { model = 'rmodpagani', price = 300000, banned = false, name = 'rmodpagani', trunk = 10000, type = 'vip'},
    [GetHashKey('rmodr8alpil')] = { model = 'rmodr8alpil', price = 300000, banned = false, name = 'rmodr8alpil', trunk = 10000, type = 'vip'},
    [GetHashKey('rmodx6')] = { model = 'rmodx6', price = 300000, banned = false, name = 'rmodx6', trunk = 10000, type = 'vip'},
    [GetHashKey('sex6')] = { model = 'sex6', price = 300000, banned = false, name = 'sex6', trunk = 10000, type = 'vip'},
    [GetHashKey('sinacp')] = { model = 'sinacp', price = 300000, banned = false, name = 'sinacp', trunk = 10000, type = 'vip'},
    [GetHashKey('taycanani')] = { model = 'taycanani', price = 300000, banned = false, name = 'taycanani', trunk = 10000, type = 'vip'},
    [GetHashKey('v60hr')] = { model = 'v60hr', price = 300000, banned = false, name = 'v60hr', trunk = 10000, type = 'vip'},
    [GetHashKey('waldw222')] = { model = 'waldw222', price = 300000, banned = false, name = 'waldw222', trunk = 10000, type = 'vip'},
    [GetHashKey('wheelchair')] = { model = 'wheelchair', price = 300000, banned = false, name = 'wheelchair', trunk = 10000, type = 'vip'},
    [GetHashKey('yzfr7')] = { model = 'yzfr7', price = 300000, banned = false, name = 'yzfr7', trunk = 10000, type = 'vip'},
    [GetHashKey('z8r')] = { model = 'z8r', price = 300000, banned = false, name = 'z8r', trunk = 10000, type = 'vip'},
    [GetHashKey('zentenario')] = { model = 'zentenario', price = 300000, banned = false, name = 'zentenario', trunk = 10000, type = 'vip'},
    [GetHashKey('choilambo')] = { model = 'choilambo', price = 300000, banned = false, name = 'choilambo', trunk = 10000, type = 'vip'},
    [GetHashKey('fxho')] = { model = 'fxho', price = 300000, banned = false, name = 'fxho', trunk = 10000, type = 'vip'},
    [GetHashKey('motosamu')] = { model = 'motosamu', price = 300000, banned = false, name = 'motosamu', trunk = 10000, type = 'vip'},
    [GetHashKey('sprintersamu')] = { model = 'sprintersamu', price = 300000, banned = false, name = 'sprintersamu', trunk = 10000, type = 'vip'},
    [GetHashKey('enladder')] = { model = 'enladder', price = 300000, banned = false, name = 'enladder', trunk = 10000, type = 'vip'},
    [GetHashKey('blista')] = { model = 'blista', price = 300000, banned = false, name = 'blista', trunk = 10000, type = 'vip'},
    [GetHashKey('l20021')] = { model = 'l20021', price = 300000, banned = false, name = 'l20021', trunk = 10000, type = 'vip'},
    [GetHashKey('xxxxx')] = { model = 'xxxxx', price = 300000, banned = false, name = 'xxxxx', trunk = 10000, type = 'vip'},
    [GetHashKey('renaultcbm')] = { model = 'renaultcbm', price = 300000, banned = false, name = 'renaultcbm', trunk = 10000, type = 'vip'},
    [GetHashKey('NBFiretruck')] = { model = 'NBFiretruck', price = 300000, banned = false, name = 'NBFiretruck', trunk = 10000, type = 'vip'},
    [GetHashKey('trail22grau')] = { model = 'trail22grau', price = 300000, banned = false, name = 'trail22grau', trunk = 10000, type = 'vip'},
    [GetHashKey('xt660cb2')] = { model = 'xt660cb2', price = 300000, banned = false, name = 'xt660cb2', trunk = 10000, type = 'moto'},
    [GetHashKey('savapikachu')] = { model = 'savapikachu', price = 30000000, banned = false, name = 'savapikachu', trunk = 10000, type = 'moto'},
    [GetHashKey('tenere')] = { model = 'tenere', price = 300000, banned = false, name = 'tenere', trunk = 10000, type = 'vip'},
    [GetHashKey('golsupreme')] = { model = 'golsupreme', price = 300000, banned = false, name = 'golsupreme', trunk = 10000, type = 'vip'},
    [GetHashKey('unofirma')] = { model = 'unofirma', price = 300000, banned = false, name = 'unofirma', trunk = 10000, type = 'vip'},
    [GetHashKey('BC_Escaladeprime')] = { model = 'BC_Escaladeprime', price = 300000, banned = false, name = 'BC_Escaladeprime', trunk = 10000, type = 'vip'},
    [GetHashKey('s15')] = { model = 's15', price = 300000, banned = false, name = 's15', trunk = 10000, type = 'vip'},
    [GetHashKey('bmas350')] = { model = 'bmas350', price = 300000, banned = false, name = 'bmas350', trunk = 10000, type = 'vip'},
    [GetHashKey('mansoryg63')] = { model = 'mansoryg63', price = 300000, banned = false, name = 'mansoryg63', trunk = 10000, type = 'vip'},
    [GetHashKey('as350samu')] = { model = 'as350samu', price = 300000, banned = false, name = 'as350samu', trunk = 10000, type = 'vip'},
    [GetHashKey('f250abel')] = { model = 'f250abel', price = 300000, banned = false, name = 'f250abel', trunk = 10000, type = 'vip'},
    [GetHashKey('trdrw')] = { model = 'trdrw', price = 300000, banned = false, name = 'trdrw', trunk = 10000, type = 'vip'},
    [GetHashKey('GODz95GSX')] = { model = 'GODz95GSX', price = 300000, banned = false, name = 'GODz95GSX', trunk = 10000, type = 'vip'},
    [GetHashKey('BC_MercedesGT63')] = { model = 'BC_MercedesGT63', price = 300000, banned = false, name = 'BC_MercedesGT63', trunk = 10000, type = 'vip'},
    [GetHashKey('silva')] = { model = 'silva', price = 300000, banned = false, name = 'silva', trunk = 10000, type = 'vip'},
    [GetHashKey('explorer')] = { model = 'explorer', price = 300000, banned = false, name = 'explorer', trunk = 10000, type = 'vip'},
    [GetHashKey('explorer')] = { model = 'explorer', price = 300000, banned = false, name = 'explorer', trunk = 10000, type = 'vip'},
    [GetHashKey('agerasuper')] = { model = 'agerasuper', price = 300000, banned = false, name = 'agerasuper', trunk = 10000, type = 'vip'},
    [GetHashKey('jeslbwk')] = { model = 'jeslbwk', price = 300000, banned = false, name = 'jeslbwk', trunk = 10000, type = 'vip'},
    [GetHashKey('hornet')] = { model = 'hornet', price = 30000000, banned = false, name = 'hornet', trunk = 10000, type = 'moto'},
    [GetHashKey('lrvelar')] = { model = 'lrvelar', price = 300000, banned = false, name = 'lrvelar', trunk = 10000, type = 'vip'},
    [GetHashKey('a29bst')] = { model = 'a29bst', price = 300000, banned = false, name = 'a29bst', trunk = 10000, type = 'vip'},
    [GetHashKey('mh60k')] = { model = 'mh60k', price = 300000, banned = false, name = 'mh60k', trunk = 10000, type = 'vip'},
    [GetHashKey('eb350')] = { model = 'eb350', price = 300000, banned = false, name = 'eb350', trunk = 10000, type = 'vip'},
    [GetHashKey('gripene')] = { model = 'gripene', price = 300000, banned = false, name = 'gripene', trunk = 10000, type = 'vip'},
    [GetHashKey('cg130h')] = { model = 'cg130h', price = 300000, banned = false, name = 'cg130h', trunk = 10000, type = 'vip'},
    [GetHashKey('mh65c')] = { model = 'mh65c', price = 300000, banned = false, name = 'mh65c', trunk = 10000, type = 'vip'},
    [GetHashKey('ec725')] = { model = 'ec725', price = 300000, banned = false, name = 'ec725', trunk = 10000, type = 'vip'},
    [GetHashKey('Mammatus')] = { model = 'Mammatus', price = 300000, banned = false, name = 'Mammatus', trunk = 10000, type = 'vip'},
    [GetHashKey('m939')] = { model = 'm939', price = 300000, banned = false, name = 'm939', trunk = 10000, type = 'vip'},
    [GetHashKey('ambeb')] = { model = 'ambeb', price = 300000, banned = false, name = 'ambeb', trunk = 10000, type = 'vip'},
    [GetHashKey('harleype')] = { model = 'harleype', price = 300000, banned = false, name = 'harleype', trunk = 10000, type = 'vip'},
    [GetHashKey('terrex')] = { model = 'terrex', price = 300000, banned = false, name = 'terrex', trunk = 10000, type = 'vip'},
    [GetHashKey('hilux')] = { model = 'hilux', price = 300000, banned = false, name = 'hilux', trunk = 10000, type = 'carro'},
    [GetHashKey('hiluxgaiola')] = { model = 'hiluxgaiola', price = 300000, banned = false, name = 'hiluxgaiola', trunk = 10000, type = 'vip'},
    [GetHashKey('l200eb2')] = { model = 'l200eb2', price = 300000, banned = false, name = 'l200eb2', trunk = 10000, type = 'vip'},
    [GetHashKey('m113')] = { model = 'm113', price = 300000, banned = false, name = 'm113', trunk = 10000, type = 'vip'},
    [GetHashKey('agrale')] = { model = 'agrale', price = 300000, banned = false, name = 'agrale', trunk = 10000, type = 'vip'},
    [GetHashKey('agraletransporte')] = { model = 'agraletransporte', price = 300000, banned = false, name = 'agraletransporte', trunk = 10000, type = 'vip'},
    [GetHashKey('nc750xembu')] = { model = 'nc750xembu', price = 300000, banned = false, name = 'nc750xembu', trunk = 10000, type = 'vip'},
    [GetHashKey('pajerope')] = { model = 'pajerope', price = 300000, banned = false, name = 'pajerope', trunk = 10000, type = 'vip'},
    [GetHashKey('flatbed3')] = { model = 'flatbed3', price = 300000, banned = false, name = 'flatbed3', trunk = 10000, type = 'vip'},
    [GetHashKey('xrepe')] = { model = 'xrepe', price = 300000, banned = false, name = 'xrepe', trunk = 10000, type = 'vip'},
    [GetHashKey('bxstorecybertruckv')] = { model = 'bxstorecybertruckv', price = 50000000, banned = false, name = 'bxstorecybertruckv', trunk = 10000, type = 'carro'},
    [GetHashKey('bell412bxstore')] = { model = 'bell412bxstore', price = 300000, banned = false, name = 'bell412bxstore', trunk = 10000, type = 'vip'},
    [GetHashKey('bm320ibxstore')] = { model = 'bm320ibxstore', price = 300000, banned = false, name = 'bm320ibxstore', trunk = 10000, type = 'vip'},
    [GetHashKey('bxstoreeurus')] = { model = 'bxstoreeurus', price = 300000, banned = false, name = 'bxstoreeurus', trunk = 10000, type = 'vip'},
    [GetHashKey('bxstorefsf90xx')] = { model = 'bxstorefsf90xx', price = 300000, banned = false, name = 'bxstorefsf90xx', trunk = 10000, type = 'vip'},
    [GetHashKey('sf90')] = { model = 'sf90', price = 300000, banned = false, name = 'sf90', trunk = 10000, type = 'vip'},
    [GetHashKey('bxstoretiggo8')] = { model = 'bxstoretiggo8', price = 300000, banned = false, name = 'bxstoretiggo8', trunk = 10000, type = 'vip'},
    [GetHashKey('bxstorex6')] = { model = 'bxstorex6', price = 300000, banned = false, name = 'bxstorex6', trunk = 10000, type = 'vip'},
    [GetHashKey('bxstorex7')] = { model = 'bxstorex7', price = 300000, banned = false, name = 'bxstorex7', trunk = 10000, type = 'vip'},
    [GetHashKey('bxstorext660r')] = { model = 'bxstorext660r', price = 300000, banned = false, name = 'bxstorext660r', trunk = 10000, type = 'vip'},
    [GetHashKey('corollabxstorexcoldgg')] = { model = 'corollabxstorexcoldgg', price = 300000, banned = false, name = 'corollabxstorexcoldgg', trunk = 10000, type = 'vip'},
    [GetHashKey('gle63bxstore')] = { model = 'gle63bxstore', price = 300000, banned = false, name = 'gle63bxstore', trunk = 10000, type = 'vip'},
    [GetHashKey('l200bxstore')] = { model = 'l200bxstore', price = 300000, banned = false, name = 'l200bxstore', trunk = 10000, type = 'vip'},
    [GetHashKey('rs62bxstore')] = { model = 'rs62bxstore', price = 300000, banned = false, name = 'rs62bxstore', trunk = 10000, type = 'vip'},
    [GetHashKey('traiblaze17bxstore')] = { model = 'traiblaze17bxstore', price = 300000, banned = false, name = 'traiblaze17bxstore', trunk = 10000, type = 'vip'},
    [GetHashKey('x7bxstore')] = { model = 'x7bxstore', price = 300000, banned = false, name = 'x7bxstore', trunk = 10000, type = 'vip'},
    [GetHashKey('HellcatRed')] = { model = 'HellcatRed', price = 300000, banned = false, name = 'HellcatRed', trunk = 10000, type = 'vip'},
    [GetHashKey('vironmichalski')] = { model = 'vironmichalski', price = 300000, banned = false, name = 'vironmichalski', trunk = 10000, type = 'vip'},
    [GetHashKey('cbtwister22k')] = { model = 'cbtwister22k', price = 300000, banned = false, name = 'cbtwister22k', trunk = 10000, type = 'vip'},
    [GetHashKey('WRsubaru')] = { model = 'WRsubaru', price = 300000, banned = false, name = 'WRsubaru', trunk = 10000, type = 'vip'},
    [GetHashKey('6x6urus')] = { model = '6x6urus', price = 300000, banned = false, name = '6x6urus', trunk = 10000, type = 'vip'},
    [GetHashKey('cookienfs')] = { model = 'cookienfs', price = 300000, banned = false, name = '6x6urus', trunk = 10000, type = 'vip'},
    [GetHashKey('tractor2')] = { model = 'tractor2', price = 300000, banned = false, name = 'tractor2', trunk = 10000, type = 'vip'},
    [GetHashKey('kln')] = { model = 'kln', price = 300000, banned = false, name = 'kln', trunk = 10000, type = 'vip'},
    [GetHashKey('manhartx7')] = { model = 'manhartx7', price = 300000, banned = false, name = 'manhartx7', trunk = 10000, type = 'vip'},
    [GetHashKey('venatus')] = { model = 'venatus', price = 300000, banned = false, name = 'venatus', trunk = 10000, type = 'vip'},
    [GetHashKey('fusilade')] = { model = 'saveirog5', price = 300000, banned = false, name = 'fusilade', trunk = 10000, type = 'carro'},
    [GetHashKey('gt63beast')] = { model = 'gt63beast', price = 300000, banned = false, name = 'gt63beast', trunk = 10000, type = 'vip'},
    [GetHashKey('g63amg24m')] = { model = 'g63amg24m', price = 300000, banned = false, name = 'g63amg24m', trunk = 10000, type = 'vip'},
    [GetHashKey('bmwmafiam3')] = { model = 'bmwmafiam3', price = 300000, banned = false, name = 'bmwmafiam3', trunk = 10000, type = 'vip'},
    [GetHashKey('rmodgt63')] = { model = 'rmodgt63', price = 300000, banned = false, name = 'rmodgt63', trunk = 10000, type = 'vip'},
    [GetHashKey('bmci')] = { model = 'bmci', price = 300000, banned = false, name = 'BMW', trunk = 10000, type = 'vip'},
    [GetHashKey('kgjoker')] = { model = 'kgjoker', price = 300000, banned = false, name = 'kgjoker', trunk = 10000, type = 'vip'},
    [GetHashKey('gt3demon')] = { model = 'gt3demon', price = 300000, banned = false, name = 'gt3demon', trunk = 10000, type = 'vip'},
    [GetHashKey('jes')] = { model = 'jes', price = 300000, banned = false, name = 'jes', trunk = 10000, type = 'vip'},
    [GetHashKey('992gt3rsbarbie')] = { model = '992gt3rsbarbie', price = 300000, banned = false, name = '992gt3rsbarbie', trunk = 10000, type = 'vip'},
    [GetHashKey('escaladeprime')] = { model = 'escaladeprime', price = 300000, banned = false, name = 'escaladeprime', trunk = 10000, type = 'vip'},
    [GetHashKey('cg160')] = { model = 'cg160', price = 300000, banned = false, name = 'cg160', trunk = 10000, type = 'moto'},
    [GetHashKey('hycadesti')] = { model = 'hycadesti', price = 300000, banned = false, name = 'hycadesti', trunk = 10000, type = 'vip'},
    [GetHashKey('HycadeHellcatDurango')] = { model = 'HycadeHellcatDurango', price = 300000, banned = false, name = 'HycadeHellcatDurango', trunk = 10000, type = 'carro'},
    [GetHashKey('dviperpxxh')] = { model = 'dviperpxxh', price = 300000, banned = false, name = 'dviperpxxh', trunk = 10000, type = 'vip'},
    [GetHashKey('rs666')] = { model = 'rs666', price = 300000, banned = false, name = 'rs666', trunk = 10000, type = 'carro'},
    [GetHashKey('abfrover')] = { model = 'abfrover', price = 300000, banned = false, name = 'abfrover', trunk = 10000, type = 'vip'},
    [GetHashKey('r8hycade')] = { model = 'r8hycade', price = 300000, banned = false, name = 'r8hycade', trunk = 10000, type = 'vip'},
    [GetHashKey('KillerHwak')] = { model = 'KillerHwak', price = 300000, banned = false, name = 'KillerHwak', trunk = 10000, type = 'vip'},
    [GetHashKey('rs7beast')] = { model = 'rs7beast', price = 300000, banned = false, name = 'rs7beast', trunk = 10000, type = 'vip'},
    [GetHashKey('23sharkm2')] = { model = '23sharkm2', price = 300000, banned = false, name = '23sharkm2', trunk = 10000, type = 'vip'},
    [GetHashKey('BC_Purosangue')] = { model = 'BC_Purosangue', price = 300000, banned = false, name = 'BC_Purosangue', trunk = 10000, type = 'vip'},
    [GetHashKey('BCs_LHEvo')] = { model = 'BCs_LHEvo', price = 300000, banned = false, name = 'BCs_LHEvo', trunk = 10000, type = 'vip'},
    [GetHashKey('vanztt')] = { model = 'vanztt', price = 300000, banned = false, name = 'vanztt', trunk = 10000, type = 'vip'},
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

   -- [5] = {
   --     type = "public", -- public / service [ tipo da garagem ]
   --     permiss = nil, -- permissao
   --     blip = true, -- blip no mapa
   --     
   --     coords = vec3(275.36,-345.07,45.17),
   --     spawnCoords = {
   --         vec4(283.02,-342.35,44.25,248.48),
   --     },
   -- },

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
        
        coords = vec3(1011.99,-2290.2,31.81),
        spawnCoords = {
            vector4(1015.27,-2294.03,31.58,37.09),
        },
    
        vehicles = {
            {vehicle = 'corollapmerj'},
            {vehicle = 'rangerptm'},
            {vehicle = 'dusterpmerj'},
            {vehicle = 'fordkapmerj'},
            {vehicle = 'hiluxpmerj'},
            {vehicle = 'l200pmerj22'},
            {vehicle = 'l200pmerj22c'},
            {vehicle = 'rangerpmerj'},
            {vehicle = 'rangerxlspmerj'},
            {vehicle = 'versapmerj'},
            {vehicle = 'versapmerjrf'},
            {vehicle = 'xrepmerj22'},
            {vehicle = 'xrepmerj'},
            {vehicle = 'blindadocpp'},
            {vehicle = 'blindadomike'},
            {vehicle = 'blindadopmerj'},
            {vehicle = 'blindadopmerj14'},
            {vehicle = 'blindadoturq'},

        },
    },

    [30] = {
        type = "service", -- public / service [ tipo da garagem ] -- Helicoptero
        permiss = "perm.policia", -- permissao
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
        
        coords = vec3(-463.43,-350.51,34.49),
        spawnCoords = {
            vector4(-470.47,-350.57,34.37,166.68),
        },
    
        vehicles = {
            {vehicle = 'sprintersamu2'},

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
        
        coords = vec3(203.29,-888.36,83.86),
        spawnCoords = {
            vector4(193.69,-881.34,85.63,227.49),
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

   -- [81] = {
   --     type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
   --     permiss = "perm.helicoptero", -- permissao
   --     blip = false, -- blip no mapa
   --     
   --     coords = vec3(-754.15,-1467.25,4.99),
   --     spawnCoords = {
   --         vector4(-277.8,-726.31,131.8,67.28),
   --     },
   -- 
   --     vehicles = {
   --         {vehicle = 'volatus'},
   --         {vehicle = 'supervolito'},
--
   --     },
   -- },

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
            vector4(2616.86,5310.78,47.42,96.42),
        },
    
        vehicles = {
            {vehicle = 'trail22prf'},
            {vehicle = 'trail20prf'},   
             {vehicle = 'r1200prf'},

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
        
        coords = vec3(-464.53,-286.87,78.17),
        spawnCoords = {
            vector4(-456.65,-290.88,78.17,244.37),
        },
    
        vehicles = {
            {vehicle = 'fenixpmerj'},

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
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(827.31,-996.85,26.5),
        spawnCoords = {
            vector4(828.8,-1004.72,26.61,253.52),
        },
    },
    [108] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(820.09,-997.25,26.25),
        spawnCoords = {
            vector4(817.28,-1006.31,26.25,253.52),
        },
    },
    [109] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.civil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(386.63,-1626.15,29.3),
        spawnCoords = {
            vector4(392.38,-1629.5,29.28,51.63),
        },
    
        vehicles = {
            {vehicle = 'trail21pc'},
            {vehicle = 'dusterpc'},
            {vehicle = 'riot'},
            {vehicle = 'mercedespolicia'},
        },
    },
    [110] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.militar", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-915.65,-2051.34,9.3),
        spawnCoords = {
            vector4(-910.65,-2047.37,9.3,337.69),
        },
    
        vehicles = {
            {vehicle = 'dusterrp1'},
            {vehicle = 'pbus'},
           -- {vehicle = 'r1200pm'},
           -- {vehicle = 'tigerpm'},
            {vehicle = 'mercedespolicia'},
        },
    },
    [111] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.rotam", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2017.92,-468.58,12.27),
        spawnCoords = {
            vector4(-2021.15,-474.36,12.27,337.69),
        },
    
        vehicles = {
            {vehicle = 's10rotam'},
            {vehicle = 'trail20pm'},
            {vehicle = 'mercedespolicia'},
        },
    },
    [112] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.giro", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1742.12,-782.0,11.73),
        spawnCoords = {
            vector4(-1744.41,-796.21,11.73,337.69),
        },
    
        vehicles = {
            {vehicle = 'trail20pm'},
            {vehicle = 'tigerpm'},
            {vehicle = 'r1200pm'},
            {vehicle = 'mercedespolicia'},
            
        },
    },
    [113] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.bombeiro", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-393.23,1210.81,325.76),
        spawnCoords = {
            vector4(-391.1,1216.08,325.76,337.69),
        },
    
        vehicles = {
            {vehicle = 'xt660cb2'},
            {vehicle = 'trail22grau'},
        },
    },
    [114] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.exercito", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2322.05,3260.71,33.08),
        spawnCoords = {
            vector4(-2325.16,3253.03,32.82,337.69),
        },
    
        vehicles = {
            {vehicle = 'm939'},
            {vehicle = 'ambeb'},
            {vehicle = 'harleype'},
            {vehicle = 'terrex'},
            {vehicle = 'hiluxpe'},
            {vehicle = 'xrepe'},
            {vehicle = 'flatbed3'},
            {vehicle = 'nc750xembu'},
            {vehicle = 'pajerope'},
            {vehicle = 'l200eb2'},
            {vehicle = 'm113'},
            {vehicle = 'agrale'},
            {vehicle = 'agraletransporte'},
            {vehicle = 'hiluxgaiola'},
        },
    },
    [115] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.exercito", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2381.09,3321.08,33.04),
        spawnCoords = {
            vector4(-2381.09,3321.08,33.04,337.69),
        },
    
        vehicles = {
            {vehicle = 'm939'},
            {vehicle = 'ambeb'},
            {vehicle = 'harleype'},
            {vehicle = 'terrex'},
            {vehicle = 'hiluxpe'},
            {vehicle = 'xrepe'},
            {vehicle = 'flatbed3'},
            {vehicle = 'nc750xembu'},
            {vehicle = 'pajerope'},
            {vehicle = 'l200eb2'},
            {vehicle = 'm113'},
            {vehicle = 'agrale'},
            {vehicle = 'agraletransporte'},
            {vehicle = 'hiluxgaiola'},
        },
    },
    [116] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.exercito", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2439.99,3000.0,33.06),
        spawnCoords = {
            vector4(-2440.0,2991.0,32.81,337.69),
        },
    
        vehicles = {
            {vehicle = 'm939'},
            {vehicle = 'ambeb'},
            {vehicle = 'harleype'},
            {vehicle = 'terrex'},
            {vehicle = 'hiluxpe'},
            {vehicle = 'xrepe'},
            {vehicle = 'flatbed3'},
            {vehicle = 'nc750xembu'},
            {vehicle = 'pajerope'},
            {vehicle = 'l200eb2'},
            {vehicle = 'm113'},
            {vehicle = 'agrale'},
            {vehicle = 'agraletransporte'},
            {vehicle = 'hiluxgaiola'},
        },
    },
    [117] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.exercito", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2202.75,3181.18,32.81),
        spawnCoords = {
            vector4(-2188.0,3171.0,32.81,337.69),
        },
    
        vehicles = {
            {vehicle = 'a29bst'},
            {vehicle = 'mh60k'},
            {vehicle = 'eb350'},
            {vehicle = 'gripene'},
            {vehicle = 'cg130h'},
            {vehicle = 'mh65c'},
            {vehicle = 'ec725'},
            {vehicle = 'Mammatus'},
        },
    },
    [118] = {
        type = "service", -- public / service [ tipo da garagem ] -- 
        permiss = "perm.prf", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2645.24,2372.93,18.82),
        spawnCoords = {
            vector4(-2641.26,2374.52,18.82,337.69),
        },
    
        vehicles = {
            {vehicle = 'equinoxprf'},
            {vehicle = 'trail22prf'},
            {vehicle = 'trail20prf'},
            {vehicle = 'r1200prf'},
        },
    },
    [119] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.vilacanaa", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(131.32,317.23,112.14),
        spawnCoords = {
            vector4(137.37,311.81,112.14,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},

        },
    },
    [120] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.lagunapark", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-3221.72,835.46,8.93),
        spawnCoords = {
            vector4(-3214.02,830.93,8.34,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},

        },
    },
    [121] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.yakuza", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-3341.44,1132.96,5.19),
        spawnCoords = {
            vector4(-3333.08,1132.87,5.19,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},

        },
    },
    [122] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.parqueoeste", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-569.52,6178.67,10.67),
        spawnCoords = {
            vector4(-572.17,6170.5,10.55,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},

        },
    },
    [123] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.macaco", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-444.17,1650.57,360.28),
        spawnCoords = {
            vector4(-438.03,1656.41,360.15,337.69),
        },
    
        vehicles = {
            {vehicle = 'jeepcherokee'},
            {vehicle = 'kuruma'},
            {vehicle = 'r6'},
            {vehicle = 'mule'},

        },
    },
    [124] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.mafia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-3286.58,517.85,12.27),
        spawnCoords = {
            vector4(-3289.56,520.65,12.27,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},

        },
    },
    [125] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.lider.macaco", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-437.8,1676.33,360.13),
        spawnCoords = {
            vector4(-437.59,1666.11,360.13,337.69),
        },
    
        vehicles = {
            {vehicle = 'Terbyte'},
        },
    },
    [126] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.lider.macaco", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-483.15,1541.61,393.21),
        spawnCoords = {
            vector4(-491.28,1546.92,395.03,337.69),
        },
    
        vehicles = {
            {vehicle = 'bmas350'},
        },
    },
    [127] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.grota", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1270.22,-199.83,102.7),
        spawnCoords = {
            vector4(1264.15,-194.26,102.7,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
            {vehicle = 'r1'},
            {vehicle = 'mule'},
            {vehicle = 'jeepcherokee'},
            {vehicle = 'bxstorecybertruckv'},
        },
    },
    [128] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.brasil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2145.79,-175.91,53.99),
        spawnCoords = {
            vector4(-2145.41,-180.94,54.31,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [129] = {
        type = "public", -- public / service [ tipo da garagem ] -- 419.15,6537.22,27.72 grota
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1273.6,-193.91,102.7),
        spawnCoords = {
            vector4(1268.14,-194.72,102.7,337.69),
        },
    },
    [130] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.helipa", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1387.43,-746.53,67.18),
        spawnCoords = {
            vector4(1384.74,-743.19,67.16,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [131] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.franca", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2419.76,1753.76,187.96),
        spawnCoords = {
            vector4(-2421.01,1757.04,187.96,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [132] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.vovo", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2674.93,2339.23,16.88),
        spawnCoords = {
            vector4(-2672.54,2338.09,16.78,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [133] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.caixabaixa", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1349.23,-1300.32,66.25),
        spawnCoords = {
            vector4(1352.71,-1295.85,66.02,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [134] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.madregermano", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2020.07,3908.88,34.46),
        spawnCoords = {
            vector4(2023.4,3913.32,33.68,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [135] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.tequila", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-562.83,323.85,84.4),
        spawnCoords = {
            vector4(-566.86,329.93,84.43,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [136] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.bahamas", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-3011.82,84.53,11.61),
        spawnCoords = {
            vector4(-3014.75,90.49,11.61,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [137] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.cassino", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(945.68,16.96,116.16),
        spawnCoords = {
            vector4(945.68,16.96,116.16,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [138] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.turquia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1392.55,-2499.32,53.04),
        spawnCoords = {
            vector4(1388.89,-2498.66,52.93,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [139] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.veracruz", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(160.58,722.67,208.65),
        spawnCoords = {
            vector4(162.27,724.08,208.5,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [140] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.novaesperanca", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-474.55,-1279.74,26.1),
        spawnCoords = {
            vector4(-472.0,-1279.78,25.9,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [141] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.buenavista", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2668.32,1295.27,147.47),
        spawnCoords = {
            vector4(-2667.66,1289.97,147.47,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [142] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.tiradentes", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1689.66,1073.0,119.72),
        spawnCoords = {
            vector4(1684.79,1071.33,119.04,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [143] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.medelin", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1402.87,1121.68,114.83),
        spawnCoords = {
            vector4(1406.37,1119.54,114.83,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [144] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.hospital", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1153.15,-1518.18,34.85),
        spawnCoords = {
            vector4(1158.19,-1497.15,34.69,337.69),
        },
    
        vehicles = {
            {vehicle = 'Wrasprinter'},
            {vehicle = 'WRr1200'},
            {vehicle = 'Wrgle53'},
        },
    },
    [145] = {
        type = "service", -- public / service [ tipo da garagem ] -- heli militar
        permiss = "perm.policia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-943.1,-2028.65,9.5),
        spawnCoords = {
            vector4(-949.5,-2022.61,11.32,337.69),
        },
    
        vehicles = {
            {vehicle = 'swift'},
        },
    },
    [146] = {
        type = "service", -- public / service [ tipo da garagem ] -- heli prf
        permiss = "perm.policia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2641.1,2386.99,18.82),
        spawnCoords = {
            vector4(-2634.79,2397.93,19.88,337.69),
        },
    
        vehicles = {
            {vehicle = 'as350prf'},
        },
    },
    [147] = {
        type = "service", -- public / service [ tipo da garagem ] -- heli prf
        permiss = "perm.policia", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2621.89,5358.52,62.26),
        spawnCoords = {
            vector4(2616.39,5351.83,62.26,337.69),
        },
    
        vehicles = {
            {vehicle = 'as350prf'},
        },
    },
    [148] = {
        type = "service", -- public / service [ tipo da garagem ] -- heli samu
        permiss = "perm.hospital", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-461.52,-1030.65,38.3),
        spawnCoords = {
            vector4(-453.58,-1029.79,38.4,337.69),
        },
    
        vehicles = {
            {vehicle = 'as350samu'},
        },
    },
    [149] = {
        type = "service", -- public / service [ tipo da garagem ] -- heli bombeiro
        permiss = "perm.bombeiro", -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-419.12,1176.93,325.64),
        spawnCoords = {
            vector4(-454.15,-1029.98,38.4,337.69),
        },
    
        vehicles = {
            {vehicle = 'as350samu'},
        },
    },
    [150] = {
        type = "service", -- public / service [ tipo da garagem ] -- heli samu
        permiss = "perm.deboxe", -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(824.08,-945.74,22.09),
        spawnCoords = {
            vector4(815.39,-942.0,22.09,337.69),
        },
    
        vehicles = {
            {vehicle = 'towtruck2'},
            {vehicle = 'flatbed'},
        },
    },
    [151] = {
        type = "service", -- public / service [ tipo da garagem ] -- heli samu
        permiss = "perm.competcar", -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(247.26,-1661.1,29.32),
        spawnCoords = {
            vector4(247.07,-1653.44,29.28,337.69),
        },
    
        vehicles = {
            {vehicle = 'towtruck2'},
            {vehicle = 'flatbed'},
        },
    },
    [152] = {
        type = "service", -- public / service [ tipo da garagem ] -- heli samu
        permiss = "perm.abelvolks", -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-1705.63,-954.89,7.65),
        spawnCoords = {
            vector4(-1696.65,-948.87,7.53,337.69),
        },
    
        vehicles = {
            {vehicle = 'towtruck2'},
            {vehicle = 'flatbed'},
        },
    },
    [153] = {
        type = "service", -- public / service [ tipo da garagem ] -- eletrecista
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(736.73,132.99,80.71),
        spawnCoords = {
            vector4(741.82,130.92,80.15,337.69),
        },
    
        vehicles = {
            {vehicle = 'unofirma'},
        },
    },
    [154] = {
        type = "service", -- public / service [ tipo da garagem ] -- minera;'ao'
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(2965.31,2749.32,43.29),
        spawnCoords = {
            vector4(2968.67,2749.19,43.3,337.69),
        },
    
        vehicles = {
            {vehicle = 'rubble'},
        },
    },
    [155] = {
        type = "service", -- public / service [ tipo da garagem ] -- onibus
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(457.13,-603.53,28.49),
        spawnCoords = {
            vector4(465.21,-607.46,28.46,337.69),
        },
    
        vehicles = {
            {vehicle = 'bus'},
        },
    },
    [156] = {
        type = "service", -- public / service [ tipo da garagem ] -- jet pary
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-3062.59,-65.34,3.89),
        spawnCoords = {
            vector4(-3066.75,-73.95,0.17,337.69),
        },
    
        vehicles = {
            {vehicle = 'faggio'},
        },
    },
    [157] = {
        type = "service", -- public / service [ tipo da garagem ] -- rodrigo jet pary
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-192.75,790.57,198.1),
        spawnCoords = {
            vector4(-3061.23,-75.0,-0.37,337.69),
        },
    
        vehicles = {
            {vehicle = 'faggio'},
        },
    },
    [158] = {
        type = "service", -- public / service [ tipo da garagem ] -- rodrigo jet pary
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-192.75,790.57,198.1),
        spawnCoords = {
            vector4(-3061.23,-75.0,-0.37,337.69),
        },
    
        vehicles = {
            {vehicle = 'fxho'},
        },
    },
    [159] = {
        type = "public", -- public / service [ tipo da garagem ] --  hp
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1171.71,-1527.89,35.05),
        spawnCoords = {
            vector4(1176.61,-1525.49,34.69,147.31),
        },
    },
    [160] = {
        type = "public", -- public / service [ tipo da garagem ] --  pier
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1602.73,-1048.62,13.02),
        spawnCoords = {
            vector4(-1596.55,-1043.39,13.01,147.31),
        },
    },
    [161] = {
        type = "service", -- public / service [ tipo da garagem ] -- pier spaws
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(-1605.79,-1046.09,13.06),
        spawnCoords = {
            vector4(-1602.87,-1039.18,13.06,147.31),
        },
    
        vehicles = {
            {vehicle = 'cavaloautomotivo'},
        },
    },
    [162] = {
        type = "public", -- public / service [ tipo da garagem ] --  giro
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1684.91,-768.83,11.73),
        spawnCoords = {
            vector4(-1690.85,-774.25,11.73,147.31),
        },
    },
    [163] = {
        type = "public", -- public / service [ tipo da garagem ] --  brasil
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2140.58,-178.56,53.8),
        spawnCoords = {
            vector4(-2146.87,-182.94,54.39,147.31),
        },
    },
    [164] = {
        type = "public", -- public / service [ tipo da garagem ] --  brasil
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-3021.2,90.44,11.61),
        spawnCoords = {
            vector4(-3014.7,91.96,11.61,147.31),
        },
    },
    [165] = {
        type = "public", -- public / service [ tipo da garagem ] --  mafia
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-3288.46,526.79,12.27),
        spawnCoords = {
            vector4(-3293.36,522.0,12.27,147.31),
        },
    },
    [166] = {
        type = "public", -- public / service [ tipo da garagem ] --  yakuza
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-3336.36,1156.0,5.19),
        spawnCoords = {
            vector4(-3332.0,1153.3,5.19,147.31),
        },
    },
    -- [167] = {
    --     type = "public", -- public / service [ tipo da garagem ] --  vovo
    --     permiss = nil, -- permissao
    --     blip = false, -- blip no mapa
        
    --     coords = vec3(-2668.85,2337.53,16.92),
    --     spawnCoords = {
    --         vector4(-2671.08,2342.72,16.45,147.31),
    --     },
    -- },
    [168] = {
        type = "public", -- public / service [ tipo da garagem ] --  exercito
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2340.21,3267.31,32.82),
        spawnCoords = {
            vector4(-2335.91,3260.7,32.82,147.31),
        },
    },
    [169] = {
        type = "public", -- public / service [ tipo da garagem ] --  prf
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2612.66,5351.68,47.53),
        spawnCoords = {
            vector4(2610.66,5356.57,47.38,147.31),
        },
    },
    [170] = {
        type = "public", -- public / service [ tipo da garagem ] --  prisao
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1849.3,2608.45,45.6),
        spawnCoords = {
            vector4(1858.26,2608.71,45.66,147.31),
        },
    },
    [171] = {
        type = "public", -- public / service [ tipo da garagem ] --  prf
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1438.5,1078.48,114.14),
        spawnCoords = {
            vector4(1445.46,1071.12,116.04,147.31),
        },
    },
    [172] = {
        type = "public", -- public / service [ tipo da garagem ] --  prf
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-431.85,1651.68,360.15),
        spawnCoords = {
            vector4(-435.33,1658.37,360.15,147.31),
        },
    },
    [173] = {
        type = "public", -- public / service [ tipo da garagem ] --  prf
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-556.9,330.81,84.38),
        spawnCoords = {
            vector4(-565.52,330.43,84.42,147.31),
        },
    },
    [174] = {
        type = "public", -- public / service [ tipo da garagem ] --  concessionaria
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-303.63,-1370.18,31.29),
        spawnCoords = {
            vector4(-304.24,-1378.98,31.29,147.31),
        },
    },
    [175] = {
        type = "public", -- public / service [ tipo da garagem ] --  competcar
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(240.99,-1654.78,29.32),
        spawnCoords = {
            vector4(247.98,-1652.45,29.35,147.31),
        },
    },
    [176] = {
        type = "public", -- public / service [ tipo da garagem ] --  competcar
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1388.7,-2494.03,53.31),
        spawnCoords = {
            vector4(1391.13,-2491.25,53.51,147.31),
        },
    },
    [177] = {
        type = "public", -- public / service [ tipo da garagem ] --  competcar
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1535.14,335.66,87.11),
        spawnCoords = {
            vector4(-1534.27,338.93,87.13,147.31),
        },
    },
    [178] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.parqueoeste", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1538.13,338.87,87.25),
        spawnCoords = {
            vector4(-1536.89,341.33,87.16,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [179] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.madregermano", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1392.09,1610.13,162.06),
        spawnCoords = {
            vector4(-1391.61,1612.37,162.06,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [180] = {
        type = "public", -- public / service [ tipo da garagem ] --  madregermano
        blip = false, -- blip no mapa
        
        coords = vec3(-1393.01,1615.76,161.89),
        spawnCoords = {
            vector4(-1394.24,1612.55,161.59,147.31),
        },
    },
    [181] = {
        type = "public", -- public / service [ tipo da garagem ] --  emiliopovoa
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1923.37,4479.87,30.84),
        spawnCoords = {
            vector4(-1922.75,4476.68,30.95,147.31),
        },
    },
    [182] = {
        type = "service", -- public / service [ tipo da garagem ] -- emiliopovoa
        permiss = "perm.emiliopovoa", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1926.25,4477.85,31.53),
        spawnCoords = {
            vector4(-1922.75,4476.68,30.95,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [183] = {
        type = "service", -- public / service [ tipo da garagem ] -- emiliopovoa
        permiss = "perm.quebracaixote", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-685.71,2205.02,95.88),
        spawnCoords = {
            vector4(-689.41,2206.07,95.4,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},
        },
    },
    [184] = {
        type = "public", -- public / service [ tipo da garagem ] --  emiliopovoa
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-685.81,2208.6,94.9),
        spawnCoords = {
            vector4(-689.41,2206.07,95.4,147.31),
        },
    },
    [185] = {
        type = "public", -- public / service [ tipo da garagem ] --  emiliopovoa
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-582.35,-861.75,25.95),
        spawnCoords = {
            vector4(-584.33,-864.44,25.83,147.31),
        },
    },
    [186] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.lider.grota", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1388.6,-318.42,159.62),
        spawnCoords = {
            vector4(1395.84,-329.44,162.03,337.69),
        },
    
        vehicles = {
            {vehicle = 'maverick'},
        },
    },
    [187] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.lider.grota", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1219.4,-279.94,69.34),
        spawnCoords = {
            vector4(1213.22,-287.36,69.02,337.69),
        },
    
        vehicles = {
            {vehicle = 'terbyte'},  
        },
    },
    [188] = {
        type = "service", -- public / service [ tipo da garagem ] -- jet pary
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(215.39,-895.27,30.31),
        spawnCoords = {
            vector4(212.46,-888.18,28.27,337.69),
        },
    
        vehicles = {
            {vehicle = 'fxho'},
        },
    },
    [189] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2421.36,1762.41,187.94),
        spawnCoords = {
            vector4(-2422.62,1758.77,187.96,259.15),
        },
    },
    [190] = {
        type = "public", -- public / service [ tipo da garagem ] -- 
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-1690.19,-955.55,7.72),
        spawnCoords = {
            vector4(-1691.32,-950.84,7.72,259.15),
        },
    },
    [191] = {
        type = "public", -- public / service [ tipo da garagem ] -- stan
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-130.7,1007.23,235.73),
        spawnCoords = {
            vector4(-127.58,1002.89,235.73,259.15),
        },
    },
    [192] = {
        type = "public", -- public / service [ tipo da garagem ] -- CIVIL
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-938.9,-2114.42,9.77),
        spawnCoords = {
            vector4(-943.27,-2111.27,9.3,259.15),
        },
    },
    [193] = {
        type = "public", -- public / service [ tipo da garagem ] -- CIVIL
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(379.39,-1621.38,29.28),
        spawnCoords = {
           vector4(378.81,-1617.01,29.28,259.15),
        },
    },
    [194] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.tatico", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-908.49,-2040.0,9.4),
        spawnCoords = {
            vector4(-906.26,-2044.61,9.3,337.69),
        },
    
        vehicles = {
            {vehicle = 's10pm'},
            {vehicle = 'dusterrp2'},  
        },
    },
    [195] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.civil", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(376.04,-1601.34,36.95),
        spawnCoords = {
            vector4(370.87,-1594.37,36.95,337.69),
        },
    
        vehicles = {
            {vehicle = 'polmav'},  
        },
    },
    [196] = {
        type = "public", -- public / service [ tipo da garagem ] -- stan
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(593.12,2246.73,66.67),
        spawnCoords = {
            vector4(597.13,2245.38,66.67,337.69),
        },
    },
    [197] = {
        type = "public", -- public / service [ tipo da garagem ] -- stan
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(585.5,2244.61,66.67),
        spawnCoords = {
            vector4(577.07,2244.9,68.54,337.69),
        },
    },
    [198] = {
        type = "public", -- public / service [ tipo da garagem ] -- stan
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-425.97,1658.54,360.15),
        spawnCoords = {
            vector4(-434.12,1662.56,360.15,337.69),
        },
    },
    [199] = {
        type = "public", -- public / service [ tipo da garagem ] -- stan
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-449.41,1657.06,360.13),
        spawnCoords = {
            vector4(-440.34,1657.23,360.13,337.69),
        },
    },
    [200] = {
        type = "service", -- public / service [ tipo da garagem ] -- pier spaws
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(748.61,6457.47,31.63),
        spawnCoords = {
            vector4(744.4,6458.17,31.58,147.31),
        },
    
        vehicles = {
            {vehicle = 'tractor2'},
        },
    },
    [201] = {
        type = "public", -- public / service [ tipo da garagem ] -- frança heli
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2413.88,1694.01,219.23),
        spawnCoords = {
            vector4(-2419.21,1699.84,219.23,337.69),
        },
    },
    [202] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.helivip", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-69.53,-811.87,326.08),
        spawnCoords = {
            vector4(-74.0,-818.74,326.18,337.69),
        },
    
        vehicles = {
            {vehicle = 'swift2'},  
        },
    },
    [203] = {
        type = "public", -- public / service [ tipo da garagem ] -- stan
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1389.25,-740.53,67.25),
        spawnCoords = {
            vector4(1379.83,-738.81,67.23,337.69),
        },
    },
    [204] = {
        type = "service", -- public / service [ tipo da garagem ] -- pier spaws
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1950.6,238.55,165.28),
        spawnCoords = {
            vector4(1949.56,235.15,165.3,147.31),
        },
    
        vehicles = {
            {vehicle = 'Kart20'},
        },
    },
    [205] = {
        type = "service", -- public / service [ tipo da garagem ] -- pier spaws
        permiss = nil, -- permissao
        blip = true, -- blip no mapa
        
        coords = vec3(1944.73,241.67,165.3),
        spawnCoords = {
            vector4(1942.73,237.1,165.3,147.31),
        },
    
        vehicles = {
            {vehicle = 'Kart20'},
        },
    },
    [206] = {
        type = "service", -- public / service [ tipo da garagem ] -- -1391.78,-581.76,30.09
        permiss = "perm.chapadao", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2182.91,3969.41,33.67),
        spawnCoords = {
            vector4(2181.38,3971.81,33.55,337.69),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},

        },
    },
    [207] = {
        type = "public", -- public / service [ tipo da garagem ] -- stan
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(2179.88,3966.65,33.67),
        spawnCoords = {
            vector4(2181.38,3971.81,33.55,337.69),
        },
    },
    [208] = {
        type = "public", -- public / service [ tipo da garagem ] -- stan
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-382.95,1199.21,325.76),
        spawnCoords = {
            vector4(-388.7,1198.92,325.64,337.69),
        },
    },
    [209] = {
        type = "public", -- public / service [ tipo da garagem ] -- munição dominas
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-136.12,-2385.12,6.0),
        spawnCoords = {
            vector4(-131.88,-2393.44,6.0,337.69),
        },
    },

    [210] = {
        type = "public", -- public / service [ tipo da garagem ] -- munição dominas
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-132.8,900.37,235.7),
        spawnCoords = {
            vector4(-134.37,903.31,235.78,337.69),
        },
    },
    [211] = {
        type = "public", -- public / service [ tipo da garagem ] -- prf
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2664.06,2360.22,18.82),
        spawnCoords = {
            vector4(-2658.77,2353.56,18.82,337.69),
        },
    },
    [212] = {
        type = "service", -- public / service [ tipo da garagem ] -- cadeira roda
        permiss = "perm.hospital", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-474.8,-1028.86,24.28),
        spawnCoords = {
            vector4(-475.63,-1031.06,24.28,337.69),
        },
    
        vehicles = {
            {vehicle = 'wheelchair'},

        },
    },
    [213] = {
        type = "service", -- public / service [ tipo da garagem ] -- cadeira roda
        permiss = "perm.hospital", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-475.39,-969.07,23.56),
        spawnCoords = {
            vector4(-481.33,-961.76,23.56,337.69),
        },
    
        vehicles = {
            {vehicle = 'Wrasprinter'},
            {vehicle = 'WRr1200'},
            {vehicle = 'Wrgle53'}

        },
    },
    [214] = {
        type = "public", -- public / service [ tipo da garagem ] -- HP
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-473.88,-964.83,23.56),
        spawnCoords = {
            vector4(-473.88,-964.83,23.56,337.69),
        },
    },

    [215] = {
        type = "public", -- public / service [ tipo da garagem ] -- buena vista
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2656.61,1295.97,147.47),
        spawnCoords = {
            vector4(-2660.66,1288.29,147.47,337.69),
        },
    },
    [216] = {
        type = "public", -- public / service [ tipo da garagem ] -- brasil
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-2233.54,-165.58,86.49),
        spawnCoords = {
            vector4(-2226.02,-171.08,88.28,337.69),
        },
    },
    [217] = {
        type = "service", -- public / service [ tipo da garagem ] -- cadeira roda
        permiss = "perm.lider.macaco", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(-286.08,1560.37,355.09),
        spawnCoords = {
            vector4(-276.56,1555.09,356.91,337.69),
        },
    
        vehicles = {
            {vehicle = 'bell412bxstore'},

        },
    },
    [218] = {
        type = "public", -- public / service [ tipo da garagem ] -- buena vista
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(204.0,-995.51,29.39),
        spawnCoords = {
            vector4(197.99,-992.82,29.2,337.69),
        },
    },
    [219] = {
        type = "public", -- public / service [ tipo da garagem ] -- buena vista
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(205.11,-883.63,83.86),
        spawnCoords = {
            vector4(193.69,-881.34,85.63,337.69),
        },
    },
    [220] = {
        type = "service", -- public / service [ tipo da garagem ] -- fac web
        permiss = "perm.web", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1275.29,-850.15,75.39),
        spawnCoords = {
            vector4(1268.76,-853.0,75.39,355.63),
        },
    
        vehicles = {
            {vehicle = 'kuruma'},
            {vehicle = 'sanchez'},

        },
    },
    [212] = {
        type = "public", -- public / service [ tipo da garagem ] -- buena vista
        permiss = nil, -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1260.18,-873.75,75.39),
        spawnCoords = {
            vector4(1265.71,-875.19,75.39,342.12),
        },
    },
    [22] = {
        type = "service", -- public / service [ tipo da garagem ] -- fac web
        permiss = "perm.helicoptero", -- permissao
        blip = false, -- blip no mapa
        
        coords = vec3(1288.09,-852.32,78.45),
        spawnCoords = {
            vector4(1284.6,-843.15,78.45,81.22),
        },
    
        vehicles = {
            {vehicle = 'volatus'},
            {vehicle = 'supervolito'},

        },
    },
    
}  

