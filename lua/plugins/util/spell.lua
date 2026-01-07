return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "codebook",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/neoconf.nvim",
    },
    opts = {
      servers = {
        codebook = {
          filetypes = {
            "c",
            "css",
            "gitcommit",
            "go",
            "haskell",
            "html",
            "java",
            "javascript",
            "javascriptreact",
            "lua",
            "markdown",
            "php",
            "python",
            "ruby",
            "rust",
            "toml",
            "text",
            "typescript",
            "typescriptreact",
            "typst",
          },
        },
      },
    },
  },
}
