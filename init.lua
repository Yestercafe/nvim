-- Minimal Neovim config (nvim 0.12.x)
-- 基础选项 ------------------------------------------------------------------
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true          -- 行号
vim.opt.relativenumber = true  -- 相对行号
vim.opt.mouse = 'a'            -- 鼠标支持
vim.opt.swapfile = false       -- 不要 swap 文件
vim.opt.termguicolors = true   -- 真彩色
vim.opt.signcolumn = 'yes'     -- 预留符号列，避免跳变
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.clipboard = 'unnamedplus' -- 与系统剪贴板共享

-- 插件管理: vim.pack (Neovim 0.12 原生) --------------------------------------
-- 插件安装到 ~/.local/share/nvim/site/pack/core/opt/
-- 状态记录在 nvim-pack-lock.json（建议纳入版本控制）
vim.pack.add({
  -- 文件管理器: oil.nvim，跟随 2.x 的最新 semver 版本
  -- （'^2.0' 表示 >=2.0.0 且 <3.0.0；'2.0' 则只会匹配 2.0.x）
  {
    src = 'https://github.com/stevearc/oil.nvim',
    version = vim.version.range('^2.0'),
  },
  -- 模糊查找: mini.pick，跟随 0.x 的最新版本
  {
    src = 'https://github.com/echasnovski/mini.pick',
    version = vim.version.range('>=0.14'),
  },
  -- 状态栏: mini.statusline，跟随 0.x 的最新版本
  {
    src = 'https://github.com/echasnovski/mini.statusline',
    version = vim.version.range('>=0.14'),
  },
  -- 快速跳转: flash.nvim（leap 的继承者），跟随 2.x 的最新版本
  {
    src = 'https://github.com/folke/flash.nvim',
    version = vim.version.range('^2.0'),
  },
  -- 补全: blink.cmp（nvim-cmp 的继任者），跟随 1.x
  {
    src = 'https://github.com/Saghen/blink.cmp',
    version = vim.version.range('^1.0'),
  },
})

-- 文件管理: oil -----------------------------------------------------------------
-- oil 把目录当作 buffer 编辑，替代 netrw
require('oil').setup({
  default_file_explorer = true, -- 打开目录时用 oil 而非 netrw
  view_options = {
    show_hidden = true,         -- 显示隐藏文件
  },
})

-- 模糊查找: mini.pick ----------------------------------------------------------
-- 自带模糊匹配引擎；rg/fd/git 只作为候选来源（可选）
require('mini.pick').setup()

local builtin = require('mini.pick').builtin
vim.keymap.set('n', '<leader>ff', builtin.files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fg', builtin.grep_live, { desc = 'Live grep' })

-- 状态栏: mini.statusline -------------------------------------------------------
-- 自带 mode/LSP/诊断信息，零配置
vim.opt.laststatus = 3 -- 全局状态栏（每窗口一条）
require('mini.statusline').setup()

-- 快速跳转: flash.nvim -----------------------------------------------------------
-- 屏幕上任意可见位置，两键跳转：s 向前 / S 向后（leap 风格）
-- 注意：会占用普通模式的 s（默认是"替换字符"）
require('flash').setup()

-- flash v2 不自动创建映射，需手动绑定
-- 用函数形式做 rhs（README 警告：用 :lua 字符串会破坏 dot-repeat）
local flash = require('flash')
vim.keymap.set({ 'n', 'x', 'o' }, 's', function()
  flash.jump()
end, { desc = 'Flash jump forward' })
vim.keymap.set({ 'n', 'x', 'o' }, 'S', function()
  flash.jump({ search = { forward = false } })
end, { desc = 'Flash jump backward' })

-- LSP（nvim 0.12 原生，零插件）---------------------------------------------------
-- 二进制由系统管理（lua-language-server 已装到 ~/.local/bin）
vim.lsp.config('*', {
  on_attach = function(client, bufnr)
    -- 键位（buffer-local，仅 LSP 缓冲生效）
    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = 'LSP: ' .. desc })
    end
    map('gd', vim.lsp.buf.definition, 'go to definition')
    map('gr', vim.lsp.buf.references, 'references')
    map('K', vim.lsp.buf.hover, 'hover')
    map('<leader>la', vim.lsp.buf.code_action, 'code action')
    map('<leader>lr', vim.lsp.buf.rename, 'rename')
    map('<leader>ld', vim.diagnostic.open_float, 'diagnostic float')
    map('[d', function() vim.diagnostic.jump({ count = -1 }) end, 'previous diagnostic')
    map(']d', function() vim.diagnostic.jump({ count = 1 }) end, 'next diagnostic')
  end,
})

-- lua_ls 专用：cmd、文件类型、root 标记 + 挂载 nvim runtime 库
-- （0.12 不内置 server 配置，cmd 等需自给）
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.git' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
      },
      diagnostics = { globals = { 'vim' } },
    },
  },
})

-- clangd（C/C++）
vim.lsp.config('clangd', {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
  root_markers = { 'compile_commands.json', '.clangd', '.git' },
})

-- rust_analyzer（Rust）
vim.lsp.config('rust_analyzer', {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
  root_markers = { 'Cargo.toml', '.git' },
})

-- gopls（Go）
vim.lsp.config('gopls', {
  cmd = { 'gopls' },
  filetypes = { 'go' },
  root_markers = { 'go.mod', '.git' },
})

-- 启用 server（二进制需在 PATH 中；缺失时静默失败）
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('gopls')

-- 补全: blink.cmp ------------------------------------------------------------------
-- 多来源（lsp/path/buffer/snippets）+ fuzzy 匹配，替代原生 vim.lsp.completion
-- 键位 preset 'default'：C-space 打开、C-n/C-p 选择、C-y 确认、C-e 隐藏、C-k 签名帮助
-- fuzzy 用 Lua 实现：避免 Rust 预编译二进制的下载/构建步骤（vim.pack 无 build 钩子）
require('blink.cmp').setup({
  keymap = { preset = 'default' },
  completion = {
    documentation = { auto_show = false },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = {
    implementation = 'lua',
  },
})

-- 在普通 buffer 中按 `-` 打开当前目录（netrw 风格的目录上跳）
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- <leader>fe 打开当前文件所在目录（fe = file explorer）
vim.keymap.set('n', '<leader>fe', '<CMD>Oil<CR>', { desc = 'Open oil (file explorer)' })

-- <leader>fs 保存文件
vim.keymap.set('n', '<leader>fs', '<CMD>write<CR>', { desc = 'Save file' })

-- <leader>qq 退出全部窗口
vim.keymap.set('n', '<leader>qq', '<CMD>qa<CR>', { desc = 'Quit all windows' })

-- 窗口操作（Emacs 风格：C-x 2 / C-x 3 / C-x 0）
vim.keymap.set('n', '<leader>w2', '<CMD>split<CR>', { desc = 'Split window below (C-x 2)' })
vim.keymap.set('n', '<leader>w3', '<CMD>vsplit<CR>', { desc = 'Split window right (C-x 3)' })
vim.keymap.set('n', '<leader>w0', '<CMD>close<CR>', { desc = 'Close window (C-x 0)' })

-- 插件维护命令提示 ----------------------------------------------------------
-- 更新全部插件:        :lua vim.pack.update()
-- 查看插件状态:        :lua vim.pack.get()
-- 删除插件:            :lua vim.pack.del({ 'oil.nvim' })
