-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface("vrp_barbearia",src)
vSERVER = Tunnel.getInterface("vrp_barbearia")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local cam = -1
local myClothes = {}
local canStartThread = false
local canUpdate = false

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE ROSTO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local currentCharacterMode = { fathersID = 0, mothersID = 0, skinColor = 0, shapeMix = 0.0, eyesColor = 0, eyebrowsHeight = 0, eyebrowsWidth = 0, noseWidth = 0, noseHeight = 0, noseLength = 0, noseBridge = 0, noseTip = 0, noseShift = 0, cheekboneHeight = 0, cheekboneWidth = 0, cheeksWidth = 0, lips = 0, jawWidth = 0, jawHeight = 0, chinLength = 0, chinPosition = 0, chinWidth = 0, chinShape = 0, neckWidth = 0, hairModel = 4, firstHairColor = 0, secondHairColor = 0, eyebrowsModel = 0, eyebrowsColor = 0, beardModel = -1, beardColor = 0, chestModel = -1, chestColor = 0, blushModel = -1, blushColor = 0, lipstickModel = -1, lipstickColor = 0, blemishesModel = -1, ageingModel = -1, complexionModel = -1, sundamageModel = -1, frecklesModel = -1, makeupModel = -1 }
local custom = currentCharacterMode
local myOldCustom = {}

function src.setCharacter(data)
	if data then 
		custom = data
		canStartThread = true
		canUpdate = true
	end
end

function f(n)
	n = n + 0.00000
	return n
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESKIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSkin",function(data)
	local ped = PlayerPedId()
	
	SetPedComponentVariation(ped,2,tonumber(data.hairModel),0,0)
	SetPedHairColor(ped,tonumber(data.firstHairColor),tonumber(data.secondHairColor))
	custom.hairModel = tonumber(data.hairModel)
	custom.firstHairColor = tonumber(data.firstHairColor)
	custom.secondHairColor= tonumber(data.secondHairColor)

	-- MAQUIAGEM
	SetPedHeadOverlay(ped,4,tonumber(data.makeupModel),0.99)
	SetPedHeadOverlayColor(ped,4,0,0,0)
	custom.makeupModel = tonumber(data.makeupModel)

	-- BATOM
	SetPedHeadOverlay(ped,8,tonumber(data.lipstickModel),0.99)
	SetPedHeadOverlayColor(ped,8,2,tonumber(data.lipstickColor),tonumber(data.lipstickColor))
	custom.lipstickModel = tonumber(data.lipstickModel)
	custom.lipstickColor = tonumber(data.lipstickColor)
		
	-- SOBRANCELHA
	SetPedHeadOverlay(ped,2,tonumber(data.eyebrowsModel), 0.99)
	SetPedHeadOverlayColor(ped,2,1,tonumber(data.eyebrowsColor),tonumber(data.eyebrowsColor))
	custom.eyebrowsModel = tonumber(data.eyebrowsModel)
	custom.eyebrowsColor = tonumber(data.eyebrowsColor)

	-- BARBA
	SetPedHeadOverlay(ped,1,tonumber(data.beardModel),0.99)
	SetPedHeadOverlayColor(ped,1,1,tonumber(data.beardColor),tonumber(data.beardColor))
	custom.beardModel = tonumber(data.beardModel)
	custom.beardColor = tonumber(data.beardColor)

	-- BLUSH
	SetPedHeadOverlay(ped,5,tonumber(data.blushModel),0.99)
	SetPedHeadOverlayColor(ped,5,2,tonumber(data.blushColor),tonumber(data.blushColor))
	custom.blushModel = tonumber(data.blushModel)
	custom.blushColor = tonumber(data.blushColor)

	if data.value then
		if not vSERVER.updateSkin(custom) then
			resetCustom(myOldCustom)
		end

		SetNuiFocus(false)
		displayBarbershop(false)
		SendNUIMessage({ openBarbershop = false })
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATELEFT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("rotateLeft",function(data)
	SetEntityHeading(PlayerPedId(),GetEntityHeading(PlayerPedId())+tonumber(10))
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATERIGHT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("rotateRight",function(data)
	SetEntityHeading(PlayerPedId(),GetEntityHeading(PlayerPedId())-tonumber(10))
end) 

-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function(data)
	resetCustom(myOldCustom)
	
	SetNuiFocus(false)
	displayBarbershop(false)
	SendNUIMessage({ openBarbershop = false }) 
end) 

