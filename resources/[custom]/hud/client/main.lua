firstSpawn = true

CreateThread(function()
  while true do
    local ped<const> = PlayerPedId() --[[ number ]]

    if IsPedOnFoot(ped) then
      SetRadarZoom(250)
    else
      SetRadarZoom(750)
    end

    updateHud(PlayerPedId())
    Wait(1250)
  end
end)
