return {
  {
    "chomosuke/typst-preview.nvim",
    lazy = false, -- or ft = 'typst'
    version = "1.*",
    opts = {}, -- lazy.nvim will implicitly calls `setup {}`
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["typst"] = { "typstyle" },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "typstyle",
        "tinymist",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tinymist = {
          settings = {
            formatterMode = "typstyle",
            exportPdf = "never",
            semanticTokens = "disable",
          },
        },
      },
    },
    keys = {
      {
        "<localleader>p",
        function()
          local client = vim.lsp.get_clients({ name = "tinymist" })[1]
          if client then
            client:exec_cmd({
              title = "pin",
              command = "tinymist.pinMain",
              arguments = { vim.api.nvim_buf_get_name(0) },
            })
          end
        end,
        desc = "Pin main file",
        ft = "typst",
      },
      {
        "<localleader>u",
        function()
          local client = vim.lsp.get_clients({ name = "tinymist" })[1]
          if client then
            client:exec_cmd({
              title = "unpin",
              command = "tinymist.pinMain",
              arguments = { vim.v.null },
            })
          end
        end,
        desc = "Unpin main file",
        ft = "typst",
      },
    },
  },
}
