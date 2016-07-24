do
local function run(msg, matches, callback, extra)
local data = load_data(_config.moderation.data)
local rules = data[tostring(msg.to.id)]['rules']
local about = data[tostring(msg.to.id)]['description']
local hash = 'group:'..msg.to.id
local group_bye = redis:hget(hash,'bye')
if matches[1] == 'delbye' and not matches[2] and is_owner(msg) then 
    
   redis:hdel(hash,'delbye')
        return 'Bye message deleted
end

local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)

if matches[1] == 'setbye' and is_owner(msg) then
redis:hset(hash,'bye',matches[2])
        return 'Bye message set to : \n'..matches[2]
end

if matches[1] == 'channel_kick_user' and msg.service then
group_bye = string.gsub(group_bye, '{Gp name}', msg.to.title)
group_bye = string.gsub(group_bye, '{First name}', ""..(msg.action.user.first_name or '').."")
 group_bye = string.gsub(group_bye, '{Last name}', ""..(msg.action.user.last_name or '').."")
  group_bye = string.gsub(group_bye, '{Username}', "@"..(msg.action.user.username or '').."")
  group_bye = string.gsub(group_bye, '{fa time}', ""..(jdat.FAtime).."")
  group_bye = string.gsub(group_bye, '{en time}', ""..(jdat.ENtime).."")
  group_bye = string.gsub(group_bye, '{fa date}', ""..(jdat.FAdate).."")
  group_bye = string.gsub(group_bye, '{en date}', ""..(jdat.ENdate).."")
  group_bye = string.gsub(group_bye, '{rules}', ""..(rules or '').."")
  group_bye = string.gsub(group_bye, '{about}', ""..(about or '').."")


 end
return group_bye
end
return {
  patterns = {
  "^[!#/](setbye) +(.*)$",
  "^[!#/](delbye)$",
  "^!!tgservice (channel_kick_user)$",
  },
  run = run
}
end

--Channel : @TGland --
--IT Channel: @ITTGland --
--کپی بدون منبع حرام است--
