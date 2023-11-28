local M = {}

M.setup = function()
    local imported = require("langs.imported")
    M.lss = { "LS_NAME" }
    for _, ls in ipairs(M.lss) do
        imported.config[ls].setup {
            capabilities = imported.caps
        }
    end
end

M.dap_setup = function()
    local imported = require("langs.imported")
    local dap = imported.dap

    M.debuggers = { "DEBUGGER_NAME" }

end

return M

