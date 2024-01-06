local wk = require("which-key")

-- prefix a leader
wk.register({
    f = {
        name = "+file",
        s = { "<CMD>w<CR>", "Save file" },
        f = { "<CMD>Telescope find_files cwd=.<CR>", "Open file" },
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
        },
        c = { require("smartcolumn").toggle_active, "Smart column" },
        a = { require("dapui").toggle, "Dap UI" }
    },
    b = {
        name = "+buffer",
        b = { "<CMD>Telescope buffers<CR>", "Buffers" }
    },
    d = {
        name = "+dap",
        b = { require("dap").toggle_breakpoint, "Toggle breakpoing" },
        c = {
            function()
                require("dap").continue()
                require("dapui").open()
            end,
            "Continue"
        },
        o = { require("dap").step_over, "Step over" },
        i = { require("dap").step_into, "Step into" },
        u = { require("dap").step_out, "Step out" },
        [';'] = { require("dap").repl.open, "REPL open" },
        s = {
            function()
                require("dap").close()
                require("dapui").close()
            end,
            "Stop"
        },
        -- S = { require("dap").terminate, "Terminate" },
        r = { require("dap").restart, "Restart" },
    },
}, { prefix = "<leader>" })

-- prefix two leaders
wk.register({
    v = {
        name = "+neovide",
        ['-'] = {
            function()
                local neovide = require("extensions.neovide")
                if neovide.is_neovide then
                    neovide.decrease_font_size(1).apply_font_size()
                else
                    print("Not Neovide!")
                end
            end, "Decrease font size"
        },
        ['='] = {
            function()
                local neovide = require("extensions.neovide")
                if neovide.is_neovide then
                    neovide.increase_font_size(1).apply_font_size()
                else
                    print("Not Neovide!")
                end
            end, "Increase font size"
        },
        ['0'] = {
            function()
                local neovide = require("extensions.neovide")
                if neovide.is_neovide then
                    neovide.default_font_size().apply_font_size()
                else
                    print("Not Neovide!")
                end
            end, "Default font size"
        },
        d = {
            function()
                local neovide = require("extensions.neovide")
                if neovide.is_neovide then
                    if neovide.is_demo_mode then
                        neovide.decrease_font_size(10).apply_font_size()
                    else
                        neovide.increase_font_size(10).apply_font_size()
                    end
                    neovide.is_demo_mode = not neovide.is_demo_mode
                else
                    print("Not Neovide!")
                end
            end, "Demo mode"
        }
    }
}, { prefix = "<leader><leader>" })

-- no prefix
wk.register({
    ['['] = {
        t = { "<CMD>tabp<CR>", "Previous tab" },
        d = { vim.diagnostic.goto_prev, "Previous diagnostic" },
    },
    [']'] = {
        t = { "<CMD>tabn<CR>", "Next tab" },
        d = { vim.diagnostic.goto_next, "Next diagnostic" },
    },
    g = {
        h = { vim.lsp.buf.hover, "LSP: hover" },
        d = { "<CMD>vs<CR><cmd>lua vim.lsp.buf.definition()<CR>", "LSP: peek definition" },
        D = { vim.lsp.buf.definition, "LSP: go to definition" },
        i = { "<CMD>vs<CR><cmd>lua vim.lsp.buf.implementation()<CR>", "LSP: peek implementation" },
        I = { vim.lsp.buf.implementation, "LSP: go to implementation" },
        t = { vim.lsp.buf.type_definition, "LSP: go to type definition" },
        H = { vim.lsp.buf.signature_help, "LSP: signature help" },
        r = { vim.lsp.buf.references, "LSP: get references" },
        ['.'] = { vim.lsp.buf.code_action, "LSP: code action" },
    },
    s = {
        name = "+search",
        w = { '<CMD>HopWordCurrentLine<CR>', 'Any word' },
        s = { '<CMD>HopWord<CR>', 'Any word' },
        l = { '<CMD>HopLine<CR>', 'Any line' },
        a = { '<CMD>HopAnywhere<CR>', 'Anywhere' },
        f = { '<CMD>HopChar1<CR>', '1 char' },
        F = { '<CMD>HopChar2<CR>', '2 chars' },
    },
})

