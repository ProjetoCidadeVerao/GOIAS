local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface("vrp_hospital",src)
vSERVER = Tunnel.getInterface("vrp_hospital")

local segundos = 0

----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE TRATAMENTO
----------------------------------------------------------------------------------------------------------------------------------------
local nearestMaca = {}
local deitado = false
local tratamento = false
local segundosT = 0
local vida = 0

local macas = {
    [1] = { blip = vec3(-459.61,-1029.98,33.68), deitado = vec4(-458.62,-1030.03,34.61,18.0) },
    [2] = { blip = vec3(-455.84,-1030.33,33.68), deitado = vec4(-454.85,-1029.94,34.61,18.0) },
    [3] = { blip = vec3(-451.13,-1030.11,34.61), deitado = vec4(-451.22,-1030.43,34.61,18.0) },
    [4] = { blip = vec3(-448.25,-1029.94,33.68), deitado = vec4(-447.52,-1030.14,34.61,18.0) },
    [5] = { blip = vec3(-447.33,-1023.95,34.61), deitado = vec4(-448.2,-1024.2,33.68,18.0) },
    [6] = { blip = vec3(-452.08,-1024.2,33.68), deitado = vec4(-451.05,-1023.87,34.61,18.0) },
    [7] = { blip = vec3(-455.85,-1024.12,33.68), deitado = vec4(-454.89,-1023.87,34.61,18.0) },
    [8] = { blip = vec3(-459.79,-1024.45,33.68), deitado = vec4(-458.76,-1023.9,34.61,18.0) },
    [9] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1127.16,-1538.5,35.9,352.0) },
    [10] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1126.65,-1547.02,35.9,178.0) },
    [11] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1123.43,-1547.09,35.9,180.0) },
    [12] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1120.41,-1547.17,35.9,200.0) },
    [13] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1133.12,-1579.86,36.31,174.0) },
    [14] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1126.46,-1580.53,36.31,91.0) },
    [15] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1126.46,-1584.42,36.31,85.0) },
    [16] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1126.48,-1588.3,36.31,80.0) },
    [17] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1126.27,-1592.02,36.31,86.0) },
    [18] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1113.42,-1530.3,35.76,63.0) },
    [19] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1098.5,-1523.71,35.76,89.0) },
    [20] = { blip = vec3(-311.82,190.86,151.99), deitado = vec4(1098.54,-1520.3,35.76,344.0) },
    [21] = { blip = vec3(1137.16,-1584.96,35.37), deitado = vec4(1135.94,-1584.97,36.28,200.0) },
    [22] = { blip = vec3(1140.15,-1585.16,36.28), deitado = vec4(1140.15,-1585.16,36.28,200.0) },
    ---[23] = { blip = vec3(1144.49,-1585.46,36.28), deitado = vec4(1144.49,-1585.46,36.28,200.0) },
    [23] = { blip = vec3(1145.58,-1585.25,35.38), deitado = vec4(1144.59,-1585.23,36.28,200.0) },
    ----[24] = { blip = vec3(1149.79,-1585.27,35.37), deitado = vec4(1149.0,-1585.23,36.28,0.32) },
    

}


function src.retirarMascaraH()
    SetPedComponentVariation(PlayerPedId(), 1, 0,0,2)
end

function src.retirarChapeuH()
    SetPedPropIndex(PlayerPedId(),0, -1,0,2)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE MACAS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local SLEEP_TIME = 1000
		local ped = PlayerPedId()
		local plyCoords = GetEntityCoords(PlayerPedId())

        for index in pairs(nearestMaca) do
            SLEEP_TIME = 0
            DrawText3Ds(macas[index].blip.x, macas[index].blip.y, macas[index].blip.z, "~b~[MACA: "..tonumber(index).."]\n~w~[~g~E~w~] Deitar\n~w~[~b~F~w~] Iniciar tratamento")

            if #(plyCoords - macas[index].blip) <= 2.0 then
                if IsControlJustReleased(1, 51) and segundos <= 0 and vSERVER.checkPagamento(3000) and not tratamento then
                    segundos = 5
                    DoScreenFadeOut(1000)

                    Citizen.Wait(2000)
                    SetEntityHeading(ped, macas[index].deitado[4])
                    SetEntityCoords(ped, macas[index].deitado[1],macas[index].deitado[2],macas[index].deitado[3]-0.9)
                    vRP.playAnim(false,{{"amb@world_human_sunbathe@female@back@idle_a","idle_a",1}},true)

                    Citizen.Wait(2000)
                    DoScreenFadeIn(1000)

                    if vSERVER.checkUNZIK() then
                        deitado = true
                        tratamento = false
                        segundosT = 0
                        TriggerServerEvent("blockcel", true)
                    else
                        deitado = true
                        tratamento = true
                        segundosT = 60
                        vida = 110
                        SetEntityHealth(ped, vida)
                        vSERVER._blockCommands(59)
                        TriggerEvent("Notify","importante","Nenhum medico em expediente, você esta sendo tratado pelos medicos da prefeitura", 5)
                        TriggerServerEvent("blockcel", true)
                    end
                end

                if IsControlJustReleased(1, 49) and segundos <= 0 then
                    segundos = 5
                    if vSERVER.checkTratamento() then
                        ExecuteCommand("e mexer")
                        TriggerEvent("Notify","importante","Você iniciou tratamento nesse jogador.", 5)
                    end
                end
            end
		end
	
		Citizen.Wait(SLEEP_TIME)
	end
