local M = { "m4xshen/smartcolumn.nvim" }

M.init = function()
    require('smartcolumn').setup {
        colorcolumn = {"80", "120"},
        disabled_filetypes = {"help", "text", "markdown"},
        scope = "file",
    }
end

return M

