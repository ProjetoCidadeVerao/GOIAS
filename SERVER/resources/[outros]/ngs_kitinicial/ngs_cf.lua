                                                                                                                                                                                                                                                                                                                                                                                                      
Ngs = {}
Ngs.webhookURL = "https://discord.com/api/webhooks/1347337306281082922/GKvO-68IgG1QFVnZObNHmQWvy4k1RYJ2eoNCNS0QVuZtjrLOk_SyhKEA247GiUFmjtK_" -- [Discord Webhook URL]
Ngs.logoURL = "http://191.96.81.87/logo/logo.png" -- [Logo URL]
Ngs.footerIconURL = "http://191.96.81.87/logo/logo.png" -- [footerIconUR URL]
Ngs.kitItems = { -- [items que vera no kitinicial]
    ["celular"] = 1,
    ["money"] = 100000,
}
Ngs.Modelo = "mp_f_execpa_01"
Ngs.Coords = vector3(-1605.95,-1049.05,13.04)
Ngs.Heading = 140.19
Ngs.Nome = "RESGATE SEU KITINICIAL"
Ngs.distance = 10.0
Ngs.vipGroupName = "VIP INICIAL" -- [Substitua pelo nome real do seu grupo VIP]
Ngs.RemoveVR = 15 * 24 * 60 * 60 -- [Remover carro VIP após a duração configurada]
Ngs.vipGroupRemovalDuration = 200500 -- [Remover grupo VIP após a duração configurada]
Ngs.commands = { 
    kitCommand = 'inicialvip', -- [comando para pega kitinicial]
}
Ngs.vehicleInfo = { 
    model = "saveirodeboxe" -- [Modelo  do Veículo]
}
Ngs.notifyMessages = { -- [Notificação que vai Ver Player]
    success = "Você acaba de receber o Kit Inicial", 
    denied = "Você já pegou seu KIT"
}
