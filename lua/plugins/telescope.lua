-- install and enable telescope
return {
	{
		"nvim-telescope/telescope.nvim",
		-- pull a specific version of the plugin
		tag = "0.1.6",
		dependencies = {
			-- general purpose plugin used to build user interfaces in neovim plugins
			"nvim-lua/plenary.nvim",
			"debugloop/telescope-undo.nvim",
		},
		config = function()
			-- load undo
			require("telescope").load_extension("undo")

			-- get access to telescopes built in functions
			local builtin = require("telescope.builtin")

			-- set a vim motion to <space> + f + f to search for files by their names
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]iles" })
			-- set a vim motion to <space> + f + g to search for files based on the text inside of them
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[f]ind by [g]rep" })
			-- set a vim motion to <space> + f + d to search for code diagnostics in the current project
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[f]ind [d]iagnostics" })
			-- set a vim motion to <space> + f + r to resume the previous search
			vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "[f]inder [r]esume" })
			-- set a vim motion to <space> + f + . to search for recent files
			vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = '[f]ind recent files ("." for repeat)' })
			-- set a vim motion to <space> + f + b to search open buffers
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[f]ind existing [b]uffers" })

			vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>", { desc = "[f]ind changes to [u]ndo" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- get access to telescopes navigation functions
			local actions = require("telescope.actions")

			require("telescope").setup({
				-- use ui-select dropdown as our ui
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				-- set keymappings to navigate through items in the telescope io
				mappings = {
					i = {
						-- use <cltr> + n to go to the next option
						["<C-n>"] = actions.cycle_history_next,
						-- use <cltr> + p to go to the previous option
						["<C-p>"] = actions.cycle_history_prev,
						-- use <cltr> + j to go to the next preview
						["<C-j>"] = actions.move_selection_next,
						-- use <cltr> + k to go to the previous preview
						["<C-k>"] = actions.move_selection_previous,
					},
				},
				-- load the ui-select extension
				require("telescope").load_extension("ui-select"),
			})
		end,
	},
}
