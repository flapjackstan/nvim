return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false, -- Load immediately (like Telescope's core)
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Optional icons (like Telescope's deps)
  },
  keys = {
    { "<leader>tt", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Tree" }, -- Just like Telescope keymaps
  },
  config = function()
    require("nvim-tree").setup({
      -- Telescope-like minimalist setup
      view = {
        width = 30,
        side = "left",
        number = false,
        relativenumber = false,
        signcolumn = "yes",
      },
      renderer = {
        group_empty = true,
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
          },
        },
      },
      actions = {
        open_file = {
          quit_on_open = true, -- Close tree when opening (Telescope-like behavior)
        },
      },
    })
  end,
}
