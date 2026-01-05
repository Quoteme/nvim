-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function set_snacks_highlight()
  if vim.o.background == "dark" then
    vim.api.nvim_set_hl(0, "SnacksImageMath", {
      fg = "#ababab", -- soft yellow
      bg = "#1e1e1e",
      italic = false,
    })
  else
    vim.api.nvim_set_hl(0, "SnacksImageMath", {
      fg = "#000000", -- dark brown
      bg = "#ffffff",
      italic = false,
    })
  end
end

-- call it at startup
set_snacks_highlight()
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_snacks_highlight,
})
