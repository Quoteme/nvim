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
-- {
--   "neovim/nvim-lspconfig",
--   ---@class PluginLspOpts
--   opts = {
--     setup = {
--       clangd = function(_, opts)
--         opts.capabilities.offsetEncoding = { "utf-16" }
--       end,
--     },
--     ---@type lspconfig.options
--     servers = {
--       clangd = {},
--     },
--   },
-- }
