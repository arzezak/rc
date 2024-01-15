local module = {}

function module.read(filepath)
  local file = io.open(filepath, "r")

  if not file then
    return nil, "Unable to open file for reading."
  end

  local settings = {}

  for line in file:lines() do
    local key, value = line:match("(%w+)=(%w+)")

    if key and value then
      settings[key] = value
    end
  end

  file:close()

  return settings
end

function module.write(filepath, settings)
  local file = io.open(filepath, "w")

  if not file then
    return false, "Unable to open file for writing."
  end

  for key, value in pairs(settings) do
    file:write(key .. "=" .. value .. "\n")
  end

  file:close()

  return true
end

return module
