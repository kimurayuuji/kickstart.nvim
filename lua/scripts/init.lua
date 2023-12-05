local scriptPath = vim.fn.stdpath('config')..'/lua/scripts'

local getFiles = function(dir)
	return io.popen(([[dir "%s" /a-d /b]]):format(dir)):lines()
end

for file in getFiles(scriptPath) do

	local basename = string.match(file, [[(.*)%.lua]])
	vim.api.nvim_create_user_command(
		'S' .. basename,
		-- e.g. ~/AppData/Local/nvim/lua/scripts/formatxml.lua
		('so %s/%s'):format(scriptPath, file),
		{})
end

