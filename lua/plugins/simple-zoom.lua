return {
	"fasterius/simple-zoom.nvim",
	config = function()
		local p = require("simple-zoom")
		p.setup({
			hide_tabline = true,
		})

		vim.keymap.set("n", "<localleader>z", ":SimpleZoomToggle<CR>")
	end,
}
