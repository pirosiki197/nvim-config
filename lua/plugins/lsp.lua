local function has_config(files)
  return function(self, ctx)
    for _, file in ipairs(files) do
      if vim.fs.find(file, { path = ctx.dirname, upward = true })[1] then
        return true
      end
    end
    return false
  end
end

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
        javascript = { "biome", "prettier", stop_after_first = true },
        typescript = { "biome", "prettier", stop_after_first = true },
        javascriptreact = { "biome", "prettier", stop_after_first = true },
        typescriptreact = { "biome", "prettier", stop_after_first = true },
      },
      format_on_save = {
        timeout_ms = 5000,
        lsp_format = "fallback",
      },
      formatters = {
        biome = {
          condition = has_config({ "biome.json", "biome.jsonc" }),
        },
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
