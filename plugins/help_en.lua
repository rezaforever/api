 	local function run(msg)
	if msg.text == "/help" then
	return "✅ViVo Tg common users commands💠
!kickme
Will kick user

!about
Group description

!rules
Group rules

!id
return group id or user id

!help
Returns help text

!settings
Returns group settings

!link
returns group link

!owner
returns group owner id

!get [value]
Returns text of [value]

!res [username]
returns user id
➖➖➖➖➖➖➖➖➖➖➖
SuperGroup commands

!info
Displays general info about the SuperGroup

!admins
Returns SuperGroup admins list

!owner
Returns group owner

!modlist
Returns Moderators list

!bots
Lists bots in SuperGroup

!id
Return SuperGroup ID or user id
*For userID's: !id @username or reply !id*

!id from
Get ID of user message is forwarded from

!kickme
Kicks user from SuperGroup
*Must be unblocked by owner or use join by pm to return*
➖➖➖➖➖➖➖➖➖
Mods And Owner Help Commands :
/help m

Writed By @RezaMnk
channel : @ViVoTG_Channel
Bot : @ViVoTG
"
	end
	if msg.text == "!help" then
	return "✅ViVo Tg common users commands💠
!kickme
Will kick user

!about
Group description

!rules
Group rules

!id
return group id or user id

!help
Returns help text

!settings
Returns group settings

!link
returns group link

!owner
returns group owner id

!get [value]
Returns text of [value]

!res [username]
returns user id
➖➖➖➖➖➖➖➖➖➖
SuperGroup commands

!info
Displays general info about the SuperGroup

!admins
Returns SuperGroup admins list

!owner
Returns group owner

!modlist
Returns Moderators list

!bots
Lists bots in SuperGroup

!id
Return SuperGroup ID or user id
*For userID's: !id @username or reply !id*

!id from
Get ID of user message is forwarded from

!kickme
Kicks user from SuperGroup
*Must be unblocked by owner or use join by pm to return*
➖➖➖➖➖➖➖➖➖
Mods And Owner Help Commands :
/help m

Writed By @RezaMnk
channel : @ViVoTG_Channel
Bot : @ViVoTG
"
	end
	if msg.text == "/help m" then
	return "✅ViVo Tg mod users commands💠
!kick [username|id]
You can also do it by reply

!ban [ username|id]
You can also do it by reply

!unban [id]
You can also do it by reply

!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Lock group settings
*rtl: Kick user if Right To Left Char. is in name*

!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Unlock group settings
*rtl: Kick user if Right To Left Char. is in name*

!mute [all|audio|gifs|photo|video]
mute group message types
*If "muted" message type: user is kicked if message type is posted 

!unmute [all|audio|gifs|photo|video]
Unmute group message types
*If "unmuted" message type: user is not kicked if message type is posted 

!set rules <text>
Set <text> as rules

!set about <text>
Set <text> as about

!muteslist
Returns mutes for chat

!newlink
create/revoke your group link

!setflood [value]
Set [value] as flood sensitivity

!save [value] <text>
Save <text> as [value]

!banlist
will return group ban list
➖➖➖➖➖➖➖➖➖
SuperGroup commands

!setrules
Sets the chat rules

!setabout
Sets the about section in chat info(members list)

!save [value] <text>
Sets extra info for chat

!block
Kicks a user from SuperGroup
*Adds user to blocked list*

!ban
Bans user from the SuperGroup

!unban
Unbans user from the SuperGroup

!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Lock group settings
*rtl: Delete msg if Right To Left Char. is in name*
*strict: enable strict settings enforcement (violating user will be kicked)*

!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Unlock group settings
*rtl: Delete msg if Right To Left Char. is in name*
*strict: disable strict settings enforcement (violating user will not be kicked)*

!mute [all|audio|gifs|photo|video|service]
mute group message types
*A "muted" message type is auto-deleted if posted

!unmute [all|audio|gifs|photo|video|service]
Unmute group message types
*A "unmuted" message type is not auto-deleted if posted

!setflood [value]
Set [value] as flood sensitivity

!mutelist
Returns list of muted users in chat

!banlist
Returns SuperGroup ban list

!clean [rules|about|modlist|mutelist]

!del
Deletes a message by reply
➖➖➖➖➖➖➖➖➖
Owner commands
"
        end
if msg.text == "!help m" then
	return "✅ViVo Tg mod users commands💠
!kick [username|id]
You can also do it by reply

!ban [username|id]
You can also do it by reply

!unban [id]
You can also do it by reply

!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Lock group settings
*rtl: Kick user if Right To Left Char. is in name*

!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Unlock group settings
*rtl: Kick user if Right To Left Char. is in name*

!mute [all|audio|gifs|photo|video]
mute group message types
*If "muted" message type: user is kicked if message type is posted 

!unmute [all|audio|gifs|photo|video]
Unmute group message types
*If "unmuted" message type: user is not kicked if message type is posted 

!set rules <text>
Set <text> as rules

!set about <text>
Set <text> as about

!muteslist
Returns mutes for chat

!newlink
create/revoke your group link

!setflood [value]
Set [value] as flood sensitivity

!save [value] <text>
Save <text> as [value]

!banlist
will return group ban list
"
        end
	if msg.text == "/help fun" then
	return "ViVo Tg Fun commands
!keep calm <text>
will give a keep calm sticker

!feedback <text>
will send a feedback to sudo

!group
If you want a group , this command will send a request to sudo

@RezaMnk
will invite sudo to gp

!sms [id]
will send a sms to id
*!sms 12345679

!sticker <text>
will give a sticker with text
"
	end
        if msg.text == "!help fun" then
	return "ViVo Tg Fun commands
!keep calm <text>
will give a keep calm sticker

!feedback <text>
will send a feedback to sudo

!group
If you want a group , this command will send a request to sudo

@RezaMnk
will invite sudo to gp

!sms [id]
will send a sms to id
*!sms 12345679

!sticker <text>
will give a sticker with text
"
	end
        end


	return {
	description = "Chat With Robot Server",
	usage = "chat with robot",
	patterns = {
	"^!help$",
	"^/help$",
	"^/help m$",
	"^!help m$",
	"^/help fun$",
	"^!help fun$",

	},
	run = run,
	--privileged = true,
	pre_process = pre_process
	}
