local M = {}

M.setup = function()
    local imported = require("langs.imported")
    imported.config["LS_NAME"].setup {
        capabilities = imported.caps
    }
end

return M

