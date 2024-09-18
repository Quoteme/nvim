-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

local function get_latex_equation()
  local ts = require("nvim-treesitter.ts_utils")
  local buf = vim.api.nvim_get_current_buf()
  local node = ts.get_node_at_cursor()
  while node do
    if node:type() == "latex_block" then
      local start_row, start_col, end_row, end_col = node:range()
      local latex = vim.treesitter.get_node_text(node, buf)
      return latex, start_row, start_col, end_row, end_col
    end
    node = node:parent()
  end
  return nil
end

map({ "n", "v" }, "<localleader>r", function()
  print(get_latex_equation())
end, { noremap = true, silent = true })
