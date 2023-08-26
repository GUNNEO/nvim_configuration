local dapui_status, dapui = pcall(require, "dapui")
if not dapui_status then
	return
end

local dap_status, dap = pcall(require, "dap")
if not dap_status then
	return
end

dapui.setup()

-- auto open & close ui
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end
