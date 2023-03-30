local function SendAlert(type, duration, message)
  SendNUIMessage({
    type = type,
    text = message,
    duration = duration
  })
end

RegisterCommand('alert', function(source, args, rawCommand)
  local type = args[1] or 'success'
  local duration = args[2] or 5000
  local message = args[3] or 'Ini adalah pesan sukses'

  SendAlert(type, duration, message)
end)