return {
  "vscode-neovim/vscode-multi-cursor.nvim",
  event = "VeryLazy",
  cond = not not vim.g.vscode,
  opts = {},
  config = function()
    vim.keymap.set({ "n", "x", "i" }, '<C-d>', 'mciw*<Cmd>nohl<CR>', { remap = true })
    vim.keymap.set({ "n", "x", "i" }, '<C-u>', 'mciw#<Cmd>nohl<CR>', { remap = true })
    -- vim.keymap.set({ "n", "x", "i" }, "<C-d>", function()
    --   require("vscode-multi-cursor").addSelectionToNextFindMatch()
    -- end, { remap = true })
    -- vim.keymap.set({ "n", "x", "i" }, "<C-u>", function()
    --   require("vscode-multi-cursor").addSelectionToPreviousFindMatch()
    -- end, { remap = true })
    require("vscode-multi-cursor").setup()
  end,
}
