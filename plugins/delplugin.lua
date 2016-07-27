
local function run(msg, matches)
    if matches[1] == "delplugin" and is_sudo(msg) then
text = io.popen("cd plugins && rm "..matches[2]..".lua")
return text.."Plugin ["..matches[2].."] deleted successfully"
end 
end

return { 
patterns = {
 
'^[!/](delplugin) (.*)$' 
},
run = run,
}
