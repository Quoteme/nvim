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

--- Render a LaTeX equation to an image using `mathimg`
--- @param equation string
--- @param start_row number
--- @param start_col number
--- @param end_row number
--- @param end_col number
local function render_equation(equation, start_row, start_col, end_row, end_col)
  local api = require("image")
  local image_id = "render_equation"
  api:clear(image_id)
  -- local imgfile = vim.fn.tempname() .. ".png"
  local imgfile = "/tmp/equation.png"
  local width = (end_col - start_col) * 8
  local height = (end_row - start_row) * 14
  -- replace all $ with \$
  local escapedEquation = string.gsub(equation, "%$", "\\$")
  local cmd = {
    "mathimg",
    '--packages="amsmath"',
    "--png",
    '--width="' .. width .. '"',
    '--height="' .. height .. '"',
    '--output="' .. imgfile .. '"',
    '"' .. escapedEquation .. '"',
  }
  -- run mathimg to render the equation
  local out = vim.fn.system(cmd)
  print(table.concat(cmd, " "))
  -- wait while the image is being rendered
  while not vim.fn.filereadable(imgfile) do
    vim.fn.system("sleep 0.1")
  end
  print("Image rendered at " .. imgfile)
  print("content: " .. out)
  -- print(out)
  -- print(imgfile)
  local image = api.from_file(imgfile, {
    id = image_id,
    width = width,
    height = height,
  })
  image:render()
end

-- map({ "n", "v" }, "<localleader>r", function()
--   local equation, start_row, start_col, end_row, end_col = get_latex_equation()
--   if equation then
--     render_equation(equation, start_row, start_col, end_row, end_col)
--   end
-- end, { noremap = true, silent = true })
