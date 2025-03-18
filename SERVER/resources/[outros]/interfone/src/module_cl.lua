local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface("interfone",src)
vSERVER = Tunnel.getInterface("interfone")

local control = 0

Citizen.CreateThread(function()
	while true do
		local sleep = 1000
		for k, v in pairs(config.interfone.org) do
			local distance1 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),v.entrada.x,v.entrada.y,v.entrada.z,true)
			if distance1 <= 100 then
				sleep = 4
				DrawMarker(31,v.entrada.x,v.entrada.y,v.entrada.z,0,0,0,0,0.0,130.0,1.0,1.0,0.5,255,0,0,100,1,0,0,1)
				if distance1 <= 1.2 then
					sleep = 4
					drawTxt("PRESSIONE  ~r~E~w~  PARA INTERFONAR",4,0.5,0.80,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) then
						if control == 0 then 
							control = 15
							vSERVER.interfonar(k,v.entrada.x,v.entrada.y,v.entrada.z,config.notify,config.notify_aceito,config.negado)
						else
							TriggerEvent('Notify','negado','aguarde '..control..' para interfonar novamente!',5000)
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)


Citizen.CreateThread(function()
	while true do
		if control > 0 then 
			control = control - 1
		elseif control < 0 then 
			control = 0
		end
		Wait(1000)
	end
end)


function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end
