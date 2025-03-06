-- FAVOR NAO REMOVER TRIGUEIRO
-- _____________________.___  ________ ____ ______________._____________ ________   
-- \__    ___/\______   \   |/  _____/|    |   \_   _____/|   \______   \\_____  \  
-- |    |    |       _/   /   \  ___|    |   /|    __)_ |   ||       _/ /   |   \ 
-- |    |    |    |   \   \    \_\  \    |  / |        \|   ||    |   \/    |    \
-- |____|    |____|_  /___|\______  /______/ /_______  /|___||____|_  /\_______  /
--                 \/            \/                 \/             \/         \/    

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
trig = Tunnel.getInterface("trig_servicocomunitario")

local trabalho = nil
local processo = false
local servico = false
local tipo = nil

RegisterNetEvent("roupapresidio")
AddEventHandler("roupapresidio",function()
    if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") then
        SetPedComponentVariation(PlayerPedId(),1,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),5,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),7,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),3,15,0,2)
        SetPedComponentVariation(PlayerPedId(),4,64,6,2)
        SetPedComponentVariation(PlayerPedId(),8,15,0,2)
        SetPedComponentVariation(PlayerPedId(),6,1,0,2)
        SetPedComponentVariation(PlayerPedId(),11,238,0,2)
        SetPedComponentVariation(PlayerPedId(),9,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),10,-1,0,2)
        SetPedPropIndex(PlayerPedId(),0,-1,1,2)
        SetPedPropIndex(PlayerPedId(),1,-1,0,2)
        SetPedPropIndex(PlayerPedId(),2,-1,0,2)
        SetPedPropIndex(PlayerPedId(),6,-1,0,2)
        SetPedPropIndex(PlayerPedId(),7,-1,0,2)
    else
        SetPedComponentVariation(PlayerPedId(),1,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),5,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),7,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),3,4,0,2)
        SetPedComponentVariation(PlayerPedId(),4,66,6,2)
        SetPedComponentVariation(PlayerPedId(),8,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),6,4,0,2)
        SetPedComponentVariation(PlayerPedId(),11,118,0,2)
        SetPedComponentVariation(PlayerPedId(),9,-1,0,2)
        SetPedComponentVariation(PlayerPedId(),10,-1,0,2)
        SetPedPropIndex(PlayerPedId(),0,-1,0,2)
        SetPedPropIndex(PlayerPedId(),1,-1,0,2)
        SetPedPropIndex(PlayerPedId(),2,-1,0,2)
        SetPedPropIndex(PlayerPedId(),6,-1,0,2)
        SetPedPropIndex(PlayerPedId(),7,-1,0,2)
    end
end)


local dp = { x= -555.84, y= -134.19, z= 38.21, h =  201.47}
local iniciovarrer = {x = 159.43, y = -965.46, z = 30.11, h = 173.39}
local iniciargrama = {x = -1340.38, y = 172.45, z = 57.56, h = 233.98}

RegisterNetEvent("comecartrabalhocomunitario")
AddEventHandler("comecartrabalhocomunitario",function(trabalho)
    servico = true
    SetCurrentPedWeapon(PlayerPedId(),GetHashKey("WEAPON_UNARMED"),true)
    if trabalho == "varrerchao" then
        
        SetEntityCoords(PlayerPedId(),iniciovarrer.x,iniciovarrer.y,iniciovarrer.z,iniciovarrer.h)
        TriggerEvent("varrerchao")
    elseif trabalho == "cortargrama" then

        local vehicle = GetHashKey("mower")
        RequestModel(vehicle)


        while not HasModelLoaded(vehicle) do
            Wait(1)
        end

        local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0, 5.0, 0)
        veiculocriado = CreateVehicle(vehicle, iniciargrama.x,iniciargrama.y,iniciargrama.z,233.98,true,false)

        -- SPAWNAR VEICULO

        SetVehicleFuelLevel(veiculocriado, 100.0)
        SetPedIntoVehicle(PlayerPedId(), veiculocriado, -1)
        SetVehicleOnGroundProperly(veiculocriado)
        SetVehicleAsNoLongerNeeded(veiculocriado)
        SetVehicleIsStolen(veiculocriado,false)
        SetVehicleNeedsToBeHotwired(veiculocriado,false)
        SetEntityInvincible(veiculocriado,false)
        SetVehicleNumberPlateText(veiculocriado,vRP.getRegistrationNumber())
        Citizen.InvokeNative(0xAD738C3085FE7E11,veiculocriado,true,true)
        SetVehicleHasBeenOwnedByPlayer(veiculocriado,true)
        SetEntityAsMissionEntity(veiculocriado,true,true)
        SetVehRadioStation(veiculocriado,"OFF")
        SetModelAsNoLongerNeeded(vehicle)
                    
        TriggerEvent("cortargrama")
    end
    
