return {
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
  -- clangd = function(_, opts)
  --   opts.capabilities.offsetEncoding = { "utf-16" }
  -- end,
}
