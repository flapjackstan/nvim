-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      { "<leader>fe", function() require("telescope").extensions.file_browser.file_browser({ path = "%:p:h" }) end, desc = "File Explorer" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          file_browser = {
            hijack_netrw = true,
            hidden = true,
            initial_mode = "normal",
            mappings = {
              n = {
                c = function(pb) -- Custom create file binding
                  local name = vim.fn.input("Create file: ")
                  if name ~= "" then
                    pb:create_from_filename(pb.cwd .. "/" .. name)
                  end
                end,
              },
            },
          },
        },
      })
      require("telescope").load_extension("file_browser")
    end,
  },
}