end)

RegisterNetEvent("acabouprisao")
AddEventHandler("acabouprisao",function(tipo)
    if tipo == "tempo" then
        SetEntityCoords(PlayerPedId(),dp.x,dp.y,dp.z,dp.h)
        servico = false
        RemoveBlip(blips) 
        if DoesEntityExist(veiculocriado) then
            DeleteEntity(veiculocriado)
        end
    elseif tipo == nil then
        SetEntityCoords(PlayerPedId(),dp.x,dp.y,dp.z,dp.h)
        servico = false
        TriggerServerEvent("acabarprisao")
        RemoveBlip(blips) 
    end
end)


local varrerchaolocs = {
    [1] = {   ['x'] = 196.97, ['y'] = -1019.05, ['z'] = 29.42 },
    [2] = {   ['x'] = 205.59, ['y'] = -1017.28, ['z'] = 29.31 },
    [3] = {   ['x'] = 212.98, ['y'] = -1010.22, ['z'] = 29.29 },
    [4] = {   ['x'] = 201.73, ['y'] = -991.5, ['z'] = 30.11 },
    [5] = {   ['x'] = 199.23, ['y'] = -978.21, ['z'] = 30.1 },
    [6] = {   ['x'] = 175.21, ['y'] = -989.15, ['z'] = 30.1 },
    [7] = {   ['x'] = 163.58, ['y'] = -989.02, ['z'] = 30.1 },
    [8] = {   ['x'] = 162.38, ['y'] = -980.6, ['z'] = 30.1 },
    [9] = {   ['x'] = 156.25, ['y'] = -985.3, ['z'] = 30.1 }, 
    [10] = {  ['x'] = 165.83, ['y'] = -953.51, ['z'] = 30.11 },
    [11] = {  ['x'] = 175.87, ['y'] = -948.05, ['z'] = 30.1 },
    [12] = {  ['x'] = 191.69, ['y'] = -950.64, ['z'] = 30.1 },
    [13] = {  ['x'] = 158.17, ['y'] = -1003.09, ['z'] = 29.37 },
    [14] = {  ['x'] = 148.47, ['y'] = -993.93, ['z'] = 29.36 },
    [15] = {  ['x'] = 131.67, ['y'] = -987.92, ['z'] = 29.36 },
    [16] = {  ['x'] = 138.89, ['y'] = -967.34, ['z'] = 29.52 },
    [17] = {  ['x'] = 143.32, ['y'] = -951.51, ['z'] = 29.71 },
    [18] = {  ['x'] = 146.3, ['y'] = -942.46, ['z'] = 29.83 },
    [19] = {  ['x'] = 152.36, ['y'] = -930.78, ['z'] = 29.98 },
    [20] = {  ['x'] = 152.88, ['y'] = -920.82, ['z'] = 30.12 }
}



