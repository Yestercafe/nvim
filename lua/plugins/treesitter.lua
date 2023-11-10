local M = { "nvim-treesitter/nvim-treesitter" }

M.event = "VeryLazy"
M.build = function()
    local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
    ts_update()
end

return M

