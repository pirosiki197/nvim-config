return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim",  version = "*", opts = {} },
      { "neovim/nvim-lspconfig", version = "*" },
    },
    opts = {
      ensure_installed = {
        "gopls",
        "lua_ls",
        "pyright",
        "tailwindcss",
        "yamlls",
      },
      automatic_enable = true,
    },
  },
  {
    "stevearc/conform.nvim",
    version = "*",
    opts = {
      formatters_by_ft = {
        go = { "goimports" },
        python = { "ruff_format" },
        terraform = { "terraform_fmt" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 5000,
        lsp_format = "fallback",
      },
    },
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    opts = {
      bind = true,
    },
  },
}
