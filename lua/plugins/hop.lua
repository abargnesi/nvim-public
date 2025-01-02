return {
  "smoka7/hop.nvim",
  version = "*",
  opts = {
    keys = "etovxqpdygfblzhckisuran",
  },
  config = function()
    require('hop').setup()
    vim.keymap.set("n", "<leader>ho", ":HopChar1<CR>", { desc = "[h]op by [o]ne character" })
    vim.keymap.set("n", "<leader>ht", ":HopChar2<CR>", { desc = "[h]op by [t]wo characters" })
    vim.keymap.set("n", "<leader>hw", ":HopWord<CR>", { desc = "[h]op by a [w]ord" })
    vim.keymap.set("n", "<leader>hl", ":HopLine<CR>", { desc = "[h]op by a [l]ine" })
  end,
}
