-----------------------------------------------------------------------------
--------------------[ DEVELOPED BY BJORN IRONSIDE ]--------------------------
-----------------------[  Discord:Bjorn#5034  ]------------------------------
-----------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}

config.license = "GTLKXVEWOR6FOVX3M7FKD0DVVVZ1IJ"
config.permissaoadmin = "admin.permissao"
config.usarperm = false
config.perm = "dv.permissao"
config.postersinicial = 3
config.recompensa = math.random(50,200)
config.CordInicio = {344.03,285.18,95.8}
config.usarTextura = false
config.TexturasLink = ""
config.BlipSprite = 498
config.BlipColour = 15
config.BlipScale = 0.2

config.coords = {

	{129.18,-1029.26,29.31,159.95},
	{193.4,-1053.62,29.26,161.73},
	{173.95,-962.74,29.89,230.77},
	{199.48,-951.2,30.04,235.24},
	{208.12,-921.67,30.65,325.19},
	{204.13,-909.73,30.65,54.92},
	{236.48,-898.32,30.65,235.68},
	{250.81,-825.81,29.75,340.47},
	{297.81,-892.09,29.18,250.93},
	{274.74,-964.67,29.3,214.79},
	{268.26,-974.98,29.29,250.44},
	{258.98,-1000.43,29.23,250.53},
	{259.13,-1069.93,29.3,180.36},
	{270.34,-1069.51,29.38,180.67},
	{286.74,-1069.47,29.38,180.06},
	{291.68,-1083.76,29.36,89.23},
	{316.54,-1092.67,29.36,268.21},
	{317.5,-1107.59,29.37,267.34},
	{289.7,-1119.5,29.38,0.95},
	{189.17,-1110.04,29.26,89.84},
	{177.9,-1115.8,29.27,358.58},
	{148.46,-1115.81,29.28,359.32},	
	{124.79,-1112.19,29.27,0.03},
	{87.08,-1113.44,29.26,308.52},
	{-7.43,-1119.72,27.64,2.17},
	{-29.96,-1120.81,26.59,2.82},
	{-37.47,-1115.83,26.38,250.32},
	{-52.91,-1103.71,26.39,340.35},
	{-61.16,-1095.73,26.35,249.44},
	{-50.63,-1062.12,27.65,250.04},
	{-38.84,-1030.72,28.61,250.0},
	{-27.75,-995.88,29.2,250.38},
	{-20.91,-977.07,29.29,248.79},
	{31.12,-949.2,29.3,340.57},
	
}


config.lang = {
	["work"] = "~g~PRESSIONE ~r~[E]~g~ PARA TRABALHAR DE ~y~PANFLETEIRO",
	["joined"] = "Você entrou em serviço, siga para a cordenada marcada no mapa.",
	["colect"] = "~g~PRESSIONE ~r~[E]~g~ PARA COLETAR MAIS ~y~PANFLETOS",
	["collected"] = "Panfletos Coletados.",
	["premaining"] = "~y~PANFLETOS RESTANTES: ~r~%s",
	["warn"] = "~r~SEM PANFLETOS RESTANTES, VOLTE AO LOCAL INICIAL PARA COLETAR MAIS!",
	["place"] = "~g~PRESSIONE ~r~[E]~g~ PARA COLOCAR O PANFLETO",
	["placed"] = "Poster colocado, siga para a próxima cordenada.",
	["exit"] = "Você saiu do serviço.",
	["noperm"] = "Sem permissão!",


}


---- ID

GetId = function(s)
	return vRP.getUserId(s)
end

---- Permissao

ChkPerm = function(id,perm)
	return vRP.hasPermission(id,perm)		
end


---- Notify

Notify = function(type,msg,s,serverside)
	if not serverside then	
		if type == "sucesso" then
			TriggerEvent("Notify",type,msg)
		elseif type == "aviso" then
			TriggerEvent("Notify",type,msg)
		elseif type == "negado" then
			TriggerEvent("Notify",type,msg)
		end
	else
		if type == "sucesso" then
			TriggerClientEvent("Notify",s,type,msg)
		elseif type == "aviso" then
			TriggerClientEvent("Notify",s,type,msg)
		elseif type == "negado" then
			TriggerClientEvent("Notify",s,type,msg)
		end
	end
end
