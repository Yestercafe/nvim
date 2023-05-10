return {
  {
    "xiantang/nvim-lspconfig",
    event = "BufRead",
    dependencies = {
      "j-hui/fidget.nvim",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "glepnir/lspsaga.nvim",
      "onsails/lspkind.nvim",
      "folke/neodev.nvim",
    },
    config = function()
      require("lspconfig")
    end,
  },
}
