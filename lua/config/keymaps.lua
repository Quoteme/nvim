-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- map({ "n", "x" }, "gS", "<cmd>FzfLua lsp_document_symbols<CR>", { desc = "Document Symbols" })
-- map({ "n", "x" }, "gR", "<cmd>FzfLua lsp_references<CR>", { desc = "Document Symbols" })
map({ "n", "x" }, "g<", "<cmd>FzfLua lsp_incoming_calls<CR>", { desc = "Incomping calls" })
map({ "n", "x" }, "g>", "<cmd>FzfLua lsp_outgoing_calls<CR>", { desc = "Outgoing calls" })
map({ "n", "v", "t" }, "<C-ö>", function()
  Snacks.terminal()
end, { desc = "Toggle floating terminal" })