end) 

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DEITADO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local time = 1000

        if deitado and not tratamento and segundosT == 0 then
            time = 5
            drawTxt("VOCÊ ESTÁ ~r~DEITADO~w~, PARA LEVANTAR PRESSIONE ~b~[F6]~w~ OU AGUARDE UM MÉDICO VIR TE ATENDER.",4,0.5,0.96,0.50,255,255,255,180)

            if IsControlJustPressed(0, 167) then
                deitado = false
                segundosT = 0
                tratamento = false
                TriggerServerEvent("blockcel", false)
            end
            
            DisableControlAction(2, 37, true)
            if IsDisabledControlJustPressed(2, 37) then
				SetCurrentPedWeapon(GetPlayerPed(-1),GetHashKey("WEAPON_UNARMED"),true)
            end
        elseif deitado and tratamento and segundosT > 0 then
            time = 5
            drawTxt("VOCÊ ESTÁ EM ~b~TRATAMENTO~w~, AGUARDE ~b~"..segundosT.."~w~ SEGUNDO(s) PARA SE LEVANTAR.",4,0.5,0.96,0.50,255,255,255,180)

            DisableControlAction(2, 37, true)
            if IsDisabledControlJustPressed(2, 37) then
				SetCurrentPedWeapon(GetPlayerPed(-1),GetHashKey("WEAPON_UNARMED"),true)
            end
        elseif deitado and segundosT == -1 and not tratamento then
            time = 5
            drawTxt("SEU ~b~TRATAMENTO~w~ ACABOU, PRESSIONE ~b~[F6]~w~ PARA LEVANTAR.",4,0.5,0.96,0.50,255,255,255,180)
   
            if IsControlJustPressed(0, 167) then
                deitado = false
                segundosT = 0
                tratamento = false
                TriggerServerEvent("blockcel", false)
            end

            DisableControlAction(2, 37, true)
            if IsDisabledControlJustPressed(2, 37) then
				SetCurrentPedWeapon(GetPlayerPed(-1),GetHashKey("WEAPON_UNARMED"),true)
            end
        end

        Citizen.Wait(time)
    end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function src.iniciarTratamento()
    deitado = true
    tratamento = true
    segundosT = 60

    vida = 110
    SetEntityHealth(ped, vida)
end

function src.checkPaciente()
    return deitado,tratamento
end

function src.checkSexo()
    if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") then
        return "H"
    elseif GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
        return "M"
    end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE CARREGAR
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local other = nil
local drag = false
local playerStillDragged = false

function src.setDrag(pl)
    other = pl
    drag = not drag
end

function src.unDrag()
    drag = false
end

Citizen.CreateThread(function()
    RequestAnimDict("anim@heists@box_carry@")
    local i = 0
    while not HasAnimDictLoaded("anim@heists@box_carry@") and i < 1000 do
        Citizen.Wait(10)
        RequestAnimDict("anim@heists@box_carry@")
        i = i+1
    end

    while true do
        if drag and other ~= nil then
            local ped = GetPlayerPed(GetPlayerFromServerId(other))
            local myped = PlayerPedId()
            AttachEntityToEntity(myped, ped, 4103, 11816, 0.44, 1.04, 0.0, -270.0, 0.0, 0.0, false, false, false, false, 2, true)
            playerStillDragged = true
        else
            if(playerStillDragged) then
                DetachEntity(PlayerPedId(), true, false)
                playerStillDragged = false
            end
        end
        Citizen.Wait(0)
    end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OTHERS THREADS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local time = 1000
        local ped = PlayerPedId()

        if deitado and tratamento and segundosT > 0 then
            segundosT = segundosT - 1

            if vida >= 300 then
                SetEntityHealth(ped, 300)
            else
                vida = vida + 4
                SetEntityHealth(ped, vida)
            end

            if segundosT == 0 then
                tratamento = false
                segundosT = -1
            end
        end

        Citizen.Wait(time)
    end
end)

Citizen.CreateThread(function()
	while true do
		local time = 1000
		local ped = PlayerPedId()
        local plyCds = GetEntityCoords(ped)

		for index in pairs(macas) do
            local distance = #(plyCds - macas[index].blip)

            if distance <= 5 then
                nearestMaca[index] = macas[index]
            elseif nearestMaca[index] then
                nearestMaca[index] = nil
            end
		end

		Citizen.Wait(time)
	end
end)

Citizen.CreateThread(function()
    while true do
        local time = 1000
        if segundos > 0 then
            segundos = segundos - 1

            if segundos <= 0 then
                segundos = 0 
            end
        end

        Citizen.Wait(time)
    end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OTHERS FUNCTIONS
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DrawText3Ds(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
end

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
