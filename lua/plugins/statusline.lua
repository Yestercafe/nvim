local M = { "nvim-lualine/lualine.nvim" }

M.dependencies = { "nvim-tree/nvim-web-devicons" }
M.config = function()
    require("lualine").setup {
        options = {
            icons_enabled = true,
            theme = "auto",
        }
    }
end

return M

