return {
  {
    "brenoprata10/nvim-highlight-colors",
    opts = {},
  },
  {
    "frazrepo/vim-rainbow",
    ft = { "leaninfo" },
    config = function()
      vim.cmd([[call rainbow#load()]])
    end,
  },
}