-----------------------------------------------------------------------------------------------------------------------------------------
-- DISPLAYBARBERSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
function displayBarbershop(enable)
	local ped = PlayerPedId()

	if enable then
		SetNuiFocus(true,true)
		SendNUIMessage({ openBarbershop = true, hairModel = custom.hairModel, firstHairColor = custom.firstHairColor, secondHairColor = custom.secondHairColor, makeupModel = custom.makeupModel, lipstickModel = custom.lipstickModel, lipstickColor = custom.lipstickColor, eyebrowsModel = custom.eyebrowsModel, eyebrowsColor = custom.eyebrowsColor, beardModel = custom.beardModel, beardColor = custom.beardColor, blushModel = custom.blushModel, blushColor = custom.blushColor  })
		FreezeEntityPosition(ped,true)

		myOldCustom = { eyesColor = tonumber(custom.eyesColor), hairModel =  tonumber(custom.hairModel), firstHairColor =  tonumber(custom.firstHairColor),secondHairColor =  tonumber(custom.secondHairColor),makeupModel =  tonumber(custom.makeupModel),makeupintensity = 10,makeupcolor = tonumber(custom.makeupcolor),lipstickModel =  tonumber(custom.lipstickModel),lipstickintensity = 10,lipstickColor =  tonumber(custom.lipstickColor),eyebrowsModel =  tonumber(custom.eyebrowsModel),eyebrowintensity = 10,eyebrowsColor =  tonumber(custom.eyebrowsColor),beardModel =  tonumber(custom.beardModel),beardintentisy = 10,beardColor =  tonumber(custom.beardColor),blushModel =  tonumber(custom.blushModel),blushintentisy = 10,blushColor = tonumber(custom.blushColor), }

		if IsDisabledControlJustReleased(0,24) or IsDisabledControlJustReleased(0,142) then
			SendNUIMessage({ type = "click" })
		end

		SetPlayerInvincible(ped,false) --mqcu

		if not DoesCamExist(cam) then
			cam = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
			SetCamCoord(cam,GetEntityCoords(ped))
			SetCamRot(cam,0.0,0.0,0.0)
			SetCamActive(cam,true)
			RenderScriptCams(true,false,0,true,true)
			SetCamCoord(cam,GetEntityCoords(ped))
		end

		local x,y,z = table.unpack(GetEntityCoords(ped))
		SetCamCoord(cam,x+0.2,y+0.5,z+0.7)
		SetCamRot(cam,0.0,0.0,150.0)
		DesligarJogador()
		canUpdate = false
	else
		FreezeEntityPosition(ped,false)
		SetPlayerInvincible(ped,false)
		RenderScriptCams(false,false,0,1,0)
		DestroyCam(cam,false)
		AtivarJogador()

		myOldCustom = {}
		canUpdate = true
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- STARTFOCUS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false)
	SendNUIMessage({ openBarbershop = false })
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCATIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local locations = {
	{ -815.12,-184.15,37.57, true },
	{ 138.13,-1706.46,29.3, true },
	{ -1280.92,-1117.07,7.0, true },
	{ 1930.54,3732.06,32.85, true },
	{ 1214.2,-473.18,66.21, true },
	{ -33.61,-154.52,57.08, true },
	{ -276.65,6226.76,31.7, true },
	{ 1368.04,-1036.98,47.87, false },
	{ -78.52,824.37,235.71, false },
	{ -1714.82,-316.69,55.42, false },
	{ -1052.37,308.11,66.99, false },
	{ -1887.38,2071.96,140.98, false },
	{ -1229.41,-1651.97,4.75, false },
	{ 290.75,-2047.21,19.65, false },
	{ -1623.38,-1095.01,13.01, false },
	{ -457.78,1545.34,397.35, false }, --grota
	{ 1543.59,-80.21,160.44, true },
	{ 1657.76,979.81,142.26, false },
	{ -1601.32,-1062.77,13.08, false },
	{ -2906.75,-15.54,7.25, false },  ---eb
	{ -1748.0,3191.0,32.91, false },  ---eb
}

