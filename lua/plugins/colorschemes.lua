if vim.g.vscode then
  return {}
else
  return {
    {
      "olimorris/onedarkpro.nvim",
      priority = 1000, -- Ensure it loads first
      -- config = function()
      --   vim.cmd("colorscheme onedark_dark")
      -- end,
    },
    {
      "tiagovla/tokyodark.nvim",
      config = function(_, opts)
        require("tokyodark").setup(opts) -- calling setup is optional
        vim.cmd([[colorscheme tokyodark]])
      end,
    },
    {
      "projekt0n/github-nvim-theme",
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      -- config = function()
      --   require("github-theme").setup({
      --     -- ...
      --   })
      --
      --   vim.cmd("colorscheme github_dark_high_contrast")
      -- end,
    },
  }
end
