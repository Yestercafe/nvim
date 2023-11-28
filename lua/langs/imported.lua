local M = {}

M.config = require("lspconfig")
M.caps = require('cmp_nvim_lsp').default_capabilities()
M.dap = require("dap")

return M

