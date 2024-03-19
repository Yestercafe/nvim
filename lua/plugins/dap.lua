local M = { "rcarriga/nvim-dap-ui" }

M.dependencies = {
    { "mfussenegger/nvim-dap", dependencies = 'nvim-neotest/nvim-nio' }
}
M.config = function()
    local langs = require("use-langs")

    for _, lang in ipairs(langs) do
        local lang_m = require("langs." .. lang)
        lang_m.dap_setup()
    end
end

M.init = function()
    local dapui = require("dapui")
    dapui.setup()
end

return M
