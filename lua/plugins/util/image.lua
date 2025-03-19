return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      image = {
        -- your image configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
    },
  },
  -- {
  --   "3rd/image.nvim",
  --   -- configure to use kitty
  --   -- only enable if the machine is not running NixOS
  --   enabled = false,
  --   config = function()
  --     require("image").setup({
  --       -- enable kitty integration
  --       backend = "kitty",
  --     })
  --   end,
  -- },
}
