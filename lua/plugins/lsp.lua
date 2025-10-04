return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      fomatters_by_ft = {
        go = { "goimports" },
      },
      format_on_save = {
        timeout_ms = 5000,
        lsp_format = "fallback",
      },
    },
  },
}
