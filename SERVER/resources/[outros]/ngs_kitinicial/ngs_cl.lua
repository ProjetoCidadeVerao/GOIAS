-------------------------------------------
---- ┳┓┏┓┏┳┓  ┏┓┏┓┳┳┓┏┓┏┓  ┏┓┏┳┓┏┓┳┓┏┓ ----
---- ┃┃┣  ┃ ━━┃┓┣┫┃┃┃┣ ┗┓━━┗┓ ┃ ┃┃┣┫┣  ----
---- ┛┗┗┛ ┻   ┗┛┛┗┛ ┗┗┛┗┛  ┗┛ ┻ ┗┛┛┗┗┛ ----
------------------------------------------- 
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
ngs = Tunnel.getInterface(GetCurrentResourceName())
src = {}



JhoneConfig = {}
JhoneConfig.Coords = {
    { ['x'] = -1605.95, ['y'] = -1049.05, ['z'] = 13.04},
}



local onNui = false
local NetGames = false

function ToggleActionMenu()
    onNui = not onNui
    if onNui then
        TransitionFromBlurred(1000)
        SetNuiFocus(true, true)
        SendNUIMessage({NetGames = true})
    else
        TransitionFromBlurred(1000)
        SetNuiFocus(false)
        SendNUIMessage({NetGames = false})
    end
end

RegisterNUICallback("Close", function()
    SetNuiFocus(false)
end)

RegisterNUICallback("fechar2", function(data)
    SetNuiFocus(false)
    SendNUIMessage({NetGames = false})
    ToggleActionMenu()
end)

RegisterNUICallback("ButtonClick",function(data,cb)
    if data == "kitinicial" then
        TriggerServerEvent('kitinicial')
    end
end) 

RegisterCommand(Ngs.commands.kitCommand, function(source, args)
    ToggleActionMenu()
end)

RegisterNetEvent("Resgate:kit")
AddEventHandler("Resgate:kit", function()
    -- RegisterCommand(Ngs.commands.kitCommand, function(source, args)
    ToggleActionMenu()
end)

Citizen.CreateThread(function()
	while true do 
		local timeDistance = 2000
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			for k,v in pairs(JhoneConfig.Coords) do
				local distance = #(coords - vec3(v.x,v.y,v.z))
				if distance <= 10 then
					timeDistance = 0
					DrawText3D(vec3(v.x,v.y,v.z),"RESGATE SEU VIP COMIGO!")
					if IsControlJustPressed(1, 38) and distance < 3 then
                        ToggleActionMenu()
                        timeDistance = 3000
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)


function DrawText3D(coords, text)
    local onScreen,_x,_y = World3dToScreen2d(coords.x, coords.y, coords.z)
    if onScreen then
        SetTextScale(0.40, 0.40)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(100, 150, 50, 500)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
        local factor = (string.len(text)) / 370
        DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 90)
    end
end

