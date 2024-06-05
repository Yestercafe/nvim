return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin",
    },
  },
  { "echasnovski/mini.comment", enabled = false },
  {
    "L3MON4D3/LuaSnip",
    opts = {
      history = false,
      region_check_events = "InsertEnter",
      delete_check_events = "TextChanged",
    },
  },
  { "echasnovski/mini.surround", enabled = false },
}
