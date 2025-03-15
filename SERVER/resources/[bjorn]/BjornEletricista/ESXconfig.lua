-----------------------------------------------------------------------------
--------------------[ DEVELOPED BY BJORN IRONSIDE ]--------------------------
-----------------------[  Discord:Bjorn#5034  ]------------------------------
-----------------------------------------------------------------------------
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

SystemConfig = {
	["License"] = ""				------ Licença.
	["Particles"] = true,			------ Define se irá aparecer as particulas.
	["Minigame"] = true,			------ Define se irá usar o minigame.
	["ShortCircuit"] = true,		------ Define se terá chance de curto circuito ao errar o minigame.
	["ShortChance"] = 50,			------ Define a chance de causar curto.
	["ShortPenalty"] = true,		------ Define se o player terá que pagar multa ao causar um curto.
	["ShortPenaltyAmount"] = 100,	------ Define o valor que o player terá que pagar.
	["ShortDamage"] = true,			------ Define se o player tomará dano ao causar um curto.
	["ShortHealth"] = 30,			------ Define quanto de dano o player tomará no curto.
	["PayAmount"] = {100,300},		------ Define quanto o player irá receber após reparo bem-sucedido. (Número inteiro: Recompensa fixa | Array: Recomensa randomica entre o 1 e 2 valor)
	["Car"] = "emperor",			------ Modelo do carro usado para pegar escadas.
	["KeyGetCarLadder"] = 38,		------ Tecla para pegar escada do veiculo.
	["KeyPutCarLadder"] = 38,		------ Tecla para pegar escada do veiculo.
	["KeyPutLadderOnPost"] = 38,	------ Tecla para colocar escada no poste.
	["KeyGetLadderFromPost"] = 38,	------ Tecla para pegar escada do poste.
	["KeyFixPost"] = 38,			------ Tecla para consetar o poste.
	["Blackout"] = true,			------ Ativa o sistema de blackout.
	["BlackoutKey"] = 38,			------ Ativa o sistema de blackout.
	["BlackoutUseItem"] = true,		------ Define se irá usar item para sabotar.
	["BlackoutItem"] = "pano",		------ Define o item a ser utilizado.
	["BlackoutTime"] = 30,			------ Tempo em minutos que o blackout irá durar.
	["BlackoutStepsToFix"] = 2,		------ Quantidade de consertos necessários para restaurar a energia.
	["EnableEditCommand"] = true, 	------ Ative o comando de entrar no modo editor.
	["Command"] = "getcds",			------ Defina o comando caso o comando de editor esteja ativo.
	["EnableDebugCommand"] = true, 	------ Ative o comando de pegar a coordenada mais próxima de um certo local.
	["CommandCds"] = "debugcds",	------ Defina o comando caso o comando de editor esteja ativo.
	["KeyEnterService"] = 38,		------ Tecla para entrar no serviço.
	["KeyExitService"] = 168,		------ Tecla para sair do serviço.
	["KeyFix"] = 38,				------ Tecla arrumar.
	["KeyFront"] = 111,				------ Tecla para mover o objeto para frente no modo editor.
	["KeyBack"] = 110,				------ Tecla para mover o objeto para tras no modo editor.
	["KeyLeft"] = 108,				------ Tecla para mover o objeto para esquerda no modo editor.
	["KeyRight"] = 109,				------ Tecla para mover o objeto para direita no modo editor.	
	["KeyRotL"] = 117,				------ Tecla para rotacionar o objeto para esquerda no modo editor.
	["KeyRotR"] = 118,				------ Tecla para rotacionar o objeto para direita no modo editor.
	["KeySave"] = 314,				------ Tecla para salvar a coordenada do objeto no modo editor.
}

Uniform = {
	[1885233650] = {				------ Male                        
		[1] = {0,0},
		[2] = {4,0},
		[3] = {30,0},
		[4] = {121,0,1},
		[5] = {-1,0},
		[6] = {50,0},
		[7] = {0,0},
		[8] = {59,1},
		[9] = {44,0},		
		[10] = {-1,0},
		[11] = {44,3},
		["p0"] = {145,1},
		["p1"] = {2,0}			
	},
	[-1667301416] = {				------ Female		
		[1] = {0,0},
		[2] = {1,0},
		[3] = {20,0},
		[4] = {49,0},
		[5] = {0,0},
		[6] = {66,0},
		[7] = {0,0},	
		[8] = {36,0},
		[9] = {0,0},
		[10] = {0,0},
		[11] = {49,0},
		["p0"] = {144,2},
		["p1"] = {-1,0}
	}
}

Translate = {
	["Enter"] = "Você entrou em serviço!",
	["Exit"] = "Você saiu do serviço!",
	["Exit2"] = "Você foi demitido por ter danificado um equipamento e não ter dinheiro para pagar!",
	["NoPermission"] = "Você não tem permissão para trabalhar aqui!",
	["NextRoute"] = "Equipamento consertado, siga para a próxima rota!",
	["Pay"] = "Você ganhou R$%s!",
	["WorkMessage"] = "~w~APERTE ~r~F7 ~w~PARA SAIR DO SERVIÇO",
	["WorkMessage2"] = "VA ATÉ O ~y~DESTINO~w~ PARA CONSERTAR O ~r~EQUIPAMENTO",
	["EnterWork"] = "~b~[E]~w~ P/ TRABALHAR DE ~r~ELETRICISTA",
	["ExitWork"] = "~r~[F7]~w~ P/ SAIR DO SERVIÇO",
	["Fix"] = "~b~[E]~w~",
	["Local"] = "⚡",
	["LocalLadder"] = "🪜",
	["WarnLadder"] = "~r~PEGUE A ESCADA NO VEICULO",
	["WarnLadder2"] = "~r~COLOQUE A ESCADA NO VEICULO",
	["PutLadderOnPost"] = "~b~[E]~w~ PARA COLOCAR A ESCADA NO POSTE",
	["GetLadderFromPost"] = "~b~[E]~w~ PARA PEGAR A ESCADA",
	["FixPost"] = "~b~[E]~w~ PARA CONSERTAR O POSTE",
	["TakeLadderFromCar"] = "~b~[E]~w~ P/ PEGAR A ~r~ESCADA",
	["PutLadderOnCar"] = "~b~[E]~w~ P/ COLOCAR A ~r~ESCADA",
	["ShortCircuit"] = "Você causou um curto no equipamento!",
	["Penalty"] = "Multa de R$%s aplicada por danificar o equipamento!",
	["UsingMessage"] = "Tem uma pessoa utilizando o telefone.",
	["SabotageMessage"] = "~b~[E]~w~ P/ ~r~SABOTAR",
	["SabotageItemErr"] = "Você precisa de um "..SystemConfig.BlackoutItem.."",
	["SabotageSuccess"] = "Equipamento sabotado, siga para o próximo!",
	["BlackoutWarn"] = "O fornecimento de energia da cidade foi sabotado!",
	["BlackoutWarn2"] = "Previsão de correção é de "..SystemConfig.BlackoutTime.." Minutos!",
	["BlackoutWarn3"] = "Contrata-se eletricistas para resolver o problema o quanto antes!",
	["BlackoutRemainingRepairs"] = "Reparos necessários para restaurar a energia:~y~ ",
	["BlackoutFixed"] = "A energia da cidade foi restaurada!",
	["MoveKeys"] = "~r~4,5,6 E 8~w~ ~g~PARA MOVIMENTAR O POSTER",
	["RotKeys"] = "~r~7 E 9~w~ ~y~PARA ROTACIONAR O POSTER",
	["SaveKey"] = "~r~+~w~ ~b~PARA ADICIONAR CORDENADA",

}

BlackoutSettings = {
	["Step1"] = {714.04754638672,160.43147277832,79.741226196289,238.18998718262},
	["Step2"] = {653.99694824219,100.22169494629,79.746856689453,179.98937988281},
	["Step3"] = {679.86822509766,96.740852355957,79.745101928711,89.129852294922},
	["Step4"] = {724.49682617188,135.12554931641,81.336912231445,58.139995574951},
	["ParticleCoords"] = {
		{685.95,156.43,84.51},
		{674.66,121.26,85.89},
		{707.44,118.61,86.49},
	},
	["Scale"] = 50,
	["Sound"] = {"Power_Down","DLC_HEIST_HACKING_SNAKE_SOUNDS"},					------ PlaySoundFrontend
}

Coords = {
	["Init"] = {727.05004882813,131.7174987793,80.656405639648,151.28289794922},	------ Coordenada inicial
	["Work"] = {
		{1,155.83053588867,-1086.9637451172,29.57292755127,180.69253540039},
		{1,318.0615234375,-994.24035644531,29.575231628418,359.44854736328},
		{2,281.3486328125,-992.36553955078,32.449714660645,1.9672205448151},
		{2,320.49313354492,-994.51293945313,28.170337677002,359.69506835938},
		{1,345.21047973633,-993.47088623047,29.7267628479,89.946441650391},
		{2,357.51553344727,-802.64685058594,28.286037445068,86.405601501465},
		{1,356.25674438477,-790.49530029297,29.665056304932,69.904762268066},
		{3,366.95141601563,-754.64398193359,28.283739089966,66.81510925293},
		{1,440.71340942383,-598.02648925781,29.100553588867,266.48211669922},
		{3,299.56118774414,-601.46453857422,42.343296051025,339.64120483398},
		{2,41.836219787598,-1039.4440917969,28.448432922363,336.88418579102},
		{3,28.788379669189,-1020.6818847656,28.453212738037,70.281562805176},
		{2,8.5871114730835,-1004.0343017578,82.43904876709,69.703742980957},
		{1,8.5895385742188,-1001.9729614258,83.764494018555,158.59619140625},
		{3,-114.809425354,-1036.9528808594,26.296604156494,19.042909622192},
		{1,-37.506080627441,-1115.8887939453,26.82363899231,248.81576538086},
		{1,-218.04925537109,-1167.8990478516,23.402412490845,270.46533203125},
		{2,19.402141571045,-1336.7526855469,28.394538879395,270.66851806641},
		{1,54.250484466553,-1332.6214599609,29.691253738403,87.552543640137},
		{3,155.7682800293,-1312.3897705078,28.20791053772,244.31430053711},
		{1,103.29804229736,-1281.2299804688,29.562118606567,190.48329162598},
		{2,290.53393554688,-1251.9791259766,28.37718963623,178.90200805664},
		{3,-187.87054443359,-1312.6759033203,30.301582336426,88.121078491211},
		{2,-218.62661743164,-1368.8647460938,30.248321533203,210.32168579102},
		{2,-11.056034088135,-1078.0540771484,25.672077178955,339.65277099609},
		{1,15.694911003113,-1114.6014404297,30.171722488403,339.80776977539},
		{4,140.76675415039,-381.57229614258,42.259201049805,248.29949951172},
		{4,-92.745040893555,-1015.1994628906,26.280557632446,342.20712280273},
		{2,459.22677612305,-1010.7268066406,27.330984115601,270.17114257813},
		{1,420.24249267578,-1009.5425415039,29.560545043945,359.47814941406},
		{4,-1.8512598276138,-659.25592041016,32.457767486572,4.8665165901184},
		{2,81.861373901367,-339.00381469727,54.518085479736,69.831474304199},
		{3,38.006546020508,-430.23880004883,54.290615081787,70.332679748535},
		{2,60.969383239746,-261.3310546875,47.197334289551,159.98173522949},
		{4,324.54046630859,-232.38499450684,53.229846954346,249.18067932129},
		{1,-17.499996185303,-1089.6491699219,27.052606658936,70.139266967773},
		{3,154.60882568359,-771.82287597656,46.082626342773,69.97989654541},
		{1,231.29544067383,-1362.6358642578,29.034759597778,230.58996582031},
		{2,290.80303955078,-1356.2927246094,38.732727050781,319.54000854492},
		{2,259.49038696289,-1365.3900146484,29.547512054443,49.979999542236},
		{4,298.98635864258,-1451.9537353516,28.977327346802,140.17987060547},
		{3,387.73266601563,-1439.6617431641,28.449747085571,140.86978149414},
		{2,475.49566650391,-1340.0626220703,34.191558837891,227.72999572754},
		{1,487.36614990234,-1462.8435058594,29.505802230835,92.81999206543},
		{1,488.11785888672,-1527.4971923828,29.677494125366,229.21994018555},
		{4,462.3610534668,-1573.8206787109,28.282167434692,50.329982757568},
		{1,502.41333007813,-1626.2005615234,29.731655197144,228.40997314453},
		{3,563.91552734375,-1582.1727294922,27.154819488525,51.0},
		{4,513.92614746094,-1620.3028564453,28.248054504395,230.27658081055},
		{2,547.27087402344,-1958.24609375,23.981338500977,301.75994873047},
		{1,579.92272949219,-2289.5825195313,6.7711783218384,174.58079528809},
		{4,581.65191650391,-2286.7065429688,5.3994145393372,264.99993896484},
		{1,491.24411010742,-2260.4587402344,6.2972374725342,305.79989624023},
		{2,782.88470458984,-2258.2185058594,28.421392440796,265.29000854492},
		{1,811.62969970703,-2251.9819335938,30.147953109741,173.59992980957},
		{4,875.27276611328,-2164.7458496094,31.277498245239,354.41000366211},
		{2,855.37628173828,-2171.6799316406,40.208316802979,270.1291809082},
		{4,819.74035644531,-2155.3757324219,28.63761138916,0.013431237079203},
		{3,1001.8965454102,-2174.0185546875,29.588260650635,84.125778198242},
		{1,1076.9364013672,-1976.3348388672,31.853101806641,322.50207519531},
		{4,1081.08984375,-1980.3265380859,30.480085372925,324.91000366211},
		{2,1107.2668457031,-2010.9643554688,34.444408416748,53.541286468506},
		{1,1070.5654296875,-2396.6232910156,41.355917053223,267.39996337891},
		{3,1131.830078125,-1622.3776855469,33.886638641357,180.15000915527},
		{4,1111.7205810547,-1523.0869140625,33.834007263184,179.76979064941},
		{2,965.99285888672,-1627.2412109375,29.110679626465,89.989990234375},
		{1,969.99725341797,-1741.4398193359,39.211134033203,351.65148925781},
		{5,156.67785644531,-1007.5067138672,30.481864929199,330.5556640625},
		{5,121.71729278564,-1021.0922851563,30.295545578003,234.60243225098},
		{5,205.60980224609,-1024.08984375,30.357776641846,57.069091796875},
		{5,253.08280944824,-996.95422363281,30.204975128174,356.57000732422},
		{5,265.01565551758,-877.07653808594,30.118879318237,121.43692016602},
		{5,191.21815490723,-840.67687988281,31.882726669312,248.64878845215},
		{5,122.88154602051,-910.33599853516,31.072645187378,30.647508621216},
		{5,88.210548400879,-977.48712158203,30.298089981079,60.576137542725},
		{5,-13.647629737854,-966.43865966797,30.30214881897,295.48696899414},
		{5,132.14872741699,-542.34368896484,44.291675567627,347.57998657227},
		{5,217.36364746094,-284.73788452148,49.214054107666,267.95916748047},
		{5,201.18222045898,-194.1953125,54.928207397461,130.63526916504},
		{5,377.97894287109,156.31121826172,104.06204223633,324.93579101563},
		{5,528.8671875,67.254379272461,97.12703704834,228.89863586426},
		{5,615.31903076172,75.199836730957,92.185699462891,64.906349182129},
		{5,636.28668212891,208.72120666504,98.441833496094,116.60791778564},
		{5,545.16821289063,244.24752807617,103.96112823486,275.50759887695},
		{5,448.35229492188,226.07104492188,104.10372161865,295.83694458008},
		{5,-573.90289306641,-320.09616088867,35.998630523682,323.54998779297},
		{5,-951.501953125,-212.76312255859,38.856231689453,286.81735229492},
		{5,-964.94555664063,-179.68167114258,42.82243347168,351.64685058594},
		{5,-1828.7552490234,-282.05813598633,42.899501800537,241.22860717773},
		{5,754.06805419922,-588.71862792969,37.107269287109,169.72749328613},
		{5,655.38262939453,-7.9910583496094,84.22883605957,74.926330566406},
		{5,513.88055419922,-1614.0805664063,30.179277420044,202.67839050293},
	}
}

Blips = {
	["Work"] = {["Sprite"] = 354, ["Colour"] = 5, ["Scale"] = 1.8,["ShortRange"] = true,["Text"] = "Trabalho Eletricista"},
	["Equipament"] = {["Sprite"] = 354, ["Colour"] = 5, ["Scale"] = 1.8,["ShortRange"] = false,["Text"] = "Consertar Equipamento"},
}

-----------------------------------------------------------------------------
-------------------------Server Functions------------------------------------
-----------------------------------------------------------------------------

--- Pegar ID

GetId = function(src)
	local xPlayer = ESX.GetPlayerFromId(src)
	return xPlayer
end

--- Remover dinheiro (multa)

TryMoney = function(xPlayer,amount)	
	return xPlayer.removeAccountMoney(amount)
end

--- Dar dinheiro

GiveMoney = function(xPlayer,amount)
	return xPlayer.addAccountMoney(amount)
end

---- Pegar item do player

GetItem = function(xPlayer)	
	return xPlayer.removeInventoryItem(SystemConfig["BlackoutItem"], 1)
end

--- Criar Prop

CreateServerProp = function(object,x,y,z,isNetWork,netMissionEntity,doorFlag)
	return CreateObject(object,x,y,z,isNetWork,netMissionEntity,doorFlag)
end

-----------------------------------------------------------------------------
-------------------------Client Functions------------------------------------
-----------------------------------------------------------------------------
Minigame = function()	------ Usada para iniciar o minigame.
	local minigameResult = CircuitGame("80%", "80%", 1.0, "50vmin","1.ogg")
	if minigameResult ~= "closed" then
		return minigameResult
	else
		return "closed"
	end
end

drawTxt = function(text,x,y,scale,r,g,b,a)
	SetTextFont(4)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

DrawText3D = function(coord,text)
	if text ~= nil then
		local onScreen,_x,_y=World3dToScreen2d(coord.x,coord.y,coord.z)
		local px,py,pz=table.unpack(GetGameplayCamCoords())   
		SetTextScale(0.24, 0.24)
		SetTextFont(10)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
		local factor = (string.len(text)) / 330
		DrawRect(_x,_y+0.0100, 0.040+factor, 0.020, 0, 0, 0, 150)
	end
end

CreateBlip = function(coord,blipConfig,route)
	local blip = AddBlipForCoord(coord.x,coord.y,coord.z)
	SetBlipSprite(blip,blipConfig.Sprite)
	SetBlipColour(blip,blipConfig.Colour)
	SetBlipScale(blip,blipConfig.Scale)
	SetBlipHighDetail(blip,true)
	SetBlipAsShortRange(blip,blipConfig.ShortRange)
	SetBlipRoute(blip,route)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(blipConfig.Text)
	EndTextCommandSetBlipName(blip)
	return blip
end
-----------------------------------------------------------------------------
-------------------------Both Functions--------------------------------------
-----------------------------------------------------------------------------
Notify = function(type,message,source)
	if source == nil then
		if type == "sucesso" then
			ESX.ShowNotification(message)
		elseif type == "aviso" then
			ESX.ShowNotification(message)
		elseif type == "negado" then
			ESX.ShowNotification(message)
		end
	else
		if type == "sucesso" then
			TriggerClientEvent('esx:showNotification', source, message)
		elseif type == "aviso" then
			TriggerClientEvent('esx:showNotification', source, message)
		elseif type == "negado" then
			TriggerClientEvent('esx:showNotification', source, message)
		end
	end
end
















