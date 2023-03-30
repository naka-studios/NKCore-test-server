local function SendReactMessage(action, data)
  SendNUIMessage({
    action = action,
    data = data
  })
end

local function toggleNuiFrame(shouldShow, data)
  local data = data or ""
  local shouldShow = shouldShow or false
  local action = shouldShow and 'show' or 'hide'

  SetNuiFocus(shouldShow, shouldShow)
  SendReactMessage(action, data)
end

RegisterCommand('show-nui', function()
  local data = {
    title = 'Belajar react js di FiveM',
  }

  toggleNuiFrame(true, data)
  print('Show NUI frame')
end)

RegisterCommand('close-nui', function()
  toggleNuiFrame(false)
  print('Close NUI frame')
end)

RegisterNUICallback('getCountData', function(data, cb)
  local data = data or {}

  print('Data sent by React ' .. json.encode(data))

  local count = data.count

  print('Count is ' .. count)

  cb({})
end)