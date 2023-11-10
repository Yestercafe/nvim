local M = { "nvim-lualine/lualine.nvim" }

M.dependencies = { "nvim-tree/nvim-web-devicons" }
M.config = function()
    require("lualine").setup {
        options = {
            icons_enabled = true,
            theme = "auto",
        },
        sections = {
            lualine_b = {
                "branch",
                "diff",
                {
                    "diagnostics",
                    sources = { "nvim_lsp", "nvim_diagnostic" },
                },
            },
        },
    }
end

return M

