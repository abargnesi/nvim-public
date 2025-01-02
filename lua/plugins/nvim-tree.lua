-- install and enable file system tree
return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		-- toggle tree
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle [e]xplorer" })

		vim.keymap.set("n", "<leader>ft", "<cmd>NvimTreeFindFile<CR>", { desc = "find [t]his file" })

		-- options
		require("nvim-tree").setup({
			hijack_netrw = true,
			auto_reload_on_write = true,
		})
	end,
}
