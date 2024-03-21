-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- ESC
map("i", "kj", "<ESC>")

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