return {
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
    cond = function()
      return not vim.g.vscode
    end,
  },
}
