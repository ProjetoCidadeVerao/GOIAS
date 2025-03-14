if not SERVER then
    
    GetClosestVehiclePlayer = function(range)
        local ped = PlayerPedId()
        local vehicles = GetGamePool("CVehicle")
    
        local vehID
        local min = range+0.0001
        local vehHash
        for i = 1, #vehicles do
            local veh = vehicles[i]
            local dist = #(GetEntityCoords(ped) - GetEntityCoords(veh))
    
            if IsEntityAVehicle(veh) and dist <= range then
                if dist < min then
                    min = dist
                    vehID = veh
                    vehHash = GetEntityModel(veh)
                end
            end
        end
    
        return vehID,vehHash
    end

end