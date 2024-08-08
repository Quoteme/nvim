return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/neoconf.nvim",
    },
    opts = {
      servers = {
        neocmake = {
          mason = false,
        },
      },
    },
    -- clangd = function(_, opts)
    --   opts.capabilities.offsetEncoding = { "utf-16" }
    -- end,
  },
}
