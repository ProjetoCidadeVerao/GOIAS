-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local ply = {
    IsOpened = false,
    actualTab = 0
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
OpenInteraction = function()
    ply.IsOpened = true

    InteractionsList = {}
    for index in pairs(Config.InteractionsMenu) do
        InteractionsList[index] = {
            name = Config.InteractionsMenu[index].name,
            desc = Config.InteractionsMenu[index].desc,
            image = Config.InteractionsMenu[index].image,
        }
    end

    SetNuiFocus(true, true)
    SendNUIMessage({ action = "SHOW_NUI", body = InteractionsList })
end

CloseInteraction = function()
    ply.IsOpened = false
    
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "CLOSE_NUI" })
end

RegisterNetEvent("updateRoupas")
AddEventHandler("updateRoupas",function(custom)
    vRP.setCustomization(custom)
    --UseClothes(custom)
end)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OTHERS FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- -- Evento para carregar nos ombros
-- RegisterNetEvent("carregar_ombro")
-- AddEventHandler("carregar_ombro", function()
--     local player = PlayerPedId()

--     -- Verifica se o jogador não está atualmente realizando uma animação
--     if not IsEntityPlayingAnim(player, "amb@world_human_bum_wash@male@high@idle_a", "idle_a", 3) then
--         -- Inicia a animação de carregar nos ombros
--         TaskStartScenarioInPlace(player, "amb@world_human_bum_wash@male@high@idle_a", "idle_a", 0, false)
--     else
--         -- Se já estiver realizando uma animação, pare a animação atual antes de iniciar a nova
--         ClearPedTasks(player)
--         -- Inicia a animação de carregar nos ombros
--         TaskStartScenarioInPlace(player, "amb@world_human_bum_wash@male@high@idle_a", "idle_a", 0, false)
--     end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('CLOSE_NUI', function() 
    CloseInteraction()
end)

RegisterNUICallback('actionClick', function(data, cb) 
    if not data.index then return end

    ply.actualTab = data.index

    InteractionsListId = {}
    if false then
        InteractionsListId = true 
    else
        for index in pairs(Config.InteractionsMenu[data.index].body) do
            if Config.InteractionsMenu[data.index].name == "Roupas" then
                InteractionsListId[index] = {
                    name = Config.InteractionsMenu[data.index].body[index].name,
                    desc = Config.InteractionsMenu[data.index].body[index].desc,
                    image = Config.InteractionsMenu[data.index].body[index].image,
                    used = Execute.CheckSlot(index)
                }
            elseif Config.InteractionsMenu[data.index].name == "Veiculo" then
                InteractionsListId[index] = {
                    name = Config.InteractionsMenu[data.index].body[index].name,
                    desc = Config.InteractionsMenu[data.index].body[index].desc,
                    image = Config.InteractionsMenu[data.index].body[index].image,
                    type = Config.InteractionsMenu[data.index].type,
                    action = Config.InteractionsMenu[data.index].body[index].action
                }
            else
                InteractionsListId[index] = {
                    name = Config.InteractionsMenu[data.index].body[index].name,
                    desc = Config.InteractionsMenu[data.index].body[index].desc,
                    image = Config.InteractionsMenu[data.index].body[index].image,
                }
            end
        end
    end

    cb({ type = Config.InteractionsMenu[data.index].type, list = InteractionsListId })
end)

RegisterNUICallback('actionUse', function(data, cb) 
    --  print(Execute.SetClothes(data.action, data.index, GetMyCustom()))
    if (data.type == "clothes") then
		local ped = PlayerPedId()
		local vida = GetEntityHealth(ped)
		if vida > 101 then
			local res = Execute.SetClothes(data.action, data.index, vRP.getCustomization())
			cb(res)
			return
		else
			TriggerEvent("Notify","sucess","Voce esta morto..",10000)
			return
		end
		
    elseif (data.type == "player") then
		local ped = PlayerPedId()
		local vida = GetEntityHealth(ped)
		if vida > 101 then
			Execute.PlayerFunction(data.action)
			cb(true)
		else
			TriggerEvent("Notify","sucess","Voce esta morto..",10000)
			return
		end
    end

 --   cb(Execute.executeInteraction(ply.actualTab, data.index))
end)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- THREAD
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    while true do  
        local SLEEP_TIME = 1000

        if ply.IsOpened then
            SLEEP_TIME = 0

            DisableControlAction(2, 37, true)
            DisablePlayerFiring(PlayerPedId(),true)
            DisableControlAction(0, 106, true)
            DisableControlAction(0, 140, true)
            DisableControlAction(0, 263, true)
        end

        Wait( SLEEP_TIME )
    end 
end)

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- KEY MAPPING
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("open_interactionmenu","Open Interactions","keyboard","f9")
RegisterCommand('open_interactionmenu', function(source,args)
    if ply.IsOpened then return end


	OpenInteraction()

end)