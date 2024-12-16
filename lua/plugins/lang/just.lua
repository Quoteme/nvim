return {
  {
    "NoahTheDuke/vim-just",
    ft = { "just" },
    cond = function()
      return not vim.g.vscode
    end,
    keys = {
      {
        "<localleader>zM",
        function()
          -- select all `recipy_body` nodes from the current buffer
          local ts = require("nvim-treesitter")
          local buf = vim.api.nvim_get_current_buf()
          local root = ts.get_parser(buf):parse()[1]:root()
          local nodes = root:query("recipy_body")
          -- close the fold ad each node
          for _, node in pairs(nodes) do
            vim.cmd("normal! " .. node:range()[1] .. "zc")
          end
        end,
        desc = "Close all recipy bodies",
        ft = "just",
      },
    },
  },
}
