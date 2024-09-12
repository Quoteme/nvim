return {
  {
    "vscode-neovim/vscode-multi-cursor.nvim",
    event = "VeryLazy",
    cond = not not vim.g.vscode,
    opts = {},
    config = function()
      vim.keymap.set({ "n", "x", "i" }, "<C-n>", "mciw*<Cmd>nohl<CR>", { remap = true })
      vim.keymap.set({ "n", "x", "i" }, "<C-S-n>", "mciw#<Cmd>nohl<CR>", { remap = true })
      -- vim.keymap.set({ "n", "x", "i" }, "<C-d>", function()
      --   require("vscode-multi-cursor").addSelectionToNextFindMatch()
      -- end, { remap = true })
      -- vim.keymap.set({ "n", "x", "i" }, "<C-u>", function()
      --   require("vscode-multi-cursor").addSelectionToPreviousFindMatch()
      -- end, { remap = true })
      require("vscode-multi-cursor").setup()
    end,
  },
}
