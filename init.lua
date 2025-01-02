-- Setup lazy plugin manager
-- determine lazy's path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- clone repo if necessary
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

-- prepend lazy's path to vim runtime path
vim.opt.rtp:prepend(lazypath)

-- options for lazy
local opts = {
	change_detection = {
		-- no notifications for config changes
		notify = false,
	},
	checker = {
		-- check for package updates
		enabled = true,
		-- no notifications when package update available
		notify = false,
	},
}
--

-- Load general options from ~/.config/nvim/lua/config/options.lua
require("config.options")

-- Load general keymaps from ~/.config/nvim/lua/config/keymaps.lua
require("config.keymaps")
--
-- Load auto commands from ~/.config/nvim/lua/config/autocmds.lua
require("config.autocmds")

-- Load lazy plugin manager
require("lazy").setup("plugins", opts)
