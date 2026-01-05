local dark = vim.o.background == "dark"
return {
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      doc = {
        inline = true,
        float = false,
      },
    },
    keys = {
      {
        "<leader>k",
        function()
          Snacks.image.hover()
        end,
        desc = "Show the image in a float",
        mode = "n",
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
