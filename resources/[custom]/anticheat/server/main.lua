local commandName = "anticheat" --[[ string ]]

---Set the entity lockdown mode for a routing bucket.
---@param source number
---@param args string[]
---@param rawCommand string
---@return void
local commandHandler = function(source --[[ number ]] , args --[[ array ]] , rawCommand --[[ string ]] )
  local routingBucket = tonumber(args[1])
  local mode = args[2]

  SetRoutingBucketEntityLockdownMode(routingBucket, mode)
end

RegisterCommand(commandName, commandHandler)
