return {
  {
    "3rd/image.nvim",
    enabled = false,
    -- configure to use kitty
    enabled = false,
    config = function()
      require("image").setup({
        -- enable kitty integration
        backend = "kitty",
      })
    end,
  },
}
