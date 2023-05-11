return {
  {
    'simrat39/rust-tools.nvim',
    event = 'VeryLazy',
    config = function()
      local rt = require("rust-tools")

      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<leader>ch", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      })
    end,
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  {
    'mfussenegger/nvim-dap',
    event = 'VeryLazy',
  }
}
