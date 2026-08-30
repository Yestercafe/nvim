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
})

-- 文件管理: oil -----------------------------------------------------------------
-- oil 把目录当作 buffer 编辑，替代 netrw
require('oil').setup({
  default_file_explorer = true, -- 打开目录时用 oil 而非 netrw
  view_options = {
    show_hidden = true,         -- 显示隐藏文件
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
