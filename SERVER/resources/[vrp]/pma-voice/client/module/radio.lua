local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP","pma-voice")

src = {}
Tunnel.bindInterface("pma-voice",src)
vSERVER = Tunnel.getInterface("pma-voice")
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local openRadio = false
local privateFreques = {
	[1] = { perm = "admin.permissao" },
	[2] = { perm = "perm.policia" },
	[3] = { perm = "perm.unizk" },
	[4] = { perm = "perm.rocket" },
	[5] = { perm = "perm.yardie" },
	[6] = { perm = "perm.camorra" },
	[7] = { perm = "perm.corleone" },
	[8] = { perm = "perm.cosanostra" },
	[9] = { perm = "perm.amarelos" },
	[10] = { perm = "perm.verdes" },
	[11] = { perm = "perm.roxos" },
	[12] = { perm = "perm.vermelhos" },
	[13] = { perm = "perm.azuis" },
	[14] = { perm = "perm.brancos" },
	[15] = { perm = "perm.angels" },
	[16] = { perm = "perm.galaxy" },
	[17] = { perm = "perm.kings" },

	[18] = { perm = "admin.permissao" },
	[19] = { perm = "admin.permissao" }
}


RegisterCommand('radio', function(source,args)
	if isDead() then return end

	if vSERVER.checkRadio() then
		if not openRadio then
			openRadio = true
			SendNUIMessage({ show = true })
			SetNuiFocus(true, true)
		else
			openRadio = false
			SendNUIMessage({ show = false })
			SetNuiFocus(false, false)
		end
	else
		TriggerEvent("Notify","negado","Você não possui <b>1x Radio</b>", 5)
	end
end)

RegisterNUICallback('closeRadio', function()
	openRadio = false
	SendNUIMessage({ show = false })
	SetNuiFocus(false, false)
end)

RegisterNUICallback('activeFrequency', function(data)
	radioEnabled = true
	if (data.freq ~= "" and parseInt(data.freq) > 0) then 
		if privateFreques[parseInt(data.freq)] ~= nil then
			if vSERVER.checkPermission(privateFreques[parseInt(data.freq)].perm) then
				setRadioChannel(0)
				
				Wait(100)
				setRadioChannel(parseInt(data.freq))
				TriggerEvent("vrp_hud:TokovoipRadio", parseInt(data.freq));
			else
				TriggerEvent("Notify","negado","Você não possui permissão para entrar nessa frequencia. <b> 20 ~ 999 </b>", 5)
			end
		else
			setRadioChannel(0)

			Wait(100)
			setRadioChannel(parseInt(data.freq))
			TriggerEvent("vrp_hud:TokovoipRadio", parseInt(data.freq));
		end
	end
end)

RegisterNUICallback('inativeFrequency', function(data)
	radioEnabled = false
	setRadioChannel(0)
	TriggerEvent("vrp_hud:TokovoipRadio", 0);
end)

local delay = false
RegisterNUICallback('changevolume', function(data)
	if not delay then
		delay = true

		setVolume(data.volume,"radio")
		SetTimeout(5*1000, function() delay = false end)
	end
end)

