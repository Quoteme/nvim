return {
  {
    "Julian/lean.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/vim-vsnip",
      "andrewradev/switch.vim",
      "tomtom/tcomment_vim",
    },
    ft = { "lean", "lean3" },
    opts = function(_, opts)
      require("lean").setup({
        abbreviations = { builtin = true },
        lsp = { on_attach = on_attach },
        mappings = true,
      })
    end,
    cond = function()
      return not vim.g.vscode
    end,
  },
}
