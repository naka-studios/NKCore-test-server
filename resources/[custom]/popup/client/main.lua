local commandName = "popup" --[[ string ]]

---Handle the command
---@param source number
---@param args array
---@param rawCommand string
---@return void
local commandHandler = function(source, args, rawCommand)
  if not args then
    print("Usage: /" .. commandName .. " [mode]")
    return
  end

  if #args < 1 then
    print("Usage: /" .. commandName .. " [mode]")
    return
  end

  local mode --[[ boolean ]]
  local data = {} --[[ object ]]
  local arg<const> = args[1] --[[ string ]]

  if arg == "true" then
    mode = true
    data = {
      title = "Belajar react js di FiveM"
    }
  elseif arg == "false" then
    mode = false
  else
    print("Mode must be a true or false")
    return
  end

  toggleNuiFrame(mode, data)
end

RegisterCommand(commandName, commandHandler)
