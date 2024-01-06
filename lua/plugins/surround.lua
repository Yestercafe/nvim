M = {
    "kylechui/nvim-surround",
}

M.version = "*"
M.event = "VeryLazy"
M.config = function()
    require("nvim-surround").setup{
    }
end

return M

