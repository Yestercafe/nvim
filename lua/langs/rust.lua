local M = {}

M.setup = function()
    local imported = require("langs.imported")
    M.lss = { "rust_analyzer" }
    for _, ls in ipairs(M.lss) do
        imported.config[ls].setup {
            capabilities = imported.caps
        }
    end
end

M.dap_setup = function()
end

return M

