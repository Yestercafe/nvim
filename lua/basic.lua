local o = vim.o

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
o.list = false
o.visualbell = true
o.errorbells = false
o.t_vb = ''
o.mouse = 'a'
vim.o.listchars = 'extends:#,precedes:#,tab:▸ ,trail:▫,eol:¬'

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.smartindent = true

o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

