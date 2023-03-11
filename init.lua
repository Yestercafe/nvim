vim.g.mapleader = ' '

vim.keymap.set('i', 'kj', '<Esc>')
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true

require('plugins')
require('init-lsp')
require('init-tree')
require('keymaps/basic')

