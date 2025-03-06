dealershipConfig = {}

dealershipConfig.main = {
    dir = "http://177.54.148.31:4020/huntersrj/carros", -- Diretorio das imagens dos veiculos
    
    showVehicleOutStock = true, -- Mostrar na concessionaria veiculo sem estoque
    
    commandConce = 'conce',

    cooldownTestDriver = 120, -- TEMPO DO TEST DRIVER EM SEGUNDOS
    maxDistanceTestDriver = 1500.0, -- MAXIMO DE DISTANCIA QUE O JOGADOR PODE SE AFASTAR DA ZONA DO TEST-DRIVE

    sellVehicle = 99, -- PORCENTAGEM QUE VAI RECEBER DA CONCESSIONARIA APOS VENDER VEICULO
    maxCars = 5, -- Total de maximo de carros

    zoneVips = { -- DESCONTOS E MAXIMO DE CARROS NA GARAGEM
        { permission = "perm.bronze", discount = 0, maxCars = 45 },
        { permission = "perm.prata", discount = 0, maxCars = 45 },
        { permission = "perm.black", discount = 0, maxCars = 45 },
        { permission = "perm.plantina", discount = 0, maxCars = 45 },
        { permission = "perm.diamante", discount = 0, maxCars = 45 },
        { permission = "perm.esmeralda", discount = 0, maxCars = 45 },
        { permission = "perm.hunter", discount = 0, maxCars = 45 },
        { permission = "perm.supremo", discount = 0, maxCars = 45 },
        { permission = "perm.supremohunter", discount = 0, maxCars = 45 },
        { permission = "perm.streamer", discount = 0, maxCars = 45 },
    }
}

dealershipConfig.locations = {
    {
        coords = vec3(-337.33,-1369.95,31.86),
        test_drive = vector4(-1512.73,-2852.47,13.95,194.17),
    },
}