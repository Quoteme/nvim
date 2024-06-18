if vim.g.vscode then
  -- VSCode extension
  vim.api.nvim_set_hl(0, "QuickScopePrimary", {
    fg = "#afff5f",
    underline = true,
    ctermfg = 155,
    cterm = { underline = true },
  })
  vim.api.nvim_set_hl(0, "QuickScopeSecondary", {
    fg = "#5fffff",
    underline = true,
    ctermfg = 81,
    cterm = { underline = true },
  })

  vim.api.nvim_set_hl(0, "OperatorSandwichBuns", {
    fg = "#aa91a0",
    underline = true,
    ctermfg = 172,
    cterm = { underline = true },
  })

  vim.api.nvim_set_hl(0, "OperatorSandwichChange", {
    fg = "#edc41f",
    underline = true,
    ctermfg = "yellow",
    cterm = { underline = true },
  })

  vim.api.nvim_set_hl(0, "OperatorSandwichAdd", {
    bg = "#b1fa87",
    ctermbg = "green",
  })

  vim.api.nvim_set_hl(0, "OperatorSandwichDelete", {
    bg = "#cf5963",
    ctermbg = "red",
  })

  -- Setting 'gc' mappings for various modes
  vim.api.nvim_set_keymap("x", "gc", "<Plug>VSCodeCommentary", { noremap = false })
  vim.api.nvim_set_keymap("n", "gc", "<Plug>VSCodeCommentary", { noremap = false })
  vim.api.nvim_set_keymap("o", "gc", "<Plug>VSCodeCommentary", { noremap = false })

  -- Setting 'gcc' mapping for normal mode
  vim.api.nvim_set_keymap("n", "gcc", "<Plug>VSCodeCommentaryLine", { noremap = false })
else
  -- ordinary Neovim
end
