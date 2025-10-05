return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
  { "nvim-mini/mini.comment", enabled = false },
  {
    "L3MON4D3/LuaSnip",
    opts = {
      history = false,
      region_check_events = "InsertEnter",
      delete_check_events = "TextChanged",
    },
  },
  { "nvim-mini/mini.surround", enabled = false },
  { "nvim-mini/mini.pairs", enabled = false },
}
