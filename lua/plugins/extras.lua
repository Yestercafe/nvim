return {
  { "ellisonleao/gruvbox.nvim" },
  { "christoomey/vim-tmux-navigator" },
  { "wakatime/vim-wakatime" },
  {
    "numToStr/Comment.nvim",
    init = function()
      require("Comment").setup()
    end,
  },
  {
    "chrisgrieser/nvim-spider",
    keys = {
      {
        "<leader>.e",
        "<cmd>lua require('spider').motion('e')<CR>",
        mode = { "n", "o", "x" },
        desc = "spider-e",
      },
      {
        "<leader>.w",
        "<cmd>lua require('spider').motion('w')<CR>",
        mode = { "n", "o", "x" },
        desc = "spider-w",
      },
      {
        "<leader>.b",
        "<cmd>lua require('spider').motion('b')<CR>",
        mode = { "n", "o", "x" },
        desc = "spider-b",
      },
    },
  },
  { "terryma/vim-expand-region" },
  {
    "vim-scripts/DoxygenToolkit.vim",
    keys = {
      {
        "<leader>cD",
        "<cmd>Dox<CR>",
        mode = { "n" },
        desc = "Doxygen docs",
      },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        {
          { "<leader>a", group = "avante", icon = { icon = "󰧑 ", color = "red" } },
        },
      },
    },
  },
  { "nvim-treesitter/nvim-treesitter-context" },
  { "rose-pine/neovim", name = "rose-pine", priority = 1000 },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
      })
    end,
  },
}
