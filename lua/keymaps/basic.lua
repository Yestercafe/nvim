local km = vim.keymap
local opt = { noremap = true }
function km_i(from, to)
  km.set('i', from, to, opt)
end
function km_n(from, to)
  km.set('n', from, to, opt)
end
function km_v(from, to)
  km.set('v', from, to, opt)
end

--
-- Basic
--
km_i('kj', '<Esc>')
km_i('<Esc><BS>', '<C-W>')

--
-- Tricks
--
km_n('<', '<<')
km_n('>', '>>')
km_v('<', '<gv')
km_v('>', '>gv')
km.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
km.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })
km_n('s', '<NOP>')
km_n('q:', '<NOP>')
km_n('n', 'nzz')
km_n('N', 'Nzz')

--
-- Windows
--
km_n('<leader>wv', '<cmd>vs<CR>')
km_n('<leader>ws', '<cmd>split<CR>')
km_n('<leader>wh', '<C-w>h')
km_n('<leader>wj', '<C-w>j')
km_n('<leader>wk', '<C-w>k')
km_n('<leader>wl', '<C-w>l')
km_n('<leader>w<down>', '<cmd>res +2<CR>')
km_n('<leader>w<up>', '<cmd>res -2<CR>')
km_n('<leader>w<left>', '<cmd>vertical resize-4<CR>')
km_n('<leader>w<right>', '<cmd>vertical resize+4<CR>')

--
-- Tabs
--
vim.cmd('nnoremap <leader>yy :tabe ')
km_n('<leader>yl', '<cmd>tabn<CR>')
km_n('<leader>yh', '<cmd>tabp<CR>')
km_n('<leader>yx', '<cmd>tabclose<CR>')
km_n('<leader>yr', '<cmd>tabrewind<CR>')

--
-- Files
--
km.set('c', 'w!!', '!suto tee % >/dev/null')
vim.cmd('nnoremap ff :e ')
km_n('<leader>fs', '<cmd>w<CR>')

--
-- Motion
--
km_n('J', ']}')
km_n('K', '[{')
km_n('H', '^')
km_n('L', '$')

--
-- Quit
--
km_n('<leader>q', '<cmd>q<CR>')
km_n('<leader>Q', '<cmd>qall<CR>')

--
-- Search
--
km_n('<leader>//', '<cmd>nohl<CR>')


--
-- Toggle
--
-- show invisible characters
vim.keymap.set('n', 'ti', '<CMD>set list!<CR>')
-- toggle indent length 2/4
vim.keymap.set('n', '<leader>tt', function()
  if vim.o.tabstop == 2 then
    set_indent_4()
  else
    set_indent_2()
  end
end)

