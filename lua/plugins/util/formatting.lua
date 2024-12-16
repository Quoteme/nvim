return {
  {
    "AckslD/nvim-trevJ.lua",
    keys = {
      {
        "<leader>cj",
        function()
          require("trevj").format_at_cursor()
        end,
        desc = "Unline arguments",
      },
    },
  },
}
