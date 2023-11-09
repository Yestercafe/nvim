local M = { "NTBBloodbath/doom-one.nvim" }
local g = vim.g

M.config = function()
    g.doom_one_cursor_coloring = true
    g.doom_one_italic_comments = true
end
M.init = function()
    vim.cmd.colorscheme("doom-one")
end

return M

