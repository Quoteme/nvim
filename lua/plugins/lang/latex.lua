return {
  -- {
  --   "jbyuki/nabla.nvim",
  --   ft = { "tex", "markdown" },
  --   keys = {
  --     {
  --       "<leader>np",
  --       function()
  --         require("nabla").popup()
  --       end,
  --       desc = "Preview: latex",
  --     },
  --     {
  --       "<leader>nv",
  --       function()
  --         require("nabla").toggle_virt({
  --           autogen = true,
  --           silent = true,
  --         })
  --       end,
  --       desc = "Preview: latex global toggle",
  --     },
  --   },
  -- },
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.tex_conceal = "abdg"
      vim.g.vimtex_syntax_conceal = {
        accents = true,
        cites = true,
        fancy = true,
        greek = true,
        ligatures = true,
        math_bounds = false,
        math_delimiters = false,
        math_fracs = false,
        math_super_sub = false,
        math_symbols = false,
        sections = false,
        spacing = false,
        styles = true,
      }
    end,
  },
  -- {
  --   "Vaisakhkm2625/hologram-math-preview.nvim",
  --   dependencies = { "edluffy/hologram.nvim" },
  -- },
}
