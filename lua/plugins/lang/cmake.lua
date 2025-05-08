return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/neoconf.nvim",
    },
    opts = {
      servers = {
        cmake = {
          mason = false,
        },
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
      for _, w in ipairs({ "cmakelint", "cmakelang" }) do
        for i, v in ipairs(opts.ensure_installed) do
          if v == w then
            table.remove(opts.ensure_installed, i)
          end
        end
      end
    end,
  },
}
