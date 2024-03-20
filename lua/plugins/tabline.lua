-- local M = { "alvarosevilla95/luatab.nvim" }
local M = { 'akinsho/bufferline.nvim' }

M.version = "*"
M.dependencies = { "nvim-tree/nvim-web-devicons" }
M.init = function()
    require("bufferline").setup {
        options = {
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "NvimTree",
                    highlight = "Directory",
                    separator = true
                },
                {
                    filetype = "Outline",
                    text = "Outline",
                    -- highlight = "Directory",
                    separator = true
                }
            }
        }
    }
end

return M
