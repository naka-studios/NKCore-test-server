AddEventHandler("playerSpawned", function(spawn)
  if firstSpawn then
    local ped<const> = PlayerPedId() --[[ number ]]

    updateHud(ped)
    setMaxHealth(ped)

    firstSpawn = false
  end
end)
