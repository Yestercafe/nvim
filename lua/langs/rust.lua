local M = {}

M.setup = function()
    local imported = require("langs.imported")
    imported.config["rust_analyzer"].setup {
        capabilities = imported.caps
    }
end

return M