RegisterNetEvent("varrerchao")
AddEventHandler("varrerchao",function()
    selecionado = 1
    tipo = "varrerchao"
    Citizen.CreateThread(function()
        while true do 
            local sleep = 1000
            if servico then
                local x,y,z = GetEntityCoords(PlayerPedId())
                local distance = GetDistanceBetweenCoords(varrerchaolocs[selecionado].x,varrerchaolocs[selecionado].y,varrerchaolocs[selecionado].z,x,y,z,true)
                local veh = GetVehiclePedIsIn(PlayerPedId(),false)
                local total = #varrerchaolocs
            
                if distance <= 45.0 then
                    sleep = 4

                    if not processo then
                        DrawMarker(21,varrerchaolocs[selecionado].x,varrerchaolocs[selecionado].y,varrerchaolocs[selecionado].z+0.20,0,0,0,0,180.0,130.0,2.0,2.0,1.0,255,0,0,50,1,0,0,1)
                    end
                -- lixo = CreateObject(GetHashKey("prop_devin_rope_01"),varrerchaolocs[selecionado].x,varrerchaolocs[selecionado].y,varrerchaolocs[selecionado].z-1,true,true,true)
                    if distance <= 2.5 then

                        if not processo then
                            drawTxt("PRESSIONE  ~r~E~w~  PARA VARRER",4,0.5,0.93,0.50,255,255,255,180)
                            if distance <= 1 then
                                if IsControlJustPressed(1,51) then -- COLOCAR DELAY
                                    processo = true
    
                                    FreezeEntityPosition(PlayerPedId(),true)
    
                                    -- TriggerEvent("emotes","varrer")

                                    vRP.CarregarObjeto("amb@world_human_janitor@male@idle_a", "idle_a", "prop_tool_broom", 49, 28422)

                                    TriggerEvent("progress",10000,"VARRENDO")
                                    SetTimeout(10000,function()
                                        RemoveBlip(blips)        
                                        selecionado = selecionado + 1
                                        
                                        CriandoBlip(varrerchaolocs,selecionado)
                                        processo = false   
                                        ClearPedTasks(PlayerPedId())
                                        FreezeEntityPosition(PlayerPedId(),false)
                                        vRP.DeletarObjeto()
                                        TriggerServerEvent("reduzirdeacord")
                                        if selecionado == total then
                                            servico = false
                                            TriggerEvent("acabouprisao",nil)
                                        end
    
                                    end)
                                end
                            end
                        end
                    end
                end

                local distmax = Vdist(GetEntityCoords(PlayerPedId()),iniciovarrer.x,iniciovarrer.y,iniciovarrer.z)
                if distmax > 100 and tipo == "varrerchao" then 
                    TriggerEvent("Notify","negado","Você foi pego tentando burlar e foi punido")
                    TriggerServerEvent("punicaodosafado")
                    SetEntityCoords(PlayerPedId(),iniciovarrer.x,iniciovarrer.y,iniciovarrer.z,iniciovarrer.h)
                end
            end
        Citizen.Wait(sleep)
        end
    end)

    function CriandoBlip(varrerchaolocs,selecionado)
        if selecionado <= #varrerchaolocs then
            print("debug",varrerchaolocs,selecionado)
            blips = AddBlipForCoord(varrerchaolocs[selecionado].x,varrerchaolocs[selecionado].y,varrerchaolocs[selecionado].z)
            SetBlipSprite(blips,1)
            SetBlipColour(blips,5)
            SetBlipScale(blips,0.4)
            SetBlipAsShortRange(blips,false)
            SetBlipRoute(blips,true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString("Colheita")
            EndTextCommandSetBlipName(blips)
        end
    end 
    
end)


local cortargrama = {
    [1] = { ['x'] = -1322.77, ['y'] = 159.23, ['z'] = 57.24 },
    [2] = { ['x'] = -1291.48, ['y'] = 163.07, ['z'] = 58.03 },
    [3] = { ['x'] = -1260.25, ['y'] = 156.51, ['z'] = 58.15 },
    [4] = { ['x'] = -1227.08, ['y'] = 151.86, ['z'] = 58.97 },
    [5] = { ['x'] = -1201.64, ['y'] = 149.04, ['z'] = 60.3 },
    [6] = { ['x'] = -1166.21, ['y'] = 149.98, ['z'] = 61.95 },
    [7] = { ['x'] = -1137.58, ['y'] = 163.09, ['z'] = 62.62 },
    [8] = { ['x'] = -1123.38, ['y'] = 181.43, ['z'] = 63.28 },
    [9] = { ['x'] = -1130.7, ['y'] = 192.11, ['z'] = 64.9 },
    [10] = { ['x'] = -1149.66, ['y'] = 196.09, ['z'] = 65.3 },
    [11] = { ['x'] = -1169.33, ['y'] = 194.74, ['z'] = 65.06 },
    [12] = { ['x'] = -1180.08, ['y'] = 193.26, ['z'] = 65.32 },
    [13] = { ['x'] = -1192.27, ['y'] = 190.98, ['z'] = 65.36 },
    [14] = { ['x'] = -1209.1, ['y'] = 188.52, ['z'] = 64.86 },
    [15] = { ['x'] = -1229.66, ['y'] = 182.62, ['z'] = 63.76 },
    [16] = { ['x'] = -1250.93, ['y'] = 178.92, ['z'] = 61.94 },
    [17] = { ['x'] = -1277.56, ['y'] = 177.03, ['z'] = 60.07 },
    [18] = { ['x'] = -1277.56, ['y'] = 177.03, ['z'] = 60.07 },
    [19] = { ['x'] = -1298.42, ['y'] = 177.83, ['z'] = 59.36 },
    [20] = { ['x'] = -1318.18, ['y'] = 178.5, ['z'] = 58.74 }
  
    
}

RegisterNetEvent("cortargrama")
AddEventHandler("cortargrama",function()
    selecionado = 1
    tipo = "cortargrama"
    local gasosa = GetVehicleFuelLevel(veiculocriado)
    Citizen.CreateThread(function()
        while true do 
            local sleep = 1000
            if servico then
                print(gasosa)
                local x,y,z = GetEntityCoords(PlayerPedId())
                local distance = GetDistanceBetweenCoords(cortargrama[selecionado].x,cortargrama[selecionado].y,cortargrama[selecionado].z,x,y,z,true)
                local veh = GetVehiclePedIsIn(PlayerPedId(),false)
                local total = #cortargrama
            
                if distance <= 45.0 then
                    sleep = 4 -- TRIGUEIRO

                    if not processo then
                        DrawMarker(42,cortargrama[selecionado].x,cortargrama[selecionado].y,cortargrama[selecionado].z+0.20,0,0,0,0,180.0,130.0,2.0,2.0,1.0,255,0,0,50,1,0,0,1)
                    end

                    if distance <= 2.5 then

                        if not processo then
                            drawTxt("PRESSIONE  ~r~E~w~  PARA CORTAR GRAMA",4,0.5,0.93,0.50,255,255,255,180)                 
                        end

                        if distance <= 1.5 then

                            if IsControlJustPressed(1,51) and not processo then
                                processo = true
                                FreezeEntityPosition(veiculocriado,true)
                                print(gasosa)

                                TriggerEvent("emotes","plantar")
                                TriggerEvent("progress",10000,"CORTANDO")
                                SetTimeout(10000,function()
                                    RemoveBlip(blips)        
                                    selecionado = selecionado + 1
                                    
                                    
                                    CriandoBlip(cortargrama,selecionado)
                                    processo = false   
                                    ClearPedTasks(PlayerPedId())
                                    FreezeEntityPosition(veiculocriado,false)
                                    vRP.DeletarObjeto()
                                   
                                    TriggerServerEvent("reduzirdeacord")
                                    if selecionado == parseInt(total) then
                                        servico = false
                                        TriggerEvent("acabouprisao",nil)
                                        RemoveBlip(blips) 
                                        DeleteEntity(veiculocriado)

                                    end

                                end)
                            end
                        end
                    end
                    
                end
                local distmax = Vdist(GetEntityCoords(PlayerPedId()),iniciargrama.x,iniciargrama.y,iniciargrama.z)
                if distmax > 900 and tipo == "cortargrama" then 
                    TriggerEvent("Notify","negado","Você foi pego tentando burlar e foi punido")
                    TriggerServerEvent("punicaodosafado")
                    SetEntityCoords(PlayerPedId(),iniciargrama.x,iniciargrama.y,iniciargrama.z,iniciargrama.h)
                   
                end
            end
        Citizen.Wait(sleep)
        end
    end)

-- TRIGUEIRO

    function CriandoBlip(cortargrama,selecionado)
        blips = AddBlipForCoord(cortargrama[selecionado].x,cortargrama[selecionado].y,cortargrama[selecionado].z)
        SetBlipSprite(blips,1)
        SetBlipColour(blips,5)
        SetBlipScale(blips,0.4)
        SetBlipAsShortRange(blips,false)
        SetBlipRoute(blips,true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Colheita")
        EndTextCommandSetBlipName(blips)
    end
end)
--------------
-- DESABILITAR
--------------

Citizen.CreateThread(function()
    while true do
        local sleep = 1000
            if servico then
                sleep = 0
                DisableControlAction(0, 37, true) 
                DisableControlAction(0, 137, true) 
                DisableControlAction(0, 22, true) 
                DisableControlAction(0, 21, true)
                DisableControlAction(0, 23, true)
                DisableControlAction(0, 167, true)
                DisableControlAction(0, 49,true)
                DisableControlAction(0, 36, true) 
                DisableControlAction(0,75,true) -- disable exit vehicle.
                SetEntityInvincible(PlayerPedId(),true)
            end
        Citizen.Wait(sleep)
    end
end)

--------------
-- FUNCTIONS
--------------


function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

-- FAVOR NAO REMOVER TRIGUEIRO
-- _____________________.___  ________ ____ ______________._____________ ________   
-- \__    ___/\______   \   |/  _____/|    |   \_   _____/|   \______   \\_____  \  
-- |    |    |       _/   /   \  ___|    |   /|    __)_ |   ||       _/ /   |   \ 
-- |    |    |    |   \   \    \_\  \    |  / |        \|   ||    |   \/    |    \
-- |____|    |____|_  /___|\______  /______/ /_______  /|___||____|_  /\_______  /
--                 \/            \/                 \/             \/         \/    