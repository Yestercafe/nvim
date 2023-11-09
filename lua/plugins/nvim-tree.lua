local M = { "nvim-tree/nvim-tree.lua" }

M.init = function()
    require("nvim-tree").setup {
        view = {
            float = {
                enable = true,
            },
        },
    }
end

return M

