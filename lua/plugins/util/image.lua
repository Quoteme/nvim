return {
  {
    "3rd/image.nvim",
    -- configure to use kitty
    -- only enable if the machine is not running NixOS
    enabled = false,
    config = function()
      require("image").setup({
        -- enable kitty integration
        backend = "kitty",
      })
    end,
  },
}
