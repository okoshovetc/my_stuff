local M = {}
local io    = require 'io'
local debug = require 'debug'


--M.dbg_file = "/home/o.koshovets/_/logs/custom"
M.dbg_file = "/home/okoshovets/_/logs/custom"

local file   = io.open(M.dbg_file, "a")
local unpack = unpack or table.unpack

M.on = true;

local function form_message (...)
	local args = { ... }
	local msg_format = string.format("[LUAJ] [%s] ", os.date("%Y-%m-%d %H:%M:%S", os.time()))  .. table.remove(args, 1)
	return msg_format:format(unpack(args))
end

local function form_error (err, msg_format)
	local err_msg_format = "[ERROR] [LUAJ] [%s] (%s) %s"
	return err_msg_format:format(os.date("%Y-%m-%d %H:%M:%S", os.time()), msg_format, tostring(err))
end

M.log = function (...)
	if not M.on then
		return true
	end
	if not file then
		return nil
	end
	local ok, msg = pcall(form_message, ...)
	if not ok then
		local t = {...}
		msg = form_error(msg, t[1])
	end
	file:write(msg .. "\n")
	return file:flush()
end

M.caller = function (label)
	label = tostring(label or '')
	local callee_info = debug.getinfo(2)
	local caller_info = debug.getinfo(3)
	local msg = string.format("[LUAJ] [CALLER] %s called on line %s in %s", label, caller_info.currentline or '_', caller_info.short_src or '_')
	file:write(msg .. "\n")
	return file:flush()
end

M.space = function (n)
	local n = math.abs(tonumber(n) or 1)
	local str = '\n'
	for i = 2,n do
		str = str .. '\n'
	end
	file:write(str)
	return file:flush()
end

return M
