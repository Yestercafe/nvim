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
}
