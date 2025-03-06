-----------------------------------------------------------------------------
--------------------[ DEVELOPED BY BJORN IRONSIDE ]--------------------------
-----------------------[  Discord:Bjorn#5034  ]------------------------------
-----------------------------------------------------------------------------

RegisterNetEvent('BjornPanfleto:GiveMoney')
AddEventHandler('BjornPanfleto:GiveMoney',function(amount)
local source = source
local user_id = vRP.getUserId(source)
	if user_id then
	local valor = tonumber(amount)
		vRP.giveMoney(user_id,valor)
		TriggerClientEvent("Notify",source,"sucesso","Você recebeu: R$"..valor.." por colar o panfleto!")
	end
end)

