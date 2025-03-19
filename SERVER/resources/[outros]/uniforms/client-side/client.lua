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
    [1] = {"HOSPITAL", -477.47,-1040.5,24.29, "perm.hospital", "perm.liderhospital" },
    [2] = {"Deboxe", 821.3,-929.39,32.44, "perm.mecanica", "perm.liderdeboxe" },
    [3] = {"Civil", 370.78,-1602.26,29.3, "perm.civil", "perm.liderpolicia" },
    [4] = {"Giro", -1758.56,-793.06,17.04, "perm.policia", "perm.liderpolicia" },
    [5] = {"POLICIA", -946.38,-2053.0,12.93, "perm.policia", "perm.liderpolicia" },
    [6] = {"Rotam", -2035.94,-446.46,12.28, "perm.policia", "perm.liderpolicia" },
    [7] = {"Competcar", 229.92,-1680.82,29.33, "perm.mecanica", "perm.lidercompetcar" },
    [8] = {"Abelvolks", 56.45,6506.65,32.14, "perm.mecanica", "perm.liderabelvolks" },
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
