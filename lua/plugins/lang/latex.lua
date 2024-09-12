return {
  {
    "jbyuki/nabla.nvim",
    keys = {
      {
        "<leader>np",
        function()
          require("nabla").popup()
        end,
        desc = "Preview: latex",
      },
      {
        "<leader>nv",
        function()
          require("nabla").toggle_virt({
            autogen = true,
            silent = true,
          })
        end,
        desc = "Preview: latex global toggle",
      },
    },
  },
}
