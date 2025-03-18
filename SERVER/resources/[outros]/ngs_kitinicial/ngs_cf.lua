                                                                                                                                                                                                                                                                                                                                                                                                      
Ngs = {}
Ngs.webhookURL = "https://discord.com/api/webhooks/1351201426952687647/cADnebQnPj5mkkTnvSogA0o8XBIs2y13kHxjhR6qWWmaSsKWNaPdlAgCzY-k-iC0LlDg" -- [Discord Webhook URL]
Ngs.logoURL = "http://191.96.81.87/logo/logop.png" -- [Logo URL]
Ngs.footerIconURL = "http://191.96.81.87/logo/logop.png" -- [footerIconUR URL]
Ngs.kitItems = { -- [items que vera no kitinicial]
    ["celular"] = 1,
    ["suspensaoar"] = 1,
    ["dinheiro"] = 50000,
    ["cartao-debito"] = 1,
}
Ngs.Modelo = "mp_f_execpa_01"
Ngs.Coords = vector3(-1607.33,-1047.74,13.07)
Ngs.Heading = 185.97
Ngs.Nome = "RESGATE SEU KITINICIAL"
Ngs.distance = 10.0
Ngs.vipGroupName = "goias" -- [Substitua pelo nome real do seu grupo VIP]
Ngs.RemoveVR = 15 * 24 * 60 * 60 -- [Remover carro VIP após a duração configurada]
Ngs.vipGroupRemovalDuration = 424500 -- [Remover grupo VIP após a duração configurada]
Ngs.commands = { 
    kitCommand = 'goias', -- [comando para pega kitinicial]
}
Ngs.vehicleInfo = { 
    model = "panto" -- [Modelo  do Veículo]
}
Ngs.notifyMessages = { -- [Notificação que vai Ver Player]
    success = "Você acaba de receber o Kit Inicial", 
    denied = "Você já pegou seu KIT"
}
