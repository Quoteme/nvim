return {
  { "lewis6991/satellite.nvim" },
  {
    "Julian/lean.nvim",
    ft = "lean",
    requires = { "lewis6991/satellite.nvim" },
    opts = {
      mappings = {},
      infoview = {
        autoopen = false,
      },
    },
    -- stolen from https://github.com/Julian/lean.nvim/blob/c0a46bbe84c9d5e32e8ef01e6875c5abaeb19a37/lua/lean/init.lua#L20
    keys = {
      {
        "<LocalLeader>i",
        "<Cmd>LeanInfoviewToggle<CR>",
        desc = "Toggle showing the infoview.",
      },
      {
        "<LocalLeader>p",
        "<Cmd>LeanInfoviewPinTogglePause<CR>",
        desc = "Toggle pausing infoview pins.",
      },
      {
        "<LocalLeader>x",
        "<Cmd>LeanInfoviewAddPin<CR>",
        desc = "Add an infoview pin.",
      },
      {
        "<LocalLeader>c",
        "<Cmd>LeanInfoviewClearPins<CR>",
        desc = "Clear all infoview pins.",
      },
      {
        "<LocalLeader>dx",
        "<Cmd>LeanInfoviewSetDiffPin<CR>",
        desc = "Set an infoview diff pin.",
      },
      {
        "<LocalLeader>dc",
        "<Cmd>LeanInfoviewClearDiffPin<CR>",
        desc = "Clear all infoview diff pins.",
      },
      {
        "<LocalLeader>dd",
        "<Cmd>LeanInfoviewToggleAutoDiffPin<CR>",
        desc = 'Toggle "auto-diff" mode in the infoview.',
      },
      {
        "<LocalLeader>dt",
        "<Cmd>LeanInfoviewToggleNoClearAutoDiffPin<CR>",
        desc = 'Toggle "auto-diff" mode and clear any existing pins.',
      },
      {
        "<LocalLeader>w",
        "<Cmd>LeanInfoviewEnableWidgets<CR>",
        desc = "Enable infoview widgets.",
      },
      {
        "<LocalLeader>W",
        "<Cmd>LeanInfoviewDisableWidgets<CR>",
        desc = "Disable infoview widgets.",
      },
      {
        "<LocalLeader>v",
        "<Cmd>LeanInfoviewViewOptions<CR>",
        { desc = "Change the infoview view options." },
      },
      {
        "<LocalLeader><Tab>",
        "<Cmd>LeanGotoInfoview<CR>",
        desc = "Jump to the current infoview.",
      },
      {
        "<LocalLeader>\\",
        "<Cmd>LeanAbbreviationsReverseLookup<CR>",
        desc = "Show how to type the unicode character under the cursor.",
      },
      {
        "<LocalLeader>r",
        "<Cmd>LeanRestartFile<CR>",
        desc = "Restart the Lean server for the current file.",
      },
    },
  },
}
