-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- ESC
-- map("i", "kj", "<ESC>")

-- Motion
unmap("n", "H")
unmap("n", "L")
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")

-- Alt
map("i", "<esc><bs>", "<C-w>")

-- Clear search
map("n", "<leader><cr>", "<cmd>nohl<cr>", { desc = "Clear search" })

-- Move to window
unmap("n", "<C-h>")
unmap("n", "<C-j>")
unmap("n", "<C-k>")
unmap("n", "<C-l>")
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to right window", remap = true })

-- Save file
map("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })

-- LSP hover
map("n", "gh", vim.lsp.buf.hover, { desc = "Hover" })

-- Split
map("n", "<leader>w2", ":sp<cr>", { desc = "Split" })
map("n", "<leader>w3", ":vs<cr>", { desc = "Vsplit" })

-- LSP restart
map("n", "<leader>cL", "<cmd>LspRestart<cr>", { desc = "Reload LSP" })
map("n", "<leader>cp", "<cmd>LspStop<cr>", { desc = "Stop LSP" })
map("n", "<leader>ci", "<cmd>LspInfo<cr>", { desc = "LSP Info" })

