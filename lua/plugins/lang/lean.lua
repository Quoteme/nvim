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
        ft = "lean",
      },
      {
        "<LocalLeader>p",
        "<Cmd>LeanInfoviewPinTogglePause<CR>",
        desc = "Toggle pausing infoview pins.",
        ft = "lean",
      },
      {
        "<LocalLeader>x",
        "<Cmd>LeanInfoviewAddPin<CR>",
        desc = "Add an infoview pin.",
        ft = "lean",
      },
      {
        "<LocalLeader>c",
        "<Cmd>LeanInfoviewClearPins<CR>",
        desc = "Clear all infoview pins.",
        ft = "lean",
      },
      {
        "<LocalLeader>dx",
        "<Cmd>LeanInfoviewSetDiffPin<CR>",
        desc = "Set an infoview diff pin.",
        ft = "lean",
      },
      {
        "<LocalLeader>dc",
        "<Cmd>LeanInfoviewClearDiffPin<CR>",
        desc = "Clear all infoview diff pins.",
        ft = "lean",
      },
      {
        "<LocalLeader>dd",
        "<Cmd>LeanInfoviewToggleAutoDiffPin<CR>",
        desc = 'Toggle "auto-diff" mode in the infoview.',
        ft = "lean",
      },
      {
        "<LocalLeader>dt",
        "<Cmd>LeanInfoviewToggleNoClearAutoDiffPin<CR>",
        desc = 'Toggle "auto-diff" mode and clear any existing pins.',
        ft = "lean",
      },
      {
        "<LocalLeader>w",
        "<Cmd>LeanInfoviewEnableWidgets<CR>",
        desc = "Enable infoview widgets.",
        ft = "lean",
      },
      {
        "<LocalLeader>W",
        "<Cmd>LeanInfoviewDisableWidgets<CR>",
        desc = "Disable infoview widgets.",
        ft = "lean",
      },
      {
        "<LocalLeader>v",
        "<Cmd>LeanInfoviewViewOptions<CR>",
        desc = "Change the infoview view options.",
        ft = "lean",
      },
      {
        "<LocalLeader><Tab>",
        "<Cmd>LeanGotoInfoview<CR>",
        desc = "Jump to the current infoview.",
        ft = "lean",
      },
      {
        "<LocalLeader>\\",
        "<Cmd>LeanAbbreviationsReverseLookup<CR>",
        desc = "Show how to type the unicode character under the cursor.",
        ft = "lean",
      },
      {
        "<LocalLeader>r",
        "<Cmd>LeanRestartFile<CR>",
        desc = "Restart the Lean server for the current file.",
        ft = "lean",
      },
    },
  },
}
