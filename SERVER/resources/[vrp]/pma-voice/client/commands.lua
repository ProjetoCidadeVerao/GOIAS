RegisterCommand('setvoiceintent', function(source, args)
	if GetConvarInt('voice_allowSetIntent', 1) == 1 then
		local intent = args[1]
		if intent == 'speech' then
			MumbleSetAudioInputIntent(GetHashKey('speech'))
		elseif intent == 'music' then
			MumbleSetAudioInputIntent(GetHashKey('music'))
		end
	end
end)

RegisterCommand('vol', function(_, args)
	if not args[1] then return end
	setVolume(args[1])
end)

RegisterCommand('cycleproximity2', function()
	if GetConvarInt('voice_enableProximity', 1) ~= 1 then return end
	if playerMuted then return end

	local voiceMode = mode
	local newMode = voiceMode + 1

	voiceMode = (newMode <= #Cfg.voiceModes and newMode) or 1
	local voiceModeData = Cfg.voiceModes[voiceMode]
	setTalkerProximity(voiceModeData[1] + 0.0)
	mode = voiceMode
	LocalPlayer.state:set('proximity', {
		index = voiceMode,
		distance =  voiceModeData[1],
		mode = voiceModeData[2],
	}, true)

	SendNUIMessage({
		voiceMode = voiceMode - 1
	})

	TriggerEvent('vrp_hud:Tokovoip', voiceMode)
end, false)
if gameVersion == 'fivem' then
	RegisterKeyMapping('cycleproximity2', 'Cycle Proximity', 'keyboard', GetConvar('voice_defaultCycle', 'HOME'))
end