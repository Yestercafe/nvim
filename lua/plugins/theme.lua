local M = { "catppuccin/nvim" }
local g = vim.g

M.init = function()
    vim.cmd.colorscheme("catppuccin-mocha")
end

return M

