local M = {}

M.setup = function()
    local imported = require("langs.imported")
    imported.config["clangd"].setup {
        capabilities = imported.caps
    }
end

return M

