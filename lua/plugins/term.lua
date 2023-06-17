return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<C-t>]],
        autochdir = true,
        direction = 'float',
      }
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    config = function()

    end,
  },
}

