return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-lua/popup.nvim",
      "nvim-telescope/telescope-media-files.nvim",
      "nvim-telekasten/calendar-vim",
      "nvim-telescope/telescope-symbols.nvim",
    },
    opts = {
      home = vim.fn.expand("~/zettelkasten"),
    },
    keys = {
      {
        mode = "n",
        "<Leader>z",
        "<cmd>Telekasten panel<cr>",
        desc = "Open Zettelkasten",
      },
      {
        mode = "n",
        "<Leader>zf",
        "<cmd>Telekasten find_notes<cr>",
        desc = "Find Notes",
      },
      {
        mode = "n",
        "<Leader>zg",
        "<cmd>Telekasten search_notes<cr>",
        desc = "Search Notes",
      },
      {
        mode = "n",
        "<Leader>zd",
        "<cmd>Telekasten goto_today<cr>",
        desc = "Go to Today",
      },
      {
        mode = "n",
        "<Leader>zz",
        "<cmd>Telekasten follow_link<cr>",
        desc = "Follow Link",
      },
      {
        mode = "n",
        "<Leader>zn",
        "<cmd>Telekasten new_note<cr>",
        desc = "New Note",
      },
      {
        mode = "n",
        "<Leader>zc",
        "<cmd>Telekasten show_calendar<cr>",
        desc = "Show Calendar",
      },
      {
        mode = "n",
        "<Leader>zb",
        "<cmd>Telekasten show_backlinks<cr>",
        desc = "Show Backlinks",
      },
      {
        mode = "n",
        "<Leader>zI",
        "<cmd>Telekasten insert_img_link<cr>",
        desc = "Insert Image Link",
      },
      {
        mode = "i",
        "[[",
        "<cmd>Telekasten insert_link<cr>",
        desc = "Insert Link",
      },
    },
  },
}
