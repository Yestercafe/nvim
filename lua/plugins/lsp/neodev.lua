local M = { "folke/neodev.nvim" }

M.event = "VeryLazy"
M.dependencies = { "neovim/nvim-lspconfig" }
M.config = function()
    local lspconfig = require('lspconfig')

    lspconfig.lua_ls.setup {
        settings = {
            Lua = {
                completion = {
                    callSnippet = "Replace"
                }
            }
        }
    }
end

M.init = function()
    require("neodev").setup{}
end

return M

