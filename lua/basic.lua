local g = vim.g
local o = vim.o
local km = vim.keymap

g.mapleader = " "

km.set('i', 'kj', '<Esc>')

o.compatible = false
o.backup = false
o.swapfile = false

o.termguicolors = true
o.number = true
o.relativenumber = true
o.cursorline = true
o.wrap = true
o.showcmd = true
o.wildmenu = true
o.title = true
o.scrolloff = 5
o.foldmethod = 'indent'
o.foldlevel = 99
o.autochdir = true
o.backspace = 'indent,eol,start'
o.visualbell = true
o.errorbells = false
-- o.t_vb = ''
o.mouse = 'a'
o.list = false
o.listchars = 'extends:#,precedes:#,tab:▸ ,trail:▫,eol:¬'

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.smartindent = true

o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.scl = "yes"

o.fileencodings="utf-8,gb18030,gbk,gb2312"

require("extensions.neovide")

