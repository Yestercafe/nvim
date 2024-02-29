local M = { "akinsho/toggleterm.nvim" }

M.version = "*"
M.config = function()
    require("toggleterm").setup {
        size = function(term)
            if term.direction == "horizontal" then
                return 0.4 * vim.o.lines
            elseif term.direction == "vertical" then
                return 0.4 * vim.o.columns
            end
        end,
        open_mapping = [[<C-t>]],
        autochdir = true,
        direction = "horizontal",
    }
end

return M

