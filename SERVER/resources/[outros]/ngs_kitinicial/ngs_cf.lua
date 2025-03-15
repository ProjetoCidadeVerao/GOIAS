                                                                                                                                                                                                                                                                                                                                                                                                      
Ngs = {}
Ngs.webhookURL = "https://discord.com/api/webhooks/1240491257831358585/qhYlmQemIm28aecoyIk0V9DXRj7gUpZWE0WX6S_y7PaGigIqaplJu7Zcpnuju-xC2j0f" -- [Discord Webhook URL]
Ngs.logoURL = "http://89.213.5.115/verao_images/niteroi/logop.png/" -- [Logo URL]
Ngs.footerIconURL = "http://89.213.5.115/verao_images/niteroi/logop.png" -- [footerIconUR URL]
Ngs.kitItems = { -- [items que vera no kitinicial]
    ["celular"] = 1,
    ["suspensaoar"] = 1,
    ["dinheiro"] = 50000,
    ["cartao-debito"] = 1,
}
Ngs.Modelo = "mp_f_execpa_01"
Ngs.Coords = vector3(-1041.28, -2730.46, 13.80)
Ngs.Heading = 541.30
Ngs.Nome = "RESGATE SEU KITINICIAL"
Ngs.distance = 10.0
Ngs.vipGroupName = "niteroi" -- [Substitua pelo nome real do seu grupo VIP]
Ngs.RemoveVR = 15 * 24 * 60 * 60 -- [Remover carro VIP após a duração configurada]
Ngs.vipGroupRemovalDuration = 424500 -- [Remover grupo VIP após a duração configurada]
Ngs.commands = { 
    kitCommand = 'niteroi', -- [comando para pega kitinicial]
}
Ngs.vehicleInfo = { 
    model = "hyundaiveloster" -- [Modelo  do Veículo]
}
Ngs.notifyMessages = { -- [Notificação que vai Ver Player]
    success = "Você acaba de receber o Kit Inicial", 
    denied = "Você já pegou seu KIT"
}
