local function run(msg, matches)
 if matches[1] == 'sms' and is(msg) then
  local response = matches[3]
  send_large_msg("user#id"..matches[2], response)
      local receiver = 'user#id'..user_id
    send_large_msg(receiver, response)
    return "Message sent"
 end
 end
return {
  patterns = {
    "^[!/](sms) (%d+) (.*)$"
  },
  run = run
}
