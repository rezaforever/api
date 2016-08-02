do
local function run(msg, matches)
local bot_id = 235707882
local x = 242893546
local y = 157338449


    if matches[1] == 'bye' and is_admin(msg) or msg.action.type == "channel_invit" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
       channel_kick_user("channel#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "channel_kick_user" and msg.action.user.id == tonumber(x) then
       channel_invite("channel#id"..msg.to.id, 'user#id'..x, ok_cb, false)
    end
     elseif msg.action.type == "channel_kick_user" and msg.action.user.id == tonumber(y) then
       channel_invite("channel#id"..msg.to.id, 'user#id'..y, ok_cb, false)
    end
     
end
 
return {
  patterns = {
    "^[!/](bye)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
