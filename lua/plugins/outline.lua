local M = { 'hedyhli/outline.nvim' }

M.lazy = true
M.cmd = { 'Outline', 'OutlineOpen' }
M.config = function()
    require('outline').setup{}
end

return M

