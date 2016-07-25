do

function run(msg, matches)

local fuse = 'پیام جدید \n\nایدی▶️ : ' .. msg.from.id .. '\n\nنام▶ : ' .. msg.from.print_name ..'\n\nایدی▶️ :@ ' .. msg.from.username  ..'\n\nپیام️ :\n\n\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


    local text = matches[1]
 bannedidone = string.find(msg.from.id, '123')
        bannedidtwo =string.find(msg.from.id, '465')       
   bannedidthree =string.find(msg.from.id, '678')  


        print(msg.to.id)

        if bannedidone or bannedidtwo or bannedidthree then                    --for banned people
                return 'You are banned to request group'
 else


                 local sends0 = send_msg('chat#102635174', fuse, ok_cb, false)

 return 'Your Gp request will be check !'

     

end

end
return {
  description = "req gp",

  usage = "/Group",
  patterns = {
    "^[/!][Gg]roup$"

  },
  run = run
}

end
