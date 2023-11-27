local M = { "nvimdev/dashboard-nvim" }

M.dependencies = { "nvim-tree/nvim-web-devicons" }
M.event = "VimEnter"
M.config = function()
    local db = require("dashboard")
    db.setup {
        theme = 'hyper',
    }
end

return M

