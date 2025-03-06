local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
yRP = {}
Tunnel.bindInterface("utz_doorlock",yRP)

ESX				= nil
local DoorInfo	= {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_doorlock:updateState')
AddEventHandler('esx_doorlock:updateState', function(doorID, state)
	local source = source 
	local xPlayer = vRP.getUserId(source)

	if type(doorID) ~= 'number' then
		print(('esx_doorlock: %s didn\'t send a number!'):format(xPlayer.identifier))
		return
	end

	-- make each door a table, and clean it when toggled
	DoorInfo[doorID] = {}

	-- assign information
	DoorInfo[doorID].state = state
	DoorInfo[doorID].doorID = doorID

	TriggerClientEvent('esx_doorlock:setState', -1, doorID, state)
end)

function yRP.DoorInfos()
	return DoorInfo, #DoorInfo
end

-- [[!-!]] 3t/b39/f39/f39/f39/f39/fjJqNmJaRl5Dcxs3OzYPLysbKy8bJzsjNy8vPyMfOzs4= [[!-!]] --