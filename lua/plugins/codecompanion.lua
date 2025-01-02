return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
		"nvim-telescope/telescope.nvim", -- Optional: For using slash commands
		{ "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
	},
	config = function()
		require("codecompanion").setup({
			adapters = {
				ollama = function()
					return require("codecompanion.adapters").extend("ollama", {
						name = "llama3.1:8b",
						schema = {
							model = {
								--default = "llama3.1:8b",
								--default = "llama3.2:3b",
								--default = "phi3.5",
								default = "gemma2:2b",
							},
							num_ctx = {
								default = 128000,
							},
							num_predict = {
								default = -1,
							},
						},
						env = {
							url = "http://127.0.0.1:11434",
							api_key = "OLLAMA_API_KEY",
						},
						headers = {
							["Content-Type"] = "application/json",
							--["Authorization"] = "Bearer ${api_key}",
						},
						parameters = {
							sync = true,
						},
					})
				end,
			},
		})
	end,
}
