return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_lua").lazy_load({ paths = { vim.fn.stdpath("config") .. "/lua/snippets" } })
      end,
      keys = function()
        local ls = require("luasnip")

        vim.keymap.set({ "i", "s" }, "<C-L>", function()
          ls.jump(1)
        end, { silent = true })
        vim.keymap.set({ "i", "s" }, "<C-J>", function()
          ls.jump(-1)
        end, { silent = true })

        vim.keymap.set({ "i", "s" }, "<C-E>", function()
          if ls.choice_active() then
            ls.change_choice(1)
          end
        end, { silent = true })
      end,
    },
  },
  -- {
  --   "evesdropper/luasnip-latex-snippets.nvim",
  -- },
  -- {
  --   "jczhang02/luasnips-mathtex-snippets",
  --   config = function()
  --     require("luasnip-latex-snippets").setup()
  --     -- or setup({ use_treesitter = true })
  --   end,
  --   ft = { "tex", "markdown" },
  -- },
  {
    "preservim/vim-markdown",
    opt = true,
    ft = "markdown",
    config = function()
      vim.cmd([[let g:vim_markdown_math = 1]])
    end,
  },
}
