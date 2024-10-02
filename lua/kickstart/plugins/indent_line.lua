return {
  'lukas-reineke/indent-blankline.nvim',
  opts = function()
    vim.keymap.set('n', '<leader>ug', function()
      require('ibl').setup_buffer(0, { enabled = not require('ibl.config').get_config(0) })
    end, { desc = 'Indention guides' })

    return {
      indent = {
        char = '│',
        tab_char = '│',
      },
      scope = { show_start = false, show_end = false },
      exclude = {
        filetypes = {
          'help',
          'alpha',
          'dashboard',
          'neo-tree',
          'Trouble',
          'trouble',
          'lazy',
          'mason',
          'notify',
          'toggleterm',
          'lazyterm',
        },
      },
    }
  end,
  main = 'ibl',
}
