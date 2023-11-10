local M = { "neovim/nvim-lspconfig" }

M.dependencies = {
    "j-hui/fidget.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "glepnir/lspsaga.nvim",
    "onsails/lspkind.nvim",
}

M.init = function()
    local lspconfig = require("lspconfig")
end

return M

