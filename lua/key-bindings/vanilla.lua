local km = vim.keymap

-- enhancement of vanilla
km.set("v", "<", "<gv", { noremap = true })
km.set("v", ">", ">gv", { noremap = true })
-- TODO unwitty behavior
km.set("n", "<", "<<", { noremap = true })
km.set("n", ">", ">>", { noremap = true })
-- not working
-- km.set("n", "<Tab>", "<<", { noremap = true })
-- km.set("n", "<S-Tab>", ">>", { noremap = true })
-- km.set("v", "<Tab>", "<gv", { noremap = true })
-- km.set("v", "<S-Tab>", ">gv", { noremap = true })

km.set("n", "n", "nzz")
km.set("n", "N", "Nzz")

km.set({"n", "v"}, "k", [[v:count ? "k" : "gk"]], { noremap = true, expr = true })
km.set({"n", "v"}, "j", [[v:count ? "j" : "gj"]], { noremap = true, expr = true })
km.set({"n", "v"}, "K", "5k")
km.set({"n", "v"}, "J", "5j")
km.set({"n", "v"}, "U", "<C-u>")
km.set({"n", "v"}, "D", "<C-d>")
km.set({"n", "v"}, "H", "^")
km.set({"n", "v"}, "L", "$")

km.set("i", "<Esc><BS>", "<C-w>")

-- disable commands I don't need
km.set("n", "s", "<NOP>")

-- compatible with Emacs
km.set("i", "<C-g>", "<Esc>")
km.set("i", "<C-a>", "<home>")
km.set("i", "<C-e>", "<end>")
km.set("i", "<C-p>", "<up>")
km.set("i", "<C-n>", "<down>")
km.set("i", "<C-b>", "<left>")
km.set("i", "<C-f>", "<right>")
km.set({"n", "i", "v"}, "<M-x>", "<esc>:Cafe ")   -- custom stuffs

-- nvim-various-textobjs
km.set({'o', 'x'}, "a<leader>w", "<cmd>lua require('various-textobjs').subword('outer')<CR>")
km.set({'o', 'x'}, "i<leader>w", "<cmd>lua require('various-textobjs').subword('inner')<CR>")

-- no highlight
km.set('n', "<leader><CR>", "<cmd>nohl<CR>")

