local M = { "windwp/nvim-autopairs" }

M.event = "InsertEnter"
M.init = function()
    require("nvim-autopairs").setup{}
end

return M