Citizen.CreateThread(function()
	criarBlip()

	while true do
		local time = 1000
		local ped = GetPlayerPed(-1)
		local coords = GetEntityCoords(ped)

		for k,v in pairs(locations) do
			local distance = #(coords - vec3(v[1],v[2],v[3]))
			if distance <= 5 then
				time = 1
				DrawText3D(v[1],v[2],v[3]-0.1, "Pressione [~b~E~w~] para acessar a barbearia.")
				if distance <= 2 then
					if IsControlJustPressed(1,38) then
						displayBarbershop(true)
						SetEntityHeading(GetPlayerPed(-1),332.21)
					end
				end
			end
		end

		Citizen.Wait(time)
	end
end) 

Citizen.CreateThread(function()
    while true do
        N_0xf4f2c0d4ee209e20() 
        Citizen.Wait(1000)
    end
end)

function DrawText3D(x,y,z, text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text))/370
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,80)
end

function DesligarJogador()
    for _, player in ipairs(GetActivePlayers()) do
        local ped = PlayerPedId()
        local otherPlayer = GetPlayerPed(player)
        if ped ~= otherPlayer then
            SetEntityVisible(otherPlayer, false)
            SetEntityNoCollisionEntity(ped, otherPlayer, true)
        end
    end
end

function AtivarJogador()
    for _, player in ipairs(GetActivePlayers()) do
        local ped = PlayerPedId()
        local otherPlayer = GetPlayerPed(player)
        if ped ~= otherPlayer then
            SetEntityVisible(otherPlayer, true)
            SetEntityCollision(ped, true)
        end
    end
end

function criarBlip()
    for _, item in pairs(locations) do
		if item[4] then
			item.blip = AddBlipForCoord(item[1], item[2], item[3])
			SetBlipSprite(item.blip, 71)
			SetBlipColour(item.blip, 13)
			SetBlipScale(item.blip, 0.5)
			SetBlipAsShortRange(item.blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Barbearia")
			EndTextCommandSetBlipName(item.blip)
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREAD SYNC PED
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		
		if canStartThread then
			while not IsPedModel(PlayerPedId(),"mp_m_freemode_01") and not IsPedModel(PlayerPedId(),"mp_f_freemode_01") do
				Citizen.Wait(10)
			end

			if custom then
				TaskUpdateSkinOptions()
				TaskUpdateFaceOptions()
				TaskUpdateHeadOptions(canUpdate)
			end
		end
	end
end)

