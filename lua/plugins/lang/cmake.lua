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
  {
    "mason.nvim",
    opts = function(_, opts)
      -- remove `cmakelint`
      for i, v in ipairs(opts.ensure_installed) do
        if v == "cmakelint" then
          table.remove(opts.ensure_installed, i)
          break
        end
      end
    end,
  },
}
