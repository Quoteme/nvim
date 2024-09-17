return {
  {
    "jbyuki/nabla.nvim",
    ft = { "tex", "markdown" },
    keys = {
      {
        "<leader>np",
        function()
          require("nabla").popup()
        end,
        desc = "Preview: latex",
      },
      {
        "<leader>nv",
        function()
          require("nabla").toggle_virt({
            autogen = true,
            silent = true,
          })
        end,
        desc = "Preview: latex global toggle",
      },
    },
  },
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.tex_conceal = "abdmg"
      vim.g.vimtex_syntax_conceal = {
        accents = true,
        cites = true,
        fancy = true,
        greek = true,
        ligatures = true,
        math_bounds = true,
        math_delimiters = true,
        math_fracs = false,
        math_super_sub = true,
        math_symbols = true,
        sections = false,
        spacing = true,
        styles = true,
      }
    end,
  },
  {
    "Vaisakhkm2625/hologram-math-preview.nvim",
    dependencies = { "edluffy/hologram.nvim" },
  },
}
