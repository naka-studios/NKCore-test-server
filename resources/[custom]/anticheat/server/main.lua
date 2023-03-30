RegisterCommand("anticheat", function (source, args, rawCommand)
    local routingBucket = tonumber(args[1])
    local mode = args[2]

    SetRoutingBucketEntityLockdownMode(routingBucket, mode)
end)

AddEventHandler("playerConnecting", function(_, _, deferrals)
    local player = source

    print("playerConnecting: " .. player)
end)