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
    "rafcamlet/nvim-luapad",
    keys = {
      { "<localleader>r", "<cmd>Luapad<cr>", mode = { "n" }, ft = "lua" },
    },
  },
}
