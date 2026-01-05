return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- jedi_language_server = {},
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                -- typeCheckingMode = "standard",
                autoImportCompletions = true,
              },
            },
          },
        },
        ty = {
          settings = {
            ty = {},
          },
        },
        -- pylsp = {
        --   settings = {
        --     pylsp = {
        --       plugins = {
        --         rope_autoimport = {
        --           enabled = true,
        --         },
        --       },
        --     },
        --   },
        -- },
      },
    },
  },
}
