# chibi

极简 Neovim 配置（Neovim ≥ 0.12），原生优先，单文件。

## 哲学

- **原生优先**：能用 Neovim 内置能力解决的就不装插件（LSP 配置、补全框架、snippet、注释、会话恢复全部原生）
- **插件管理器就是 vim.pack**（0.12 内置），不引入第二个包管理器
- **少而精**：6 个插件，每个解决一个原生覆盖不了的缺口
- **二进制交给系统**：LSP server 由系统包管理 / 用户级安装（`~/.local/bin`），不用 mason 类插件
- **可复现**：版本全部锁定，`nvim-pack-lock.json` 纳入版本控制

## 插件

| 插件 | 用途 |
|---|---|
| oil.nvim | 文件浏览（`-` 打开当前目录，替代 netrw） |
| mini.pick | 模糊查找（文件/缓冲区/实时 grep） |
| mini.statusline | 状态栏 |
| mini.starter | 启动页（含会话恢复入口） |
| flash.nvim | 快速跳转（`s`/`S`，leap 风格） |
| blink.cmp | 补全（LSP/path/buffer/snippets，原生 vim.snippet） |

## LSP

lua_ls / clangd / rust_analyzer / gopls —— 全部原生 `vim.lsp.config` + `vim.lsp.enable`，零插件。server 二进制需自行安装到 PATH（缺失时静默降级，不影响 nvim 本体）。

## 键位

| 键 | 功能 |
|---|---|
| `空格 fe` / `-` | 打开 oil 文件浏览 |
| `空格 ff` / `fb` / `fg` | mini.pick：文件 / 缓冲区 / 实时 grep |
| `空格 fs` | 保存 |
| `空格 qq` | 退出全部 |
| `空格 w2` / `w3` / `w0` | 上下分屏 / 左右分屏 / 关窗口 |
| `s` / `S` | flash 向前 / 向后跳转 |
| `gd` / `gr` / `K` | LSP：定义 / 引用 / 悬停 |
| `空格 la` / `lr` / `ld` | LSP：代码动作 / 重命名 / 诊断浮窗 |
| `[d` / `]d` | 上/下一条诊断 |
| `空格 qq` | 退出 |

启动页（裸 `nvim`）：`r` 恢复上次会话，键入文件名过滤最近文件。

## 安装

```bash
git clone <repo> ~/.config/nvim   # 或 ln -s <repo> ~/.config/nvim
nvim                            # 首次启动 vim.pack 自动安装全部插件
```

LSP server 二进制需另行安装（示例，按发行版/平台调整）：

```bash
# lua-language-server / clangd / rust-analyzer：官方预编译产物 → ~/.local/bin
# go + gopls：go install golang.org/x/tools/gopls@latest
# rust-analyzer 硬依赖 cargo 工具链
```

## 插件维护（vim.pack）

```lua
:lua vim.pack.update()               -- 预览并更新全部插件（:write 确认）
:lua vim.pack.get()                  -- 查看状态
:lua vim.pack.del({ 'plugin' })      -- 删除插件
```

版本约束写在 `init.lua` 的 `vim.pack.add()` 中；锁定文件 `nvim-pack-lock.json` 随配置入库，新机器 clone 后自动按锁定的 commit 安装。

## 布局

单文件配置：

```
init.lua              -- 全部配置（~230 行，含注释）
nvim-pack-lock.json   -- 插件锁定状态
```
