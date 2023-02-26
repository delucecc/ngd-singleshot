CreateThread(function()
    local ped = PlayerPedId()
    while true do
        if IsControlJustPressed(0, 24) and Config.WeaponList[GetSelectedPedWeapon(ped)] then
            while IsControlPressed(0, 24) or IsDisabledControlPressed(0, 24) do
                DisablePlayerFiring(PlayerId(), true)
                Wait(0)
            end
        end
        Wait(0)
    end
end)
