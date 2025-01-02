return {
  "folke/which-key.nvim",
  event = "VimEnter",
  config = function()
    -- gain access to the which key plugin
    local which_key = require("which-key")

    -- call the setup function with default properties
    which_key.setup({
      -- do not warn on mapping errors
      notify = false,
    })

    -- Register prefixes for the different key mappings we have setup previously
    which_key.register({
      ["<leader>/"] = { name = "Comments", _ = "which_key_ignore" },
      ["<leader>b"] = { name = "[b]ookmarks", _ = "which_key_ignore" },
      ["<leader>c"] = { name = "[c]ode", _ = "which_key_ignore" },
      ["<leader>d"] = { name = "[d]ebug", _ = "which_key_ignore" },
      ["<leader>e"] = { name = "[e]xplorer", _ = "which_key_ignore" },
      ["<leader>f"] = { name = "[f]ind", _ = "which_key_ignore" },
      ["<leader>g"] = { name = "[g]it", _ = "which_key_ignore" },
      ["<leader>j"] = { name = "[j]ava", _ = "which_key_ignore" },
      ["<leader>m"] = { name = "[m]markdown", _ = "which_key_ignore" },
      ["<leader>r"] = { name = "[r]un", _ = "which_key_ignore" },
      ["<leader>w"] = { name = "[w]indow", _ = "which_key_ignore" },
      ["<leader>z"] = { name = "[z]oom", _ = "which_key_ignore" },
    })
  end,
}
