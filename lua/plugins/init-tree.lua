-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "name",
    view = {
        float = {
            enable = true,
            quit_on_focus_loss = true,
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set('n', '<leader>fd', '<Cmd>NvimTreeToggle<CR>')

