
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

Framework = 'vRP'

FrameworkFunctions = {
    ['vRP'] = {
        getUserId = vRP.getUserId,
        prepare = vRP.prepare,
        execute = vRP.execute,
        tryFullPayment = vRP.tryFullPayment,
        query = vRP.query,
        getUserIdentity = vRP.getUserIdentity,
        hasPermission = vRP.hasPermission
    },

    ['CreativeNetwork'] = {
        getUserId = vRP.Passport,
        prepare = vRP.Prepare,
        execute = vRP.Query,
        tryFullPayment = vRP.PaymentFull,
        query = vRP.Query,
        getUserIdentity = vRP.Identity,
        hasPermission = vRP.HasPermission
    }
}

function Notify(source, label, text, displayTime)
    TriggerClientEvent('Notify', source, label, text, displayTime)
end