M = { 'chrisgrieser/nvim-spider' }

M.keys = {
    {
        '<leader>e',
        function()
            require('spider').motion('e')
        end,
        mode = {'n', 'o', 'x'}
    },
    {
        '<leader>w',
        function()
            require('spider').motion('w')
        end,
        mode = {'n', 'o', 'x'}
    },
    {
        '<leader>b',
        function()
            require('spider').motion('b')
        end,
        mode = {'n', 'o', 'x'}
    },
}

return M

