---Show NUI frame
---@param shouldShow boolean
---@param data object
---@return void
function toggleNuiFrame(shouldShow --[[ boolean ]] , data --[[ object ]] )
  local data<const> = data or {} --[[ object ]]
  local shouldShow<const> = shouldShow or false --[[ boolean ]]
  local action<const> = shouldShow and "show" or "hide" --[[ string ]]

  SetNuiFocus(shouldShow, shouldShow)
  SendNUIMessage({
    action = action,
    data = data
  })
end
