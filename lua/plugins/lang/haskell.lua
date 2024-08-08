return {
  -- haskell
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^4",
    keys = {
      {
        "<leader>cl",
        function()
          vim.lsp.codelens.run()
        end,
        desc = "Refresh code lenses",
      },
      {
        "<leader>hs",
        function()
          require("haskell-tools").hoogle.hoogle_signature()
        end,
        desc = "Hoogle search for the type signature of the definition under the cursor",
      },
      {
        "<leader>ea",
        function()
          require("haskell-tools").lsp.buf_eval_all()
        end,
        desc = "Evaluate all code snippets",
      },
      {
        "<leader>rr",
        function()
          require("haskell-tools").repl.toggle()
        end,
        desc = "Toggle a GHCi repl for the current package",
      },
      {
        "<leader>rf",
        function()
          require("haskell-tools").repl.toggle(vim.api.nvim_buf_get_name(0))
        end,
        desc = "Toggle a GHCi repl for the current buffer",
      },
      {
        "<leader>rq",
        function()
          require("haskell-tools").repl.quit()
        end,
        desc = "Quit the GHCi repl",
      },
    },
    -- load the plugin when opening one of the following file types
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
  },
  {
    "mrcjkb/neotest-haskell",
    -- TODO: temporarily disabled, because IDK how to set up luarocks for neovim on nixos?
    enabled = false,
    -- opts = {
    --   rocks = { hererocks = true },
    -- }
  },
}
