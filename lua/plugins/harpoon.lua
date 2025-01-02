return {
	"ThePrimeagen/harpoon",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- Set a vim motion to <Shift>m to mark a file with harpoon
		vim.keymap.set(
			"n",
			"<localleader>bm",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			{ desc = "[b]ookmarks [m]ark" }
		)
		-- Set a vim motion to the tab key to open the harpoon menu to easily navigate frequented files
		vim.keymap.set(
			"n",
			"<localleader>bf",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ desc = "[b]ookmarks [f]ind" }
		)
	end,
}
