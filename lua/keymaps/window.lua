vim.keymap.set('n', '<leader>wv', '<CMD>set splitright<CR><CMD>vsplit<CR>')
vim.keymap.set('n', '<leader>wV', '<CMD>set nosplitright<CR><CMD>vsplit<CR>')
vim.keymap.set('n', '<leader>ws', '<CMD>set splitbelow<CR><CMD>split<CR>')
vim.keymap.set('n', '<leader>wS', '<CMD>set nosplitbelow<CR><CMD>split<CR>')

vim.keymap.set('n', '<leader>wh', '<C-w>h')
vim.keymap.set('n', '<leader>wj', '<C-w>j')
vim.keymap.set('n', '<leader>wk', '<C-w>k')
vim.keymap.set('n', '<leader>wl', '<C-w>l')

vim.keymap.set('n', '<up>', '<C-w>k')
vim.keymap.set('n', '<down>', '<C-w>j')
vim.keymap.set('n', '<left>', '<C-w>h')
vim.keymap.set('n', '<right>', '<C-w>l')

vim.keymap.set('n', '<leader>w+', '<CMD>res +2<CR>')
vim.keymap.set('n', '<leader>w=', '<CMD>res +2<CR>')
vim.keymap.set('n', '<leader>w-', '<CMD>res -2<CR>')
vim.keymap.set('n', '<leader>w<', '<CMD>vertical resize-4<CR>')
vim.keymap.set('n', '<leader>w>', '<CMD>vertical resize+4<CR>')

vim.keymap.set('n', '<S-up>', '<CMD>res +2<CR>')
vim.keymap.set('n', '<S-down>', '<CMD>res -2<CR>')
vim.keymap.set('n', '<S-left>', '<CMD>vertical resize-4<CR>')
vim.keymap.set('n', '<S-right>', '<CMD>vertical resize+4<CR>')

