return {
  "michaelb/sniprun",
  branch = "master",

  build = "sh install.sh",
  -- do 'sh install.sh 1' if you want to force compile locally
  -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

  config = function()
    require("sniprun").setup({
      -- your options
    })
  end,
  keys = {
    {
      -- run `<PLUG>SnipRun` when pressing leader + r in visual mode
      "<leader>r",
      "<Plug>SnipRun<cr>",
      mode = "v",
      silent = true,
    },
  },
}
