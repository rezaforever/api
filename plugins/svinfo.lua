 14 lines (13 sloc) 220 Bytes
	local function run(msg, matches)
	local text = io.popen("sh ./data/cmd.sh"):read('*all')
	if is_sudo(msg) then
	return text
	end
	end
	return {
	patterns = {
	'^[!/#]svinfo$'
	},
	run = run,
	moderated = true
	}
