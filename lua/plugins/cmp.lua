return {
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     "hrsh7th/cmp-nvim-lsp",
  --   },
  --   opts = function(_, opts)
  --     opts.sources = {
  --       { name = "nvim_lsp", priority = 15 },
  --       { name = "buffer", priority = 10 },
  --       { name = "fuzzy_path", priority = 5 },
  --     }
  --   end,
  -- },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = { "hrsh7th/cmp-nvim-lsp-signature-help" },
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     local cmp = require("cmp")
  --     opts.sources =
  --       cmp.config.sources(vim.list_extend(opts.sources, { { name = "nvim_lsp_signature_help", priority = 20 } }))
  --   end,
  -- },
  --
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      -- Define custom priorities for completion kinds
      local kind_priority = {
        Field = 1,
        Property = 1,
        Variable = 2,
        Function = 3,
        Method = 3,
        Keyword = 4,
        Snippet = 5,
        Text = 6,
      }

      local function custom_kind_comparator(entry1, entry2)
        local kind1 = cmp.lsp.CompletionItemKind[entry1:get_kind()]
        local kind2 = cmp.lsp.CompletionItemKind[entry2:get_kind()]

        local priority1 = kind_priority[kind1] or 100
        local priority2 = kind_priority[kind2] or 100

        if priority1 < priority2 then
          return true
        elseif priority1 > priority2 then
          return false
        else
          return nil -- continue to next comparator
        end
      end

      opts.sorting = {
        priority_weight = 2,
        comparators = {
          custom_kind_comparator,
          cmp.config.compare.score,
          cmp.config.compare.offset,
          cmp.config.compare.exact,
          cmp.config.compare.scopes,
          cmp.config.compare.sort_text,
          cmp.config.compare.length,
          cmp.config.compare.order,
        },
      }

      return opts
    end,
  },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        signature = {
          enabled = false, -- Disable Noice's signature help
        },
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.window = {
        completion = cmp.config.window.bordered(), -- optional, for a nice border
        documentation = cmp.config.window.bordered(), -- enable doc window with border
      }
      return opts
    end,
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   opts = {
  --     floating_window = true,
  --     floating_window_above_cur_line = true, -- place signature help above
  --     hint_enable = false, -- optional: turn off inline hints if you want
  --   },
  --   config = function(_, opts)
  --     require("lsp_signature").setup(opts)
  --   end,
  -- },
}
