return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- lsp
    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    
    -- comment
    use {
        'numToStr/Comment.nvim',
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
        end
    }

    -- Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Syntax
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Completion
    use {
        'ms-jpq/coq_nvim', branch = 'coq'
    }
    use {
        'ms-jpq/coq.artifacts', branch = 'artifacts'
    }
    use {
        'ms-jpq/coq.thirdparty', branch = '3p'
    }

    -- Status line
    use 'beauwilliams/statusline.lua'

    -- Leap
    use 'ggandor/leap.nvim'

    -- Doom one colorscheme
    use {
        'NTBBloodbath/doom-one.nvim',
        setup = function()
            -- Add color to cursor
            vim.g.doom_one_cursor_coloring = false
            -- Set :terminal colors
            vim.g.doom_one_terminal_colors = true
            -- Enable italic comments
            vim.g.doom_one_italic_comments = false
            -- Enable TS support
            vim.g.doom_one_enable_treesitter = true
            -- Color whole diagnostic text or only underline
            vim.g.doom_one_diagnostics_text_color = false
            -- Enable transparent background
            vim.g.doom_one_transparent_background = false

            -- Pumblend transparency
            vim.g.doom_one_pumblend_enable = false
            vim.g.doom_one_pumblend_transparency = 20

            -- Plugins integration
            vim.g.doom_one_plugin_neorg = true
            vim.g.doom_one_plugin_barbar = false
            vim.g.doom_one_plugin_telescope = false
            vim.g.doom_one_plugin_neogit = true
            vim.g.doom_one_plugin_nvim_tree = true
            vim.g.doom_one_plugin_dashboard = true
            vim.g.doom_one_plugin_startify = true
            vim.g.doom_one_plugin_whichkey = true
            vim.g.doom_one_plugin_indent_blankline = true
            vim.g.doom_one_plugin_vim_illuminate = true
            vim.g.doom_one_plugin_lspsaga = false
        end,
        config = function()
            vim.cmd("colorscheme doom-one")
        end,
    }

    -- Smart column
    use {
        'm4xshen/smartcolumn.nvim',
        setup = function()
            colorcolumn = {"80", "120"}
        end
    }

    use "folke/neodev.nvim"

    use 'jghauser/mkdir.nvim'

    use 'ethanholz/nvim-lastplace'


end)

