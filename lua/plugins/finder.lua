return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      vim.keymap.set('n', '<leader>sf', '<CMD>Telescope find_files<CR>')
      vim.keymap.set('n', '<leader>bb', '<CMD>Telescope buffers<CR>')
      vim.keymap.set('n', '<leader>sg', '<CMD>Telescope live_grep<CR>')
    end
  },
  {
    'ggandor/leap.nvim',
  },
}

