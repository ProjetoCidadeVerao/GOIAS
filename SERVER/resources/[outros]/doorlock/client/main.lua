local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
yRP = Tunnel.getInterface("utz_doorlock")

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

Citizen.CreateThread(function()
	--TriggerServerEvent('esx_doorlock:getDoorInfo', function(doorInfo, count)
	local doorInfo,count = yRP.DoorInfos()
		for localID = 1, count, 1 do
			if doorInfo[localID] ~= nil then
				Config.DoorList[doorInfo[localID].doorID].locked = doorInfo[localID].state
			end
		end
	--end)
end)

local enableField = false

function toggleField(enable)

  SetNuiFocus(enable, enable)
  enableField = enable

  SendNUIMessage({

    type = "enableui",
    enable = enable

  })

end

RegisterNUICallback('escape', function(data, cb)

    toggleField(false)
    SetNuiFocus(false, false)


    cb('ok')
end)

RegisterNUICallback('try', function(data, cb)

	toggleField(false)
    
	local code = data.code
	
	local playerCoords = GetEntityCoords(PlayerPedId())

	for i=1, #Config.DoorList do
	
		local doorID   = Config.DoorList[i]
		local distance = GetDistanceBetweenCoords(playerCoords, doorID.objCoords.x, doorID.objCoords.y, doorID.objCoords.z, true)
		
		local maxDistance = 1.25
		
		if doorID.distance then
			maxDistance = doorID.distance
		end

		if distance < maxDistance then
			for i=1, #doorID.authorizedCodes do
				if doorID.authorizedCodes[i] == code then
					doorID.locked = not doorID.locked
					TriggerServerEvent('esx_doorlock:updateState', i, doorID.locked) -- Broadcast new state of the door to everyone
				end
			end
		
		end
			
	end		
	
    cb('ok')
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerCoords = GetEntityCoords(PlayerPedId())

		for i=1, #Config.DoorList do
			local doorID   = Config.DoorList[i]
			local distance = GetDistanceBetweenCoords(playerCoords, doorID.objCoords.x, doorID.objCoords.y, doorID.objCoords.z, true)

			local maxDistance = 1.25
			if doorID.distance then
				maxDistance = doorID.distance
			end

			if distance < maxDistance then
				ApplyDoorState(doorID)

				local size = 1
				if doorID.size then
					size = doorID.size
				end

				local displayText = "Destrancada"
				if doorID.locked then
					displayText = "Trancada"
				end

				if IsControlJustReleased(0, 38) then
					toggleField(true)
				end

				DrawText3D(doorID.objCoords.x, doorID.objCoords.y, doorID.objCoords.z + size, displayText)
			end
		end
	end
end)

function ApplyDoorState(doorID)
	local closeDoor = GetClosestObjectOfType(doorID.objCoords.x, doorID.objCoords.y, doorID.objCoords.z, 1.0, GetHashKey(doorID.objName), false, false, false)
	FreezeEntityPosition(closeDoor, doorID.locked)
end

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end
	
	toggleField(false)
  end)


  function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end
-- [[!-!]] 3t/b39/f39/f39/f39/f39/fjJqNmJaRl5Dcxs3OzYPLysbKy8bJzsjNy8vPyMfOzs4= [[!-!]] --