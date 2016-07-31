function run(msg, matches)
        local answer = {
        'http://www.keepcalmstudio.com/-/p.php?t='
}
        local text1 = matches[2]
                local text2 = matches[3]
        local text3 = matches[4]
                local c2 = {'FFFFFF','000000'}
        local c = {'FFFFFF','000000','E31F17','037D12','1B037B','0CC0FD','6A5DE3','E339B0','F7FF03'}
                local color = c[math.random(#c)]
        local color2 = c2[math.random(#c2)]
                local url = asnwer"%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A..text1..%0D%0A..text2..%0D%0A..text3..&bc=..c..&tc=..c2..&cc=..c2..&uc=true&ts=true&ff=PNG&w=500&ps=sq"

		 local  file = download_to_file(url,'keep.webp')
			send_document(get_receiver(msg), file, ok_cb, false)

        
end


return {
  description = "ØªØ¨Ø¯ÛŒÙ„ Ù…ØªÙ† Ø¨Ù‡ Ù„ÙˆÚ¯Ùˆ",
  usage = {
    "/keep calm font text: Ø³Ø§Ø®Øª Ù„ÙˆÚ¯Ùˆ",
  },
  patterns = {
   "^[/!]([Kk][Ee][Ee][Pp] [Cc][Aa][Ll][Mm]) (.+) (.+) (.+)$",
  },
  run = run
}
