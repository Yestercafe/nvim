local M = { "alvarosevilla95/luatab.nvim" }

M.dependencies = { "nvim-tree/nvim-web-devicons" }
M.init = function()
    print("hello")
    require("luatab").setup{}
end

return M

