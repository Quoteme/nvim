return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },
  {
    "nvim-neotest/neotest",
    dependencies = { "sidlatau/neotest-dart" },
    opts = { adapters = { ["neotest-dart"] = {
      use_lsp = true,
    } } },
  },
}
