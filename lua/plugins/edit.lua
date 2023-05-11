return {
  {
    "folke/neodev.nvim",
		event = "VeryLazy",
		config = function()
			require("neodev").setup()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace"
            }
          }
        }
      })
		end,
  },
  {
		"windwp/nvim-autopairs",
		event = "VeryLazy",
		config = function()
			require("nvim-autopairs").setup()
		end,
  },
  {
		"numToStr/Comment.nvim",
		event = "VeryLazy",
    config = function()
      require('Comment').setup({
        toggler = {
          line = '<leader>cc',
          block = '<leader>bc'
        },
        opleader = {
          line = '<leader>c',
          block = '<leader>b'
        },
        extra = {
          above = '<leader>cO',
          below = '<leader>co',
          eol = '<leader>cA',
        },
      })
    end,
  },
  'wakatime/vim-wakatime',
  {
    'ethanholz/nvim-lastplace',
    init = function()
      require('nvim-lastplace').setup {
          lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
          lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
          lastplace_open_folds = true
      }
    end,
  },
  {
    'm4xshen/smartcolumn.nvim',
    init = function()
      require('smartcolumn').setup({
        colorcolumn = {"80", "120"},
        disabled_filetypes = {"help", "text", "markdown"},
        scope = "file",
      })
    end,
  },
  'jghauser/mkdir.nvim',
}

