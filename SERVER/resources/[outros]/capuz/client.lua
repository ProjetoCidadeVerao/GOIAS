local status = false
RegisterNetEvent('capuz')
AddEventHandler('capuz', function()
    local player = PlayerPedId()
    if not status then
        status = true
        SendNUIMessage({ action = 'show' })
        print('1')
    else
        status = false
        SendNUIMessage({ action = 'hide' })
        print('2')
    end
end)