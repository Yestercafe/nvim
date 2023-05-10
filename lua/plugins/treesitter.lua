return {
  {
    'nvim-treesitter/nvim-treesitter',
    event = 'VeryLazy',
    config = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },
}
