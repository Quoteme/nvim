return {
  {
    "3rd/image.nvim",
    -- configure to use kitty
    config = function()
      require("image").setup({
        -- enable kitty integration
        backend = "kitty",
      })
    end,
  },
}
