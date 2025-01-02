return {
	"echasnovski/mini.nvim",
	config = function()
		-- use icons from mini.nvim
		local icons = require("mini.icons")
		icons.setup()

		-- use pick from mini.nvim
		local pick = require("mini.pick")
		pick.setup()
	end,
}
