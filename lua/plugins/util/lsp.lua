return {
  {
    enabled = false,
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
      require("tiny-inline-diagnostic").setup({
        options = {
          show_source = false,
        },
      })
      vim.diagnostic.config({ virtual_text = false })
    end,
  },
}
