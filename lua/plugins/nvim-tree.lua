local M = { "nvim-tree/nvim-tree.lua" }

M.init = function()
    require("nvim-tree").setup {
        view = {
            float = {
                enable = false,
                quit_on_focus_loss = false,
            },
        },
    }
end

return M

