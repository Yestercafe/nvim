return {
  {
    'beauwilliams/statusline.lua',
    config = function()
      vim.o.laststatus = 3
      local sl = require('statusline')
      sl.tabline = true
      sl.lsp_diagnostics = true
      vim.o.showmode = false
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      require("nvim-tree").setup({
        sort_by = "name",
        view = {
          float = {
            enable = true,
            quit_on_focus_loss = true,
          },
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
      })

      vim.keymap.set('n', '<leader>fd', '<Cmd>NvimTreeToggle<CR>')
    end
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
