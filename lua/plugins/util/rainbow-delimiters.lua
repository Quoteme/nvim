return {
  "HiPhish/rainbow-delimiters.nvim",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    local rb = require("rainbow-delimiters")

    -- Setup follows a modern Lua table structure
    require("rainbow-delimiters.setup").setup({
      strategy = {
        [""] = rb.strategy["global"], -- Default strategy
        vim = rb.strategy["local"], -- Use local strategy for Vim files
      },
      query = {
        [""] = "rainbow-delimiters", -- Default query
        lua = "rainbow-blocks", -- Special query for Lua
      },
      highlight = {
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterCyan",
      },
    })
  end,
}
