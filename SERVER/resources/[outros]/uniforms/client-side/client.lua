-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROXY
-----------------------------------------------------------------------------------------------------------------------------------------
cO = {}
Tunnel.bindInterface(GetCurrentResourceName(),cO)
vSERVER = Tunnel.getInterface(GetCurrentResourceName())
-----------------------------------------------------------------------------------------------------------------------------------------
--  DECODE
-----------------------------------------------------------------------------------------------------------------------------------------
local services = { 
    [1] = {"HOSPITAL", -489.66,-988.85,24.28, "perm.hospital", "perm.liderhospital" },
    [2] = {"Abelvolks", -2012.33,-536.1,15.84, "perm.mecanico", "perm.lidermecanica" },
    [3] = {"Sport RACE", -340.06,-157.25,44.58, "perm.mecanico", "perm.lidermecanica" },
    [4] = {"COMPETCAR", 227.73,-1681.0,29.32, "perm.mecanico", "perm.lidermecanica" },
    [5] = {"Rotam", -2033.82,-452.0,15.96, "perm.policia", "perm.liderpolicia" },
    [6] = {"Prf", -2651.16,2389.67,18.84, "perm.policia", "perm.liderpolicia" },
    [7] = {"Civil", 382.57,-1610.14,29.28, "perm.policia", "perm.liderpolicia" }, 
    [8] = {"Militar", -952.66,-2048.66,12.92, "perm.policia", "perm.liderpolicia" }, 
    [9] = {"Deboxe", 831.95,-990.11,26.49, "perm.deboxe", "perm.liderdeboxe" }, 
    [10] = {"Judiciario", 230.75,-442.37,47.95, "perm.judiciario", "perm.policia", "perm.liderjudiciario" }, 
    [11] = {"Exercito",-2349.44,3269.02,32.81,"perm.policia","perm.lider.exercito"},
    [12] = {"Bombeiro",-398.82,1219.19,325.96,"perm.hospital", "perm.liderhospital"},
    [13] = {"Tatico",-955.31,-2052.89,12.92,"perm.policia", "perm.liderpolicia"},
    [13] = {"Giro",-1708.64,-736.08,11.73,"perm.policia", "perm.liderpolicia"},
    [14] = {"Exercito1",-2421.38,3000.84,32.97,"perm.policia","perm.lider.exercito"},
    [15] = {"Exercito3",1852.11,3689.86,34.2,"perm.policia","perm.lider.exercito"},
}


Citizen.CreateThread( function()
	while true do
		local timeDistance = 500
		local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        for k,v in pairs(services) do
            local distance = #(coords - vector3(v[2],v[3],v[4]))
            if distance <= 1.5 then
                timeDistance = 5
                DrawText3D(v[2],v[3],v[4],"~r~E~w~   ABRIR")

                if IsControlJustPressed(0,38) then
                    local checkPermission,checkLider = vSERVER.requestPermission(v[5],v[6])
                    print(checkPermission, checkLider)
                    if checkPermission and checkLider then 
                        exports["dynamic"]:SubMenu("Equipar","Todas os uniformes de sua corporação.","uniforms")
                        exports["dynamic"]:AddButton("Sair","Sair de Patrulhamento.","sysClothes:applyPreset","sairPtr","uniforms",true)

                        exports["dynamic"]:SubMenu("Opções","Gerenciamento de uniformes líder.","optionsUniforms")
                        exports["dynamic"]:AddButton("Adicionar","Adicione o uniforme que está em seu corpo.","sysClothes:applyPreset","apply","optionsUniforms",true)
                        exports["dynamic"]:AddButton("Deletar","Delete algum uniforme existente.","sysClothes:applyPreset","delete","optionsUniforms",true)
                    elseif checkPermission then 
                        exports["dynamic"]:SubMenu("Equipar","Todas os uniformes de sua corporação.","uniforms")
                        exports["dynamic"]:AddButton("Sair","Sair de Patrulhamento.","sysClothes:applyPreset","sairPtr","uniforms",true)
                    end

                    local uniforms = vSERVER.requestClothes(v[1],v[5])
                    if uniforms then 
                        for _,x in pairs(uniforms) do 
                            exports["dynamic"]:AddButton(x.name,"Roupa para utilizar em serviço.","sysClothes:applyPreset",x.name,"uniforms",true)
                        end
                    end
                end

            end
        end
        Citizen.Wait(timeDistance)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	SetTextFont(4)
	SetTextCentre(1)
	SetTextEntry("STRING")
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	AddTextComponentString(text)
	SetDrawOrigin(x,y,z,0)
	DrawText(0.0,0.0)
	local factor = (string.len(text) / 450) + 0.01
	DrawRect(0.0,0.0125,factor,0.03,40,36,52,240)
	ClearDrawOrigin()
end
