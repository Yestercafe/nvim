local M = { "williamboman/mason-lspconfig.nvim" }

M.dependencies = { "williamboman/mason.nvim" }
M.config = function()
    require("mason").setup()
    require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "clangd", "rust_analyzer" },
    }
end

return M

