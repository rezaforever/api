function reload_plugins( )
  plugins = {}
  load_plugins()
end
   function run(msg, matches)
    if tonumber (msg.from.id) == 235707882 then--expample 123456789
   if matches[1]:lower() == "remsudo" then
      table.remove(_config.sudo_users, tonumber(matches[2]))
      print(matches[2]..' removed from sudo users')
     save_config()
     reload_plugins(true)
      return matches[2]..' removed from sudo users'
   end
end
return {
patterns = {
"^[!/#](remsudo) (%d+)$",
},
run = run
}
