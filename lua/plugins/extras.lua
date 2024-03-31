return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  { "christoomey/vim-tmux-navigator" },
  { "wakatime/vim-wakatime" },
  { "echasnovski/mini.comment", enabled = false },
  {
    "numToStr/Comment.nvim",
    init = function()
      require("Comment").setup()
    end,
  },
}
