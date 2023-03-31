---Handle the NUI callback
---@param data object
---@param cb function
---@return void
RegisterNUICallback("getCountData", function(data, cb)
  local data<const> = data or {} --[[ object ]]
  local count<const> = data.count --[[ number ]]

  print("Data sent by React " .. json.encode(data))
  print("Count is " .. count)

  cb({})
end)
