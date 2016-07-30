function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '🕒FA time '..jdat.FAtime..' \n📆FA date '..jdat.FAdate..'.\n    ----\n🕒EN time '..jdat.ENtime..'\n📆EN date '..jdat.ENdate.. '\n@OmeGa_TG'
return text
end
return {
  patterns = {"^[/!]([Dd]ate)$"}, 
run = run 
}
