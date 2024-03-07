-- local M = { "alvarosevilla95/luatab.nvim" }
local M = { 'akinsho/bufferline.nvim' }

M.version = "*"
M.dependencies = { "nvim-tree/nvim-web-devicons" }
M.init = function()
    require("bufferline").setup{}
end

return M

