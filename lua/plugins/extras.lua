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
        "<leader>e",
        "<cmd>lua require('spider').motion('e')<CR>",
        mode = { "n", "o", "x" },
        desc = "spider-e",
      },
      {
        "<leader>w",
        "<cmd>lua require('spider').motion('w')<CR>",
        mode = { "n", "o", "x" },
        desc = "spider-w",
      },
      {
        "<leader>b",
        "<cmd>lua require('spider').motion('b')<CR>",
        mode = { "n", "o", "x" },
        desc = "spider-b",
      },
    },
  },
}
