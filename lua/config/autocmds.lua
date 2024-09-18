-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

function render_equations()
  print("Rendering equations")

  -- Get the start and end of the visible range in the buffer
  local start_row = vim.fn.line("w0") - 1 -- Tree-sitter is 0-indexed
  local end_row = vim.fn.line("w$") - 1

  -- Get the current buffer and parser
  local buf = vim.api.nvim_get_current_buf()
  local parser = vim.treesitter.get_parser(buf, "markdown_inline")
  local tree = parser:parse()[1]

  -- Get the root of the syntax tree
  local root = tree:root()

  -- Function to find latex_block nodes in visible range
  local function get_visible_latex_blocks()
    local query = vim.treesitter.query.parse(
      "markdown_inline",
      [[
    (latex_block) @latex_block
  ]]
    )

    local visible_nodes = {}

    -- Iterate over all matches of latex_block
    for _, captures, _ in query:iter_matches(root, buf, start_row, end_row) do
      local node = captures[1]
      table.insert(visible_nodes, node)
    end

    return visible_nodes
  end

  -- Get all latex_block nodes in the visible range
  local latex_blocks = get_visible_latex_blocks()
  print("Found " .. #latex_blocks .. " latex blocks")
  for _, block in ipairs(latex_blocks) do
    local start_row, start_col, end_row, end_col = block:range()
    -- get the latex content of the block (deliminated by start_row, end_row, start_col, end_col)
    local latex = vim.treesitter.get_node_text(block, buf)
    print("Latex block: " .. latex)
  end
end
