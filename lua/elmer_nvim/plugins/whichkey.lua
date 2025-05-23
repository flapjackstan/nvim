-- ~/.config/nvim/lua/plugins/whichkey.lua
return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- Loads only when needed (after keybinds exist)
  opts = {
    -- Default setup (auto-detects your keybinds with 'desc')
    triggers = { "<leader>" }, -- Also shows for space, etc. if needed
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

  end,
}
