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

km_n('<C-h>', '<cmd>TmuxNavigateLeft<CR>')
km_n('<C-j>', '<cmd>TmuxNavigateDown<CR>')
km_n('<C-k>', '<cmd>TmuxNavigateUp<CR>')
km_n('<C-l>', '<cmd>TmuxNavigateRight<CR>')

