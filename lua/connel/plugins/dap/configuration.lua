local dap_status, dap = pcall(require, "dap")
if not dap_status then
	return
end

-- python configuration
dap.configurations.python = {
	{
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			return "C:\\Python311\\python.exe"
		end,
	},
}
