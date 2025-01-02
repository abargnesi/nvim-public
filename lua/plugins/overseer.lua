return {
  "stevearc/overseer.nvim",
  config = function()
    require("overseer").setup()

    vim.keymap.set("n", "<leader>rr", ":OverseerRun<cr>", { desc = "[r]un" })
    vim.keymap.set("n", "<leader>rt", ":OverseerToggle<cr>", { desc = "[t]oggle menu" })

    local overseer = require("overseer")

    overseer.register_template({
      -- Required fields
      name = "java-format",
      builder = function()
        return {
          cmd = { "mvn" },
          args = {
            "com.coveo:fmt-maven-plugin:2.9:format",
            "-Pdev,it,upgrade-tests",
          },
          cwd = ".",
        }
      end,
    })

    overseer.register_template({
      name = "lua-run-tests",
      builder = function()
        return {
          cmd = { "busted" },
          args = {},
          cwd = ".",
        }
      end,
    })
  end,
}
