return {
  {
    "nvim-mini/mini.splitjoin",
    mappings = {
      join = "gJ",
    },
    config = function(_, opts)
      require("mini.splitjoin").setup(opts)
    end,
  },
  {
    "nvim-mini/mini.align",
    version = false,
    mappings = {
      start = "ga",
      start_with_preview = "gA",
    },
    config = function(_, opts)
      require("mini.align").setup(opts)
    end,
  },
}
