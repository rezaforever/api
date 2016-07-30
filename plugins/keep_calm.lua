function run(msg, matches)
		local text1 = matches[2]
        local text2 = matches[3]
		local text3 = matches[4]
        local answer = {
        'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=ffffff&tc=000000&cc=000000&uc=true&ts=true&ff=PNG&w=500&ps=sq',
        'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=000000&tc=ffffff&cc=ffffff&uc=true&ts=true&ff=PNG&w=500&ps=sq',
        'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=e31f17&tc=000000&cc=000000&uc=true&ts=true&ff=PNG&w=500&ps=sq',
         'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=037d12&tc=000000&cc=000000&uc=true&ts=true&ff=PNG&w=500&ps=sq',
         'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=1b037b&tc=000000&cc=000000&uc=true&ts=true&ff=PNG&w=500&ps=sq',
         'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=0cc0fd&tc=000000&cc=000000&uc=true&ts=true&ff=PNG&w=500&ps=sq',
         'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=6a5de3&tc=000000&cc=000000&uc=true&ts=true&ff=PNG&w=500&ps=sq',
         'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=e339b0&tc=000000&cc=000000&uc=true&ts=true&ff=PNG&w=500&ps=sq',
         'http://www.keepcalmstudio.com/-/p.php?t=%EE%BB%AA%0D%0AKEEP%0D%0ACALM%0D%0A"..text1.."%0D%0A"..text2.."%0D%0A"..text3.."&bc=f7ff03&tc=000000&cc=000000&uc=true&ts=true&ff=PNG&w=500&ps=sq'
}
         local url = answer[math.random(#answer)]
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
