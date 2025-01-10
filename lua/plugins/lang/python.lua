return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
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
