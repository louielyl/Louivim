return {
  {
    -- NOTES: LSP Server Manager
    "williamboman/mason.nvim",
  },
  {
    -- NOTES: Useful status updates for LSP
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "j-hui/fidget.nvim",
      "folke/neodev.nvim",
    },
    opts = {
      auto_install = true,
    },
  },
  {
    -- NOTE: LSP Configuration & Plugins
    "neovim/nvim-lspconfig",
  },
}