Citizen.CreateThread(function()
	while true do
		if isDead() then
			if radioEnabled then
				radioEnabled = false
				setRadioChannel(0)
				TriggerEvent("vrp_hud:TokovoipRadio", 0);
			end
		end

		Citizen.Wait(1000)
	end
end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- GERAL
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local radioChannel = 0

--- event syncRadioData
--- syncs the current players on the radio to the client
---@param radioTable table the table of the current players on the radio
function syncRadioData(radioTable)
	radioData = radioTable
	logger.info('[radio] Syncing radio table.')
	if GetConvarInt('voice_debugMode', 0) >= 4 then
		print('-------- RADIO TABLE --------')
		tPrint(radioData)
		print('-----------------------------')
	end
	for tgt, enabled in pairs(radioTable) do
		if tgt ~= playerServerId then
			toggleVoice(tgt, enabled, 'radio')
		end
	end
end
RegisterNetEvent('pma-voice:syncRadioData', syncRadioData)

--- event setTalkingOnRadio
--- sets the players talking status, triggered when a player starts/stops talking.
---@param plySource number the players server id.
---@param enabled boolean whether the player is talking or not.
function setTalkingOnRadio(plySource, enabled)
	toggleVoice(plySource, enabled, 'radio')
	radioData[plySource] = enabled
	playMicClicks(enabled)
end
RegisterNetEvent('pma-voice:setTalkingOnRadio', setTalkingOnRadio)

--- event addPlayerToRadio
--- adds a player onto the radio.
---@param plySource number the players server id to add to the radio.
function addPlayerToRadio(plySource)
	radioData[plySource] = false
	if radioPressed then
		logger.info('[radio] %s joined radio %s while we were talking, adding them to targets', plySource, radioChannel)
		playerTargets(radioData, isPlayerTalking(PlayerId()) and callData or {})
	else
		logger.info('[radio] %s joined radio %s', plySource, radioChannel)
	end
end
RegisterNetEvent('pma-voice:addPlayerToRadio', addPlayerToRadio)

--- event removePlayerFromRadio
--- removes the player (or self) from the radio
---@param plySource number the players server id to remove from the radio.
function removePlayerFromRadio(plySource)
	if plySource == playerServerId then
		logger.info('[radio] Left radio %s, cleaning up.', radioChannel)
		for tgt, _ in pairs(radioData) do
			if tgt ~= playerServerId then
				toggleVoice(tgt, false, 'radio')
			end
		end
		radioData = {}
		playerTargets(isPlayerTalking(PlayerId()) and callData or {})
	else
		radioData[plySource] = nil
		toggleVoice(plySource, false)
		if radioPressed then
			logger.info('[radio] %s left radio %s while we were talking, updating targets.', plySource, radioChannel)
			playerTargets(radioData, isPlayerTalking(PlayerId()) and callData or {})
		else
			logger.info('[radio] %s has left radio %s', plySource, radioChannel)
		end
	end
end
RegisterNetEvent('pma-voice:removePlayerFromRadio', removePlayerFromRadio)

--- function setRadioChannel
--- sets the local players current radio channel and updates the server
---@param channel number the channel to set the player to, or 0 to remove them.
function setRadioChannel(channel)
	if GetConvarInt('voice_enableRadios', 1) ~= 1 then return end
	TriggerServerEvent('pma-voice:setPlayerRadio', channel)
	radioChannel = channel
end

--- exports setRadioChannel
--- sets the local players current radio channel and updates the server
---@param channel number the channel to set the player to, or 0 to remove them.
exports('setRadioChannel', setRadioChannel)
-- mumble-voip compatability
exports('SetRadioChannel', setRadioChannel)

--- exports removePlayerFromRadio
--- sets the local players current radio channel and updates the server
exports('removePlayerFromRadio', function()
	setRadioChannel(0)
end)

--- exports addPlayerToRadio
--- sets the local players current radio channel and updates the server
---@param radio number the channel to set the player to, or 0 to remove them.
exports('addPlayerToRadio', function(_radio)
	local radio = tonumber(_radio)
	if radio then
		setRadioChannel(radio)
	end
end)

--- check if the player is dead
--- seperating this so if people use different methods they can customize
--- it to their need as this will likely never be changed.
function isDead()
	if GetResourceState("pma-ambulance") ~= "missing" then
		if LocalPlayer.state.isDead then
			return true
		end
	elseif IsPlayerDead(PlayerId()) then
		return true
	end
end

RegisterCommand('+radiotalk', function()
	if GetConvarInt('voice_enableRadios', 1) ~= 1 then return end
	if isDead() then return end

	if not radioPressed and radioEnabled then
		if radioChannel > 0 then
			logger.info('[radio] Start broadcasting, update targets and notify server.')
			playerTargets(radioData, isPlayerTalking(PlayerId()) and callData or {})
			TriggerServerEvent('pma-voice:setTalkingOnRadio', true)
			radioPressed = true
			playMicClicks(true)
			RequestAnimDict('random@arrests')
			while not HasAnimDictLoaded('random@arrests') do
				Citizen.Wait(10)
			end
			TaskPlayAnim(PlayerPedId(), "random@arrests", "generic_radio_enter", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0)
			Citizen.CreateThread(function()
				TriggerEvent("pma-voice:radioActive", true)
				while radioPressed do
					Wait(0)
					SetControlNormal(0, 249, 1.0)
					SetControlNormal(1, 249, 1.0)
					SetControlNormal(2, 249, 1.0)
				end
			end)
		end
	end
end, false)

RegisterCommand('-radiotalk', function()
	if radioChannel > 0 or radioEnabled and radioPressed then
		radioPressed = false
		MumbleClearVoiceTargetPlayers(voiceTarget)
		playerTargets(isPlayerTalking(PlayerId()) and callData or {})
		TriggerEvent("pma-voice:radioActive", false)
		playMicClicks(false)
		StopAnimTask(PlayerPedId(), "random@arrests", "generic_radio_enter", -4.0)
		TriggerServerEvent('pma-voice:setTalkingOnRadio', false)
	end
end, false)
if gameVersion == 'fivem' then
	RegisterKeyMapping('+radiotalk', 'Talk over Radio', 'keyboard', GetConvar('voice_defaultRadio', 'LMENU'))
end

--- event syncRadio
--- syncs the players radio, only happens if the radio was set server side.
---@param _radioChannel number the radio channel to set the player to.
function syncRadio(_radioChannel)
	if GetConvarInt('voice_enableRadios', 1) ~= 1 then return end
	logger.info('[radio] radio set serverside update to radio %s', radioChannel)
	radioChannel = _radioChannel
end
RegisterNetEvent('pma-voice:clSetPlayerRadio', syncRadio)
