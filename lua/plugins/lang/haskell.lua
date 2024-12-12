return {
  -- haskell
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^4",
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
    keys = {
      {
        "<localleader>c",
        function() end,
        desc = "Hoogle",
        ft = "haskell",
      },
      {
        "<localleader>cl",
        function()
          vim.lsp.codelens.run()
        end,
        desc = "Refresh code lenses",
        ft = "haskell",
      },
      {
        "<localleader>hs",
        function()
          require("haskell-tools").hoogle.hoogle_signature()
        end,
        desc = "Hoogle search for the type signature of the definition under the cursor",
        ft = "haskell",
      },
      {
        "<localleader>ea",
        function()
          require("haskell-tools").lsp.buf_eval_all()
        end,
        desc = "Evaluate all code snippets",
        ft = "haskell",
      },
      {
        "<localleader>rr",
        function()
          require("haskell-tools").repl.toggle()
        end,
        desc = "Toggle a GHCi repl for the current package",
        ft = "haskell",
      },
      {
        "<localleader>rf",
        function()
          require("haskell-tools").repl.toggle(vim.api.nvim_buf_get_name(0))
        end,
        desc = "Toggle a GHCi repl for the current buffer",
        ft = "haskell",
      },
      {
        "<localleader>rq",
        function()
          require("haskell-tools").repl.quit()
        end,
        desc = "Quit the GHCi repl",
        ft = "haskell",
      },
    },
  },
  {
    "mrcjkb/neotest-haskell",
  },
}
