---Update the HUD
---@param ped number
---@return void
function updateHud(ped --[[ number ]] )
  local armor<const> = GetPedArmour(ped) --[[ number ]]
  local health<const> = GetEntityHealth(ped) - 100 --[[ number ]]
  local show<const> = IsPauseMenuActive() and "hide" or "show" --[[ string ]]
  local oxygen<const> = GetPlayerSprintTimeRemaining(PlayerId()) * 10 --[[ number ]]

  SendNUIMessage({
    show = show,
    armor = armor,
    health = health,
    oxygen = oxygen
  })
end

---Set the max health of the player
---@param ped number
---@return void
function setMaxHealth(ped --[[ number ]] )
  if GetPedMaxHealth(ped) ~= 200 and not IsEntityDead(ped) then
    SetPedMaxHealth(ped, 200)
    SetEntityHealth(ped, GetEntityHealth(ped) + 25)
  end
end
