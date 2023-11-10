local M = { "folke/which-key.nvim" }
local o = vim.o

-- M.event = "VeryLazy"
M.config = function()
    o.timeout = true
    o.timeoutlen = 500
    require('key-bindings.which-key')
end

M.init = function()
    require("which-key").setup()
end

return M

