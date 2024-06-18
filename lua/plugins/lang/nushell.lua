return {
  {
    "LhKipp/nvim-nu",
    lazy = true,
    ft = { "nu" },
    config = function()
      vim.cmd([[
      augroup Nu
        autocmd!
        autocmd FileType nu setlocal commentstring=#\ %s
      augroup END
      ]])
      require("nu").setup({})
    end,
    cond = function()
      return not vim.g.vscode
    end,
  },
}
