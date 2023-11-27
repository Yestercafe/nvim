local M = {}

M.setup = function()
    local imported = require("langs.imported")
    M.lss = { "cmake" }
    for _, ls in ipairs(M.lss) do
        imported.config[ls].setup {
            capabilities = imported.caps
        }
    end
end

return M

