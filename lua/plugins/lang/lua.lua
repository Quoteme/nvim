return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        "lazy.nvim",
        "luvit-meta/library",
        -- "LazyVim",
        { path = "LazyVim", words = { "LazyVim" } },
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
