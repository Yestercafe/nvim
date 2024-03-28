return {
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
