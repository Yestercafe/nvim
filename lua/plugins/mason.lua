local M = { "williamboman/mason-lspconfig.nvim" }

M.dependencies = { "williamboman/mason.nvim" }
M.config = function()
    require("mason").setup()
end

return M

