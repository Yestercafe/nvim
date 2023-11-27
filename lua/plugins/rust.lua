local M = { "simrat39/rust-tools.nvim" }

M.dependencies = { "neovim/nvim-lspconfig" }

M.init = function()
    local rt = require("rust-tools")
    require("rust-tools").setup {
        server = {
            on_attach = function(_, buf)
                vim.keymap.set("n", "<leader>gh", rt.hover_actions.hover_actions, { buffer = buf })
                vim.keymap.set("n", "<leader>g.", rt.code_action_group.code_action_group, { buffer = buf })
            end,
        },
        tools = {
            inlay_hints = {
                auto = false,     -- use lsp-inlayhints instead
            }
        },
    }
end

return M

