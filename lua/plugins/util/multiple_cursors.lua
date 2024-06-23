return {
  -- {
  --   "mg979/vim-visual-multi",
  -- },
  --
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    cond = not vim.g.vscode,
    dependencies = {
      'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
        mode = { 'v', 'n' },
        '<Leader>m',
        '<cmd>MCstart<cr>',
        desc = 'Create a selection for selected text or word under the cursor',
      },
    },
  }
}