AddEventHandler('reloadFace',function()
    TaskUpdateSkinOptions()
	TaskUpdateFaceOptions()
	TaskUpdateHeadOptions(canUpdate)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNC BODY
-----------------------------------------------------------------------------------------------------------------------------------------
function TaskUpdateSkinOptions()
	local data = custom
	SetPedHeadBlendData(PlayerPedId(),data.fathersID,data.mothersID,0,data.skinColor,0,0,f(data.shapeMix),0,0,false)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNC FACE
-----------------------------------------------------------------------------------------------------------------------------------------
function TaskUpdateFaceOptions()
	local ped = PlayerPedId()
	local data = custom

	-- Olhos
	SetPedEyeColor(ped,data.eyesColor)
	-- Sobrancelha
	SetPedFaceFeature(ped,6,data.eyebrowsHeight)
	SetPedFaceFeature(ped,7,data.eyebrowsWidth)
	-- Nariz
	SetPedFaceFeature(ped,0,data.noseWidth)
	SetPedFaceFeature(ped,1,data.noseHeight)
	SetPedFaceFeature(ped,2,data.noseLength)
	SetPedFaceFeature(ped,3,data.noseBridge)
	SetPedFaceFeature(ped,4,data.noseTip)
	SetPedFaceFeature(ped,5,data.noseShift)
	-- Bochechas
	SetPedFaceFeature(ped,8,data.cheekboneHeight)
	SetPedFaceFeature(ped,9,data.cheekboneWidth)
	SetPedFaceFeature(ped,10,data.cheeksWidth)
	-- Boca/Mandibula
	SetPedFaceFeature(ped,12,data.lips)
	SetPedFaceFeature(ped,13,data.jawWidth)
	SetPedFaceFeature(ped,14,data.jawHeight)
	-- Queixo
	SetPedFaceFeature(ped,15,data.chinLength)
	SetPedFaceFeature(ped,16,data.chinPosition)
	SetPedFaceFeature(ped,17,data.chinWidth)
	SetPedFaceFeature(ped,18,data.chinShape)
	-- Pescoço
	SetPedFaceFeature(ped,19,data.neckWidth)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNC HEAD
-----------------------------------------------------------------------------------------------------------------------------------------
function TaskUpdateHeadOptions(canUpdate)
    local ped  = PlayerPedId()
    local data = custom 
    if canUpdate then 
        -- Sobracelha 
        SetPedHeadOverlay(ped, 2, data.eyebrowsModel, 0.99)
		SetPedHeadOverlayColor(ped, 2, 1, parseInt(data.eyebrowsColor), parseInt(data.eyebrowsColor) )

        SetPedComponentVariation(ped, 2, tonumber(data.hairModel), 0, 0)
        SetPedHairColor(ped, tonumber(data.firstHairColor), tonumber(data.secondHairColor))

        -- Barba
        SetPedHeadOverlay(ped, 1, data.beardModel, 0.99)
        SetPedHeadOverlayColor(ped, 1, 1, parseInt(data.beardColor), parseInt(data.beardColor) )

        -- Pelo Corporal
        SetPedHeadOverlay(ped, 10, data.chestModel, 0.99)
		SetPedHeadOverlayColor(ped, 10, 1, parseInt(data.chestColor), parseInt(data.chestColor) )

        -- Blush
        SetPedHeadOverlay(ped,5,data.blushModel,0.99)
        SetPedHeadOverlayColor(ped,5,1,data.blushColor,data.blushColor)

        -- Battom
        SetPedHeadOverlay(ped, 8, data.lipstickModel, 0.99)
        SetPedHeadOverlayColor(ped, 8, 2, parseInt(data.lipstickColor), parseInt(data.lipstickColor) )

        -- Manchas
        SetPedHeadOverlay(ped, 0, data.blemishesModel, 0.99)
        SetPedHeadOverlayColor(ped, 0, 0, 0, 0)

        -- Envelhecimento
        SetPedHeadOverlay(ped, 3, data.ageingModel, 0.99)
        SetPedHeadOverlayColor(ped, 3, 0, 0, 0)

        -- Aspecto
        SetPedHeadOverlay(ped, 6, data.complexionModel, 0.99)
        SetPedHeadOverlayColor(ped, 6, 0, 0, 0)

        -- Pele
        SetPedHeadOverlay(ped, 7, data.sundamageModel, 0.99)
        SetPedHeadOverlayColor(ped, 7, 0, 0, 0)

        -- Sardas
        SetPedHeadOverlay(ped, 9, data.frecklesModel, 0.99)
        SetPedHeadOverlayColor(ped, 9, 0, 0, 0)

        -- Maquiagem
        SetPedHeadOverlay(ped, 4, data.makeupModel, 0.99)
        --SetPedHeadOverlayColor(ped,4,1,data.makeupcolor,data.makeupcolor)

    --
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- RESET CUSTOM
-----------------------------------------------------------------------------------------------------------------------------------------
resetCustom = function(status)
	if status then 
		custom.lipstickModel = tonumber(status.lipstickModel)
		custom.lipstickColor = tonumber(status.lipstickColor)
		custom.hairModel = tonumber(status.hairModel)
		custom.firstHairColor = tonumber(status.firstHairColor)
		custom.secondHairColor = tonumber(status.secondHairColor)
		custom.blushModel = tonumber(status.blushModel)
		custom.blushColor = tonumber(status.blushColor)
		custom.makeupModel = tonumber(status.makeupModel)
		custom.eyebrowsModel = tonumber(status.eyebrowsModel)
		custom.eyebrowsColor = tonumber(status.eyebrowsColor)
		custom.beardModel = tonumber(status.beardModel)
		custom.beardColor = tonumber(status.beardColor)
	end
end