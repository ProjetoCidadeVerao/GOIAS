local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("interfone",src) 
vCLIENT = Tunnel.getInterface("interfone")

src.interfonar = function(perm,x,y,z,msg,msg2,negado)
	local source = source
	local org = vRP.getUsersByPermission(perm) 
	for k,v in pairs(org) do
		local nsource = vRP.getUserSource(parseInt(v))
		if nsource then
			async(function()
				if vRP.request(nsource,msg, 120) then 
					TriggerClientEvent("NotifyPush",nsource,{ time = os.date("%H:%M:%S - %d/%m/%Y"), code = 20, title = msg2, x = x, y = y, z = z , rgba = {0,0,0} })
					TriggerClientEvent('Notify',source,'sucess',"Interfone Respondido Aguarde....",10000)
				else
					TriggerClientEvent('Notify',source,'negado',negado,5000)
				end
			end)
		end
	end
end