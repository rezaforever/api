local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" Recently messages removed', ok_cb, false)
  else
    send_msg(extra.chatid, 'ℹ️Mention messages removed', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'delmsg' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
        return "Select more than 1"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "ℹ️Just supergroup"
    end
  else
    return "ℹ️This command need privilege"
  end
end

return {
    patterns = {
        '^[!/#](delmsg) (%d*)$'
    },
    run = run
}
