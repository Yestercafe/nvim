local M = { "akinsho/toggleterm.nvim" }

M.version = "*"
M.config = function()
    require("toggleterm").setup {
        open_mapping = [[<C-t>]],
        autochdir = true,
        direction = "horizontal",
    }
end

return M

