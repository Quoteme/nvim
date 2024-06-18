return {
  "s1n7ax/nvim-window-picker",
  name = "window-picker",
  event = "VeryLazy",
  version = "2.*",
  config = function()
    require("window-picker").setup({
      hint = "floating-big-letter",
    })
  end,
  keys = {
    { "<leader>wf", "<cmd>lua require('window-picker').pick_window()<CR>", desc = "Pick window" },
  },
}
