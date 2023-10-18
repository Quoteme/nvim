return {
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
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
