return {
  "mrjones2014/smart-splits.nvim",
  keys = {
    -- recommended mappings
    -- resizing splits
    -- these keymaps will also accept a range,
    -- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
    {
      "<A-h>",
      function()
        require("smart-splits").resize_left()
      end,
      desc = "Split: Resize left",
    },
    {
      "<A-j>",
      function()
        require("smart-splits").resize_down()
      end,
      desc = "Split: Resize down",
    },
    {
      "<A-k>",
      function()
        require("smart-splits").resize_up()
      end,
      desc = "Split: Resize up",
    },
    {
      "<A-l>",
      function()
        require("smart-splits").resize_right()
      end,
      desc = "Split: Resize right",
    },
    -- moving between splits
    {
      "<C-h>",
      function()
        require("smart-splits").move_cursor_left()
      end,
      desc = "Split: Move cursor left",
    },
    {
      "<C-j>",
      function()
        require("smart-splits").move_cursor_down()
      end,
      desc = "Split: Move cursor down",
    },
    {
      "<C-k>",
      function()
        require("smart-splits").move_cursor_up()
      end,
      desc = "Split: Move cursor up",
    },
    {
      "<C-l>",
      function()
        require("smart-splits").move_cursor_right()
      end,
      desc = "Split: Move cursor right",
    },
    -- swapping buffers between windows
    {
      "<leader><leader>h",
      function()
        require("smart-splits").swap_buf_left()
      end,
      desc = "Split: Swap buffer left",
    },
    {
      "<leader><leader>j",
      function()
        require("smart-splits").swap_buf_down()
      end,
      desc = "Split: Swap buffer down",
    },
    {
      "<leader><leader>k",
      function()
        require("smart-splits").swap_buf_up()
      end,
      desc = "Split: Swap buffer up",
    },
    {
      "<leader><leader>l",
      function()
        require("smart-splits").swap_buf_right()
      end,
      desc = "Split: Swap buffer right",
    },
  },
}
