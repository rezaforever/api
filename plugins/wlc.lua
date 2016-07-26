local add_user_cfg = load_from_file('data/add_user_cfg.lua')

local function template_add_user(base, to_username, from_username, channel_name, channel_id)
   base = base or ''
   to_username = '@' .. (to_username or '')
   from_username = '@' .. (from_username or '')
   chaneel_name = string.gsub(channel_name, '_', ' ') or ''
   channel_id = "channel#id" .. (channel_id or '')
   if to_username == "@" then
      to_username = ''
   end
   if from_username == "@" then
      from_username = ''
   end
   base = string.gsub(base, "{to_username}", to_username)
   base = string.gsub(base, "{from_username}", from_username)
   base = string.gsub(base, "{channel_name}", channel_name)
   base = string.gsub(base, "{channel_id}", channel_id)
   return base
end

function channel_new_user_link(msg)
   local pattern = add_user_cfg.initial_channel_msg
   local to_username = msg.from.username
   local from_username = 'link (@' .. (msg.action.link_issuer.username or '') .. ')'
   local channel_name = msg.to.print_name
   local channel_id = msg.to.id
   pattern = template_add_user(pattern, to_username, from_username, channel_name, channel_id)
   if pattern ~= '' then
      local receiver = get_receiver(msg)
      send_msg(receiver, pattern, ok_cb, false)
   end
end

function channel_new_user(msg)
   local pattern = add_user_cfg.initial_channel_msg
   local to_username = msg.action.user.username
   local from_username = msg.from.username
   local channel_name = msg.to.print_name
   local channel_id = msg.to.id
   pattern = template_add_user(pattern, to_username, from_username, channel_name, channe_id)
   if pattern ~= '' then
      local receiver = get_receiver(msg)
      send_msg(receiver, pattern, ok_cb, false)
   end
end

local function description_rules(msg, nama)
   local data = load_data(_config.moderation.data)
   if data[tostring(msg.to.id)] then
      local about = ""
      local rules = ""
      if data[tostring(msg.to.id)]["description"] then
         about = data[tostring(msg.to.id)]["description"]
         about = "\n› Gp about :\n"..about.."\n"
      end
      if data[tostring(msg.to.id)]["rules"] then
         rules = data[tostring(msg.to.id)]["rules"]
         rules = "\n› Gp rules :\n"..rules.."\n"
      end
       local sambutan = "Hi "..nama.."\nWelcome to group "..string.gsub(msg.to.print_name, "_", " ").."\nYou can get help list with /help command.\n"
      local text = sambutan..about..rules.."\n"
      local receiver = get_receiver(msg)
      send_large_msg(receiver, text, ok_cb, false)
   end
end

local function run(msg, matches)
   if not msg.service then
      return "Are you trying to troll me?"
   end
   vardump(msg)
   if matches[1] == "channel_add_user" then
      if not msg.action.user.username then
          nama = string.gsub(msg.action.user.print_name, "_", " ")
      else 
          nama = "@"..msg.action.user.username
      end
      channel_new_user(msg)
      description_rules(msg, nama)
   elseif matches[1] == "channel_add_user_link" then
      if not msg.from.username then
          nama = string.gsub(msg.from.print_name, "_", " ")
      else
          nama = "@"..msg.from.username
      end
      channel_new_user_link(msg)
      description_rules(msg, nama)
   elseif matches[1] == "channel_del_user" then
       local bye_name = msg.action.user.first_name
       return 'Bye Bye \n' ..bye_name 
   end
end

return {
   description = "Welcoming Message",
   usage = "send message to new member",
   patterns = {
      "^!!tgservice (channel_add_user)$",
      "^!!tgservice (channel_add_user_link)$",
      "^!!tgservice (channel_del_user)$",
   },
   run = run
}
