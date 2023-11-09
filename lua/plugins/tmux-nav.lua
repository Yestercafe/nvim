local M = { "christoomey/vim-tmux-navigator" }

M.config = function()
    require("key-bindings.tmux-nav")
end

return M

