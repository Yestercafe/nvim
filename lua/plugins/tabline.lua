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
                    separator = true -- use a "true" to enable the default, or set your own character
                }
            }
        }
    }
end

return M
