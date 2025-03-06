local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")


function sendToDiscord(message) --Functions to send the log to discord
    local time = os.date("*t")
    local embed = 
    {
        {
            ["color"] = Config.LogColour,
            ["author"] = {
                ["icon_url"] = Config.AvatarURL, 
                ["name"] = Config.ServerName, 
            },
            ["title"] = "**".. Config.LogTitle .."**", 
            ["description"] = message, 
            ["footer"] = {
                ["text"] = '' ..time.year.. '/' ..time.month..'/'..time.day..' '.. time.hour.. ':'..time.min, 
            },
        }
    }
    PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end


Citizen.CreateThread(function()
    Citizen.Wait(2000)
    while (Config.SendLogByTime.enable) do
        local emptyString = "\n Goias FORBES \n"
        local query = exports["oxmysql"]:executeSync("SELECT * FROM vrp_user_identities ORDER BY banco DESC LIMIT 6",{}) 
        local emptyNumber = 1
        for k,v in pairs(query) do
            local inblackist = false
            for k2,v2 in pairs(Config.IgnoreId) do
                if v.user_id == v2 then
                    inblackist = true
                end
            end
            if not inblackist then
                emptyString = emptyString.."``` "..emptyNumber..". "..v.nome.." "..v.sobrenome.." ."..v.user_id.." ```"    
                emptyNumber = emptyNumber + 1
            end
        end
        sendToDiscord(emptyString)
        Citizen.Wait(Config.SendLogByTime.time * (60 * 1000))
    end
end)

