local commandName = "alert" --[[ string ]]

---Handle the command
---@param source number
---@param args array
---@param rawCommand string
---@return void
local commandHandler = function(source --[[ number ]] , args --[[ array ]] , rawCommand --[[ string ]] )
  if not args then
    print("Usage: /" .. commandName .. " [type] [duration] [message]")
    return
  end

  if #args < 3 then
    print("Usage: /" .. commandName .. " [type] [duration] [message]")
    return
  end

  local type<const> = args[1]
  local duration<const> = tonumber(args[2])
  local message<const> = table.concat(args, " ", 3)

  SendNUIMessage({
    type = type,
    text = message,
    duration = duration
  })
end

RegisterCommand(commandName, commandHandler)
