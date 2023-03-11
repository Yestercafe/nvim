vim.keymap.set('n', '<leader>fs', '<CMD>w<CR>')
vim.keymap.set('n', '<leader>qq', '<CMD>q<CR>')

vim.keymap.set('n', '<leader>t2', function()
    vim.o.tabstop = 2
    vim.o.shiftwidth = 2
    vim.o.softtabstop = 2
end)

vim.keymap.set('n', '<leader>t4', function()
    vim.o.tabstop = 4
    vim.o.shiftwidth = 4
    vim.o.softtabstop = 4
end)

