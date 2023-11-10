local M = { "Yestercafe/smartcolumn.nvim" }

M.branch = "main"
M.init = function()
    require('smartcolumn').setup {
        colorcolumn = {"80", "120"},
        disabled_filetypes = {"help", "text", "markdown"},
        scope = "file",
        active = false,
    }
end

return M

