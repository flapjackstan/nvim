return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
  },
  config = function()
    local mason_lspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    mason_lspconfig.setup({
      ensure_installed = { "pyright" },
      handlers = {
        function(server_name)
          lspconfig[server_name].setup({
            on_attach = function(client, bufnr)
              if client.server_capabilities.inlayHintProvider then
                vim.lsp.inlay_hint.enable(bufnr, true)
              end
            end,
          })
        end,
      },
    })
  end,
}
