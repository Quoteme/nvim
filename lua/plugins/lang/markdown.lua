return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
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
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "quatro", "norg", "rmd", "org" },
    cond = function()
      return not vim.g.vscode
    end,
    config = function()
      vim.api.nvim_set_hl(0, "RenderMarkdownMath", { fg = "#aaaaaa", bg = "#000000" })
    end,
    opts = {
      file_types = { "markdown", "quatro", "norg", "rmd", "org" },
      code = {
        sign = false,
        width = "block",
        right_pad = 1,
      },
      heading = {
        sign = false,
        icons = {},
      },
      latex = {
        enabled = true,
        converter = "latex2text",
        highlight = "RenderMarkdownMath",
        top_pad = 0,
        bottom_pad = 0,
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    enabled = true,
  },
}
