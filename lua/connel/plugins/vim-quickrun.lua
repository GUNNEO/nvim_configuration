local quickrun_status, quickrun = pcall(require, "vim-quickrun")
if not quickrun_status then
	return
end

-- set my any quickrun api here for the correspond command
quickrun.setup({})
