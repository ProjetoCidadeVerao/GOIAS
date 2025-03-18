local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

cnVRP = {}
Tunnel.bindInterface("goias_blip",cnVRP)
vSERVER = Tunnel.getInterface("goias_blip")

local blipsEmMemoria = {}

Citizen.CreateThread(function ()
    carregarBlips()
end)

RegisterNUICallback('createBlip', function(data, cb)
    local ped = PlayerPedId()
	local coords = GetEntityCoords(ped)
    vSERVER.create({x = coords[1], y = coords[2], z = coords[3], icone = data.icon, cor = data.color, nome = data.name, tamanho = data.size})
    cb("")
end)

RegisterNUICallback('removeBlip', function(data, cb)
    vSERVER.remove({id = data.id})
    cb("")
end)

function carregarBlips()
    local blips = vSERVER.read()
    for key, value in pairs(blips) do
        local blip = AddBlipForCoord(value.x + 0.0,value.y + 0.0,value.z + 0.0)
		SetBlipSprite(blip, parseInt(value.icone))
		SetBlipAsShortRange(blip,true)
		SetBlipColour(blip, parseInt(value.cor))
		SetBlipScale(blip,value.tamanho + 0.0)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(value.nome)
		EndTextCommandSetBlipName(blip)
        table.insert(blipsEmMemoria, blip)
    end
end

RegisterNetEvent('monkey-blips:atualizar')
AddEventHandler('monkey-blips:atualizar', function(variableData)
    for key, value in pairs(blipsEmMemoria) do
        RemoveBlip(value)
    end
    carregarBlips()
end)

RegisterCommand("blip", function(source, args, rawCommand)

    local hasPermission = vSERVER.hasPermission()

    if hasPermission then
        SetNuiFocus(true, true)
    
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local blips = vSERVER.read()
    
        SendNUIMessage({
            method = 'open',
            coord = coords,
            blipsList = blips,
            namePlayer = vSERVER.getInfo()
        })
    end



end)

RegisterNUICallback('close', function(data, cb)
	SetNuiFocus(false, false)
end)

RegisterNUICallback('getBlips', function(data, cb)
	local blips = vSERVER.read()
    cb(blips)
end)

RegisterNUICallback('teleport', function(data, cb)

    local x = data.x
    local y = data.y
    local z = data.z
    SetEntityCoords(PlayerPedId(),x+0.0001,y+0.0001,z+0.0001,1,0,0,1)

    cb("")
end)