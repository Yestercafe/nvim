vim.o.listchars = 'extends:#,precedes:#,tab:▸ ,trail:▫,eol:¬'
vim.keymap.set('n', 'ti', '<CMD>set list!<CR>')
local function set_tab_2()
    vim.o.tabstop = 2
    vim.o.shiftwidth = 2
    vim.o.softtabstop = 2
    print('Tab width set to 2')
end

local function set_tab_4()
    vim.o.tabstop = 4
    vim.o.shiftwidth = 4
    vim.o.softtabstop = 4
    print('Tab width set to 4')
end

vim.keymap.set('n', '<leader>tt', function()
    if vim.o.tabstop == 2 then
        set_tab_4()
    else
        set_tab_2()
    end
end)
vim.keymap.set('n', '<leader>tT2', set_tab_2)
vim.keymap.set('n', '<leader>tT4', set_tab_4)

