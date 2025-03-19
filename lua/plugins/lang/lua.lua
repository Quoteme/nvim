return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   ---@class PluginLspOpts
  --   opts = {
  --     ---@type lspconfig.options
  --     servers = {
  --       -- pyright will be automatically installed with mason and loaded with lspconfig
  --       lua_ls = {
  --         settings = {
  --           Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
  --             runtime = {
  --               -- Tell the language server which version of Lua you're using
  --               -- (most likely LuaJIT in the case of Neovim)
  --               version = "LuaJIT",
  --             },
  --             -- Make the server aware of Neovim runtime files
  --             workspace = {
  --               checkThirdParty = false,
  --               library = {
  --                 vim.env.VIMRUNTIME,
  --                 -- Depending on the usage, you might want to add additional paths here.
  --                 -- "${3rd}/luv/library"
  --                 -- "${3rd}/busted/library",
  --               },
  --               -- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
  --               -- library = vim.api.nvim_get_runtime_file("", true)
  --             },
  --           }),
  --         },
  --       },
  --     },
  --   },
  -- },
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        "lazy.nvim",
        "~/.local/share/nvim/lazy/",
        { path = "LuaSnip", words = { "luasnip" } },
        { path = "LazyVim", words = { "LazyVim" } },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        -- add lazydev to your completion providers
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            -- make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100,
          },
        },
      },
    },
  },
  {
    "rafcamlet/nvim-luapad",
    keys = {
      { "<localleader>r", "<cmd>Luapad<cr>", mode = { "n" }, ft = "lua" },
    },
  },
}
