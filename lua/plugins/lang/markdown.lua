return {
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
    cond = function()
      return not vim.g.vscode
    end,
  },
  {
    "jubnzv/mdeval.nvim",
  },
  {
    "jghauser/auto-pandoc.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("auto-pandoc")
    end,
  },
}
