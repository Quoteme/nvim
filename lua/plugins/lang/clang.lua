return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/neoconf.nvim",
    },
    init = function()
      require("lspconfig").clangd.setup({
        capabilities = {
          offsetEncoding = { "utf-16" },
        },
      })
    end,
    opts = {
      servers = {
        clangd = {
          mason = false,
        },
      },
    },
    -- clangd = function(_, opts)
    --   opts.capabilities.offsetEncoding = { "utf-16" }
    -- end,
  },
}
