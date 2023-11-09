local km = vim.keymap

-- enhancement of vanilla
km.set("n", "<", "<<")
km.set("n", ">", ">>")
km.set("v", "<", "<gv")
km.set("v", ">", ">gv")

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
km.set({"n", "i", "v"}, "<C-g>", "<Esc>")
km.set({"n", "i", "v"}, "<C-a>", "^")
km.set({"n", "i", "v"}, "<C-e>", "$")
km.set({"n", "i", "v"}, "<C-p>", "<up>")
km.set({"n", "i", "v"}, "<C-n>", "<down>")
km.set({"n", "i", "v"}, "<C-b>", "<left>")      -- use C-u instead
km.set({"n", "i", "v"}, "<C-f>", "<right>")     -- use C-d instead
km.set({"n", "i", "v"}, "<M-b>", "b")
km.set({"n", "i", "v"}, "<M-f>", "w")
km.set({"n", "i", "v"}, "<M-x>", "<esc>:")

