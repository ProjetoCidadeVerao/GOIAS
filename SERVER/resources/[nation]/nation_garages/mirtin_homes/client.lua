local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface("nation_garages_lib",src)
vSERVER = Tunnel.getInterface("nation_garages_lib")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('deletarveiculo')
AddEventHandler('deletarveiculo',function(vehicle)
	if IsEntityAVehicle(vehicle) then
		vSERVER.tryDelete(VehToNet(vehicle))
	end
end)

function src.syncVehicle(vehicle)
	if NetworkDoesNetworkIdExist(vehicle) then
		local v = NetToVeh(vehicle)
		if DoesEntityExist(v) and IsEntityAVehicle(v) then
			Citizen.InvokeNative(0xAD738C3085FE7E11,v,true,true)
			SetEntityAsMissionEntity(v,true,true)
			SetVehicleHasBeenOwnedByPlayer(v,true)
			NetworkRequestControlOfEntity(v)
			Citizen.InvokeNative(0xEA386986E786A54F,Citizen.PointerValueIntInitialized(v))
			DeleteEntity(v)
			DeleteVehicle(v)
			SetEntityAsNoLongerNeeded(v)
		end
	end
end

RegisterNetEvent("nation:reciveGarages")
AddEventHandler("nation:reciveGarages", function(value) 
    for k,v in pairs(value) do
		if v.garagem['garagem'] ~= nil then
			config.homeGarages[k] = { type = "home", coords = vec3(v.garagem['garagem'].x,v.garagem['garagem'].y,v.garagem['garagem'].z),
				vehiclePositions = {
					[1] = { vec3(v.garagem['spawn'].x,v.garagem['spawn'].y,v.garagem['spawn'].z), h = v.garagem['spawn'].h }
				},
				home = k
			}
		end
	end
end)