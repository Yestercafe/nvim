local wk = require("which-key")

-- prefix a leader
wk.register({
    f = {
        name = "+file",
        s = { "<CMD>w<CR>", "Save file" },
        f = { "<CMD>Telescope find_files<CR>", "Open file" },
        g = { "<CMD>Telescope live_grep<CR>", "Live grep" },
        d = { "<CMD>NvimTreeToggle<CR>", "Nvim tree" }
    },
    q = {
        name = "+quit",
        q = { "<CMD>q<CR>", "Quit one" },
        a = { "<CMD>qall<CR>", "Quit all" },
        ["!"] = { "<CMD>q!<CR>", "Quit without saving" },
    },
    w = {
        name = "+window",
        v = { "<CMD>sp<CR>", "Split vertically" },
        s = { "<CMD>vs<CR>", "Split horizonally" },
        o = { "<C-w>o", "Close other all" },
        ['-'] = { "<CMD>res -2<CR>", "Decrease height" },
        ['+'] = { "<CMD>res +2<CR>", "Increase height" },
        ['<'] = { "<CMD>vertical res -4<CR>", "Decrease width" },
        ['>'] = { "<CMD>vertical res +4<CR>", "Increase width" },
        ['='] = { "<C-w>=", "Average windows" },
        ['_'] = { "<C-w>_", "Max out height" },
        ['|'] = { "<C-w>_", "Max out width" },
        m = { "<C-w>_<C-w>|", "Maximize the window" },
        q = { "<C-w>q", "Close the window" },
        t = { "<CMD>tabe<CR>", "New tab" },
        T = { "<C-w>T", "As a new tab" },
        ['['] = { "<CMD>tabp<CR>", "Previous tab" },
        [']'] = { "<CMD>tabn<CR>", "Next tab" },
        r = { "<CMD>tabrewind<CR>", "Rewind the tab" },

        -- tmux-like bindings
        ['"'] = { "<CMD>sp<CR>", "Split vertically" },
        ['%'] = { "<CMD>vs<CR>", "Split horizonally" },

        -- Emacs-like bindings
        ['0'] = { "<C-w>q", "Close the window" },
        ['1'] = { "<C-w>o", "Close other all" },
        ['2'] = { "<CMD>sp<CR>", "Split vertically" },
        ['3'] = { "<CMD>vs<CR>", "Split horizonally" },
    },
    t = {
        name = "+toggle",
        h = { "<CMD>nohl<CR>", "Disable highlighting" },
        i = { "<CMD>set list!<CR>", "List chars" },
        d = {
            function()
                vim.o.background = vim.o.background == "light" and "dark" or "light"
            end,
            "Dark mode"
        },
        l = { "<CMD>Lazy<CR>", "Lazy" },
        m = { "<CMD>Mason<CR>", "Mason" },
        p = {
            function()
                if next(vim.lsp.get_active_clients()) == nil then
                    vim.cmd("LspStart")
                    print("LSP may start.")
                else
                    vim.cmd("LspStop")
                    print("LSP stopped.")
                end
            end,
            "Lsp server"
        }
    },
    b = {
        name = "+buffer",
        b = { "<CMD>Telescope buffers<CR>", "Buffers" }
    },
}, { prefix = "<leader>" })

-- prefix two leaders
wk.register({

}, { prefix = "<leader><leader>" })

-- no prefix
wk.register({
    ['['] = {
        t = { "<CMD>tabp<CR>", "Previous tab" },
        d = { vim.diagnostic.goto_prev, "Previous diagnostic" },
    },
    [']'] = {
        t = { "<CMD>tabn<CR>", "Next tab" },
        n = { vim.diagnostic.goto_next, "Next diagnostic" },
    },
})

