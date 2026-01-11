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
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("User", {
  pattern = "TSUpdate",
  callback = function()
    require("nvim-treesitter.parsers").typst = {
      install_info = {
        url = "https://github.com/Quoteme/tree-sitter-typst",
        -- revision = HEAD,
        branch = "add-utf8-delimiters",
        -- location = "parser", -- only needed if the parser is in subdirectory of a "monorepo"
        -- generate = true, -- only needed if repo does not contain pre-generated `src/parser.c`
        -- generate_from_json = false, -- only needed if repo does not contain `src/grammar.json` either
        -- queries = "queries/neovim", -- also install queries from given directory
      },
    }
  end,
})
