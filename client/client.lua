CreateThread(function()
    while true do
        local ped = PlayerPedId()
        if IsControlJustPressed(0, 24) and Config.WeaponList[GetSelectedPedWeapon(ped)] then
            while IsControlPressed(0, 24) or IsDisabledControlPressed(0, 24) do
                DisablePlayerFiring(ped, true)
                Wait(0)
            end
        end
        Wait(0)
    end
end)