do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 235707882

  if matches[1] == "@RezaMnk" then
    user = 'user#id'..user
  end

  -- The message must come from a chat group
  if msg.to.type == 'channel' then
    local channel = 'channel#id'..msg.to.id
    channel_add_user(chat, user, callback, false)
    return "RezaMnk joind Gp"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "support", 
  patterns = {
    "^(@[Rr]eza[Mm]nk)$"
  }, 
  run = run 
}

end
